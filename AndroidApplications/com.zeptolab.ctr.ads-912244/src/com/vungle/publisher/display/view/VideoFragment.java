package com.vungle.publisher.display.view;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.media.AudioManager;
import android.media.MediaPlayer;
import android.media.MediaPlayer.OnCompletionListener;
import android.media.MediaPlayer.OnErrorListener;
import android.media.MediaPlayer.OnPreparedListener;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.Parcelable;
import android.provider.Settings.System;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.TouchDelegate;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.VideoView;
import com.a.a.ae;
import com.a.a.f;
import com.a.a.m;
import com.google.android.gms.games.GamesStatusCodes;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.gms.maps.model.GroundOverlayOptions;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.millennialmedia.android.MMException;
import com.vungle.log.Logger;
import com.vungle.publisher.FullScreenAdActivity;
import com.vungle.publisher.VungleService;
import com.vungle.publisher.ap;
import com.vungle.publisher.audio.VolumeChangeContentObserver;
import com.vungle.publisher.cj;
import com.vungle.publisher.db.model.Ad;
import com.vungle.publisher.db.model.Video;
import com.vungle.publisher.h;
import com.vungle.publisher.i;
import com.vungle.publisher.image.BitmapFactory;
import com.vungle.publisher.r;
import com.vungle.publisher.reporting.AdReportEventListener;
import com.vungle.publisher.u;
import com.zeptolab.ctr.ads.R;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import com.zeptolab.zbuild.ZBuildConfig;
import java.io.IOException;
import java.util.concurrent.atomic.AtomicBoolean;
import javax.inject.Inject;
import javax.inject.Provider;
import javax.inject.Singleton;

public class VideoFragment extends AdFragment implements OnCompletionListener, OnErrorListener, OnPreparedListener {
    private Bitmap A;
    private Bitmap B;
    private final ae C;
    private final Handler D;
    private final Runnable E;
    private VolumeChangeContentObserver F;
    private AlertDialog G;
    private String H;
    private int I;
    private boolean J;
    private boolean K;
    private int L;
    private boolean M;
    private int N;
    com.vungle.publisher.a a;
    AdReportEventListener b;
    a c;
    Video d;
    ImageView e;
    m f;
    m g;
    TouchDelegate h;
    final AtomicBoolean i;
    m j;
    @Inject
    AlertDialogFactory k;
    @Inject
    AudioManager l;
    @Inject
    BitmapFactory m;
    @Inject
    Factory n;
    @Inject
    DisplayUtils o;
    @Inject
    cj p;
    @Inject
    com.vungle.publisher.audio.VolumeChangeContentObserver.Factory q;
    @Inject
    Factory r;
    private ImageView s;
    private CountdownProgressView t;
    private ImageView u;
    private ViewGroup v;
    private VideoView w;
    private ViewGroup x;
    private Bitmap y;
    private Bitmap z;

    public static interface a {
        void a_();

        void b();

        void c();
    }

    final class AnonymousClass_3 implements Runnable {
        final /* synthetic */ Float a;
        final /* synthetic */ ImageView b;

        AnonymousClass_3(Float f, ImageView imageView) {
            this.a = f;
            this.b = imageView;
        }

        public final void run() {
            float sqrt = (float) Math.sqrt((double) this.a.floatValue());
            int height = this.b.getHeight();
            int width = this.b.getWidth();
            int round = Math.round(((float) height) * sqrt);
            int round2 = Math.round(sqrt * ((float) width));
            Logger.v(Logger.AD_TAG, new StringBuilder("scaling cta clickable area ").append(this.a).append("x - width: ").append(width).append(" --> ").append(round2).append(", height: ").append(height).append(" --> ").append(round).toString());
            Rect rect = new Rect();
            this.b.getHitRect(rect);
            rect.bottom = rect.top + round;
            rect.left = rect.right - round2;
            VideoFragment.this.h = new TouchDelegate(rect, this.b);
        }
    }

    @Singleton
    public static class Factory {
        @Inject
        public Provider a;

        Factory() {
        }

        public static VideoFragment a(VideoFragment videoFragment, Ad ad, com.vungle.publisher.a aVar, AdReportEventListener adReportEventListener, com.vungle.publisher.display.view.VideoFragment.a aVar2) {
            String f = ad.f();
            Video j = ad.j();
            if (j == null) {
                return null;
            }
            videoFragment.a = aVar;
            videoFragment.d = j;
            videoFragment.H = f;
            videoFragment.c = aVar2;
            videoFragment.b = adReportEventListener;
            return videoFragment;
        }

        public static void a(VideoFragment videoFragment, Bundle bundle) {
            if (bundle != null) {
                videoFragment.M = bundle.getBoolean("adStarted");
            }
        }
    }

    class b implements OnClickListener {
        b() {
        }

        public final void onClick(View view) {
            Logger.v(Logger.AD_TAG, "close clicked");
            if (VideoFragment.this.g()) {
                Logger.d(Logger.AD_TAG, "exiting video");
                if (VideoFragment.this.isIncentivized()) {
                    VideoFragment.this.w.pause();
                    VideoFragment.this.G = VideoFragment.c(VideoFragment.this).show();
                } else {
                    VideoFragment.d(VideoFragment.this);
                }
            }
        }
    }

    class c implements Runnable {
        c() {
        }

        public final void run() {
            long j = 50;
            try {
                int c = VideoFragment.this.c(false);
                VideoFragment.this.c(c);
                VideoFragment.this.t.setProgress(c / 1000);
                VideoFragment.this.p.b(new r(c));
                VideoFragment.this.D.postDelayed(this, j);
            } catch (Exception e) {
                Logger.w(Logger.AD_TAG, e);
                VideoFragment.this.D.postDelayed(this, j);
            }
        }
    }

    class d extends Handler {
        d() {
        }

        public final void handleMessage(Message message) {
            boolean z = 1;
            try {
                VideoFragment videoFragment = VideoFragment.this;
                int i = message.arg1;
                int i2 = message.arg2;
                if (i2 != 0) {
                    int i3 = 0;
                }
                boolean compareAndSet = videoFragment.i.compareAndSet(true, false);
                if (i3 != 0 || compareAndSet) {
                    Logger.d(Logger.AD_TAG, new StringBuilder("volume change ").append(compareAndSet ? "un" : AdTrackerConstants.BLANK).append("mute").toString());
                    videoFragment.d();
                    videoFragment.e(compareAndSet);
                }
                float a = videoFragment.a((float) i2);
                if (i2 < i) {
                    videoFragment.b.a(com.vungle.publisher.db.model.AdReportEvent.a.m, Float.valueOf(a));
                } else {
                    videoFragment.b.a(com.vungle.publisher.db.model.AdReportEvent.a.n, Float.valueOf(a));
                }
            } catch (Exception e) {
                Logger.w(Logger.AD_TAG, new StringBuilder("error handling volume change: ").append(message == null ? "null message" : message.arg1 + " --> " + message.arg2).toString(), e);
            }
        }
    }

    public VideoFragment() {
        this.C = new f();
        this.i = new AtomicBoolean();
        this.D = new Handler();
        this.E = new c();
    }

    private Bitmap a(String str) {
        Bitmap bitmap = null;
        try {
            return this.m.getBitmap(str);
        } catch (IOException e) {
            Logger.w(Logger.AD_TAG, new StringBuilder("error loading ").append(str).toString());
            return bitmap;
        }
    }

    private static m a(Object obj) {
        m mVar = new m();
        mVar.a("backgroundColor");
        mVar.a(obj);
        return mVar;
    }

    private static void a(View view, int i, int i2) {
        float a = com.a.c.a.a(view);
        int i3 = i * 1000;
        float f = BitmapDescriptorFactory.HUE_RED;
        int i4 = i3 - 750;
        if (i2 > i4) {
            f = i2 >= i3 ? 1.0f : ((float) (i2 - i4)) / ((float) (i3 - i4));
        }
        if (f != a) {
            com.a.c.a.a(view, f);
        }
    }

    private void a(m mVar, int i) {
        a(mVar, 1140850688, 0, i, BitmapDescriptorFactory.HUE_RED);
    }

    private void a(m mVar, int i, int i2, int i3, float f) {
        Logger.v(Logger.AD_TAG, new StringBuilder("animateBar startColor: ").append(i).append(", endColor: ").append(i2).append(", durationMillis: ").append(i3).append(", startPercent: ").append(f).toString());
        mVar.a_((long) i3);
        mVar.a(new int[]{i, i2});
        mVar.e((long) Math.round(((float) i3) * f));
        mVar.a(this.C);
        mVar.a();
    }

    static /* synthetic */ AlertDialog c(VideoFragment videoFragment) {
        if (videoFragment.G != null) {
            return videoFragment.G;
        }
        AlertDialogFactory alertDialogFactory = videoFragment.k;
        Context activity = videoFragment.getActivity();
        com.vungle.publisher.a aVar = videoFragment.a;
        com.vungle.publisher.display.view.AlertDialogFactory.a anonymousClass_5 = new com.vungle.publisher.display.view.AlertDialogFactory.a() {
            public final void a() {
                VideoFragment.this.w.start();
            }

            public final void b() {
                Logger.d(Logger.AD_TAG, "cancel video");
                VideoFragment.d(VideoFragment.this);
            }

            public final void c() {
                VideoFragment.this.w.start();
            }
        };
        Builder builder = new Builder(activity);
        builder.setTitle(aVar.getIncentivizedCancelDialogTitle());
        builder.setMessage(aVar.getIncentivizedCancelDialogBodyText());
        builder.setPositiveButton(aVar.getIncentivizedCancelDialogKeepWatchingButtonText(), new AnonymousClass_1(anonymousClass_5));
        builder.setNegativeButton(aVar.getIncentivizedCancelDialogCloseButtonText(), new AnonymousClass_2(anonymousClass_5));
        builder.setOnCancelListener(new AnonymousClass_3(anonymousClass_5));
        return builder.create();
    }

    static /* synthetic */ void d(VideoFragment videoFragment) {
        videoFragment.b(false);
        videoFragment.w.stopPlayback();
        AdReportEventListener adReportEventListener = videoFragment.b;
        adReportEventListener.a(com.vungle.publisher.db.model.EventTracking.a.m);
        adReportEventListener.a(com.vungle.publisher.db.model.AdReportEvent.a.b, null);
        videoFragment.c.a();
    }

    private void f(boolean z) {
        g(z);
        d();
    }

    private void g(boolean z) {
        this.l.setStreamMute(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, !z);
    }

    private void h() {
        this.D.removeCallbacks(this.E);
    }

    private void h(boolean z) {
        boolean z2;
        z2 = z && this.H != null;
        Logger.v(Logger.AD_TAG, new StringBuilder("cta button ").append(z2 ? "enabled" : "disabled").toString());
        this.J = z2;
        this.e.setImageBitmap(z2 ? this.y : this.z);
    }

    private void i() {
        boolean z = true;
        int i = !this.M;
        this.M = true;
        if (this.G == null || !this.G.isShowing()) {
            z = false;
        }
        if (!z) {
            c(this.w.getCurrentPosition());
            this.w.requestFocus();
            this.w.start();
            b((int)GamesStatusCodes.STATUS_REQUEST_UPDATE_PARTIAL_SUCCESS);
            this.D.post(this.E);
            if (i != 0) {
                this.p.b(new u());
            }
        }
    }

    private void i(boolean z) {
        if (z != this.J) {
            h(z);
        }
    }

    private void j() {
        this.w.pause();
        h();
    }

    final float a(float f) {
        int e = e();
        return e == 0 ? GroundOverlayOptions.NO_DIMENSION : f / ((float) e);
    }

    public final void a() {
        if (g() || this.a.isBackButtonImmediatelyEnabled()) {
            this.c.a();
        }
    }

    final void a(m mVar, float f) {
        a(mVar, 0, 1140850688, 749, f);
    }

    public final void a(boolean z) {
        try {
            super.a(z);
            if (z) {
                i();
            } else {
                j();
            }
        } catch (Exception e) {
            Logger.w(Logger.AD_TAG, "exception in onWindowFocusChanged", e);
        }
    }

    public final boolean a(int i) {
        if (i == 24) {
            if (f() == 0) {
                Logger.d(Logger.AD_TAG, "volume up - pending unmute");
                d(true);
                this.i.set(true);
            } else {
                Logger.v(Logger.AD_TAG, "volume up");
            }
        }
        return false;
    }

    public final String b() {
        return "videoFragment";
    }

    final void b(int i) {
        a(this.f, i);
        a(this.j, i);
    }

    final void b(boolean z) {
        h();
        int c = c(z);
        this.p.b(z ? new com.vungle.publisher.f(c) : new i(c));
        this.M = false;
        this.N = 0;
    }

    final int c(boolean z) {
        int duration = z ? this.w.getDuration() : this.w.getCurrentPosition();
        int i = this.N;
        if (duration > i) {
            this.N = duration;
            return duration;
        } else {
            if (duration < i) {
                Logger.w(Logger.AD_TAG, new StringBuilder("watched millis decreased from ").append(i).append(" --> ").append(duration).toString());
            }
            return i;
        }
    }

    final void c(int i) {
        Integer num;
        boolean z = true;
        if (Boolean.TRUE.equals(this.d.l)) {
            if (Boolean.TRUE.equals(this.d.m)) {
                if (com.a.c.a.a(this.e) < 1.0f) {
                    z = false;
                }
                i(z);
            } else {
                a(this.e, this.L, i);
                if (i < this.I * 1000) {
                    z = false;
                }
                i(z);
            }
        }
        num = this.a.isIncentivized() ? this.d.o : this.d.s;
        if (num != null) {
            a(this.s, num.intValue(), i);
        }
        num = this.d.t;
        if (num != null) {
            a(this.t, num.intValue(), i);
        }
    }

    final boolean c() {
        return this.K && f() > 0;
    }

    final void d() {
        this.u.setImageBitmap(c() ? this.B : this.A);
    }

    final void d(boolean z) {
        this.K = z;
        f(z);
    }

    final int e() {
        return this.l.getStreamMaxVolume(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE);
    }

    final void e(boolean z) {
        AdReportEventListener adReportEventListener;
        if (z) {
            adReportEventListener = this.b;
            adReportEventListener.a(com.vungle.publisher.db.model.AdReportEvent.a.i, null);
            adReportEventListener.a(com.vungle.publisher.db.model.EventTracking.a.k);
        } else {
            adReportEventListener = this.b;
            adReportEventListener.a(com.vungle.publisher.db.model.AdReportEvent.a.f, null);
            adReportEventListener.a(com.vungle.publisher.db.model.EventTracking.a.b);
        }
    }

    final int f() {
        return this.l.getStreamVolume(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE);
    }

    final boolean g() {
        return com.a.c.a.a(this.s) == 1.0f;
    }

    public void onActivityCreated(Bundle bundle) {
        try {
            super.onActivityCreated(bundle);
            Factory factory = this.r;
            Factory.a(this, bundle);
            if (this.M) {
                this.b.a(com.vungle.publisher.db.model.AdReportEvent.a.k, null);
            }
            Context activity = getActivity();
            View videoView = new VideoView(activity);
            this.w = videoView;
            View apVar = new ap(activity);
            this.s = apVar;
            View countdownProgressView = new CountdownProgressView(activity, this.n.a);
            this.t = countdownProgressView;
            View imageView = new ImageView(activity);
            this.u = imageView;
            this.x.addView(videoView);
            LayoutParams layoutParams = (LayoutParams) videoView.getLayoutParams();
            layoutParams.height = -1;
            layoutParams.width = -1;
            layoutParams.addRule(R.styleable.MapAttrs_zOrderOnTop);
            View relativeLayout = new RelativeLayout(activity);
            this.v = relativeLayout;
            this.x.addView(relativeLayout);
            layoutParams = (LayoutParams) relativeLayout.getLayoutParams();
            layoutParams.width = -1;
            layoutParams.addRule(R.styleable.MapAttrs_uiZoomControls);
            relativeLayout.addView(apVar);
            layoutParams = (LayoutParams) apVar.getLayoutParams();
            layoutParams.addRule(ZBuildConfig.$minsdk);
            layoutParams.addRule(MMException.REQUEST_BAD_RESPONSE);
            com.a.c.a.a(apVar, (float)BitmapDescriptorFactory.HUE_RED);
            View relativeLayout2 = new RelativeLayout(activity);
            this.x.addView(relativeLayout2);
            layoutParams = (LayoutParams) relativeLayout2.getLayoutParams();
            layoutParams.width = -1;
            layoutParams.addRule(R.styleable.MapAttrs_useViewLifecycle);
            relativeLayout2.addView(countdownProgressView);
            layoutParams = (LayoutParams) countdownProgressView.getLayoutParams();
            layoutParams.addRule(ZBuildConfig.$minsdk);
            layoutParams.addRule(MMException.REQUEST_BAD_RESPONSE);
            com.a.c.a.a(countdownProgressView, (float)BitmapDescriptorFactory.HUE_RED);
            relativeLayout2.addView(imageView);
            layoutParams = (LayoutParams) imageView.getLayoutParams();
            layoutParams.addRule(R.styleable.MapAttrs_uiZoomGestures);
            layoutParams.addRule(MMException.REQUEST_BAD_RESPONSE);
            int round = Math.round(this.o.a(GoogleScorer.CLIENT_PLUS));
            int round2 = Math.round(this.o.a(1));
            relativeLayout.setPadding(round, round2, round, round2);
            relativeLayout2.setPadding(round, round2, round, round2);
            this.A = a("vg_mute_on.png");
            this.B = a("vg_mute_off.png");
            this.s.setScaleType(ScaleType.FIT_CENTER);
            CountdownProgressView countdownProgressView2 = this.t;
            this.u.setScaleType(ScaleType.FIT_CENTER);
            Bitmap a = a("vg_close.png");
            if (a != null) {
                apVar.setImageBitmap(a);
            }
            Logger.i(Logger.AD_TAG, new StringBuilder("video play URI = ").append(this.d.q()).toString());
            videoView.setVideoURI(this.d.q());
            this.f = a(relativeLayout2);
            this.j = a(relativeLayout);
            if (Boolean.TRUE.equals(this.d.l)) {
                this.y = a("vg_cta.png");
                this.z = a("vg_cta_disabled.png");
                Integer num = this.d.j;
                Integer num2 = this.d.n;
                Integer num3;
                if (num == null) {
                    if (num2 != null) {
                        Logger.v(Logger.AD_TAG, new StringBuilder("overriding cta enabled from null to ").append(num2).toString());
                        num = num2;
                    }
                    num3 = num2;
                    num2 = num;
                    num = num3;
                } else if (num2 == null) {
                    Logger.v(Logger.AD_TAG, new StringBuilder("overriding cta shown from null to ").append(num).toString());
                    num2 = num;
                } else {
                    if (num2.intValue() > num.intValue()) {
                        Logger.v(Logger.AD_TAG, new StringBuilder("overriding cta shown from ").append(num2).append(" to ").append(num).toString());
                        num2 = num;
                    }
                    num3 = num2;
                    num2 = num;
                    num = num3;
                }
                Logger.d(Logger.AD_TAG, new StringBuilder("cta shown at ").append(num).append(" seconds; enabled at ").append(num2).append(" seconds").toString());
                this.I = num2 == null ? 0 : num2.intValue();
                this.L = num == null ? 0 : num.intValue();
                Object apVar2 = new ap(getActivity());
                this.e = apVar2;
                this.v.addView(apVar2);
                layoutParams = (LayoutParams) apVar2.getLayoutParams();
                layoutParams.addRule(R.styleable.MapAttrs_uiZoomGestures);
                layoutParams.addRule(MMException.REQUEST_BAD_RESPONSE);
                apVar2.setScaleType(ScaleType.FIT_CENTER);
                Float f = this.d.i;
                if (f == null || f.floatValue() <= 1.0f) {
                    Logger.v(Logger.AD_TAG, "cta clickable area not scaled");
                } else {
                    apVar2.post(new AnonymousClass_3(f, apVar2));
                }
                if (Boolean.TRUE.equals(this.d.m)) {
                    com.a.c.a.a((View)apVar2, (float)BitmapDescriptorFactory.HUE_RED);
                    apVar2.setImageBitmap(this.y);
                    this.g = m.a(apVar2, "alpha", new float[]{0.0f, 1.0f});
                    this.g.a_(750);
                } else {
                    h(this.L >= this.I);
                }
                apVar2.setOnClickListener(new OnClickListener() {
                    public final void onClick(View view) {
                        if (VideoFragment.this.J) {
                            Logger.d(Logger.AD_TAG, "cta overlay onClick");
                            VideoFragment.this.b(false);
                            VideoFragment.this.c.b();
                        } else {
                            Logger.v(Logger.AD_TAG, "cta overlay onClick, but not enabled");
                        }
                    }
                });
            }
            apVar.setOnClickListener(new b());
            imageView.setOnClickListener(new OnClickListener() {
                public final void onClick(View view) {
                    boolean z;
                    Logger.d(Logger.AD_TAG, (VideoFragment.this.c() ? AdTrackerConstants.BLANK : "un") + "mute clicked");
                    VideoFragment videoFragment = VideoFragment.this;
                    z = !videoFragment.c();
                    videoFragment.d(z);
                    if (z && videoFragment.f() == 0) {
                        videoFragment.l.setStreamVolume(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, (int) (0.4f * ((float) videoFragment.e())), 0);
                        videoFragment.d();
                    }
                    videoFragment.e(z);
                }
            });
            this.K = this.a.isSoundEnabled();
            videoView.setOnTouchListener(new OnTouchListener() {
                public final boolean onTouch(View view, MotionEvent motionEvent) {
                    boolean z = 0;
                    Logger.v(Logger.AD_TAG, "video onTouch");
                    if (VideoFragment.this.h != null) {
                        VideoFragment.this.h.onTouchEvent(motionEvent);
                    }
                    VideoFragment videoFragment = VideoFragment.this;
                    if (motionEvent.getAction() != 0) {
                        return false;
                    }
                    String toString;
                    m mVar = videoFragment.j;
                    if ((mVar.e() == 749) == 0) {
                        z = true;
                    }
                    String str = Logger.AD_TAG;
                    StringBuilder stringBuilder = new StringBuilder("toggle bar animation");
                    if (mVar.f()) {
                        toString = new StringBuilder(" - reversing ").append(i != 0 ? "hide" : "show").append(" animation").toString();
                    } else {
                        toString = AdTrackerConstants.BLANK;
                    }
                    Logger.v(str, stringBuilder.append(toString).toString());
                    mVar.b();
                    float A = 1.0f - mVar.A();
                    if (i != 0) {
                        videoFragment.a(videoFragment.f, A);
                        videoFragment.a(videoFragment.j, A);
                    } else {
                        videoFragment.b(750);
                    }
                    if (videoFragment.e == null || com.a.c.a.a(videoFragment.e) != 0.0f || videoFragment.g == null || videoFragment.g.f()) {
                        return true;
                    }
                    videoFragment.g.a();
                    return true;
                }
            });
            videoView.setOnCompletionListener(this);
            videoView.setOnErrorListener(this);
            videoView.setOnPreparedListener(this);
        } catch (Exception e) {
            Logger.w(Logger.AD_TAG, "exception in onActivityCreated", e);
        }
    }

    public void onCompletion(MediaPlayer mediaPlayer) {
        Logger.d(Logger.AD_TAG, "video.onCompletion");
        b(true);
        this.c.c();
    }

    public void onCreate(Bundle bundle) {
        try {
            super.onCreate(bundle);
            com.vungle.publisher.audio.VolumeChangeContentObserver.Factory factory = this.q;
            this.F = new VolumeChangeContentObserver(factory.a, new d());
        } catch (Exception e) {
            Logger.w(Logger.AD_TAG, "exception in onCreate", e);
        }
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View relativeLayout = new RelativeLayout(getActivity());
        this.x = relativeLayout;
        return relativeLayout;
    }

    public boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
        Logger.e(Logger.AD_TAG, new StringBuilder("video.onError: ").append(i).append(", ").append(i2).toString());
        b(false);
        this.c.c();
        return true;
    }

    public void onPause() {
        Logger.d(Logger.AD_TAG, "video onPause");
        try {
            super.onPause();
            j();
            getActivity().getContentResolver().unregisterContentObserver(this.F);
            g(true);
            if (this.M) {
                this.p.b(new r(this.w.getCurrentPosition()));
            }
        } catch (Exception e) {
            Logger.e(Logger.AD_TAG, e);
            h();
        }
    }

    public void onPrepared(MediaPlayer mediaPlayer) {
        int duration = mediaPlayer.getDuration();
        Logger.d(Logger.AD_TAG, new StringBuilder("video ready: duration ").append(duration).append(" ms").toString());
        this.t.setMax(Math.round(((float) duration) / 1000.0f));
        this.p.b(new h(duration));
        i();
    }

    public void onResume() {
        try {
            super.onResume();
            Logger.d(Logger.AD_TAG, "video onResume");
            f(this.K);
            this.b.a(com.vungle.publisher.db.model.AdReportEvent.a.l, Float.valueOf(a((float) f())));
            getActivity().getContentResolver().registerContentObserver(System.CONTENT_URI, true, this.F);
        } catch (Exception e) {
            Logger.e(Logger.AD_TAG, e);
            h();
        }
    }

    public void onSaveInstanceState(Bundle bundle) {
        try {
            super.onSaveInstanceState(bundle);
            bundle.putString(VungleService.AD_ID_EXTRA_KEY, this.d.f());
            bundle.putParcelable(FullScreenAdActivity.AD_CONFIG_EXTRA_KEY, (Parcelable) this.a);
            bundle.putBoolean("adStarted", this.M);
        } catch (Exception e) {
            Logger.w(Logger.AD_TAG, "exception in onSaveInstanceState", e);
        }
    }
}