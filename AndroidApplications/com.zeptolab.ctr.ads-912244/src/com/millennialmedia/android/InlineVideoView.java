package com.millennialmedia.android;

import android.app.Activity;
import android.content.Context;
import android.graphics.drawable.BitmapDrawable;
import android.media.MediaPlayer;
import android.media.MediaPlayer.OnCompletionListener;
import android.media.MediaPlayer.OnErrorListener;
import android.media.MediaPlayer.OnPreparedListener;
import android.net.Uri;
import android.os.Handler;
import android.os.Message;
import android.os.Parcelable;
import android.os.PowerManager;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import android.widget.VideoView;
import com.millennialmedia.a.a.k;
import com.zeptolab.ctr.ads.R;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.io.ByteArrayInputStream;
import java.io.Serializable;
import java.lang.ref.WeakReference;
import java.util.Map;

class InlineVideoView extends VideoView implements Serializable {
    static final int a = 500;
    private static final String h = "InlineVideoView";
    private static final String j = "iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAABOpJREFUeNrUmmtIY0cUgCfJ3VBXUXxR0dp2Ya0aBSFi6yOtFPGF1d1WavrAXy1YwVcLLaQpttsH+lcbirYq0a3Ptd0WpKi1P1SMaAitJNptalcQIwV/iI+o2ST39kx6I9cY3STcuSYHhjuTzD33fJk5M+fciWh9fR0tLCwgrhwfH6OcnBwkl8ur9vb2DIODg5aIiAjkq1itViQWi1FYWBgiKYmJiQhptdpzX6SlpSGz2fwRwzDHR0dH83V1dYn+KK6oqLjR19enQISluLgYof7+/jMfZmRkIIvFcoc5K783NTU95YvSsrKyFLvd/s/a2pqRNEBJSclZAJlMhra2tjyNP4Vobm5OukxhaWlpysnJyQPceXl5WS8SicgDDAwMuBrp6enY+M+Zy2UFIJ72pqy8vDwFfOcvd0ebzWYoLCwkD9DR0YFSU1Ox8W2Mb7IKEM+4lWBnHRoaSnM6nX97jhhAkQfQ6/XXNjY27jD+iamhoeFZiqLQyMhIOrQfeuljhCklJg4AD7rFBCA0Tf+h0+luQ9V80UgBAEUaQAzrvB7qk/7eDA6alZeXdx+qKRd0wb++hPRKJIZNaru+vv4NqP/Gs25sPEUcIDw8HHV1de2BY1bzDCFmC1kA91rd2dmJIV6D6nRIjQC3ARD7LMQvPOmWCArAQlhbWlqUPEBIrgQAC2xuh42NjUoI5O5BkwmpEXCLRqM5XFlZ+Qaq9qB2Yq9jL5HgHRaW+bzvoSkNZic+9wA2tnmxpqbmB2jGB7sPUB67KzZeAcb/CM24kHBi9z6Ar8PDwy8plcr7PBgvnBND9uSa82D8y2D8TzwZLxgAhRN4yF+zwfhfeX7gdSjXiANgp11cXDyCjOxr1ick7MojYQ2g2Cu3fvpZcnKyOCEhQcL5xd1XK+QLu8QB2GDuTyjvB6IgKSkJZWZmejouLrTBYLAJvoz6KxaLxVVYcbLljOTm5oqioqLwlHJw+jB4+s7NzQX8bIfDQX6jwdLb2/upTCZ7kzWcZouTHSUnZHd2tv2IvdrZ4vC4uuv09va2eXx8XCMIgNVqxXPsOW/fZWdnB6TTZrNp8egJAgByyKey/f19LeTD7+IFSCwQgINH47+rrKx8Z2lpyRkZGSkYwCM+lBwcHHwLxtfB1ME+hN+ohM4IsMa/B8YzPuUDwQSwu7urAePrZ2dnGd73AdJTCGK1n2traxvBeP8ysmAZAQhHXlCpVK/Ex8dfKUCgaSkO8xMKCgpGJycnb3uDCBUnvi6Xy4cA4lZcXFxIAmAJA4iRqamp12NjY0+TsJDaB0CeAIjB6enpmujo6P8PE0NtJ8Y5CEDcnZiYUOJQngpBACzS/Pz8u1lZWfSVr0I7OzufrK6uqgMZCUjG3qauEgDCgy+qqqq+woftsFGJIGf40g+dD+fn51XnzolJCCQtb3meP21ubn7GPcXE89lkMql9POFab21tTYVMDwkCMDMzo+Q+fXR0VI1DYW/5tdFoVD3G+AdtbW2uY62ioiJhAKqrq1/lGo9PNy8S/P8HgPjwEuNvuvueO6knDTA2NvbxZcY/BmKtvb39JrefC6Cnp4c4AMQyT3Z3d5f6cw9+3aPT6T7AlkNEalKr1Tc8+ygUCiSC7B7BMkYUgKZpnIQjqVTqeo3pYxjtGglY65+H+ib40b949Lj/v4iJiUH/CTAAFI2ZNCJ5irUAAAAASUVORK5CYII=";
    private static final String k = "iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAABEZJREFUeNrUml9IU1Ecx8+2uwnCrBlaGD2YEKiVla2ypAj8X+l8KYpkLxUFoT0VBT1YUYYP6ktQCGUQgQr+w0o3sgdDEv+AaBH9odicEq4XY25u7vY9dhe3m9N5d+8Z/uDHvRzPn+/nnN/5d6eG5/mNhJCjcAPcD18QngHhPSDxBVE+cfo/aXa7/afL5eKJipaSkkI4QfwzuBZOGwwKQoKS90jTqOvm5uZqrFbrYzUB8vPzFwEMgnhqGtq44LLN4/F8bmxsfEdUNo1GswjgF3peo0SlED9hsVhKbTbbV8LAtELMBhUSP1ZeXn6clXgxwEK0FSHmqfgTvb293whD45QAEMQfh3gHYWxa0eohy2ZmZt4i5o/19PQwFx8CmI9mBLq6umrQ804SI4t6BCoqKh5UVVWZYwVAsBMfhrv56GwKEPtYay8oKFgEyIH/4KO36crKyoOxADDTxnll7AcgDrEG2A2f5JUzCpHLEmAn3MEraxTiCCuAdPj3ZcR4ZEK4MbH3qw2w7FFidna2t6mpiU7M1zLqT8QSu43FMroV/vm/bvd47Dhvm2ge9OQGJL1ZTfc7nc77WVlZOhYhtAX+USLeVlhYaBJnXg0ExN/LyMhgNolT4B9CjeNg9hLiE5YqAAgTsthWEp+ens50Gd0If08b93q9r8KJF0GsR1Z7GPG3WfS8FCCBzgGfz/e6qKgoIZKCWCLXS0dicnKyOjMzk/1Roq+vj+AsfyA7OzthNYUBYYTuF/BALMT/BcDlW3YFubm58Qi5vampqTE5iFIATq/Xy66gv7/fg8eQ3PJ5eXmbdTrduqGhofdut1vOHZwQbFQx6b2GhoZMhN8n+K/h4eHypKSkiMvGxcXRsN9XXV29KSYA9fX1GRD+RbQGeAFxMhIIKr6zs/M0yvjh55gDQPx2ifiQ+QBxKjk5eSXxZwTx1C4xBYB4evL9tsw+6B0ZGVkSwmAwkI6ODip+XpT/MjOAurq6HSucev+OBCAqxBCCeKtEPLUrqgPQxtHzeyIUH7L50dHRs4mJiYt1tLe3W0VhI7arqgMUFxfHSw+LEZpvcHDwZHd39+kw4qnd4NQOnfHxcf/ExMQAdurV3g0MZrP5ufDROdyHZ71WbQCHw+HHjnkRIE9lfrda7qs5p2UxgV0ulxeXo3OAeKJw1TotqyV0enqajsR5hSEMzACoTU1NBXD4oxCNClXJMQUQwolCXMDEfqRAdXrmAAIETyf22NjYQ/Ln5621MwJiCIvFcjEQCAysuREI7dC1tbVVuA/simYEuFiJb2lpuVZaWlqz5iYxvQE2NzcrIZ59CHEYcPT89bKyshql+oMZAGKdtLa23oT4u0r2CRMAk8mkb2truwPxt5SeTpzf71cdIC0tzVhSUpKP1++hARFcu8RzqbSwBzoN1mOCXVFVgGAwSHJycuKMRmM8+fcfSqQg0jQuzN90Qj3O3wIMAN8Np0JgnxtnAAAAAElFTkSuQmCC";
    TransparentFix b;
    Handler c;
    WeakReference d;
    InlineParams e;
    MediaController f;
    TransparentHandler g;
    private int i;

    static interface TransparentFix {
        void removeBlackView();
    }

    private static class DownloadRunnable implements Runnable {
        private WeakReference a;

        public DownloadRunnable(InlineVideoView inlineVideoView) {
            this.a = new WeakReference(inlineVideoView);
        }

        public void run() {
            InlineVideoView inlineVideoView = (InlineVideoView) this.a.get();
            if (inlineVideoView != null) {
                inlineVideoView.c();
            }
        }
    }

    static class InlineParams {
        int a;
        boolean b;
        int c;
        int d;
        int e;
        int f;
        int g;
        int h;
        String i;
        String j;
        String k;
        String l;
        boolean m;
        boolean n;
        boolean o;
        float p;
        int q;
        boolean r;
        boolean s;
        boolean t;

        InlineParams(Map map, Context context) {
            this.o = true;
            if (map.get("x") != null) {
                this.a = (int) Float.parseFloat((String) map.get("x"));
            }
            if (map.get("y") != null) {
                this.c = (int) Float.parseFloat((String) map.get("y"));
            }
            if (map.get(MMLayout.KEY_WIDTH) != null) {
                this.f = (int) Float.parseFloat((String) map.get(MMLayout.KEY_WIDTH));
            }
            if (map.get(MMLayout.KEY_HEIGHT) != null) {
                this.g = (int) Float.parseFloat((String) map.get(MMLayout.KEY_HEIGHT));
            }
            this.i = (String) map.get("streamVideoURI");
            this.j = (String) map.get("cachedVideoURI");
            this.k = (String) map.get("cachedVideoID");
            if (map.get("autoPlay") != null) {
                this.m = Boolean.parseBoolean((String) map.get("autoPlay"));
            }
            if (map.get("showControls") != null) {
                this.n = Boolean.parseBoolean((String) map.get("showControls"));
            }
            if (map.get("bodyWidth") != null) {
                this.d = (int) Float.parseFloat((String) map.get("bodyWidth"));
            }
            if (map.get("bodyHeight") != null) {
                this.e = (int) Float.parseFloat((String) map.get("bodyHeight"));
            }
            this.l = (String) map.get("touchCallback");
            this.p = context.getResources().getDisplayMetrics().density;
        }

        static InlineParams a(String str) {
            return (InlineParams) new k().a(str, InlineParams.class);
        }

        void b(String str) {
            InlineParams inlineParams = (InlineParams) new k().a(str, InlineParams.class);
            this.a = inlineParams.a;
            this.c = inlineParams.c;
            this.d = inlineParams.d;
            this.e = inlineParams.e;
            this.f = inlineParams.f;
            this.g = inlineParams.g;
            this.h = inlineParams.h;
            this.i = inlineParams.i;
            this.j = inlineParams.j;
            this.k = inlineParams.k;
            this.l = inlineParams.l;
            this.m = inlineParams.m;
            this.n = inlineParams.n;
            this.o = inlineParams.o;
            this.p = inlineParams.p;
            this.b = inlineParams.b;
            this.q = inlineParams.q;
            this.r = inlineParams.r;
            MMLog.b(h, "gson*****" + str);
            MMLog.b(h, "PARAMS*****" + inlineParams);
        }

        public String toString() {
            return String.format("%s id, %d x, %d y, %d bWidth, %d bHeight, %d pos, %b autoPlay", new Object[]{this.k, Integer.valueOf(this.a), Integer.valueOf(this.c), Integer.valueOf(this.d), Integer.valueOf(this.e), Integer.valueOf(this.h), Boolean.valueOf(this.m)});
        }
    }

    private static class MediaController extends android.widget.MediaController {
        BitmapDrawable a;
        BitmapDrawable b;
        private WeakReference c;

        static final class MediaClickListener implements OnClickListener {
            private WeakReference a;

            public MediaClickListener(InlineVideoView inlineVideoView) {
                this.a = new WeakReference(inlineVideoView);
            }

            public void onClick(View view) {
                InlineVideoView inlineVideoView = (InlineVideoView) this.a.get();
                if (inlineVideoView != null) {
                    inlineVideoView.a(view);
                }
            }
        }

        public MediaController(InlineVideoView inlineVideoView) {
            super(inlineVideoView.getContext());
            this.c = new WeakReference(inlineVideoView);
        }

        public void setAnchorView(View view) {
            super.setAnchorView(view);
            View button = new Button(getContext());
            if (this.a == null) {
                try {
                    this.a = new BitmapDrawable(new ByteArrayInputStream(Base64.decode(j)));
                } catch (Exception e) {
                    MMLog.e(h, "Exception setting image anchorView inDrawable:", e);
                }
            }
            if (this.b == null) {
                try {
                    this.b = new BitmapDrawable(new ByteArrayInputStream(Base64.decode(k)));
                } catch (Exception e2) {
                    MMLog.e(h, "Exception setting image anchorView outDrawable:", e2);
                }
            }
            InlineVideoView inlineVideoView = (InlineVideoView) this.c.get();
            if (inlineVideoView != null) {
                if (inlineVideoView.e.b) {
                    button.setBackgroundDrawable(this.a);
                } else {
                    button.setBackgroundDrawable(this.b);
                }
                button.setOnClickListener(new MediaClickListener(inlineVideoView));
            }
            LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2, 5);
            layoutParams.setMargins(0, MMException.DISPLAY_AD_NOT_READY, R.styleable.MapAttrs_uiZoomControls, 0);
            addView(button, layoutParams);
        }
    }

    private static class TransparentHandler extends Handler {
        private WeakReference a;

        public TransparentHandler(InlineVideoView inlineVideoView) {
            this.a = new WeakReference(inlineVideoView);
        }

        public void handleMessage(Message message) {
            InlineVideoView inlineVideoView = (InlineVideoView) this.a.get();
            if (inlineVideoView != null) {
                inlineVideoView.a(message);
            }
        }
    }

    private static class VideoCompletionListener implements OnCompletionListener {
        private WeakReference a;

        public VideoCompletionListener(InlineVideoView inlineVideoView) {
            this.a = new WeakReference(inlineVideoView);
        }

        public void onCompletion(MediaPlayer mediaPlayer) {
            InlineVideoView inlineVideoView = (InlineVideoView) this.a.get();
            if (inlineVideoView != null) {
                inlineVideoView.a(mediaPlayer);
            }
        }
    }

    private static class VideoErrorListener implements OnErrorListener {
        private WeakReference a;

        public VideoErrorListener(InlineVideoView inlineVideoView) {
            this.a = new WeakReference(inlineVideoView);
        }

        public boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
            InlineVideoView inlineVideoView = (InlineVideoView) this.a.get();
            if (inlineVideoView != null) {
                inlineVideoView.a(mediaPlayer, i, i2);
            }
            return true;
        }
    }

    private static class VideoHandler extends Handler {
        private WeakReference a;

        public VideoHandler(InlineVideoView inlineVideoView) {
            this.a = new WeakReference(inlineVideoView);
        }

        public void handleMessage(Message message) {
            switch (message.what) {
                case GoogleScorer.CLIENT_PLUS:
                    InlineVideoView inlineVideoView = (InlineVideoView) this.a.get();
                    if (inlineVideoView != null) {
                        if (inlineVideoView.isPlaying()) {
                            inlineVideoView.d();
                        }
                        inlineVideoView.c.sendMessageDelayed(Message.obtain(inlineVideoView.c, GoogleScorer.CLIENT_PLUS), 500);
                    }
                default:
                    break;
            }
        }
    }

    private static class VideoPreparedListener implements OnPreparedListener {
        private WeakReference a;

        public VideoPreparedListener(InlineVideoView inlineVideoView) {
            this.a = new WeakReference(inlineVideoView);
        }

        public void onPrepared(MediaPlayer mediaPlayer) {
            InlineVideoView inlineVideoView = (InlineVideoView) this.a.get();
            if (inlineVideoView != null) {
                inlineVideoView.b(mediaPlayer);
            }
        }
    }

    private static class VideoTouchListener implements OnTouchListener {
        private WeakReference a;

        public VideoTouchListener(InlineVideoView inlineVideoView) {
            this.a = new WeakReference(inlineVideoView);
        }

        public boolean onTouch(View view, MotionEvent motionEvent) {
            InlineVideoView inlineVideoView = (InlineVideoView) this.a.get();
            return inlineVideoView != null ? inlineVideoView.a(view, motionEvent) : true;
        }
    }

    public InlineVideoView(MMLayout mMLayout) {
        super(mMLayout.getContext());
        this.g = new TransparentHandler(this);
        setId(8832429);
        setFocusable(true);
        MMAdImplController.a(mMLayout.getContext());
        this.d = new WeakReference(mMLayout);
    }

    private void a(boolean z) {
        if (!this.e.r) {
            seekTo(this.e.h);
            if (z || this.e.m) {
                startInternal();
                if (this.c != null && !this.c.hasMessages(GoogleScorer.CLIENT_PLUS)) {
                    this.c.sendMessageDelayed(Message.obtain(this.c, GoogleScorer.CLIENT_PLUS), 500);
                }
            }
        }
    }

    private void d(InlineParams inlineParams) {
        this.e = inlineParams;
    }

    private boolean l() {
        return !TextUtils.isEmpty(this.e.k) && VideoAd.a(getContext(), this.e.k);
    }

    private void m() {
        ThreadUtils.a(new DownloadRunnable(this));
    }

    private void n() {
        this.c = q();
        setVideoURI(o());
        setBackgroundColor(-16777216);
        setClickable(true);
        setOnErrorListener(t());
        setOnCompletionListener(u());
        setOnPreparedListener(v());
        setOnTouchListener(p());
        if (this.e.m) {
            seekTo(this.e.h);
            startInternal();
            if (!(this.c == null || this.c.hasMessages(GoogleScorer.CLIENT_PLUS))) {
                this.c.sendMessageDelayed(Message.obtain(this.c, GoogleScorer.CLIENT_PLUS), 500);
            }
        }
        if (this.e.n) {
            this.f = new MediaController(this);
            setMediaController(this.f);
            this.f.show();
        }
        MMLog.e(h, "Finished inserting inlineVideo player");
    }

    private Uri o() {
        if (l() && !this.e.t) {
            this.e.t = false;
            return VideoAd.b(getContext(), this.e.k);
        } else if (TextUtils.isEmpty(this.e.i)) {
            return null;
        } else {
            this.e.t = true;
            return Uri.parse(this.e.i);
        }
    }

    private OnTouchListener p() {
        return new VideoTouchListener(this);
    }

    private Handler q() {
        return new VideoHandler(this);
    }

    private void r() {
        ViewGroup viewGroup = (ViewGroup) getParent();
        if (viewGroup != null) {
            viewGroup.removeView(this);
        }
    }

    private void s() {
        if (!this.g.hasMessages(GoogleScorer.CLIENT_APPSTATE)) {
            this.g.sendEmptyMessage(GoogleScorer.CLIENT_APPSTATE);
        }
    }

    private OnErrorListener t() {
        return new VideoErrorListener(this);
    }

    private OnCompletionListener u() {
        return new VideoCompletionListener(this);
    }

    private OnPreparedListener v() {
        return new VideoPreparedListener(this);
    }

    private void w() {
        ((InputMethodManager) getContext().getSystemService("input_method")).hideSoftInputFromWindow(getWindowToken(), 0);
        requestFocus();
    }

    String a() {
        return new k().b(this.e);
    }

    void a(double d) {
        MMLayout mMLayout = (MMLayout) this.d.get();
        if (mMLayout == null) {
            MMLog.d(h, "MMLayout weak reference broken");
        }
        mMLayout.c("javascript:MMJS.inlineVideo.updateVideoSeekTime(" + d + ");");
    }

    void a(MediaPlayer mediaPlayer) {
        if (this.c != null && this.c.hasMessages(GoogleScorer.CLIENT_PLUS)) {
            this.c.removeMessages(GoogleScorer.CLIENT_PLUS);
        }
        this.e.r = true;
        this.e.h = this.i;
        if (this.e.h == -1) {
            this.e.h = 0;
        }
        e();
    }

    void a(Message message) {
        switch (message.what) {
            case GoogleScorer.CLIENT_APPSTATE:
                if (!isPlaying() || getCurrentPosition() <= 0) {
                    this.g.sendEmptyMessageDelayed(GoogleScorer.CLIENT_APPSTATE, 50);
                } else {
                    this.g.sendEmptyMessageDelayed(IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR, 100);
                }
            case IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:
                if (isPlaying() && getCurrentPosition() > 0) {
                    setBackgroundColor(0);
                    if (this.d != null && this.d.get() != null) {
                        ((MMLayout) this.d.get()).removeBlackView();
                    }
                }
            default:
                break;
        }
    }

    void a(View view) {
        MMLayout mMLayout = (MMLayout) this.d.get();
        if (mMLayout != null) {
            setBackgroundColor(-16777216);
            if (isPlaying()) {
                this.e.h = getCurrentPosition();
            }
            Activity activity;
            boolean isPlaying;
            if (this.e.b) {
                this.e.b = false;
                if (this.e.q == 1) {
                    activity = (Activity) getContext();
                    if (activity != null) {
                        activity.setRequestedOrientation(1);
                    }
                } else {
                    isPlaying = isPlaying();
                    stopPlayback();
                    mMLayout.g();
                    a(isPlaying);
                }
            } else {
                this.e.q = getContext().getResources().getConfiguration().orientation;
                this.e.b = true;
                if (this.e.q != 2) {
                    activity = (Activity) getContext();
                    if (activity != null) {
                        activity.setRequestedOrientation(0);
                    }
                } else {
                    isPlaying = isPlaying();
                    stopPlayback();
                    mMLayout.h();
                    a(isPlaying);
                }
            }
        }
    }

    void a(InlineParams inlineParams) {
        this.e.a = inlineParams.a;
        this.e.c = inlineParams.c;
        this.e.f = inlineParams.f;
        this.e.g = inlineParams.g;
    }

    void a(String str) {
        if (isPlaying()) {
            stopPlayback();
        }
        this.e.h = 0;
        setBackgroundColor(-16777216);
        setVideoURI(Uri.parse(str));
        startInternal();
    }

    boolean a(MediaPlayer mediaPlayer, int i, int i2) {
        if (this.c != null && this.c.hasMessages(GoogleScorer.CLIENT_PLUS)) {
            this.c.removeMessages(GoogleScorer.CLIENT_PLUS);
        }
        MMLayout mMLayout = (MMLayout) this.d.get();
        if (mMLayout == null) {
            MMLog.d(h, "MMLayout weak reference broken");
            return false;
        } else {
            mMLayout.c("javascript:MMJS.setError(" + String.format("Error while playing, %d - %d", new Object[]{Integer.valueOf(i), Integer.valueOf(i2)}) + ");");
            return true;
        }
    }

    boolean a(View view, MotionEvent motionEvent) {
        if (motionEvent.getAction() == 1) {
            MMLayout mMLayout = (MMLayout) this.d.get();
            if (mMLayout == null) {
                MMLog.d(h, "MMLayout weak reference broken");
                return false;
            } else {
                if (!TextUtils.isEmpty(this.e.l)) {
                    mMLayout.c(String.format("javascript:" + this.e.l + "(%f,%f)", new Object[]{Float.valueOf(motionEvent.getX()), Float.valueOf(motionEvent.getY())}));
                }
                if (!(!this.e.n || this.f == null || this.f.isShowing())) {
                    this.f.show();
                    return true;
                }
            }
        }
        return true;
    }

    void b(MediaPlayer mediaPlayer) {
        if (this.e.m) {
            s();
        }
        seekTo(this.e.h);
        if (this.e.m || !this.e.o) {
            getHeight();
        } else {
            this.e.o = false;
        }
        this.i = getDuration();
    }

    synchronized void b(InlineParams inlineParams) {
        d(inlineParams);
        if (!TextUtils.isEmpty(this.e.j)) {
            m();
        }
        if (b()) {
            n();
        } else {
            MMLog.e(h, "The videoURI attribute was not specified on the video marker div.");
        }
    }

    boolean b() {
        return !TextUtils.isEmpty(this.e.i) || l();
    }

    void c() {
        VideoAd.a(getContext(), this.e.j, this.e.k);
    }

    synchronized boolean c(InlineParams inlineParams) {
        a(inlineParams);
        MMLog.e(h, "Called initInlineVideo inside reposition section code");
        boolean isPlaying = isPlaying();
        stopPlayback();
        MMLayout mMLayout = (MMLayout) this.d.get();
        if (mMLayout != null) {
            mMLayout.e();
        }
        a(isPlaying);
        return true;
    }

    void d() {
        int currentPosition = getCurrentPosition();
        if (currentPosition >= 0) {
            MMLog.b(h, "Time is " + currentPosition);
            a(Math.floor((double) (((float) currentPosition) / 1000.0f)));
        }
    }

    void e() {
        if (this.i > 0) {
            MMLog.b(h, "Time is " + this.i);
            a(Math.ceil((double) (((float) this.i) / 1000.0f)));
        }
    }

    void f() {
        if (this.c != null && this.c.hasMessages(GoogleScorer.CLIENT_PLUS)) {
            this.c.removeMessages(GoogleScorer.CLIENT_PLUS);
        }
        if (isPlaying()) {
            stopPlayback();
        }
        setOnCompletionListener(null);
        setOnErrorListener(null);
        setOnPreparedListener(null);
        setOnTouchListener(null);
        r();
    }

    void g() {
        if (!isPlaying()) {
            if (this.e.s && o() != null) {
                this.e.s = false;
                setVideoURI(o());
                seekTo(0);
            } else if (this.e.r) {
                seekTo(0);
            }
            this.e.r = false;
            startInternal();
        }
        if (this.c != null && !this.c.hasMessages(GoogleScorer.CLIENT_PLUS)) {
            this.c.sendMessageDelayed(Message.obtain(this.c, GoogleScorer.CLIENT_PLUS), 500);
        }
    }

    public RelativeLayout.LayoutParams getCustomLayoutParams() {
        if (this.e.b) {
            return new RelativeLayout.LayoutParams(-1, -1);
        }
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams((int) (this.e.p * ((float) this.e.f)), (int) (this.e.p * ((float) this.e.g)));
        layoutParams.topMargin = (int) (this.e.p * ((float) this.e.c));
        layoutParams.leftMargin = (int) (this.e.p * ((float) this.e.a));
        MMLog.b(h, "lp height = " + layoutParams.height);
        return layoutParams;
    }

    void h() {
        if (this.c != null && this.c.hasMessages(GoogleScorer.CLIENT_PLUS)) {
            this.c.removeMessages(GoogleScorer.CLIENT_PLUS);
        }
        if (isPlaying()) {
            this.e.s = true;
            this.e.h = 0;
            if (!(this.d == null || this.d.get() == null)) {
                ((MMLayout) this.d.get()).addBlackView();
            }
            stopPlayback();
        }
    }

    void i() {
        if (this.c != null && this.c.hasMessages(GoogleScorer.CLIENT_PLUS)) {
            this.c.removeMessages(GoogleScorer.CLIENT_PLUS);
        }
        if (isPlaying()) {
            this.e.h = getCurrentPosition();
            pause();
        }
    }

    void j() {
        if (!isPlaying() && !this.e.r) {
            startInternal();
            if (this.c != null && !this.c.hasMessages(GoogleScorer.CLIENT_PLUS)) {
                this.c.sendMessageDelayed(Message.obtain(this.c, GoogleScorer.CLIENT_PLUS), 500);
            }
        }
    }

    boolean k() {
        return this.e != null && this.e.t;
    }

    public void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            SavedState savedState = (SavedState) parcelable;
            super.onRestoreInstanceState(savedState.getSuperState());
            this.e.b(savedState.a);
        } else {
            super.onRestoreInstanceState(parcelable);
        }
    }

    public Parcelable onSaveInstanceState() {
        Parcelable savedState = new SavedState(super.onSaveInstanceState());
        if (isPlaying()) {
            this.e.h = getCurrentPosition();
        }
        savedState.a = a();
        return savedState;
    }

    public void start() {
        s();
        w();
        super.start();
    }

    public void startInternal() {
        if (((PowerManager) getContext().getSystemService("power")).isScreenOn()) {
            start();
        }
    }

    public void stopPlayback() {
        if (this.c != null && this.c.hasMessages(GoogleScorer.CLIENT_PLUS)) {
            this.c.removeMessages(GoogleScorer.CLIENT_PLUS);
        }
        if (isPlaying()) {
            this.e.h = 0;
        }
        super.stopPlayback();
    }

    public String toString() {
        return this.e.toString();
    }
}