package com.zeptolab.ctr;

import android.content.res.AssetFileDescriptor;
import android.content.res.AssetManager;
import android.media.SoundPool;
import android.support.v4.widget.ExploreByTouchHelper;
import android.util.SparseIntArray;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.zeptolab.ctr.CtrSoundManager.StreamManager.Stream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.TreeSet;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public class CtrSoundManager {
    private static final int STREAMS = 6;
    private AssetManager assets;
    private ThreadPoolExecutor exe;
    private Set loaded;
    private AndroidMusicPlayer musicPlayer;
    private SoundPool soundPool;
    private SparseIntArray sounds;
    private StreamManager streamManager;

    class AnonymousClass_1 implements Runnable {
        final /* synthetic */ int val$id;
        final /* synthetic */ boolean val$looped;

        AnonymousClass_1(int i, boolean z) {
            this.val$id = i;
            this.val$looped = z;
        }

        public void run() {
            int i = CtrSoundManager.this.sounds.get(this.val$id);
            int play = CtrSoundManager.this.soundPool.play(i, 1.0f, 1.0f, 0, this.val$looped ? -1 : 0, 1.0f);
            if (play != 0) {
                Stream oldestUsedStream = CtrSoundManager.this.streamManager.getOldestUsedStream();
                oldestUsedStream.androidStream = play;
                oldestUsedStream.soundID = i;
                oldestUsedStream.loop = this.val$looped;
            }
        }
    }

    private static class StreamManager {
        private Stream[] streams;

        public class Stream {
            public int androidStream;
            public boolean loop;
            public int soundID;

            public Stream() {
                reset();
            }

            public void reset() {
                this.androidStream = Integer.MIN_VALUE;
                this.soundID = Integer.MIN_VALUE;
                this.loop = false;
            }
        }

        public StreamManager() {
            this.streams = new Stream[6];
            int i = 0;
            while (i < 6) {
                this.streams[i] = new Stream();
                i++;
            }
        }

        public List getAllAndroidStreams() {
            List arrayList = new ArrayList();
            Stream[] streamArr = this.streams;
            int length = streamArr.length;
            int i = 0;
            while (i < length) {
                Stream stream = streamArr[i];
                if (stream.androidStream != Integer.MIN_VALUE) {
                    arrayList.add(Integer.valueOf(stream.androidStream));
                }
                i++;
            }
            return arrayList;
        }

        public Stream getOldestUsedStream() {
            Stream stream = this.streams[0];
            Stream[] streamArr = this.streams;
            int length = streamArr.length;
            int i = 0;
            Stream stream2 = null;
            while (i < length) {
                Stream stream3 = streamArr[i];
                if (stream3.androidStream == Integer.MIN_VALUE) {
                    return stream3;
                }
                if (!stream3.loop) {
                    if (stream2 == null || stream2.androidStream > stream3.androidStream) {
                        stream2 = stream3;
                    }
                }
                if (stream.androidStream <= stream3.androidStream) {
                    stream3 = stream;
                }
                i++;
                stream = stream3;
            }
            return stream2 != null ? stream2 : stream;
        }

        public List getStreams() {
            List arrayList = new ArrayList();
            Stream[] streamArr = this.streams;
            int length = streamArr.length;
            int i = 0;
            while (i < length) {
                Stream stream = streamArr[i];
                if (stream.androidStream != Integer.MIN_VALUE) {
                    arrayList.add(stream);
                }
                i++;
            }
            return arrayList;
        }

        public List getStreamsForSound(int i) {
            List arrayList = new ArrayList();
            Stream[] streamArr = this.streams;
            int length = streamArr.length;
            int i2 = 0;
            while (i2 < length) {
                Stream stream = streamArr[i2];
                if (stream.androidStream != Integer.MIN_VALUE && stream.soundID == i) {
                    arrayList.add(stream);
                }
                i2++;
            }
            return arrayList;
        }
    }

    public CtrSoundManager(AssetManager assetManager) {
        this.soundPool = new SoundPool(6, 3, 0);
        this.exe = new ThreadPoolExecutor(1, 6, 1, TimeUnit.SECONDS, new LinkedBlockingQueue());
        this.sounds = new SparseIntArray();
        this.streamManager = new StreamManager();
        this.loaded = new TreeSet();
        this.assets = assetManager;
    }

    public void loadSound(String str, int i) {
        if (!this.loaded.contains(str)) {
            AssetFileDescriptor assetFileDescriptor = null;
            try {
                this.loaded.add(str);
                this.sounds.append(i, this.soundPool.load(this.assets.openFd(str), 1));
            } catch (Exception e) {
                Exception exception = e;
                if (assetFileDescriptor != null) {
                    try {
                        assetFileDescriptor.close();
                    } catch (IOException e2) {
                        e2.printStackTrace();
                    }
                }
                exception.printStackTrace();
            }
        }
    }

    public void onDestroy() {
        this.soundPool.release();
    }

    public void playMusic(String str) {
        String[] split = str.split("\\.");
        String str2 = AdTrackerConstants.BLANK;
        int i = 0;
        while (i < split.length - 1) {
            str2 = str2 + split[i] + ".";
            i++;
        }
        String str3 = str2 + "ogg";
        try {
            if (this.musicPlayer == null || !this.musicPlayer.getName().equals(str3)) {
                stopMusic();
                this.musicPlayer = new AndroidMusicPlayer(str3, this.assets.openFd(str3));
                this.musicPlayer.setLoopCount(Integer.MAX_VALUE);
                this.musicPlayer.start();
            }
        } catch (Exception e) {
        }
    }

    public void playSoundLooped(int i, boolean z) {
        if (this.sounds.get(i, ExploreByTouchHelper.INVALID_ID) != Integer.MIN_VALUE) {
            this.exe.execute(new AnonymousClass_1(i, z));
        }
    }

    public void resume() {
        Iterator it = this.streamManager.getAllAndroidStreams().iterator();
        while (it.hasNext()) {
            this.soundPool.resume(((Integer) it.next()).intValue());
        }
        try {
            if (this.musicPlayer != null) {
                this.musicPlayer.start();
            }
        } catch (Exception e) {
        }
    }

    public void stopAllSounds() {
        stopMusic();
        Iterator it = this.streamManager.getStreams().iterator();
        while (it.hasNext()) {
            Stream stream = (Stream) it.next();
            this.soundPool.stop(stream.androidStream);
            stream.reset();
        }
    }

    public void stopMusic() {
        if (this.musicPlayer != null) {
            this.musicPlayer.stop();
            this.musicPlayer.close();
            this.musicPlayer = null;
        }
    }

    public void stopSound(int i, int i2) {
        List streamsForSound = this.streamManager.getStreamsForSound(this.sounds.get(i));
        Collections.sort(streamsForSound, new Comparator() {
            public int compare(Stream stream, Stream stream2) {
                return Integer.signum(stream.androidStream - stream2.androidStream);
            }
        });
        Iterator it = streamsForSound.iterator();
        while (it.hasNext()) {
            Stream stream = (Stream) it.next();
            if (i2 != 0) {
                i2--;
                this.soundPool.stop(stream.androidStream);
                stream.reset();
            } else {
                return;
            }
        }
    }

    public void suspend() {
        Iterator it = this.streamManager.getAllAndroidStreams().iterator();
        while (it.hasNext()) {
            this.soundPool.pause(((Integer) it.next()).intValue());
        }
        try {
            if (this.musicPlayer != null) {
                this.musicPlayer.stop();
            }
        } catch (Exception e) {
        }
    }
}