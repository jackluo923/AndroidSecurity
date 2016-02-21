package com.zeptolab.ctr;

import android.content.res.AssetFileDescriptor;
import android.media.MediaPlayer;
import android.media.MediaPlayer.OnCompletionListener;
import android.media.MediaPlayer.OnErrorListener;
import android.media.MediaPlayer.OnPreparedListener;
import com.brightcove.player.event.EventType;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.zbuild.ZBuildConfig;

public class AndroidMusicPlayer implements OnCompletionListener, OnErrorListener, OnPreparedListener {
    private static final int STATE_NOT_STARTED = 0;
    private static final int STATE_STARTED = 1;
    private int currentLoop;
    private AssetFileDescriptor fd;
    private int loopCount;
    private String name;
    private boolean playOnPrepared;
    private boolean playOnResume;
    private MediaPlayer player;
    private int state;
    private boolean suspended;

    protected AndroidMusicPlayer(String str, AssetFileDescriptor assetFileDescriptor) {
        this.state = 0;
        this.loopCount = 1;
        this.currentLoop = 0;
        this.suspended = false;
        this.playOnResume = false;
        this.playOnPrepared = false;
        this.name = str;
        this.fd = assetFileDescriptor;
        logInfo("new");
    }

    private void createPlayer() {
        try {
            this.player = new MediaPlayer();
            this.player.setDataSource(this.fd.getFileDescriptor(), this.fd.getStartOffset(), this.fd.getLength());
            this.player.setLooping(false);
            this.player.setOnCompletionListener(this);
            this.player.setOnErrorListener(this);
            this.player.setOnPreparedListener(this);
            this.player.setAudioStreamType(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE);
        } catch (Exception e) {
            Exception exception = e;
            releasePlayer();
            logError("create player: " + exception + " / " + exception.getMessage());
            if (this.player != null) {
                this.player.release();
            }
        }
    }

    private void logError(String str) {
        L.e("CTR", "Sound " + this.name + " error: " + str);
    }

    private void logInfo(String str) {
    }

    private void releasePlayer() {
        if (this.player != null) {
            try {
                this.player.reset();
            } catch (Exception e) {
                logError(ZBuildConfig.target);
            }
            this.player.release();
            this.player = null;
            this.state = 0;
        }
    }

    public synchronized void close() {
        try {
            releasePlayer();
            if (this.fd != null) {
                this.fd.close();
                this.fd = null;
            }
        } catch (Exception e) {
            logError("close");
        }
    }

    protected void finalize() {
        close();
    }

    public String getName() {
        return this.name;
    }

    public synchronized void onCompletion(MediaPlayer mediaPlayer) {
        if (!this.suspended) {
            logInfo("on complete");
            this.currentLoop++;
            if (this.currentLoop < this.loopCount || this.loopCount < 0) {
                logInfo("loop restart");
                try {
                    this.player.start();
                } catch (Exception e) {
                    logError("on complete restart error");
                }
            } else {
                this.state = 0;
                releasePlayer();
            }
        }
    }

    public boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
        logError("generall error " + i + " / " + i2);
        return false;
    }

    public synchronized void onPrepared(MediaPlayer mediaPlayer) {
        try {
            if (this.playOnPrepared) {
                this.playOnPrepared = false;
                this.player.seekTo(STATE_NOT_STARTED);
                this.player.start();
            }
        } catch (Exception e) {
            logError("on prepared");
        }
    }

    public synchronized void onResume() {
        logInfo("on resume");
        try {
            if (this.suspended) {
                this.suspended = false;
                if (this.playOnResume) {
                    start();
                }
            }
        } catch (Exception e) {
            logError("resume");
        }
    }

    public synchronized void onSuspend() {
        boolean z = true;
        synchronized (this) {
            logInfo("on suspend");
            try {
                if (!this.suspended) {
                    if (this.state != 1) {
                        z = false;
                    }
                    this.playOnResume = z;
                    this.suspended = true;
                    releasePlayer();
                }
            } catch (Exception e) {
                logError("suspend");
            }
        }
    }

    public synchronized void pause() {
        logInfo(EventType.PAUSE);
        try {
            if (this.suspended) {
                this.playOnResume = false;
                this.state = 0;
            } else if (this.state == 1 && this.player != null) {
                this.player.pause();
                this.state = 0;
            }
        } catch (Exception e) {
            logError(EventType.PAUSE);
        }
    }

    public synchronized void setLoopCount(int i) {
        try {
            this.loopCount = i;
            this.currentLoop = 0;
        } catch (Exception e) {
            logError("setLoopCount");
        }
    }

    public synchronized void start() {
        logInfo("start");
        try {
            if (this.suspended) {
                this.playOnResume = true;
            } else if (this.state != 1) {
                if (this.player == null) {
                    createPlayer();
                    this.playOnPrepared = true;
                    this.player.prepareAsync();
                } else {
                    this.player.seekTo(STATE_NOT_STARTED);
                    this.player.start();
                }
                this.state = 1;
            }
        } catch (Exception e) {
            logError("start");
        }
    }

    public synchronized void stop() {
        logInfo(EventType.STOP);
        try {
            if (this.suspended) {
                this.playOnResume = false;
            } else if (this.state == 1 && this.player != null) {
                releasePlayer();
            }
            this.state = 0;
            this.playOnPrepared = false;
        } catch (Exception e) {
            logError(EventType.STOP);
        }
    }
}