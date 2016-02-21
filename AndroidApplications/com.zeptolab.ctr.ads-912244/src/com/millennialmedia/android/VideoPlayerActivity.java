package com.millennialmedia.android;

import android.media.MediaPlayer;
import android.media.MediaPlayer.OnCompletionListener;
import android.media.MediaPlayer.OnErrorListener;
import android.media.MediaPlayer.OnPreparedListener;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.PowerManager;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup.LayoutParams;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.Toast;
import android.widget.VideoView;
import com.google.android.gms.wallet.WalletConstants;
import com.inmobi.androidsdk.impl.AdException;
import com.inmobi.androidsdk.impl.ConfigException;
import com.zeptolab.ctr.ads.R;
import java.lang.ref.WeakReference;

class VideoPlayerActivity extends MMBaseActivity implements OnCompletionListener, OnErrorListener, OnPreparedListener {
    private static final String a = "endVideo";
    private static final String b = "restartVideo";
    protected static final int d = 3;
    protected static final int e = 2;
    protected static final int f = 1;
    protected static final int g = 4;
    protected static final int h = 5;
    private static final int v = 83756563;
    private static final String z = "VideoPlayerActivity";
    protected boolean i;
    protected int j;
    protected boolean k;
    protected VideoView l;
    RedirectionListenerImpl m;
    String n;
    RelativeLayout o;
    ProgressBar p;
    Button q;
    View r;
    TransparentHandler s;
    boolean t;
    boolean u;
    private boolean w;
    private boolean x;
    private boolean y;

    class AnonymousClass_1 implements Runnable {
        final /* synthetic */ String a;

        AnonymousClass_1(String str) {
            this.a = str;
        }

        public void run() {
            if (this.a.equalsIgnoreCase(b)) {
                VideoPlayerActivity.this.h();
            } else if (this.a.equalsIgnoreCase(a)) {
                VideoPlayerActivity.this.l();
            }
        }
    }

    private static class TransparentHandler extends Handler {
        private WeakReference a;

        public TransparentHandler(VideoPlayerActivity videoPlayerActivity) {
            this.a = new WeakReference(videoPlayerActivity);
        }

        public void handleMessage(Message message) {
            VideoPlayerActivity videoPlayerActivity = (VideoPlayerActivity) this.a.get();
            if (videoPlayerActivity != null) {
                videoPlayerActivity.a(message);
            }
        }
    }

    static class VideoRedirectionListener extends RedirectionListenerImpl {
        WeakReference f;

        class AnonymousClass_1 implements Runnable {
            final /* synthetic */ VideoPlayerActivity a;

            AnonymousClass_1(VideoPlayerActivity videoPlayerActivity) {
                this.a = videoPlayerActivity;
            }

            public void run() {
                this.a.i();
            }
        }

        public VideoRedirectionListener(VideoPlayerActivity videoPlayerActivity) {
            if (videoPlayerActivity != null) {
                this.f = new WeakReference(videoPlayerActivity);
                if (videoPlayerActivity.c != null) {
                    this.e = videoPlayerActivity.c.a;
                }
            }
        }

        public OverlaySettings getOverlaySettings() {
            VideoPlayerActivity videoPlayerActivity = (VideoPlayerActivity) this.f.get();
            if (videoPlayerActivity == null || videoPlayerActivity.n == null) {
                return null;
            }
            OverlaySettings overlaySettings = new OverlaySettings();
            overlaySettings.o = videoPlayerActivity.n;
            return overlaySettings;
        }

        public boolean isHandlingMMVideo(Uri uri) {
            VideoPlayerActivity videoPlayerActivity = (VideoPlayerActivity) this.f.get();
            if (videoPlayerActivity != null) {
                videoPlayerActivity.runOnUiThread(new AnonymousClass_1(videoPlayerActivity));
                if (uri != null && videoPlayerActivity.a(uri)) {
                    videoPlayerActivity.d(uri.getHost());
                    return true;
                }
            }
            return false;
        }
    }

    VideoPlayerActivity() {
        this.y = true;
        this.i = true;
        this.j = 0;
        this.s = new TransparentHandler(this);
        this.u = false;
    }

    private void a(RelativeLayout relativeLayout) {
        View relativeLayout2 = new RelativeLayout(this.c);
        relativeLayout2.setId(v);
        relativeLayout2.setBackgroundColor(-16777216);
        LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        relativeLayout2.setLayoutParams(layoutParams);
        layoutParams.addRule(R.styleable.MapAttrs_useViewLifecycle);
        View button = new Button(this.c);
        this.q = new Button(this.c);
        View button2 = new Button(this.c);
        button.setBackgroundResource(17301541);
        if (this.l.isPlaying()) {
            this.q.setBackgroundResource(17301539);
        } else {
            this.q.setBackgroundResource(17301540);
        }
        button2.setBackgroundResource(17301560);
        LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
        LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-2, -2);
        RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams2.addRule(MMException.REQUEST_NOT_FILLED);
        relativeLayout2.addView(this.q, layoutParams2);
        layoutParams4.addRule(0, this.q.getId());
        relativeLayout2.addView(button);
        layoutParams3.addRule(R.styleable.MapAttrs_uiZoomGestures);
        relativeLayout2.addView(button2, layoutParams3);
        button.setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                if (VideoPlayerActivity.this.l != null) {
                    VideoPlayerActivity.this.l.seekTo(0);
                }
            }
        });
        this.q.setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                if (VideoPlayerActivity.this.l == null) {
                    return;
                }
                if (VideoPlayerActivity.this.l.isPlaying()) {
                    VideoPlayerActivity.this.n();
                    VideoPlayerActivity.this.q.setBackgroundResource(17301540);
                } else {
                    if (VideoPlayerActivity.this.k) {
                        VideoPlayerActivity.this.a(0);
                    } else if (!VideoPlayerActivity.this.u || VideoPlayerActivity.this.k) {
                        VideoPlayerActivity.this.a(VideoPlayerActivity.this.j);
                    } else {
                        VideoPlayerActivity.this.g();
                    }
                    VideoPlayerActivity.this.q.setBackgroundResource(17301539);
                }
            }
        });
        button2.setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                if (VideoPlayerActivity.this.l != null) {
                    VideoPlayerActivity.this.y = true;
                    VideoPlayerActivity.this.m();
                }
            }
        });
        relativeLayout.addView(relativeLayout2, layoutParams);
    }

    private boolean a(Uri uri) {
        if (uri.getScheme().equalsIgnoreCase("mmsdk") && b(uri.getHost())) {
            return true;
        }
        MMLog.a(z, String.format("Unrecognized mmsdk:// URI %s.", new Object[]{uri}));
        return false;
    }

    private void b(int i) {
        this.l.requestFocus();
        this.l.seekTo(i);
        if (((PowerManager) getSystemService("power")).isScreenOn()) {
            if (this.p != null) {
                this.p.bringToFront();
                this.p.setVisibility(0);
            }
            if (this.q != null) {
                this.q.setBackgroundResource(17301539);
            }
            this.l.start();
            r();
        }
    }

    private boolean b(String str) {
        return str != null && (str.equalsIgnoreCase(b) || str.equalsIgnoreCase(a));
    }

    private void p() {
        requestWindowFeature(f);
        getWindow().clearFlags(AccessibilityNodeInfoCompat.ACTION_PREVIOUS_HTML_ELEMENT);
        getWindow().addFlags(AccessibilityNodeInfoCompat.ACTION_NEXT_HTML_ELEMENT);
    }

    private void q() {
        this.m = new VideoRedirectionListener(this);
    }

    private void r() {
        if (!this.s.hasMessages(g)) {
            this.s.sendEmptyMessage(g);
        }
    }

    private void s() {
        this.l.setOnCompletionListener(this);
        this.l.setOnPreparedListener(this);
        this.l.setOnErrorListener(this);
    }

    protected void a(int i) {
        try {
            this.u = false;
            String toString = getIntent().getData().toString();
            MMLog.b(z, String.format("playVideo path: %s", new Object[]{toString}));
            if (toString == null || toString.length() == 0 || this.l == null) {
                a("no name or null videoview");
            } else {
                this.k = false;
                if (this.y && this.l != null) {
                    this.l.setVideoURI(Uri.parse(toString));
                }
                b(i);
            }
        } catch (Exception e) {
            Throwable th = e;
            MMLog.e(z, "playVideo error: ", th);
            a("error: " + th);
        }
    }

    protected void a(Bundle bundle) {
        bundle.putInt("currentVideoPosition", this.j);
        bundle.putBoolean("isVideoCompleted", this.k);
        bundle.putBoolean("isVideoCompletedOnce", this.w);
        bundle.putBoolean("hasBottomBar", this.i);
        bundle.putBoolean("shouldSetUri", this.y);
        bundle.putBoolean("isUserPausing", this.u);
        bundle.putBoolean("isPaused", this.t);
        super.a(bundle);
    }

    void a(Message message) {
        switch (message.what) {
            case g:
                if (this.l == null || !this.l.isPlaying() || this.l.getCurrentPosition() <= 0) {
                    this.s.sendEmptyMessageDelayed(g, 50);
                } else {
                    this.l.setBackgroundColor(0);
                    this.s.sendEmptyMessageDelayed(h, 100);
                }
            case h:
                if (this.l != null && this.l.isPlaying() && this.l.getCurrentPosition() > 0) {
                    this.r.setVisibility(g);
                    this.p.setVisibility(g);
                }
            default:
                break;
        }
    }

    protected void a(ImageButton imageButton, float f) {
        Animation alphaAnimation = new AlphaAnimation(f, f);
        alphaAnimation.setDuration(0);
        alphaAnimation.setFillEnabled(true);
        alphaAnimation.setFillBefore(true);
        alphaAnimation.setFillAfter(true);
        imageButton.startAnimation(alphaAnimation);
    }

    protected void a(VideoImage videoImage) {
        MMLog.b(z, "Cached video button event logged");
        int i = 0;
        while (i < videoImage.d.length) {
            Event.a(videoImage.d[i]);
            i++;
        }
    }

    protected void a(String str) {
        Toast.makeText(this.c, "Sorry. There was a problem playing the video", f).show();
        if (this.l != null) {
            this.l.stopPlayback();
        }
    }

    protected RelativeLayout b() {
        RelativeLayout relativeLayout = new RelativeLayout(this.c);
        relativeLayout.setId(AdException.INVALID_APP_ID);
        relativeLayout.setLayoutParams(new LayoutParams(-1, -1));
        relativeLayout.setBackgroundColor(-16777216);
        this.o = new RelativeLayout(this.c);
        this.o.setBackgroundColor(-16777216);
        this.o.setId(WalletConstants.ERROR_CODE_INVALID_TRANSACTION);
        LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams2.addRule(R.styleable.MapAttrs_zOrderOnTop);
        layoutParams.addRule(R.styleable.MapAttrs_zOrderOnTop);
        this.l = new VideoView(this.c);
        this.l.setId(WalletConstants.ERROR_CODE_AUTHENTICATION_FAILURE);
        this.l.getHolder().setFormat(ConfigException.MISSING_ACTIVITY_DECLARATION);
        this.l.setBackgroundColor(-16777216);
        s();
        this.o.addView(this.l, layoutParams2);
        this.r = new View(this.c);
        this.r.setBackgroundColor(-16777216);
        layoutParams2 = new RelativeLayout.LayoutParams(-1, -1);
        relativeLayout.addView(this.o, layoutParams);
        if (this.i) {
            layoutParams2.addRule(e, v);
            a(relativeLayout);
        }
        this.r.setLayoutParams(layoutParams2);
        relativeLayout.addView(this.r);
        this.p = new ProgressBar(this.c);
        this.p.setIndeterminate(true);
        layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(R.styleable.MapAttrs_zOrderOnTop);
        this.p.setLayoutParams(layoutParams);
        relativeLayout.addView(this.p);
        this.p.setVisibility(g);
        return relativeLayout;
    }

    protected void b(Bundle bundle) {
        this.j = bundle.getInt("currentVideoPosition");
        this.k = bundle.getBoolean("isVideoCompleted");
        this.w = bundle.getBoolean("isVideoCompletedOnce");
        this.i = bundle.getBoolean("hasBottomBar", this.i);
        this.y = bundle.getBoolean("shouldSetUri", this.y);
        this.u = bundle.getBoolean("isUserPausing", this.u);
        this.t = bundle.getBoolean("isPaused", this.t);
        super.b(bundle);
    }

    protected void c() {
        if (this.l != null && this.l.isPlaying()) {
            this.j = this.l.getCurrentPosition();
            this.l.pause();
            MMLog.a(z, "Video paused");
        }
    }

    protected void c(Bundle bundle) {
        if (bundle != null) {
            this.k = bundle.getBoolean("videoCompleted");
            this.w = bundle.getBoolean("videoCompletedOnce");
            this.j = bundle.getInt("videoPosition");
            this.i = bundle.getBoolean("hasBottomBar");
            this.y = bundle.getBoolean("shouldSetUri");
        }
    }

    protected void d() {
        super.d();
        this.r.bringToFront();
        this.r.setVisibility(0);
        this.t = false;
        MMLog.a(z, "VideoPlayer - onResume");
        if (this.x && !this.u) {
            g();
        }
    }

    void d(String str) {
        runOnUiThread(new AnonymousClass_1(str));
    }

    protected void e() {
        super.e();
        this.t = true;
        MMLog.a(z, "VideoPlayer - onPause");
        c();
    }

    void e(String str) {
        if (str != null) {
            MMLog.b(z, String.format("Button Click with URL: %s", new Object[]{str}));
            this.m.a = str;
            this.m.b = new WeakReference(this.c);
            if (!this.m.isHandlingMMVideo(Uri.parse(str))) {
                HttpRedirection.a(this.m);
            }
        }
    }

    protected void g() {
        if (o()) {
            a(this.j);
        }
    }

    protected void h() {
        MMLog.b(z, "Restart Video.");
        if (this.l != null) {
            a(0);
        }
    }

    protected void i() {
    }

    protected boolean j() {
        return !this.k;
    }

    protected void l() {
        MMLog.b(z, "End Video.");
        if (this.l != null) {
            this.y = true;
            m();
        }
    }

    protected void m() {
        MMLog.b(z, "Video ad player closed");
        if (this.l != null) {
            if (this.l.isPlaying()) {
                this.l.stopPlayback();
            }
            this.l = null;
        }
        finish();
    }

    protected void n() {
        this.u = true;
        c();
    }

    protected boolean o() {
        return this.l != null && !this.l.isPlaying() && !this.k;
    }

    public void onCompletion(MediaPlayer mediaPlayer) {
        this.w = true;
        this.k = true;
        if (!(this.q == null || this.l.isPlaying())) {
            this.q.setBackgroundResource(17301540);
        }
        MMLog.a(z, "Video player on complete");
    }

    public void onCreate(Bundle bundle) {
        setTheme(16973829);
        super.onCreate(bundle);
        MMLog.b(z, "Setting up the video player");
        p();
        c(bundle);
        q();
        setContentView(b());
    }

    public void onDestroy() {
        super.onDestroy();
    }

    public boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
        return false;
    }

    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        return (i == 4 && keyEvent.getRepeatCount() == 0 && !this.w) ? true : super.onKeyDown(i, keyEvent);
    }

    public void onPrepared(MediaPlayer mediaPlayer) {
        MMLog.b(z, "Video Prepared");
    }

    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        this.x = z;
        if (!this.t && z && !this.u) {
            g();
        }
    }
}