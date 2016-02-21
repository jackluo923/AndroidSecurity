package com.inmobi.re.container.mraidimpl;

import android.media.AudioRecord;
import com.inmobi.commons.internal.Log;
import com.inmobi.re.controller.util.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;

public class AudioTriggerer {
    static boolean a;
    public static AudioRecord audioRecorder;
    static boolean b;
    static Timer c;
    public static List callbacks;
    static long d;
    static long e;
    private static int[] f;

    final class a extends TimerTask {
        a() {
        }

        public void run() {
            AudioTriggerer.d();
        }
    }

    static {
        d = 0;
        e = 50;
        audioRecorder = null;
        callbacks = new ArrayList();
        f = new int[]{8000, 11025, 22050, 44100};
    }

    private static void a(double d) {
        Iterator it = callbacks.iterator();
        while (it.hasNext()) {
            try {
                ((AudioTriggerCallback) it.next()).audioLevel(d);
            } catch (Exception e) {
                Log.internal(Constants.RENDERING_LOG_TAG, "AudioTriggerer: One of the mic listeners has a problem.");
            }
        }
    }

    public static void addEventListener(AudioTriggerCallback audioTriggerCallback) {
        callbacks.add(audioTriggerCallback);
        if (callbacks.size() == 1) {
            b();
        }
    }

    private static void b() {
        a = true;
        audioRecorder = h();
        c = new Timer();
        c.scheduleAtFixedRate(new a(), d, e);
    }

    private static void c() {
        a = false;
        if (audioRecorder != null) {
            if (f()) {
                g();
            }
            try {
                audioRecorder.stop();
                audioRecorder.release();
                c.cancel();
                c.purge();
            } catch (IllegalStateException e) {
                e.printStackTrace();
            } catch (RuntimeException e2) {
                e2.printStackTrace();
            }
        }
    }

    private static void d() {
        if (audioRecorder != null && audioRecorder.getState() == 1) {
            short[] sArr = new short[512];
            float[] fArr = new float[3];
            b = true;
            try {
                audioRecorder.startRecording();
                while (f()) {
                    int read = audioRecorder.read(sArr, 0, sArr.length);
                    int i = 0;
                    float f = 0.0f;
                    while (i < read) {
                        short s = (short) (sArr[i] | sArr[i + 1]);
                        if (s != (short) 0) {
                            f += (float) (Math.abs(s) / read);
                        }
                        i += 2;
                    }
                    fArr[0] = f;
                    int i2 = 0;
                    float f2 = 0.0f;
                    while (i2 < 3) {
                        f2 += fArr[i2];
                        i2++;
                    }
                    a((double) ((f2 / ((float) read)) / 32.0f));
                }
                e();
            } catch (Exception e) {
            }
        }
    }

    private static void e() {
        if (audioRecorder != null) {
            if (f()) {
                g();
            }
            try {
                audioRecorder.stop();
                audioRecorder.release();
            } catch (IllegalStateException e) {
                e.printStackTrace();
            } catch (RuntimeException e2) {
                e2.printStackTrace();
            }
        }
    }

    private static boolean f() {
        return b;
    }

    private static void g() {
        b = false;
    }

    private static AudioRecord h() {
        int[] iArr = f;
        int length = iArr.length;
        int i = 0;
        while (i < length) {
            int i2 = iArr[i];
            short[] sArr = new short[]{(short) 3, (short) 2};
            int length2 = sArr.length;
            int i3 = 0;
            while (i3 < length2) {
                short s = sArr[i3];
                short[] sArr2 = new short[]{(short) 16, (short) 12};
                int length3 = sArr2.length;
                int i4 = 0;
                while (i4 < length3) {
                    short s2 = sArr2[i4];
                    try {
                        int minBufferSize = AudioRecord.getMinBufferSize(i2, s2, s);
                        if (minBufferSize != -2) {
                            AudioRecord audioRecord = new AudioRecord(0, i2, s2, s, minBufferSize);
                            if (audioRecord.getState() == 1) {
                                return audioRecord;
                            }
                        }
                    } catch (Exception e) {
                    }
                    i4++;
                }
                i3++;
            }
            i++;
        }
        return null;
    }

    public static void removeEventListener(AudioTriggerCallback audioTriggerCallback) {
        callbacks.remove(audioTriggerCallback);
        if (callbacks.size() == 0) {
            c();
        }
    }
}