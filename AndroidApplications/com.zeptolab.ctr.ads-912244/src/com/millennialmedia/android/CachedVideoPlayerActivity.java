package com.millennialmedia.android;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Message;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.widget.ImageButton;
import android.widget.ImageView.ScaleType;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.facebook.ads.internal.AdWebViewUtils;
import com.google.android.gms.location.LocationStatusCodes;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.gms.wallet.WalletConstants;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.zeptolab.ctr.ads.R;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;

class CachedVideoPlayerActivity extends VideoPlayerActivity implements Callback {
    private static final String F = "CachedVideoPlayerActivity";
    private static final int v = 402;
    private static final int w = 401;
    private TextView A;
    private TextView B;
    private RelativeLayout C;
    private int D;
    private boolean E;
    boolean a;
    boolean b;
    private Handler x;
    private VideoAd y;
    private MMWebView z;

    class AnonymousClass_2 implements OnClickListener {
        final /* synthetic */ ImageButton a;
        final /* synthetic */ VideoImage b;

        AnonymousClass_2(ImageButton imageButton, VideoImage videoImage) {
            this.a = imageButton;
            this.b = videoImage;
        }

        public void onClick(View view) {
            if (this.a != null) {
                this.a.setEnabled(false);
            }
            CachedVideoPlayerActivity.this.m.d = this.b.f;
            CachedVideoPlayerActivity.this.e(this.b.e);
            CachedVideoPlayerActivity.this.a(this.b);
        }
    }

    private static class CachedVideoWebViewClientListener extends MMWebViewClientListener {
        WeakReference a;

        CachedVideoWebViewClientListener(CachedVideoPlayerActivity cachedVideoPlayerActivity) {
            this.a = new WeakReference(cachedVideoPlayerActivity);
        }

        public void onPageFinished(String str) {
            MMLog.b(F, "@@ ON PAGE FINISHED" + str);
            CachedVideoPlayerActivity cachedVideoPlayerActivity = (CachedVideoPlayerActivity) this.a.get();
            if (cachedVideoPlayerActivity != null) {
                cachedVideoPlayerActivity.f(str);
            }
        }
    }

    class FetchWebViewContentTask extends AsyncTask {
        private String b;
        private boolean c;

        public FetchWebViewContentTask(String str) {
            this.b = str;
        }

        protected String a(Void... voidArr) {
            try {
                HttpResponse a = new HttpGetRequest().a(this.b);
                StatusLine statusLine = a.getStatusLine();
                if (a == null || statusLine == null || statusLine.getStatusCode() == 404) {
                    this.c = true;
                    return null;
                } else {
                    HttpEntity entity = a.getEntity();
                    if (entity != null) {
                        return HttpGetRequest.a(entity.getContent());
                    }
                    return null;
                }
            } catch (Exception e) {
                MMLog.e(F, "Error with http web overlay", e);
            }
        }

        protected void a(String str) {
            if (this.c) {
                CachedVideoPlayerActivity.this.m();
            }
            if (str != null && CachedVideoPlayerActivity.this.z != null) {
                CachedVideoPlayerActivity.this.z.a(str, this.b, CachedVideoPlayerActivity.this.c);
                CachedVideoPlayerActivity.this.b = true;
            }
        }

        protected /* synthetic */ Object doInBackground(Object[] objArr) {
            return a((Void[]) objArr);
        }

        protected /* synthetic */ void onPostExecute(Object obj) {
            a((String) obj);
        }
    }

    CachedVideoPlayerActivity() {
        this.E = true;
    }

    private void a(long j) {
        this.x.postDelayed(new Runnable() {
            public void run() {
                CachedVideoPlayerActivity.this.m();
            }
        }, j);
    }

    private void a(ViewGroup viewGroup) {
        this.B = new TextView(this.c);
        this.B.setText(" seconds remaining ...");
        this.B.setTextColor(-1);
        this.B.setPadding(0, 0, IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR, 0);
        this.B.setId(v);
        this.B.setShadowLayer(1.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, -16777216);
        LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(R.styleable.MapAttrs_uiZoomControls);
        layoutParams.addRule(R.styleable.MapAttrs_uiZoomGestures);
        viewGroup.addView(this.B, layoutParams);
    }

    private void b(ViewGroup viewGroup) {
        this.A = new TextView(this.c);
        this.A.setText(s());
        this.A.setTextColor(-1);
        this.A.setId(w);
        this.A.setShadowLayer(1.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, -16777216);
        LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(R.styleable.MapAttrs_uiZoomControls);
        layoutParams.addRule(0, v);
        viewGroup.addView(this.A, layoutParams);
    }

    private void b(VideoImage videoImage) {
        Animation alphaAnimation = new AlphaAnimation(videoImage.q, videoImage.r);
        alphaAnimation.setDuration(videoImage.s);
        alphaAnimation.setFillEnabled(true);
        alphaAnimation.setFillBefore(true);
        alphaAnimation.setFillAfter(true);
        videoImage.u.startAnimation(alphaAnimation);
    }

    private void f(String str) {
        if (this.l != null && this.y != null && !this.l.isPlaying() && this.y.p != null && str.equalsIgnoreCase(this.y.p)) {
            a(0);
        }
    }

    private void p() {
        if (this.y != null && this.y.D != null) {
            int i = 0;
            while (i < this.y.D.size()) {
                VideoImage videoImage = (VideoImage) this.y.D.get(i);
                if (!videoImage.t) {
                    a(videoImage.u, videoImage.q);
                }
                if (videoImage.u.getParent() == null) {
                    this.C.addView(videoImage.u, videoImage.v);
                }
                int i2 = 0;
                while (i2 < this.y.D.size()) {
                    this.C.bringChildToFront(((VideoImage) this.y.D.get(i2)).u);
                    i2++;
                }
                MMLog.a(F, String.format("Button: %d alpha: %f", new Object[]{Integer.valueOf(i), Float.valueOf(videoImage.q)}));
                i++;
            }
        }
    }

    private void q() {
        this.z = new MMWebView(this.c, this.c.a);
        this.z.setId(WalletConstants.ERROR_CODE_UNKNOWN);
        this.z.setWebViewClient(new InterstitialWebViewClient(new CachedVideoWebViewClientListener(this), this.m));
        LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.addRule(R.styleable.MapAttrs_zOrderOnTop);
        this.z.setLayoutParams(layoutParams);
        this.z.setBackgroundColor(0);
        c(this.y.p);
    }

    private void r() {
        if (this.y != null) {
            this.A.setText(String.valueOf(this.y.w / 1000));
        }
        this.B.setVisibility(0);
        this.A.setVisibility(0);
    }

    private String s() {
        if (this.j != 0) {
            return String.valueOf(this.j / 1000);
        }
        return this.y != null ? String.valueOf(this.y.w / 1000) : AdTrackerConstants.BLANK;
    }

    private void t() {
        if (this.B != null) {
            this.B.setVisibility(GoogleScorer.CLIENT_APPSTATE);
        }
        if (this.A != null) {
            this.A.setVisibility(GoogleScorer.CLIENT_APPSTATE);
        }
    }

    protected void a() {
        super.a();
        if (!this.a && this.y != null && this.y.s && this.k) {
            p();
        }
    }

    protected void a(int i) {
        if (this.y == null) {
            Toast.makeText(this.c, "Sorry. There was a problem playing the video", 1).show();
        } else {
            if (!(this.x.hasMessages(GoogleScorer.CLIENT_PLUS) || this.y == null)) {
                this.x.sendMessageDelayed(Message.obtain(this.x, GoogleScorer.CLIENT_PLUS), AdWebViewUtils.DEFAULT_IMPRESSION_DELAY_MS);
            }
            super.a(i);
        }
    }

    protected void a(Bundle bundle) {
        bundle.putParcelable("videoAd", this.y);
        super.a(bundle);
    }

    protected void a(String str) {
        if (this.y != null) {
            HttpGetRequest.a(this.y.B);
        }
        if (this.z != null) {
            this.z.loadUrl("javascript:MMJS.cachedVideo.setError(" + str + ");");
        }
        super.a(str);
    }

    protected RelativeLayout b() {
        ViewGroup b = super.b();
        this.x = new Handler(this);
        setRequestedOrientation(0);
        if (this.E) {
            a(b);
            b(b);
            r();
        }
        if (this.y == null || this.y.p == null) {
            List list;
            this.a = false;
            this.C = new RelativeLayout(this.c);
            this.C.setId(LocationStatusCodes.GEOFENCE_NOT_AVAILABLE);
            if (this.y != null) {
                ArrayList arrayList = this.y.D;
            } else {
                list = null;
            }
            if (list != null) {
                File h = AdCache.h(this.c);
                int i = 0;
                while (i < list.size()) {
                    LayoutParams layoutParams;
                    VideoImage videoImage = (VideoImage) list.get(i);
                    View imageButton = new ImageButton(this.c);
                    videoImage.u = imageButton;
                    try {
                        Bitmap decodeFile = BitmapFactory.decodeFile(h.getAbsolutePath() + File.separator + this.y.e() + Uri.parse(videoImage.b).getLastPathSegment().replaceFirst("\\.[^\\.]*$", ".dat"));
                        if (decodeFile != null) {
                            imageButton.setImageBitmap(decodeFile);
                        } else {
                            imageButton.setImageURI(Uri.parse(h.getAbsolutePath() + File.separator + this.y.e() + Uri.parse(videoImage.b).getLastPathSegment().replaceFirst("\\.[^\\.]*$", ".dat")));
                        }
                    } catch (Exception e) {
                        MMLog.e(F, "Problem creating layout with bitmap buttons: ", e);
                    }
                    a(imageButton, videoImage.q);
                    imageButton.setId(i + 1);
                    imageButton.setPadding(0, 0, 0, 0);
                    if (videoImage.t) {
                        imageButton.setScaleType(ScaleType.FIT_CENTER);
                        imageButton.setBackgroundColor(-16777216);
                        layoutParams = new RelativeLayout.LayoutParams(-1, -1);
                    } else {
                        imageButton.setBackgroundColor(0);
                        layoutParams = new RelativeLayout.LayoutParams(-2, -2);
                        MMLog.a(F, String.format("Button: %d Anchor: %d Position: %d Anchor2: %d Position2: %d", new Object[]{Integer.valueOf(imageButton.getId()), Integer.valueOf(videoImage.l), Integer.valueOf(videoImage.k), Integer.valueOf(videoImage.n), Integer.valueOf(videoImage.m)}));
                        layoutParams.addRule(videoImage.k, videoImage.l);
                        layoutParams.addRule(videoImage.m, videoImage.n);
                        layoutParams.setMargins(videoImage.i, videoImage.g, videoImage.j, videoImage.h);
                    }
                    if (!TextUtils.isEmpty(videoImage.e)) {
                        imageButton.setOnClickListener(new AnonymousClass_2(imageButton, videoImage));
                    }
                    if (videoImage.o > 0) {
                        videoImage.v = layoutParams;
                        this.x.sendMessageDelayed(Message.obtain(this.x, IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, videoImage), videoImage.o);
                    } else {
                        this.C.addView(imageButton, layoutParams);
                    }
                    if (videoImage.p > 0) {
                        this.x.sendMessageDelayed(Message.obtain(this.x, 1, videoImage), videoImage.p + videoImage.o + videoImage.s);
                    }
                    i++;
                }
                b.addView(this.C, new RelativeLayout.LayoutParams(-1, -1));
            }
            if (this.C != null) {
                b.bringChildToFront(this.C);
            }
            if (this.z != null) {
                b.bringChildToFront(this.z);
            }
        } else {
            q();
            if (this.z != null) {
                b.addView(this.z);
                this.a = true;
            }
        }
        return b;
    }

    protected void b(Bundle bundle) {
        this.y = (VideoAd) bundle.getParcelable("videoAd");
        super.b(bundle);
    }

    protected void b(String str) {
        if (str != null) {
            e(str);
        }
        if (this.y != null) {
            this.y.g();
            if (this.y.s) {
                if (!(this.a || this.y.D == null)) {
                    p();
                    if (!this.y.h()) {
                        m();
                    }
                }
                if (this.z != null && !TextUtils.isEmpty(this.y.q)) {
                    c(this.y.q);
                    this.z.bringToFront();
                } else if (this.a) {
                    m();
                }
                if (this.y.y != 0) {
                    a(this.y.y);
                }
                this.x.removeMessages(1);
                this.x.removeMessages(GoogleScorer.CLIENT_PLUS);
                this.x.removeMessages(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE);
            } else {
                m();
            }
        }
    }

    protected void c() {
        super.c();
        this.x.removeMessages(1);
        this.x.removeMessages(GoogleScorer.CLIENT_PLUS);
        this.x.removeMessages(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE);
    }

    protected void c(Bundle bundle) {
        super.c(bundle);
        if (bundle == null) {
            this.y = (VideoAd) AdCache.i(this.c, getIntent().getStringExtra("videoId"));
            if (this.y != null) {
                this.i = this.y.m;
                this.E = this.y.t;
            }
        } else {
            this.y = (VideoAd) bundle.getParcelable("videoAd");
            this.i = bundle.getBoolean("shouldShowBottomBar");
            this.D = bundle.getInt("lastVideoPosition");
            this.j = bundle.getInt("currentVideoPosition");
            this.E = this.y.t;
        }
    }

    void c(String str) {
        new FetchWebViewContentTask(str).execute(new Void[0]);
    }

    protected void d() {
        super.d();
        if (this.z != null) {
            this.z.bringToFront();
        }
        if (this.C != null) {
            this.C.bringToFront();
        }
    }

    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (this.y != null) {
            if (this.x != null) {
                this.x.removeMessages(1);
            }
            if (!this.a) {
                int i = 0;
                while (i < this.y.D.size()) {
                    VideoImage videoImage = (VideoImage) this.y.D.get(i);
                    a(videoImage.u, videoImage.q);
                    if (videoImage.p > 0) {
                        this.x.sendMessageDelayed(Message.obtain(this.x, 1, videoImage), videoImage.p);
                    } else if (motionEvent.getAction() == 1) {
                        if (j()) {
                            Animation alphaAnimation = new AlphaAnimation(videoImage.q, videoImage.r);
                            alphaAnimation.setDuration(videoImage.s);
                            alphaAnimation.setFillEnabled(true);
                            alphaAnimation.setFillBefore(true);
                            alphaAnimation.setFillAfter(true);
                            videoImage.u.startAnimation(alphaAnimation);
                        }
                    } else if (motionEvent.getAction() == 0) {
                        a(videoImage.u, videoImage.q);
                    }
                    i++;
                }
            }
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    protected void g() {
        if (this.y != null) {
            if (!this.x.hasMessages(GoogleScorer.CLIENT_PLUS)) {
                this.x.sendMessageDelayed(Message.obtain(this.x, GoogleScorer.CLIENT_PLUS), AdWebViewUtils.DEFAULT_IMPRESSION_DELAY_MS);
            }
            if (!this.a) {
                if (this.E) {
                    long j = (this.y.w - ((long) this.j)) / 1000;
                    if (j <= 0) {
                        t();
                    } else if (this.A != null) {
                        this.A.setText(String.valueOf(j));
                    }
                }
                if (this.y.D != null) {
                    int i = 0;
                    while (i < this.y.D.size()) {
                        long j2;
                        VideoImage videoImage = (VideoImage) this.y.D.get(i);
                        if (videoImage.o <= 0 || this.C.indexOfChild(videoImage.u) != -1) {
                            j2 = 0;
                        } else {
                            Message obtain = Message.obtain(this.x, IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, videoImage);
                            j2 = videoImage.o - ((long) this.j);
                            if (j2 < 0) {
                                j2 = 500;
                            }
                            this.x.sendMessageDelayed(obtain, j2);
                        }
                        if (videoImage.p > 0) {
                            this.x.sendMessageDelayed(Message.obtain(this.x, 1, videoImage), j2 + videoImage.p + videoImage.s);
                        }
                        i++;
                    }
                }
            }
        }
        super.g();
    }

    protected void h() {
        if (this.y != null) {
            if (!((!this.b && !this.y.C) || this.y.p == null || this.z == null)) {
                c(this.y.p);
                this.b = false;
            }
            List list = this.y.D;
            this.x.removeMessages(1);
            this.x.removeMessages(GoogleScorer.CLIENT_PLUS);
            this.x.removeMessages(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE);
            this.D = 0;
            if (!(this.a || this.C == null || list == null)) {
                int i = 0;
                while (i < list.size()) {
                    VideoImage videoImage = (VideoImage) list.get(i);
                    if (videoImage != null) {
                        if (videoImage.o > 0) {
                            this.C.removeView(videoImage.u);
                            this.x.sendMessageDelayed(Message.obtain(this.x, IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, videoImage), videoImage.o);
                        }
                        if (videoImage.p > 0) {
                            this.x.sendMessageDelayed(Message.obtain(this.x, 1, videoImage), videoImage.p + videoImage.o + videoImage.s);
                        }
                    }
                    i++;
                }
            }
            if (this.x != null) {
                this.x.sendMessageDelayed(Message.obtain(this.x, GoogleScorer.CLIENT_PLUS), AdWebViewUtils.DEFAULT_IMPRESSION_DELAY_MS);
            }
            if (this.E) {
                r();
            }
        }
        super.h();
    }

    public boolean handleMessage(Message message) {
        switch (message.what) {
            case GoogleScorer.CLIENT_GAMES:
                if (j()) {
                    b((VideoImage) message.obj);
                }
                break;
            case GoogleScorer.CLIENT_PLUS:
                try {
                    if (this.l != null && this.l.isPlaying()) {
                        int currentPosition = this.l.getCurrentPosition();
                        if (currentPosition > this.D) {
                            if (this.y != null) {
                                if (this.D == 0) {
                                    this.y.f();
                                }
                                int i = 0;
                                while (i < this.y.E.size()) {
                                    VideoLogEvent videoLogEvent = (VideoLogEvent) this.y.E.get(i);
                                    if (videoLogEvent != null && videoLogEvent.b >= ((long) this.D) && videoLogEvent.b < ((long) currentPosition)) {
                                        int i2 = 0;
                                        while (i2 < videoLogEvent.c.length) {
                                            Event.a(videoLogEvent.c[i2]);
                                            i2++;
                                        }
                                    }
                                    i++;
                                }
                            }
                            this.D = currentPosition;
                        }
                        if (this.a && this.z != null) {
                            this.z.loadUrl("javascript:MMJS.cachedVideo.updateVideoSeekTime(" + ((float) Math.floor((double) (((float) currentPosition) / 1000.0f))) + ");");
                        }
                        if (this.E) {
                            long j = (this.y.w - ((long) currentPosition)) / 1000;
                            if (j <= 0) {
                                t();
                            } else if (this.A != null) {
                                this.A.setText(String.valueOf(j));
                            }
                        }
                    }
                    this.x.sendMessageDelayed(Message.obtain(this.x, GoogleScorer.CLIENT_PLUS), 500);
                } catch (IllegalStateException e) {
                    MMLog.e(F, "Error with video check", e);
                }
                break;
            case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                VideoImage videoImage = (VideoImage) message.obj;
                try {
                    if (this.C.indexOfChild(videoImage.u) == -1) {
                        this.C.addView(videoImage.u, videoImage.v);
                    }
                } catch (IllegalStateException e2) {
                    MMLog.e(F, "Problem adding buttons", e2);
                }
                if (j()) {
                    b(videoImage);
                    MMLog.a(F, String.format("Beginning animation to visibility. Fade duration: %d Button: %d Time: %d", new Object[]{Long.valueOf(videoImage.s), Integer.valueOf(videoImage.u.getId()), Long.valueOf(System.currentTimeMillis())}));
                }
                break;
        }
        return true;
    }

    protected void i() {
        super.i();
        if (!this.a && this.y != null && this.y.D != null) {
            Iterator it = this.y.D.iterator();
            while (it.hasNext()) {
                VideoImage videoImage = (VideoImage) it.next();
                if (videoImage.u != null) {
                    videoImage.u.setEnabled(true);
                }
            }
        }
    }

    protected boolean j() {
        return !this.y.s || !super.j();
    }

    public void onCompletion(MediaPlayer mediaPlayer) {
        super.onCompletion(mediaPlayer);
        if (this.E) {
            t();
        }
        if (this.y != null) {
            b(this.y.o);
        }
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        MMLog.a(F, "Is Cached Ad");
    }

    public boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
        a(String.format("Error while playing, %d - %d", new Object[]{Integer.valueOf(i), Integer.valueOf(i2)}));
        return super.onError(mediaPlayer, i, i2);
    }
}