package com.admarvel.android.ads;

import android.content.Context;
import android.media.MediaPlayer;
import android.media.MediaPlayer.OnBufferingUpdateListener;
import android.media.MediaPlayer.OnCompletionListener;
import android.media.MediaPlayer.OnErrorListener;
import android.media.MediaPlayer.OnPreparedListener;
import android.media.MediaPlayer.OnSeekCompleteListener;
import android.media.MediaPlayer.OnVideoSizeChangedListener;
import android.net.Uri;
import android.util.Log;
import android.view.MotionEvent;
import android.view.SurfaceHolder;
import android.view.SurfaceHolder.Callback;
import android.view.SurfaceView;
import android.widget.MediaController.MediaPlayerControl;
import com.admarvel.android.ads.AdMarvelVideoActivity.k;
import com.admarvel.android.util.Logging;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.io.IOException;
import java.lang.ref.WeakReference;

class m extends SurfaceView implements MediaPlayerControl {
    private OnCompletionListener A;
    private OnSeekCompleteListener B;
    private OnErrorListener C;
    private OnBufferingUpdateListener D;
    OnVideoSizeChangedListener a;
    OnPreparedListener b;
    Callback c;
    private int d;
    private Uri e;
    private int f;
    private int g;
    private int h;
    private SurfaceHolder i;
    private MediaPlayer j;
    private int k;
    private int l;
    private int m;
    private int n;
    private OnCompletionListener o;
    private OnPreparedListener p;
    private int q;
    private OnErrorListener r;
    private int s;
    private boolean t;
    private boolean u;
    private boolean v;
    private Context w;
    private a x;
    private int y;
    private final WeakReference z;

    public static interface a {
        void h();

        void i();

        void j();

        void k();

        void l();

        void m();

        void n();
    }

    public m(Context context) {
        super(context);
        this.d = 0;
        this.g = 0;
        this.h = 0;
        this.i = null;
        this.j = null;
        this.y = 0;
        this.a = new OnVideoSizeChangedListener() {
            public void onVideoSizeChanged(MediaPlayer mediaPlayer, int i, int i2) {
                m.this.k = mediaPlayer.getVideoWidth();
                m.this.l = mediaPlayer.getVideoHeight();
                if (m.this.k != 0 && m.this.l != 0) {
                    m.this.getHolder().setFixedSize(m.this.k, m.this.l);
                }
            }
        };
        this.b = new OnPreparedListener() {
            public void onPrepared(MediaPlayer mediaPlayer) {
                m.this.g = GoogleScorer.CLIENT_PLUS;
                m.this.t = m.this.u = m.this.v = true;
                if (m.this.p != null) {
                    m.this.p.onPrepared(m.this.j);
                }
                if (m.this.x != null) {
                    m.this.x.k();
                }
                m.this.k = mediaPlayer.getVideoWidth();
                m.this.l = mediaPlayer.getVideoHeight();
                int f = m.this.s;
                if (f != 0) {
                    m.this.seekTo(f);
                }
                if (m.this.k != 0 && m.this.l != 0) {
                    m.this.getHolder().setFixedSize(m.this.k, m.this.l);
                    if (m.this.m != m.this.k || m.this.n != m.this.l) {
                        return;
                    }
                    if (m.this.h == 3) {
                        m.this.start();
                    } else if (!m.this.isPlaying() && f == 0 && m.this.getCurrentPosition() > 0) {
                    }
                } else if (m.this.h == 3) {
                    m.this.start();
                }
            }
        };
        this.A = new OnCompletionListener() {
            public void onCompletion(MediaPlayer mediaPlayer) {
                m.this.g = IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR;
                m.this.h = IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR;
                if (m.this.o != null) {
                    m.this.o.onCompletion(m.this.j);
                }
            }
        };
        this.B = new OnSeekCompleteListener() {
            public void onSeekComplete(MediaPlayer mediaPlayer) {
                if (m.this.x != null) {
                    m.this.x.k();
                }
            }
        };
        this.C = new OnErrorListener() {
            public boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
                m.this.g = -1;
                m.this.h = -1;
                if (m.this.x != null) {
                    m.this.x.k();
                }
                return (m.this.r == null || m.this.r.onError(m.this.j, i, i2)) ? true : true;
            }
        };
        this.D = new OnBufferingUpdateListener() {
            public void onBufferingUpdate(MediaPlayer mediaPlayer, int i) {
                m.this.q = i;
            }
        };
        this.c = new Callback() {
            public void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
                boolean z = 1;
                m.this.m = i2;
                m.this.n = i3;
                int i4 = m.this.h == 3;
                if (!(m.this.k == i2 && m.this.l == i3)) {
                    z = false;
                }
                if (m.this.j != null && i4 != 0 && i != 0) {
                    if (m.this.s != 0) {
                        m.this.seekTo(m.this.s);
                    }
                    m.this.start();
                }
            }

            public void surfaceCreated(SurfaceHolder surfaceHolder) {
                m.this.i = surfaceHolder;
                if (m.this.z != null) {
                    AdMarvelVideoActivity adMarvelVideoActivity = (AdMarvelVideoActivity) m.this.z.get();
                    if (adMarvelVideoActivity != null && adMarvelVideoActivity.i != k.d && adMarvelVideoActivity.i != k.e && adMarvelVideoActivity.i != k.f) {
                        m.this.h();
                    }
                } else {
                    m.this.h();
                }
            }

            public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
                m.this.i = null;
                m.this.a(true);
            }
        };
        this.w = context;
        this.z = null;
        g();
    }

    public m(AdMarvelVideoActivity adMarvelVideoActivity, Context context) {
        super(context);
        this.d = 0;
        this.g = 0;
        this.h = 0;
        this.i = null;
        this.j = null;
        this.y = 0;
        this.a = new OnVideoSizeChangedListener() {
            public void onVideoSizeChanged(MediaPlayer mediaPlayer, int i, int i2) {
                m.this.k = mediaPlayer.getVideoWidth();
                m.this.l = mediaPlayer.getVideoHeight();
                if (m.this.k != 0 && m.this.l != 0) {
                    m.this.getHolder().setFixedSize(m.this.k, m.this.l);
                }
            }
        };
        this.b = new OnPreparedListener() {
            public void onPrepared(MediaPlayer mediaPlayer) {
                m.this.g = GoogleScorer.CLIENT_PLUS;
                m.this.t = m.this.u = m.this.v = true;
                if (m.this.p != null) {
                    m.this.p.onPrepared(m.this.j);
                }
                if (m.this.x != null) {
                    m.this.x.k();
                }
                m.this.k = mediaPlayer.getVideoWidth();
                m.this.l = mediaPlayer.getVideoHeight();
                int f = m.this.s;
                if (f != 0) {
                    m.this.seekTo(f);
                }
                if (m.this.k != 0 && m.this.l != 0) {
                    m.this.getHolder().setFixedSize(m.this.k, m.this.l);
                    if (m.this.m != m.this.k || m.this.n != m.this.l) {
                        return;
                    }
                    if (m.this.h == 3) {
                        m.this.start();
                    } else if (!m.this.isPlaying() && f == 0 && m.this.getCurrentPosition() > 0) {
                    }
                } else if (m.this.h == 3) {
                    m.this.start();
                }
            }
        };
        this.A = new OnCompletionListener() {
            public void onCompletion(MediaPlayer mediaPlayer) {
                m.this.g = IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR;
                m.this.h = IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR;
                if (m.this.o != null) {
                    m.this.o.onCompletion(m.this.j);
                }
            }
        };
        this.B = new OnSeekCompleteListener() {
            public void onSeekComplete(MediaPlayer mediaPlayer) {
                if (m.this.x != null) {
                    m.this.x.k();
                }
            }
        };
        this.C = new OnErrorListener() {
            public boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
                m.this.g = -1;
                m.this.h = -1;
                if (m.this.x != null) {
                    m.this.x.k();
                }
                return (m.this.r == null || m.this.r.onError(m.this.j, i, i2)) ? true : true;
            }
        };
        this.D = new OnBufferingUpdateListener() {
            public void onBufferingUpdate(MediaPlayer mediaPlayer, int i) {
                m.this.q = i;
            }
        };
        this.c = new Callback() {
            public void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
                boolean z = 1;
                m.this.m = i2;
                m.this.n = i3;
                int i4 = m.this.h == 3;
                if (!(m.this.k == i2 && m.this.l == i3)) {
                    z = false;
                }
                if (m.this.j != null && i4 != 0 && i != 0) {
                    if (m.this.s != 0) {
                        m.this.seekTo(m.this.s);
                    }
                    m.this.start();
                }
            }

            public void surfaceCreated(SurfaceHolder surfaceHolder) {
                m.this.i = surfaceHolder;
                if (m.this.z != null) {
                    AdMarvelVideoActivity adMarvelVideoActivity = (AdMarvelVideoActivity) m.this.z.get();
                    if (adMarvelVideoActivity != null && adMarvelVideoActivity.i != k.d && adMarvelVideoActivity.i != k.e && adMarvelVideoActivity.i != k.f) {
                        m.this.h();
                    }
                } else {
                    m.this.h();
                }
            }

            public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
                m.this.i = null;
                m.this.a(true);
            }
        };
        this.w = context;
        this.z = new WeakReference(adMarvelVideoActivity);
        g();
    }

    private int a(long j) {
        return ((int) j) / 1000;
    }

    private void g() {
        this.k = 0;
        this.l = 0;
        getHolder().addCallback(this.c);
        getHolder().setType(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE);
        setFocusable(true);
        setFocusableInTouchMode(true);
        requestFocus();
        this.g = 0;
        this.h = 0;
    }

    private void h() {
        if (this.e != null && this.i != null) {
            if (Utils.checkNetworkConnection(this.w)) {
                a(false);
                try {
                    this.j = new MediaPlayer();
                    this.j.setOnPreparedListener(this.b);
                    this.j.setOnVideoSizeChangedListener(this.a);
                    this.f = -1;
                    this.j.setOnCompletionListener(this.A);
                    this.j.setOnErrorListener(this.C);
                    this.j.setOnBufferingUpdateListener(this.D);
                    this.j.setOnSeekCompleteListener(this.B);
                    this.q = 0;
                    this.j.setDataSource(this.w, this.e);
                    this.j.setDisplay(this.i);
                    this.j.setAudioStreamType(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE);
                    this.j.setScreenOnWhilePlaying(true);
                    this.j.prepareAsync();
                    this.g = 1;
                } catch (IOException e) {
                    this.g = -1;
                    this.h = -1;
                    this.C.onError(this.j, 1, 0);
                } catch (IllegalArgumentException e2) {
                    this.g = -1;
                    this.h = -1;
                    this.C.onError(this.j, 1, 0);
                }
            } else if (this.x != null) {
                this.x.l();
            }
        }
    }

    private boolean i() {
        return this.j != null && this.g != -1 && this.g != 0 && this.g != 1;
    }

    public void a() {
        try {
            if (this.j != null) {
                this.j.stop();
                this.j.reset();
                this.j.release();
                this.j = null;
                this.g = 0;
                this.h = 0;
                if (this.x != null) {
                    this.x.i();
                }
            }
        } catch (Exception e) {
            Throwable th = e;
            if (this.x != null) {
                this.x.m();
            }
            Logging.log(Log.getStackTraceString(th));
        }
    }

    public void a(int i) {
        if (Utils.checkNetworkConnection(this.w)) {
            if (this.j == null) {
                this.s = i;
                h();
            } else {
                this.j.seekTo(i);
            }
        } else if (this.x != null) {
            this.x.l();
        }
    }

    public void a(OnCompletionListener onCompletionListener) {
        this.o = onCompletionListener;
    }

    public void a(OnErrorListener onErrorListener) {
        this.r = onErrorListener;
    }

    public void a(OnPreparedListener onPreparedListener) {
        this.p = onPreparedListener;
    }

    public void a(Uri uri) {
        try {
            if (this.j != null) {
                Logging.log("AdMarvelVideoView-ResetMedia Player");
                this.j.reset();
            }
            this.e = uri;
            this.s = 0;
            h();
            requestLayout();
            invalidate();
        } catch (Exception e) {
            Throwable th = e;
            if (this.x != null) {
                this.x.m();
            }
            Logging.log(Log.getStackTraceString(th));
        }
    }

    public void a(a aVar) {
        this.x = aVar;
    }

    public void a(boolean z) {
        try {
            if (this.j != null) {
                this.j.reset();
                this.j.release();
                this.j = null;
                this.g = 0;
                if (z) {
                    this.h = 0;
                }
            }
        } catch (Exception e) {
            Throwable th = e;
            if (this.x != null) {
                this.x.m();
            }
            Logging.log(Log.getStackTraceString(th));
        }
    }

    public void b() {
        if (i()) {
            this.j.setVolume(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
        }
    }

    public void c() {
        if (i()) {
            this.j.setVolume(1.0f, 1.0f);
        }
    }

    public boolean canPause() {
        return this.t;
    }

    public boolean canSeekBackward() {
        return this.u;
    }

    public boolean canSeekForward() {
        return this.v;
    }

    public void d() {
        this.y = getCurrentPosition();
    }

    public void e() {
        if (this.y > 0) {
            if (a((long) this.y) == a((long) getCurrentPosition())) {
                start();
                if (this.x != null) {
                    this.x.k();
                }
            } else {
                a(this.y);
            }
            if (this.x != null) {
                this.x.j();
            }
        } else {
            start();
        }
    }

    public int f() {
        return this.d;
    }

    public int getBufferPercentage() {
        return this.j != null ? this.q : 0;
    }

    public int getCurrentPosition() {
        if (!i()) {
            return 0;
        }
        int currentPosition = this.j.getCurrentPosition();
        this.d = currentPosition;
        return currentPosition;
    }

    public int getDuration() {
        if (!i()) {
            this.f = -1;
            return this.f;
        } else if (this.f > 0) {
            return this.f;
        } else {
            this.f = this.j.getDuration();
            return this.f;
        }
    }

    public boolean isPlaying() {
        return i() && this.j.isPlaying();
    }

    protected void onMeasure(int i, int i2) {
        int defaultSize = getDefaultSize(this.k, i);
        int defaultSize2 = getDefaultSize(this.l, i2);
        if (this.k > 0 && this.l > 0) {
            if (this.k * defaultSize2 > this.l * defaultSize) {
                defaultSize2 = (this.l * defaultSize) / this.k;
            } else if (this.k * defaultSize2 < this.l * defaultSize) {
                defaultSize = (this.k * defaultSize2) / this.l;
            }
        }
        setMeasuredDimension(defaultSize, defaultSize2);
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.x != null) {
            this.x.n();
        }
        return false;
    }

    public boolean onTrackballEvent(MotionEvent motionEvent) {
        return false;
    }

    public void pause() {
        try {
            this.g = 4;
            this.y = getCurrentPosition();
            if (i() && this.j.isPlaying()) {
                this.j.pause();
                if (this.x != null) {
                    this.x.h();
                }
            }
            this.h = 4;
        } catch (IllegalStateException e) {
            Throwable th = e;
            if (this.x != null) {
                this.x.m();
            }
            Logging.log(Log.getStackTraceString(th));
        }
    }

    public void seekTo(int i) {
        if (Utils.checkNetworkConnection(this.w)) {
            if (i()) {
                this.j.seekTo(i);
                this.s = 0;
            } else {
                this.s = i;
            }
        } else if (this.x != null) {
            this.x.l();
        }
    }

    public void start() {
        try {
            if (i()) {
                this.j.start();
                this.g = 3;
            }
            this.h = 3;
            this.y = 0;
        } catch (IllegalStateException e) {
            Throwable th = e;
            if (this.x != null) {
                this.x.m();
            }
            Logging.log(Log.getStackTraceString(th));
        }
    }
}