package com.millennialmedia.android;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.media.AudioManager;
import android.media.MediaPlayer;
import android.media.MediaPlayer.OnCompletionListener;
import android.media.MediaScannerConnection;
import android.media.MediaScannerConnection.MediaScannerConnectionClient;
import android.media.SoundPool;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import com.brightcove.player.media.MediaService;
import com.google.android.gms.cast.Cast;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.inmobi.commons.analytics.db.AnalyticsSQLiteHelper;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONArray;

class BridgeMMMedia extends MMJSObject {
    private static final String d = "path";
    private static final String n = "BridgeMMMedia";
    private static Object o;
    MediaScannerConnection a;
    private String e;
    private String f;
    private String g;
    private String h;
    private String i;
    private String j;
    private String k;
    private String l;
    private String m;

    class AnonymousClass_1 implements MediaScannerConnectionClient {
        final /* synthetic */ String a;

        AnonymousClass_1(String str) {
            this.a = str;
        }

        public void onMediaScannerConnected() {
            if (BridgeMMMedia.this.a != null) {
                BridgeMMMedia.this.a.scanFile(this.a, null);
            }
        }

        public void onScanCompleted(String str, Uri uri) {
            if (uri == null) {
                MMLog.b(n, "Failed to scan " + str);
            }
        }
    }

    static class Audio implements OnCompletionListener {
        private static Audio d = null;
        private static final int i = 4;
        CopyOnWriteArrayList a;
        CopyOnWriteArrayList b;
        Runnable c;
        private WeakReference e;
        private MediaPlayer f;
        private SoundPool g;
        private OnLoadCompleteListener h;

        private abstract class OnLoadCompleteListener {
            private static final int a = 100;
            private ArrayList c;
            private Timer d;
            private SoundPool e;

            public OnLoadCompleteListener(SoundPool soundPool) {
                this.c = new ArrayList();
                this.e = soundPool;
            }

            synchronized void a() {
                if (this.d != null) {
                    this.d.cancel();
                    this.d.purge();
                }
            }

            synchronized void a(int i) {
                this.c.add(Integer.valueOf(i));
                if (this.c.size() == 1) {
                    this.d = new Timer();
                    this.d.scheduleAtFixedRate(new TimerTask() {
                        public void run() {
                            Collection arrayList = new ArrayList();
                            Iterator it = OnLoadCompleteListener.this.c.iterator();
                            while (it.hasNext()) {
                                Integer num = (Integer) it.next();
                                int play = OnLoadCompleteListener.this.e.play(num.intValue(), BitmapDescriptorFactory.HUE_RED, 0.0f, 0, 0, 1.0f);
                                if (play != 0) {
                                    OnLoadCompleteListener.this.e.stop(play);
                                    OnLoadCompleteListener.this.onLoadComplete(OnLoadCompleteListener.this.e, num.intValue(), 0);
                                    arrayList.add(num);
                                }
                            }
                            OnLoadCompleteListener.this.c.removeAll(arrayList);
                            if (OnLoadCompleteListener.this.c.size() == 0) {
                                OnLoadCompleteListener.this.d.cancel();
                                OnLoadCompleteListener.this.d.purge();
                            }
                        }
                    }, 0, 100);
                }
            }

            abstract void onLoadComplete(SoundPool soundPool, int i, int i2);
        }

        class AnonymousClass_2 extends OnLoadCompleteListener {
            AnonymousClass_2(SoundPool soundPool) {
                super(soundPool);
            }

            public synchronized void onLoadComplete(SoundPool soundPool, int i, int i2) {
                if (soundPool != null) {
                    Context context = (Context) Audio.this.e.get();
                    if (context != null) {
                        AudioManager audioManager = (AudioManager) context.getSystemService("audio");
                        float streamVolume = (((float) audioManager.getStreamVolume(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE)) + 0.0f) / ((float) audioManager.getStreamMaxVolume(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE));
                        soundPool.play(i, streamVolume, streamVolume, 1, 0, 1.0f);
                    }
                }
            }
        }

        static interface PeriodicListener {
            void onUpdate(int i);
        }

        private Audio() {
            this.c = new Runnable() {
                public void run() {
                    if (Audio.this.f != null) {
                        if (Audio.this.f.isPlaying()) {
                            int currentPosition = Audio.this.f.getCurrentPosition();
                            if (Audio.this.b != null) {
                                Iterator it = Audio.this.b.iterator();
                                while (it.hasNext()) {
                                    ((PeriodicListener) it.next()).onUpdate(currentPosition);
                                }
                            }
                        }
                        MMSDK.a(this, 500);
                    }
                }
            };
        }

        private Audio(Context context) {
            this.c = new Runnable() {
                public void run() {
                    if (Audio.this.f != null) {
                        if (Audio.this.f.isPlaying()) {
                            int currentPosition = Audio.this.f.getCurrentPosition();
                            if (Audio.this.b != null) {
                                Iterator it = Audio.this.b.iterator();
                                while (it.hasNext()) {
                                    ((PeriodicListener) it.next()).onUpdate(currentPosition);
                                }
                            }
                        }
                        MMSDK.a(this, 500);
                    }
                }
            };
            this.e = new WeakReference(context.getApplicationContext());
        }

        static synchronized Audio a(Context context) {
            Audio audio;
            synchronized (Audio.class) {
                if (d == null) {
                    d = new Audio(context);
                }
                audio = d;
            }
            return audio;
        }

        synchronized MMJSResponse a(Uri uri, boolean z) {
            try {
                if (this.f != null) {
                    this.f.release();
                    this.f = null;
                }
                this.f = MediaPlayer.create((Context) this.e.get(), uri);
                this.f.setLooping(z);
                this.f.start();
                this.f.setOnCompletionListener(this);
                MMSDK.a(this.c);
            } catch (Exception e) {
                MMLog.e(n, "Exception in playAudio method", e.getCause());
            }
            return MMJSResponse.a("Audio playback started");
        }

        synchronized MMJSResponse a(File file) {
            try {
                if (this.g == null) {
                    this.g = new SoundPool(4, 3, 0);
                    this.h = new AnonymousClass_2(this.g);
                }
                this.h.a(this.g.load(file.getAbsolutePath(), 1));
            } catch (Exception e) {
            }
            return MMJSResponse.a("Sound playback started");
        }

        synchronized boolean a() {
            boolean z;
            z = this.f != null && this.f.isPlaying();
            return z;
        }

        boolean a(OnCompletionListener onCompletionListener) {
            if (this.a == null) {
                this.a = new CopyOnWriteArrayList();
            }
            return this.a.contains(onCompletionListener) ? false : this.a.add(onCompletionListener);
        }

        boolean a(PeriodicListener periodicListener) {
            if (this.b == null) {
                this.b = new CopyOnWriteArrayList();
            }
            return this.b.contains(periodicListener) ? false : this.b.add(periodicListener);
        }

        synchronized MMJSResponse b() {
            if (this.f != null) {
                onCompletion(this.f);
            }
            if (this.g != null) {
                this.g.release();
                this.g = null;
            }
            if (this.h != null) {
                this.h.a();
                this.h = null;
            }
            return MMJSResponse.a("Audio stopped");
        }

        boolean b(OnCompletionListener onCompletionListener) {
            return this.a != null ? this.a.remove(onCompletionListener) : false;
        }

        boolean b(PeriodicListener periodicListener) {
            return this.b != null ? this.b.remove(periodicListener) : false;
        }

        public synchronized void onCompletion(MediaPlayer mediaPlayer) {
            if (this.a != null) {
                Iterator it = this.a.iterator();
                while (it.hasNext()) {
                    ((OnCompletionListener) it.next()).onCompletion(this.f);
                }
            }
            if (this.f != null) {
                this.f.release();
                this.f = null;
            }
        }
    }

    static class PickerActivity extends MMBaseActivity {
        boolean a;
        private Uri b;

        PickerActivity() {
            this.a = false;
        }

        /* JADX WARNING: inconsistent code. */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        protected void a(int r8, int r9, android.content.Intent r10) {
            throw new UnsupportedOperationException("Method not decompiled: com.millennialmedia.android.BridgeMMMedia.PickerActivity.a(int, int, android.content.Intent):void");
            /*
            r7 = this;
            r6 = 0;
            super.a(r8, r9, r10);
            if (r10 == 0) goto L_0x006a;
        L_0x0006:
            r2 = 0;
            r1 = r10.getData();	 Catch:{ Exception -> 0x008f }
            if (r1 != 0) goto L_0x00b7;
        L_0x000d:
            r0 = r10.getExtras();	 Catch:{ Exception -> 0x008f }
            if (r0 == 0) goto L_0x006a;
        L_0x0013:
            r0 = r10.getExtras();	 Catch:{ Exception -> 0x008f }
            r1 = "data";
            r0 = r0.get(r1);	 Catch:{ Exception -> 0x008f }
            r0 = (android.graphics.Bitmap) r0;	 Catch:{ Exception -> 0x008f }
            r3 = new java.io.File;	 Catch:{ Exception -> 0x0172, all -> 0x00a1 }
            r1 = r7.getIntent();	 Catch:{ Exception -> 0x0172, all -> 0x00a1 }
            r1 = r1.getData();	 Catch:{ Exception -> 0x0172, all -> 0x00a1 }
            r1 = r1.getPath();	 Catch:{ Exception -> 0x0172, all -> 0x00a1 }
            r3.<init>(r1);	 Catch:{ Exception -> 0x0172, all -> 0x00a1 }
            r1 = new java.io.ByteArrayOutputStream;	 Catch:{ Exception -> 0x0172, all -> 0x00a1 }
            r1.<init>();	 Catch:{ Exception -> 0x0172, all -> 0x00a1 }
            r4 = android.graphics.Bitmap.CompressFormat.PNG;	 Catch:{ Exception -> 0x0172, all -> 0x00a1 }
            r5 = 0;
            r0.compress(r4, r5, r1);	 Catch:{ Exception -> 0x0172, all -> 0x00a1 }
            r0 = r1.toByteArray();	 Catch:{ Exception -> 0x0172, all -> 0x00a1 }
            r4 = new java.io.ByteArrayInputStream;	 Catch:{ Exception -> 0x0172, all -> 0x00a1 }
            r4.<init>(r0);	 Catch:{ Exception -> 0x0172, all -> 0x00a1 }
            r1 = new java.io.FileOutputStream;	 Catch:{ Exception -> 0x0172, all -> 0x00a1 }
            r1.<init>(r3);	 Catch:{ Exception -> 0x0172, all -> 0x00a1 }
            r0 = 1024; // 0x400 float:1.435E-42 double:5.06E-321;
            r0 = new byte[r0];	 Catch:{ Exception -> 0x0058 }
        L_0x004d:
            r3 = r4.read(r0);	 Catch:{ Exception -> 0x0058 }
            if (r3 <= 0) goto L_0x007b;
        L_0x0053:
            r5 = 0;
            r1.write(r0, r5, r3);	 Catch:{ Exception -> 0x0058 }
            goto L_0x004d;
        L_0x0058:
            r0 = move-exception;
        L_0x0059:
            r3 = "BridgeMMMedia";
            r4 = "Problem getting bitmap from data";
            com.millennialmedia.android.MMLog.e(r3, r4, r0);	 Catch:{ all -> 0x016f }
            if (r6 == 0) goto L_0x0065;
        L_0x0062:
            r2.close();	 Catch:{ Exception -> 0x0098 }
        L_0x0065:
            if (r1 == 0) goto L_0x006a;
        L_0x0067:
            r1.close();	 Catch:{ Exception -> 0x0098 }
        L_0x006a:
            r1 = o;
            monitor-enter(r1);
            r0 = o;	 Catch:{ all -> 0x015e }
            r0.notify();	 Catch:{ all -> 0x015e }
            monitor-exit(r1);	 Catch:{ all -> 0x015e }
            r7.finish();
            return;
        L_0x007b:
            if (r6 == 0) goto L_0x0080;
        L_0x007d:
            r2.close();	 Catch:{ Exception -> 0x0086 }
        L_0x0080:
            if (r1 == 0) goto L_0x006a;
        L_0x0082:
            r1.close();	 Catch:{ Exception -> 0x0086 }
            goto L_0x006a;
        L_0x0086:
            r0 = move-exception;
            r1 = "BridgeMMMedia";
            r2 = "Error closing file";
            com.millennialmedia.android.MMLog.e(r1, r2, r0);	 Catch:{ Exception -> 0x008f }
            goto L_0x006a;
        L_0x008f:
            r0 = move-exception;
            r1 = "BridgeMMMedia";
            r2 = "Error with picture: ";
            com.millennialmedia.android.MMLog.e(r1, r2, r0);
            goto L_0x006a;
        L_0x0098:
            r0 = move-exception;
            r1 = "BridgeMMMedia";
            r2 = "Error closing file";
            com.millennialmedia.android.MMLog.e(r1, r2, r0);	 Catch:{ Exception -> 0x008f }
            goto L_0x006a;
        L_0x00a1:
            r0 = move-exception;
            r1 = r6;
        L_0x00a3:
            if (r6 == 0) goto L_0x00a8;
        L_0x00a5:
            r2.close();	 Catch:{ Exception -> 0x00ae }
        L_0x00a8:
            if (r1 == 0) goto L_0x00ad;
        L_0x00aa:
            r1.close();	 Catch:{ Exception -> 0x00ae }
        L_0x00ad:
            throw r0;	 Catch:{ Exception -> 0x008f }
        L_0x00ae:
            r1 = move-exception;
            r2 = "BridgeMMMedia";
            r3 = "Error closing file";
            com.millennialmedia.android.MMLog.e(r2, r3, r1);	 Catch:{ Exception -> 0x008f }
            goto L_0x00ad;
        L_0x00b7:
            if (r1 == 0) goto L_0x006a;
        L_0x00b9:
            r0 = 1;
            r2 = new java.lang.String[r0];	 Catch:{ Exception -> 0x008f }
            r0 = 0;
            r3 = "_data";
            r2[r0] = r3;	 Catch:{ Exception -> 0x008f }
            r0 = r7.getContentResolver();	 Catch:{ Exception -> 0x008f }
            if (r0 == 0) goto L_0x006a;
        L_0x00c7:
            r3 = 0;
            r4 = 0;
            r5 = 0;
            r0 = r0.query(r1, r2, r3, r4, r5);	 Catch:{ Exception -> 0x008f }
            if (r0 == 0) goto L_0x006a;
        L_0x00d0:
            r1 = "_data";
            r1 = r0.getColumnIndex(r1);	 Catch:{ Exception -> 0x008f }
            r2 = -1;
            if (r1 == r2) goto L_0x006a;
        L_0x00d9:
            r0.moveToFirst();	 Catch:{ Exception -> 0x008f }
            r3 = new java.io.File;	 Catch:{ Exception -> 0x008f }
            r1 = r0.getString(r1);	 Catch:{ Exception -> 0x008f }
            r3.<init>(r1);	 Catch:{ Exception -> 0x008f }
            r0.close();	 Catch:{ Exception -> 0x008f }
            r0 = new java.io.File;	 Catch:{ Exception -> 0x0169, all -> 0x0148 }
            r1 = r7.getIntent();	 Catch:{ Exception -> 0x0169, all -> 0x0148 }
            r1 = r1.getData();	 Catch:{ Exception -> 0x0169, all -> 0x0148 }
            r1 = r1.getPath();	 Catch:{ Exception -> 0x0169, all -> 0x0148 }
            r0.<init>(r1);	 Catch:{ Exception -> 0x0169, all -> 0x0148 }
            r2 = new java.io.FileInputStream;	 Catch:{ Exception -> 0x0169, all -> 0x0148 }
            r2.<init>(r3);	 Catch:{ Exception -> 0x0169, all -> 0x0148 }
            r1 = new java.io.FileOutputStream;	 Catch:{ Exception -> 0x016c, all -> 0x0161 }
            r1.<init>(r0);	 Catch:{ Exception -> 0x016c, all -> 0x0161 }
            r0 = 1024; // 0x400 float:1.435E-42 double:5.06E-321;
            r0 = new byte[r0];	 Catch:{ Exception -> 0x0112, all -> 0x0163 }
        L_0x0107:
            r3 = r2.read(r0);	 Catch:{ Exception -> 0x0112, all -> 0x0163 }
            if (r3 <= 0) goto L_0x0132;
        L_0x010d:
            r4 = 0;
            r1.write(r0, r4, r3);	 Catch:{ Exception -> 0x0112, all -> 0x0163 }
            goto L_0x0107;
        L_0x0112:
            r0 = move-exception;
            r6 = r1;
            r1 = r2;
        L_0x0115:
            r2 = "BridgeMMMedia";
            r3 = "Error copying image";
            com.millennialmedia.android.MMLog.e(r2, r3, r0);	 Catch:{ all -> 0x0166 }
            if (r1 == 0) goto L_0x0121;
        L_0x011e:
            r1.close();	 Catch:{ Exception -> 0x0128 }
        L_0x0121:
            if (r6 == 0) goto L_0x006a;
        L_0x0123:
            r6.close();	 Catch:{ Exception -> 0x0128 }
            goto L_0x006a;
        L_0x0128:
            r0 = move-exception;
            r1 = "BridgeMMMedia";
            r2 = "Error closing file";
            com.millennialmedia.android.MMLog.e(r1, r2, r0);	 Catch:{ Exception -> 0x008f }
            goto L_0x006a;
        L_0x0132:
            if (r2 == 0) goto L_0x0137;
        L_0x0134:
            r2.close();	 Catch:{ Exception -> 0x013e }
        L_0x0137:
            if (r1 == 0) goto L_0x006a;
        L_0x0139:
            r1.close();	 Catch:{ Exception -> 0x013e }
            goto L_0x006a;
        L_0x013e:
            r0 = move-exception;
            r1 = "BridgeMMMedia";
            r2 = "Error closing file";
            com.millennialmedia.android.MMLog.e(r1, r2, r0);	 Catch:{ Exception -> 0x008f }
            goto L_0x006a;
        L_0x0148:
            r0 = move-exception;
            r2 = r6;
        L_0x014a:
            if (r2 == 0) goto L_0x014f;
        L_0x014c:
            r2.close();	 Catch:{ Exception -> 0x0155 }
        L_0x014f:
            if (r6 == 0) goto L_0x0154;
        L_0x0151:
            r6.close();	 Catch:{ Exception -> 0x0155 }
        L_0x0154:
            throw r0;	 Catch:{ Exception -> 0x008f }
        L_0x0155:
            r1 = move-exception;
            r2 = "BridgeMMMedia";
            r3 = "Error closing file";
            com.millennialmedia.android.MMLog.e(r2, r3, r1);	 Catch:{ Exception -> 0x008f }
            goto L_0x0154;
        L_0x015e:
            r0 = move-exception;
            monitor-exit(r1);	 Catch:{ all -> 0x015e }
            throw r0;
        L_0x0161:
            r0 = move-exception;
            goto L_0x014a;
        L_0x0163:
            r0 = move-exception;
            r6 = r1;
            goto L_0x014a;
        L_0x0166:
            r0 = move-exception;
            r2 = r1;
            goto L_0x014a;
        L_0x0169:
            r0 = move-exception;
            r1 = r6;
            goto L_0x0115;
        L_0x016c:
            r0 = move-exception;
            r1 = r2;
            goto L_0x0115;
        L_0x016f:
            r0 = move-exception;
            goto L_0x00a3;
        L_0x0172:
            r0 = move-exception;
            r1 = r6;
            goto L_0x0059;
            */
        }

        public void onCreate(Bundle bundle) {
            super.onCreate(bundle);
            if (getLastNonConfigurationInstance() != null) {
                this.a = ((Bundle) getLastNonConfigurationInstance()).getBoolean("hasRequestedPic");
            }
            if (!this.a) {
                Intent intent;
                if (getIntent().getStringExtra(AnalyticsSQLiteHelper.EVENT_LIST_TYPE).equalsIgnoreCase("Camera")) {
                    intent = new Intent("android.media.action.IMAGE_CAPTURE");
                    this.b = getIntent().getData();
                    intent.putExtra("return-data", true);
                    this.a = true;
                    startActivityForResult(intent, 0);
                } else {
                    intent = new Intent();
                    intent.setType("image/*");
                    intent.setAction("android.intent.action.GET_CONTENT");
                    this.a = true;
                    startActivityForResult(intent, 0);
                }
            }
        }

        public Object onRetainNonConfigurationInstance() {
            super.onRetainNonConfigurationInstance();
            Bundle bundle = new Bundle();
            bundle.putBoolean("hasRequestedPic", this.a);
            return bundle;
        }
    }

    BridgeMMMedia() {
        this.e = "isSourceTypeAvailable";
        this.f = "availableSourceTypes";
        this.g = "getPicture";
        this.h = "writeToPhotoLibrary";
        this.i = "playVideo";
        this.j = "stopAudio";
        this.k = "getDeviceVolume";
        this.l = "playAudio";
        this.m = "playSound";
    }

    private static Bitmap a(Bitmap bitmap, int i, int i2) {
        return a(bitmap, (int) ((float) ((bitmap.getWidth() - i) / 2)), (int) ((float) ((bitmap.getHeight() - i2) / 2)), i, i2);
    }

    private static Bitmap a(Bitmap bitmap, int i, int i2, int i3) {
        return Bitmap.createScaledBitmap(bitmap, i, i2, true);
    }

    private static Bitmap a(Bitmap bitmap, int i, int i2, int i3, int i4) {
        return Bitmap.createBitmap(bitmap, i, i2, i3, i4);
    }

    static Bitmap a(Bitmap bitmap, String str, int i, int i2, int i3) {
        float width = ((float) i) / ((float) bitmap.getWidth());
        float height = ((float) i2) / ((float) bitmap.getHeight());
        if (str.equals("Center")) {
            return a(bitmap, i, i2);
        }
        if (str.equals("ScaleToAspectFit")) {
            width = Math.min(width, height);
            return a(bitmap, (int) (((float) bitmap.getWidth()) * width), (int) (width * ((float) bitmap.getHeight())), i3);
        } else if (!str.equals("ScaleToAspectFill")) {
            return a(bitmap, i, i2, i3);
        } else {
            width = Math.max(width, height);
            return a(a(bitmap, (int) (((float) bitmap.getWidth()) * width), (int) (width * ((float) bitmap.getHeight())), i3), 0, 0, i, i2);
        }
    }

    private void a(String str) {
        Context context = (Context) this.b.get();
        if (context != null) {
            this.a = new MediaScannerConnection(context.getApplicationContext(), new AnonymousClass_1(str));
            if (this.a != null) {
                this.a.connect();
            }
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static final byte[] a(java.io.File r7, int r8, int r9, java.lang.String r10) {
        throw new UnsupportedOperationException("Method not decompiled: com.millennialmedia.android.BridgeMMMedia.a(java.io.File, int, int, java.lang.String):byte[]");
        /*
        r5 = 1;
        r0 = 0;
        r3 = new java.io.FileInputStream;	 Catch:{ FileNotFoundException -> 0x007e, all -> 0x009e }
        r3.<init>(r7);	 Catch:{ FileNotFoundException -> 0x007e, all -> 0x009e }
        r4 = new android.graphics.BitmapFactory$Options;	 Catch:{ FileNotFoundException -> 0x010f, all -> 0x0109 }
        r4.<init>();	 Catch:{ FileNotFoundException -> 0x010f, all -> 0x0109 }
        r1 = 1;
        r4.inJustDecodeBounds = r1;	 Catch:{ FileNotFoundException -> 0x010f, all -> 0x0109 }
        r1 = 0;
        android.graphics.BitmapFactory.decodeStream(r3, r1, r4);	 Catch:{ FileNotFoundException -> 0x010f, all -> 0x0109 }
        r1 = r4.outHeight;	 Catch:{ FileNotFoundException -> 0x010f, all -> 0x0109 }
        r2 = r4.outWidth;	 Catch:{ FileNotFoundException -> 0x010f, all -> 0x0109 }
        if (r1 > r9) goto L_0x001b;
    L_0x0019:
        if (r2 <= r8) goto L_0x0116;
    L_0x001b:
        if (r2 <= r1) goto L_0x006c;
    L_0x001d:
        r1 = (float) r1;	 Catch:{ FileNotFoundException -> 0x010f, all -> 0x0109 }
        r2 = (float) r9;	 Catch:{ FileNotFoundException -> 0x010f, all -> 0x0109 }
        r1 = r1 / r2;
        r1 = java.lang.Math.round(r1);	 Catch:{ FileNotFoundException -> 0x010f, all -> 0x0109 }
    L_0x0024:
        r2 = new java.io.FileInputStream;	 Catch:{ FileNotFoundException -> 0x010f, all -> 0x0109 }
        r2.<init>(r7);	 Catch:{ FileNotFoundException -> 0x010f, all -> 0x0109 }
        r6 = 0;
        r4.inJustDecodeBounds = r6;	 Catch:{ FileNotFoundException -> 0x0113 }
        r4.inSampleSize = r1;	 Catch:{ FileNotFoundException -> 0x0113 }
        r1 = 0;
        r4 = android.graphics.BitmapFactory.decodeStream(r2, r1, r4);	 Catch:{ FileNotFoundException -> 0x0113 }
        if (r3 == 0) goto L_0x0038;
    L_0x0035:
        r3.close();	 Catch:{ IOException -> 0x0074 }
    L_0x0038:
        if (r2 == 0) goto L_0x003d;
    L_0x003a:
        r2.close();	 Catch:{ IOException -> 0x0074 }
    L_0x003d:
        r3 = r4;
    L_0x003e:
        if (r3 == 0) goto L_0x006b;
    L_0x0040:
        r4 = a(r3, r10, r8, r9, r5);
        r2 = new java.io.ByteArrayOutputStream;	 Catch:{ Exception -> 0x0106, all -> 0x00e8 }
        r2.<init>();	 Catch:{ Exception -> 0x0106, all -> 0x00e8 }
        r1 = "";
        r1 = r10.equals(r1);	 Catch:{ Exception -> 0x00be }
        if (r1 == 0) goto L_0x00b6;
    L_0x0051:
        r1 = android.graphics.Bitmap.CompressFormat.JPEG;	 Catch:{ Exception -> 0x00be }
        r5 = 100;
        r3.compress(r1, r5, r2);	 Catch:{ Exception -> 0x00be }
    L_0x0058:
        r0 = r2.toByteArray();	 Catch:{ Exception -> 0x00be }
        if (r3 == 0) goto L_0x0061;
    L_0x005e:
        r3.recycle();	 Catch:{ Exception -> 0x00df }
    L_0x0061:
        if (r4 == 0) goto L_0x0066;
    L_0x0063:
        r4.recycle();	 Catch:{ Exception -> 0x00df }
    L_0x0066:
        if (r2 == 0) goto L_0x006b;
    L_0x0068:
        r2.close();	 Catch:{ Exception -> 0x00df }
    L_0x006b:
        return r0;
    L_0x006c:
        r1 = (float) r2;
        r2 = (float) r8;
        r1 = r1 / r2;
        r1 = java.lang.Math.round(r1);	 Catch:{ FileNotFoundException -> 0x010f, all -> 0x0109 }
        goto L_0x0024;
    L_0x0074:
        r1 = move-exception;
        r2 = "BridgeMMMedia";
        r3 = "Error closing file";
        com.millennialmedia.android.MMLog.e(r2, r3, r1);
        r3 = r4;
        goto L_0x003e;
    L_0x007e:
        r1 = move-exception;
        r2 = r0;
        r3 = r0;
    L_0x0081:
        r4 = "BridgeMMMedia";
        r6 = "Can't find file to scale bitmap";
        com.millennialmedia.android.MMLog.e(r4, r6, r1);	 Catch:{ all -> 0x010d }
        if (r3 == 0) goto L_0x008d;
    L_0x008a:
        r3.close();	 Catch:{ IOException -> 0x0094 }
    L_0x008d:
        if (r2 == 0) goto L_0x0092;
    L_0x008f:
        r2.close();	 Catch:{ IOException -> 0x0094 }
    L_0x0092:
        r3 = r0;
        goto L_0x003e;
    L_0x0094:
        r1 = move-exception;
        r2 = "BridgeMMMedia";
        r3 = "Error closing file";
        com.millennialmedia.android.MMLog.e(r2, r3, r1);
        r3 = r0;
        goto L_0x003e;
    L_0x009e:
        r1 = move-exception;
        r2 = r0;
        r3 = r0;
        r0 = r1;
    L_0x00a2:
        if (r3 == 0) goto L_0x00a7;
    L_0x00a4:
        r3.close();	 Catch:{ IOException -> 0x00ad }
    L_0x00a7:
        if (r2 == 0) goto L_0x00ac;
    L_0x00a9:
        r2.close();	 Catch:{ IOException -> 0x00ad }
    L_0x00ac:
        throw r0;
    L_0x00ad:
        r1 = move-exception;
        r2 = "BridgeMMMedia";
        r3 = "Error closing file";
        com.millennialmedia.android.MMLog.e(r2, r3, r1);
        goto L_0x00ac;
    L_0x00b6:
        r1 = android.graphics.Bitmap.CompressFormat.JPEG;	 Catch:{ Exception -> 0x00be }
        r5 = 100;
        r4.compress(r1, r5, r2);	 Catch:{ Exception -> 0x00be }
        goto L_0x0058;
    L_0x00be:
        r1 = move-exception;
    L_0x00bf:
        r5 = "BridgeMMMedia";
        r6 = "Error scaling bitmap";
        com.millennialmedia.android.MMLog.e(r5, r6, r1);	 Catch:{ all -> 0x0104 }
        if (r3 == 0) goto L_0x00cb;
    L_0x00c8:
        r3.recycle();	 Catch:{ Exception -> 0x00d6 }
    L_0x00cb:
        if (r4 == 0) goto L_0x00d0;
    L_0x00cd:
        r4.recycle();	 Catch:{ Exception -> 0x00d6 }
    L_0x00d0:
        if (r2 == 0) goto L_0x006b;
    L_0x00d2:
        r2.close();	 Catch:{ Exception -> 0x00d6 }
        goto L_0x006b;
    L_0x00d6:
        r1 = move-exception;
        r2 = "BridgeMMMedia";
        r3 = "Error closing file";
        com.millennialmedia.android.MMLog.e(r2, r3, r1);
        goto L_0x006b;
    L_0x00df:
        r1 = move-exception;
        r2 = "BridgeMMMedia";
        r3 = "Error closing file";
        com.millennialmedia.android.MMLog.e(r2, r3, r1);
        goto L_0x006b;
    L_0x00e8:
        r1 = move-exception;
        r2 = r0;
        r0 = r1;
    L_0x00eb:
        if (r3 == 0) goto L_0x00f0;
    L_0x00ed:
        r3.recycle();	 Catch:{ Exception -> 0x00fb }
    L_0x00f0:
        if (r4 == 0) goto L_0x00f5;
    L_0x00f2:
        r4.recycle();	 Catch:{ Exception -> 0x00fb }
    L_0x00f5:
        if (r2 == 0) goto L_0x00fa;
    L_0x00f7:
        r2.close();	 Catch:{ Exception -> 0x00fb }
    L_0x00fa:
        throw r0;
    L_0x00fb:
        r1 = move-exception;
        r2 = "BridgeMMMedia";
        r3 = "Error closing file";
        com.millennialmedia.android.MMLog.e(r2, r3, r1);
        goto L_0x00fa;
    L_0x0104:
        r0 = move-exception;
        goto L_0x00eb;
    L_0x0106:
        r1 = move-exception;
        r2 = r0;
        goto L_0x00bf;
    L_0x0109:
        r1 = move-exception;
        r2 = r0;
        r0 = r1;
        goto L_0x00a2;
    L_0x010d:
        r0 = move-exception;
        goto L_0x00a2;
    L_0x010f:
        r1 = move-exception;
        r2 = r0;
        goto L_0x0081;
    L_0x0113:
        r1 = move-exception;
        goto L_0x0081;
    L_0x0116:
        r1 = r5;
        goto L_0x0024;
        */
    }

    private boolean b() {
        Context context = (Context) this.b.get();
        if (context == null || context.getPackageManager().checkPermission("android.permission.CAMERA", context.getPackageName()) != 0) {
            return false;
        }
        Intent intent = new Intent("android.media.action.IMAGE_CAPTURE");
        return context.getPackageManager().queryIntentActivities(intent, Cast.MAX_MESSAGE_LENGTH).size() > 0;
    }

    private boolean c() {
        Context context = (Context) this.b.get();
        if (context == null) {
            return false;
        }
        Intent intent = new Intent();
        intent.setType("image/*");
        intent.setAction("android.intent.action.GET_CONTENT");
        return context.getPackageManager().queryIntentActivities(intent, Cast.MAX_MESSAGE_LENGTH).size() > 0;
    }

    MMJSResponse a(String str, Map map) {
        if (this.e.equals(str)) {
            return isSourceTypeAvailable(map);
        }
        if (this.f.equals(str)) {
            return availableSourceTypes(map);
        }
        if (this.g.equals(str)) {
            return getPicture(map);
        }
        if (this.h.equals(str)) {
            return writeToPhotoLibrary(map);
        }
        if (this.i.equals(str)) {
            return playVideo(map);
        }
        if (this.j.equals(str)) {
            return stopAudio(map);
        }
        if (this.k.equals(str)) {
            return getDeviceVolume(map);
        }
        if (this.l.equals(str)) {
            return playAudio(map);
        }
        return this.m.equals(str) ? playSound(map) : null;
    }

    public MMJSResponse availableSourceTypes(Map map) {
        JSONArray jSONArray = new JSONArray();
        if (b()) {
            jSONArray.put("Camera");
        }
        if (c()) {
            jSONArray.put("Photo Library");
        }
        MMJSResponse mMJSResponse = new MMJSResponse();
        mMJSResponse.c = 1;
        mMJSResponse.d = jSONArray;
        return mMJSResponse;
    }

    public MMJSResponse getDeviceVolume(Map map) {
        Context context = (Context) this.b.get();
        if (context == null) {
            return MMJSResponse.b("no volume available");
        }
        int s = MMSDK.s(context);
        MMJSResponse a = MMJSResponse.a();
        a.d = Integer.valueOf(s);
        return a;
    }

    public synchronized MMJSResponse getPicture(Map map) {
        MMJSResponse b;
        try {
            Context context = (Context) this.b.get();
            String str = (String) map.get("sourceType");
            String str2 = (String) map.get("constrainHeight");
            String str3 = (String) map.get("constrainWidth");
            String str4 = (String) map.get("contentMode");
            if (str4 == null) {
                str4 = AdTrackerConstants.BLANK;
            }
            if (str2 == null || str3 == null) {
                b = MMJSResponse.b("Missing constrainHeight and/or constrainWidth");
            } else {
                int parseFloat = (int) Float.parseFloat(str2);
                int parseFloat2 = (int) Float.parseFloat(str3);
                if (parseFloat * parseFloat2 > 360000) {
                    b = MMJSResponse.b("constrainHeight * constrainWidth > 360000");
                } else {
                    if (!(context == null || str == null)) {
                        File file = new File(AdCache.h(context), "tmp_mm_" + String.valueOf(System.currentTimeMillis()) + ".jpg");
                        if (!(str.equalsIgnoreCase("Camera") && b())) {
                            if (!str.equalsIgnoreCase("Photo Library")) {
                            }
                        }
                        try {
                            o = new Object();
                            synchronized (o) {
                                IntentUtils.a(context, file, str);
                                o.wait();
                            }
                            o = null;
                        } catch (Exception e) {
                            MMLog.e(n, "Error with pickerActivity synchronization", e);
                            o = null;
                        }
                        if (file != null && file.exists() && file.length() > 0) {
                            byte[] a = a(file, parseFloat2, parseFloat, str4);
                            file.delete();
                            if (a != null) {
                                b = new MMJSResponse();
                                b.c = 1;
                                b.e = a;
                            }
                        }
                    }
                    b = null;
                }
            }
        } catch (Throwable th) {
        }
        return b;
    }

    public MMJSResponse isSourceTypeAvailable(Map map) {
        String str = (String) map.get("sourceType");
        if (str != null) {
            if (str.equalsIgnoreCase("Camera") && b()) {
                return MMJSResponse.a("true");
            }
            if (str.equalsIgnoreCase("Photo Library") && c()) {
                return MMJSResponse.a("true");
            }
        }
        return MMJSResponse.b("false");
    }

    public MMJSResponse playAudio(Map map) {
        Context context = (Context) this.b.get();
        String str = (String) map.get(d);
        if (!(context == null || str == null)) {
            Audio a = Audio.a(context);
            if (a == null) {
                return null;
            }
            if (a.a()) {
                return MMJSResponse.b("Audio already playing.");
            }
            if (str.startsWith(MediaService.DEFAULT_MEDIA_DELIVERY)) {
                return a.a(Uri.parse(str), Boolean.parseBoolean((String) map.get("repeat")));
            }
            File g = AdCache.g(context, str);
            if (g.exists()) {
                return a.a(Uri.fromFile(g), Boolean.parseBoolean((String) map.get("repeat")));
            }
        }
        return null;
    }

    public MMJSResponse playSound(Map map) {
        if (this.b == null) {
            return null;
        }
        Context context = (Context) this.b.get();
        String str = (String) map.get(d);
        if (!(context == null || str == null)) {
            File g = AdCache.g(context, str);
            if (g.exists()) {
                Audio a = Audio.a((Context) this.b.get());
                if (a != null) {
                    return a.a(g);
                }
            }
        }
        return null;
    }

    public MMJSResponse playVideo(Map map) {
        Context context = (Context) this.b.get();
        String str = (String) map.get(d);
        if (context == null || str == null || !str.startsWith(MediaService.DEFAULT_MEDIA_DELIVERY)) {
            File g = AdCache.g(context, str);
            if (g.exists()) {
                IntentUtils.a(context, g);
                return MMJSResponse.a(g.getName());
            }
        } else {
            IntentUtils.a(context, str);
            return MMJSResponse.a(str);
        }
        return null;
    }

    public MMJSResponse stopAudio(Map map) {
        if (this.b != null) {
            Audio a = Audio.a((Context) this.b.get());
            if (a != null) {
                return a.b();
            }
        }
        return null;
    }

    public synchronized MMJSResponse writeToPhotoLibrary(Map map) {
        MMJSResponse mMJSResponse;
        Context context = (Context) this.b.get();
        String str = (String) map.get(d);
        if (context == null || TextUtils.isEmpty(str)) {
            mMJSResponse = null;
        } else {
            Uri parse = Uri.parse((String) map.get(d));
            String str2 = "Pictures";
            str2 = parse.getLastPathSegment();
            String scheme = parse.getScheme();
            if (scheme == null || !scheme.equals(MediaService.DEFAULT_MEDIA_DELIVERY) || AdCache.a(parse.toString(), "Pictures", str2, context)) {
                File c = AdCache.c(context, "Pictures", parse.getLastPathSegment());
                if (c.exists()) {
                    a(c.getAbsolutePath());
                    mMJSResponse = AdCache.a() ? MMJSResponse.a("Image saved to photo library") : MMJSResponse.b("Storage not mounted, cannot add image to photo library photo library");
                } else {
                    mMJSResponse = MMJSResponse.b("No file at " + c.getAbsolutePath());
                }
            } else {
                mMJSResponse = MMJSResponse.b("Failed to download");
            }
        }
        return mMJSResponse;
    }
}