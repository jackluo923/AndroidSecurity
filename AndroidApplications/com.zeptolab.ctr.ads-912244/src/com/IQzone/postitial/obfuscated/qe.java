package com.IQzone.postitial.obfuscated;

import android.content.Context;
import android.media.MediaPlayer;
import android.media.MediaPlayer.OnBufferingUpdateListener;
import android.media.MediaPlayer.OnCompletionListener;
import android.media.MediaPlayer.OnErrorListener;
import android.media.MediaPlayer.OnPreparedListener;
import android.media.MediaPlayer.OnVideoSizeChangedListener;
import android.net.Uri;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.SurfaceHolder;
import android.view.SurfaceHolder.Callback;
import android.view.SurfaceView;
import android.widget.MediaController.MediaPlayerControl;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import java.io.IOException;

public class qe extends SurfaceView implements MediaPlayerControl {
    private static final ql a;
    private int A;
    private Uri b;
    private int c;
    private int d;
    private int e;
    private SurfaceHolder f;
    private MediaPlayer g;
    private int h;
    private int i;
    private int j;
    private int k;
    private OnCompletionListener l;
    private OnPreparedListener m;
    private int n;
    private OnErrorListener o;
    private int p;
    private boolean q;
    private boolean r;
    private boolean s;
    private final Context t;
    private OnVideoSizeChangedListener u;
    private OnPreparedListener v;
    private final OnCompletionListener w;
    private final OnErrorListener x;
    private final OnBufferingUpdateListener y;
    private Callback z;

    static {
        a = new ql();
    }

    public qe(Context context) {
        super(context);
        this.d = 0;
        this.e = 0;
        this.f = null;
        this.g = null;
        this.u = new qf(this);
        this.v = new qg(this);
        this.w = new qh(this);
        this.x = new qi(this);
        this.y = new qj(this);
        this.z = new qk(this);
        this.A = 0;
        this.h = 0;
        this.i = 0;
        getHolder().addCallback(this.z);
        getHolder().setType(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE);
        setFocusable(true);
        setFocusableInTouchMode(true);
        requestFocus();
        this.d = 0;
        this.e = 0;
        this.t = context;
    }

    private void a(boolean z) {
        if (this.g != null) {
            this.g.reset();
            this.g.release();
            this.g = null;
            this.d = 0;
            if (z) {
                this.e = 0;
            }
        }
    }

    private void b() {
        if (this.b != null && this.f != null) {
            a(false);
            try {
                this.g = new MediaPlayer();
                this.g.setOnPreparedListener(this.v);
                this.g.setOnVideoSizeChangedListener(this.u);
                this.c = -1;
                this.g.setOnCompletionListener(this.w);
                this.g.setOnErrorListener(this.x);
                this.g.setOnBufferingUpdateListener(this.y);
                this.n = 0;
                this.g.setDataSource(this.t, this.b);
                this.g.setDisplay(this.f);
                this.g.setAudioStreamType(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE);
                this.g.setScreenOnWhilePlaying(true);
                this.g.prepareAsync();
                this.d = 1;
                MediaPlayer mediaPlayer = this.g;
            } catch (IOException e) {
                Log.w("VideoView", new StringBuilder("<1> Unable to open content: ").append(this.b).toString(), e);
                this.d = -1;
                this.e = -1;
                this.x.onError(this.g, 1, 0);
            } catch (IllegalArgumentException e2) {
                Log.w("VideoView", new StringBuilder("<2> Unable to open content: ").append(this.b).toString(), e2);
                this.d = -1;
                this.e = -1;
                this.x.onError(this.g, 1, 0);
            }
        }
    }

    private boolean c() {
        return this.g != null && this.d != -1 && this.d != 0 && this.d != 1;
    }

    public final void a(OnCompletionListener onCompletionListener) {
        this.l = onCompletionListener;
    }

    public final void a(OnErrorListener onErrorListener) {
        this.o = onErrorListener;
    }

    public final void a(Uri uri) {
        this.b = uri;
        this.p = 0;
        b();
        requestLayout();
        invalidate();
    }

    public boolean canPause() {
        return this.q;
    }

    public boolean canSeekBackward() {
        return this.r;
    }

    public boolean canSeekForward() {
        return this.s;
    }

    public int getAudioSessionId() {
        int i = this.A + 1;
        this.A = i;
        return i;
    }

    public int getBufferPercentage() {
        return this.g != null ? this.n : 0;
    }

    public int getCurrentPosition() {
        return c() ? this.g.getCurrentPosition() : 0;
    }

    public int getDuration() {
        if (!c()) {
            this.c = -1;
            return this.c;
        } else if (this.c > 0) {
            return this.c;
        } else {
            this.c = this.g.getDuration();
            return this.c;
        }
    }

    public boolean isPlaying() {
        return c() && this.g != null ? this.g.isPlaying() : false;
    }

    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        c();
        return super.onKeyDown(i, keyEvent);
    }

    protected void onMeasure(int i, int i2) {
        int defaultSize = getDefaultSize(this.h, i);
        int defaultSize2 = getDefaultSize(this.i, i2);
        if (this.h > 0 && this.i > 0) {
            if (this.h * defaultSize2 > this.i * defaultSize) {
                defaultSize2 = (this.i * defaultSize) / this.h;
            } else if (this.h * defaultSize2 < this.i * defaultSize) {
                defaultSize = (this.h * defaultSize2) / this.i;
            }
        }
        setMeasuredDimension(defaultSize, defaultSize2);
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        c();
        return false;
    }

    public boolean onTrackballEvent(MotionEvent motionEvent) {
        c();
        return false;
    }

    public void pause() {
        if (c() && this.g.isPlaying()) {
            this.g.pause();
            this.d = 4;
        }
        this.e = 4;
    }

    public void seekTo(int i) {
        if (c()) {
            this.g.seekTo(i);
            this.p = 0;
        } else if (i == 0) {
            this.p = 1;
        } else {
            this.p = i;
        }
    }

    public void start() {
        if (c()) {
            this.g.start();
            this.d = 3;
        }
        this.e = 3;
    }
}