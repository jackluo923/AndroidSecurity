package com.inmobi.re.controller.util;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.drawable.BitmapDrawable;
import android.media.MediaPlayer;
import android.media.MediaPlayer.OnCompletionListener;
import android.media.MediaPlayer.OnErrorListener;
import android.media.MediaPlayer.OnPreparedListener;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.Message;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.MediaController;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.VideoView;
import com.brightcove.player.event.EventType;
import com.facebook.ads.internal.AdWebViewUtils;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.inmobi.commons.internal.ApiStatCollector.ApiEventType;
import com.inmobi.commons.internal.Log;
import com.inmobi.commons.internal.WrapperFunctions;
import com.inmobi.commons.uid.UIDHelper;
import com.inmobi.re.container.IMWebView;
import com.inmobi.re.controller.JSController.Dimensions;
import com.inmobi.re.controller.JSController.PlayerProperties;
import com.zeptolab.ctr.ads.R;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.lang.ref.WeakReference;

public class AVPlayer extends VideoView implements OnCompletionListener, OnErrorListener, OnPreparedListener {
    public static final int MINIMAL_LAYOUT_PARAM = 1;
    private static String f;
    private static String g;
    private static String h;
    private static int i;
    private static int j;
    private static String k;
    private PlayerProperties a;
    private AVPlayerListener b;
    private String c;
    private int d;
    private RelativeLayout e;
    private boolean l;
    private boolean m;
    private IMWebView n;
    private Bitmap o;
    private int p;
    public boolean pseudoPause;
    private int q;
    private playerState r;
    private MediaPlayer s;
    private boolean t;
    private ViewGroup u;
    private Dimensions v;
    private b w;

    class a implements OnTouchListener {
        a() {
        }

        public boolean onTouch(View view, MotionEvent motionEvent) {
            return false;
        }
    }

    static class b extends Handler {
        private final WeakReference a;

        public b(AVPlayer aVPlayer) {
            this.a = new WeakReference(aVPlayer);
        }

        public void handleMessage(Message message) {
            AVPlayer aVPlayer = (AVPlayer) this.a.get();
            if (aVPlayer != null) {
                switch (message.what) {
                    case ApiEventType.API_IMAI_OPEN_EMBEDDED:
                        if (aVPlayer.l()) {
                            int round = Math.round((float) (aVPlayer.getCurrentPosition() / 1000));
                            int round2 = Math.round((float) (aVPlayer.getDuration() / 1000));
                            if (aVPlayer.q != round) {
                                aVPlayer.a(round, round2);
                                aVPlayer.q = round;
                                aVPlayer.d = round;
                            }
                            sendEmptyMessageDelayed(ApiEventType.API_IMAI_OPEN_EMBEDDED, AdWebViewUtils.DEFAULT_IMPRESSION_DELAY_MS);
                        } else {
                            return;
                        }
                }
            }
            super.handleMessage(message);
        }
    }

    class c implements OnTouchListener {
        c() {
        }

        public boolean onTouch(View view, MotionEvent motionEvent) {
            return motionEvent.getAction() == 2;
        }
    }

    public enum playerState {
        INIT,
        PLAYING,
        PAUSED,
        HIDDEN,
        SHOWING,
        COMPLETED,
        RELEASED;

        static {
            INIT = new com.inmobi.re.controller.util.AVPlayer.playerState("INIT", 0);
            PLAYING = new com.inmobi.re.controller.util.AVPlayer.playerState("PLAYING", 1);
            PAUSED = new com.inmobi.re.controller.util.AVPlayer.playerState("PAUSED", 2);
            HIDDEN = new com.inmobi.re.controller.util.AVPlayer.playerState("HIDDEN", 3);
            SHOWING = new com.inmobi.re.controller.util.AVPlayer.playerState("SHOWING", 4);
            COMPLETED = new com.inmobi.re.controller.util.AVPlayer.playerState("COMPLETED", 5);
            RELEASED = new com.inmobi.re.controller.util.AVPlayer.playerState("RELEASED", 6);
            a = new com.inmobi.re.controller.util.AVPlayer.playerState[]{INIT, PLAYING, PAUSED, HIDDEN, SHOWING, COMPLETED, RELEASED};
        }
    }

    static {
        f = EventType.PLAY;
        g = EventType.PAUSE;
        h = "ended";
        i = -1;
        j = 2;
        k = "Loading. Please Wait..";
    }

    private AVPlayer(Context context) {
        super(context);
        this.pseudoPause = false;
        this.d = 0;
        this.l = false;
        this.m = false;
        this.o = null;
        this.q = -1;
        this.w = new b(this);
    }

    public AVPlayer(Context context, IMWebView iMWebView) {
        this(context);
        setZOrderOnTop(true);
        this.r = playerState.INIT;
        setDrawingCacheEnabled(true);
        this.n = iMWebView;
        setFocusable(true);
        setFocusableInTouchMode(true);
        this.p = 100;
    }

    private static String a(String str) {
        try {
            byte[] bytes = str.getBytes();
            StringBuffer stringBuffer = new StringBuffer();
            int i = 0;
            while (i < bytes.length) {
                if ((bytes[i] & 128) > 0) {
                    stringBuffer.append("%" + UIDHelper.byteToHex(bytes[i]));
                } else {
                    stringBuffer.append((char) bytes[i]);
                }
                i++;
            }
            return new String(stringBuffer.toString().getBytes(), "ISO-8859-1");
        } catch (Exception e) {
            return null;
        }
    }

    private void a() {
        if (this.a.showControl()) {
            MediaController mediaController = new MediaController(getContext());
            setMediaController(mediaController);
            mediaController.setAnchorView(this);
        }
    }

    private void a(int i) {
        if (this.n != null) {
            this.n.injectJavaScript("window.mraidview.fireMediaErrorEvent('" + this.a.id + "'," + i + ");");
        }
    }

    private void a(int i, int i2) {
        if (this.n != null) {
            this.n.injectJavaScript("window.mraidview.fireMediaTimeUpdateEvent('" + this.a.id + "'," + i + "," + i2 + ");");
        }
    }

    private void a(boolean z, int i) {
        if (this.n != null) {
            this.n.injectJavaScript("window.mraidview.fireMediaCloseEvent('" + this.a.id + "'," + z + "," + i + ");");
            this.n.mediaPlayerReleased(this);
        }
    }

    private void b() {
        this.r = playerState.INIT;
        e();
        setVideoPath(this.c);
        a();
        setOnCompletionListener(this);
        setOnErrorListener(this);
        setOnPreparedListener(this);
    }

    private void b(int i) {
        if (this.s != null && this.t) {
            this.t = false;
        }
        this.p = i;
        float log = 1.0f - ((float) (Math.log((double) (101 - i)) / Math.log(101.0d)));
        try {
            this.s.setVolume(log, log);
        } catch (Exception e) {
            this.n.raiseError("Player has been released. Cannot set the volume.", EventType.SET_VOLUME);
        }
        g();
    }

    private void b(String str) {
        if (this.n != null) {
            this.n.injectJavaScript("window.mraidview.fireMediaTrackingEvent('" + str + "','" + this.a.id + "');");
        }
    }

    private void c() {
        if (this.r == playerState.SHOWING) {
            this.r = this.m ? playerState.COMPLETED : playerState.PAUSED;
        } else if (this.a.isAutoPlay() && this.r == playerState.INIT) {
            if (this.a.doMute()) {
                mute();
            }
            start();
        }
    }

    private void d() {
        try {
            ViewGroup viewGroup = (ViewGroup) getParent();
            if (viewGroup != null) {
                viewGroup.removeView(this);
            }
            viewGroup = (ViewGroup) this.u.getParent();
            if (viewGroup != null) {
                viewGroup.removeView(this.u);
            }
            setBackgroundColor(0);
            setBackgroundDrawable(null);
            setBackGroundLayout(null);
        } catch (Exception e) {
            Log.internal(Constants.RENDERING_LOG_TAG, "IMAVPlayer: unable to remove view");
        }
    }

    private void e() {
        this.e = new RelativeLayout(getContext());
        this.e.setLayoutParams(getLayoutParams());
        this.e.setBackgroundColor(-16777216);
        View textView = new TextView(getContext());
        textView.setText(k);
        textView.setTextColor(-1);
        LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(R.styleable.MapAttrs_zOrderOnTop);
        this.e.addView(textView, layoutParams);
        ((ViewGroup) getParent()).addView(this.e);
    }

    private void f() {
        if (this.e != null) {
            ((ViewGroup) getParent()).removeView(this.e);
        }
    }

    private void g() {
        if (this.n != null) {
            this.n.injectJavaScript("window.mraidview.fireMediaVolumeChangeEvent('" + this.a.id + "'," + getVolume() + "," + isMediaMuted() + ");");
        }
    }

    private void h() {
        this.w.sendEmptyMessage(ApiEventType.API_IMAI_OPEN_EMBEDDED);
    }

    private void i() {
        this.w.removeMessages(ApiEventType.API_IMAI_OPEN_EMBEDDED);
    }

    private boolean j() {
        return this.r == playerState.PAUSED || this.r == playerState.HIDDEN;
    }

    private boolean k() {
        return this.r == playerState.RELEASED;
    }

    private boolean l() {
        return this.r == playerState.PLAYING;
    }

    private boolean m() {
        return getLayoutParams().width == 1 && getLayoutParams().height == 1;
    }

    public boolean getAutoPlay() {
        return this.a != null ? this.a.autoPlay : false;
    }

    public ViewGroup getBackGroundLayout() {
        return this.u;
    }

    public String getMediaURL() {
        return this.c;
    }

    public Dimensions getPlayDimensions() {
        return this.v;
    }

    public PlayerProperties getPlayProperties() {
        return this.a;
    }

    public PlayerProperties getProperties() {
        return this.a;
    }

    public String getPropertyID() {
        return this.a.id;
    }

    public playerState getState() {
        return this.r;
    }

    public int getVolume() {
        return this.p;
    }

    public void hide() {
        try {
            setVisibility(GoogleScorer.CLIENT_APPSTATE);
            this.u.setVisibility(GoogleScorer.CLIENT_APPSTATE);
            this.r = playerState.HIDDEN;
        } catch (Exception e) {
            Log.internal(Constants.RENDERING_LOG_TAG, "IMAVPlayer: unable to hide video");
        }
    }

    public boolean isInlineVideo() {
        return !this.a.isFullScreen();
    }

    public boolean isMediaMuted() {
        return this.t;
    }

    public boolean isPrepared() {
        return this.l;
    }

    public void mute() {
        if (this.s != null && !this.t) {
            this.t = true;
            try {
                this.s.setVolume(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
            } catch (Exception e) {
                Log.internal(Constants.RENDERING_LOG_TAG, "IMAVPlayer: unable to set volume (mute)");
            }
            g();
        }
    }

    public void onCompletion(MediaPlayer mediaPlayer) {
        Log.debug(Constants.RENDERING_LOG_TAG, "AVPlayer-> onCompletion");
        this.r = playerState.COMPLETED;
        this.m = true;
        b(h);
        i();
        try {
            if (this.a.doLoop()) {
                synchronized (this) {
                    if (!j()) {
                        this.d = 0;
                        start();
                    }
                }
            } else if (this.a.exitOnComplete()) {
                releasePlayer(false);
            }
        } catch (Exception e) {
            Log.internal(Constants.RENDERING_LOG_TAG, "IMAvplayer onCompletion exception ", e);
        }
    }

    public boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
        Log.debug(Constants.RENDERING_LOG_TAG, "AVPlayer-> Player error : " + i);
        f();
        releasePlayer(false);
        if (this.b != null) {
            this.b.onError(this);
        }
        int i3 = i;
        if (i == 100) {
            i3 = j;
        }
        a(i3);
        return false;
    }

    public void onIMVisibilityChanged(boolean z) {
        Log.debug(Constants.RENDERING_LOG_TAG, "AVPlayer-> onIMVisibilityChanged: " + z);
        if (z && !this.pseudoPause) {
            setBackgroundDrawable(new BitmapDrawable(this.o));
        }
        if (z && this.pseudoPause) {
            this.pseudoPause = false;
            play();
        }
        if (!z && this.r == playerState.PLAYING) {
            this.pseudoPause = true;
            pause();
        }
    }

    public void onPrepared(MediaPlayer mediaPlayer) {
        this.s = mediaPlayer;
        super.seekTo(this.d * 1000);
        if (this.t) {
            try {
                this.s.setVolume(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
            } catch (Exception e) {
                Log.internal(Constants.RENDERING_LOG_TAG, "IMAVPlayer: unable to set volume");
            }
        }
        Log.debug(Constants.RENDERING_LOG_TAG, "AVPlayer-> onPrepared");
        f();
        if (this.b != null) {
            this.b.onPrepared(this);
        }
        this.l = true;
        c();
    }

    protected void onVisibilityChanged(View view, int i) {
        onIMVisibilityChanged(i == 0);
    }

    protected void onWindowVisibilityChanged(int i) {
        try {
            super.onWindowVisibilityChanged(i);
            if (VERSION.SDK_INT < 8) {
                onIMVisibilityChanged(i == 0);
            }
        } catch (Exception e) {
            Log.internal(Constants.RENDERING_LOG_TAG, "IMAVPlayer: onWindowVisibilityChanged: Something went wrong");
        }
    }

    public synchronized void pause() {
        if (this.r == null || this.r != playerState.PAUSED) {
            super.pause();
            this.r = playerState.PAUSED;
            i();
            Log.debug(Constants.RENDERING_LOG_TAG, "AVPlayer-> pause");
            b(g);
        }
    }

    public void play() {
        b();
    }

    public void releasePlayer(boolean z) {
        if (this.n != null) {
            this.n.setOnTouchListener(new a());
        }
        synchronized (this) {
            if (k()) {
            } else {
                this.r = playerState.RELEASED;
                a(z, this.q != -1 ? this.q : Math.round((float) (getCurrentPosition() / 1000)));
                i();
                stopPlayback();
                super.setMediaController(null);
                d();
                if (this.b != null) {
                    this.b.onComplete(this);
                    this.b = null;
                }
            }
        }
    }

    public void seekPlayer(int i) {
        if (i <= getDuration()) {
            seekTo(i);
        }
    }

    public void setAutoPlay(boolean z) {
        if (this.a != null) {
            this.a.autoPlay = z;
        }
    }

    public void setBackGroundLayout(ViewGroup viewGroup) {
        this.u = viewGroup;
    }

    public void setListener(AVPlayerListener aVPlayerListener) {
        this.b = aVPlayerListener;
    }

    public void setPlayData(PlayerProperties playerProperties, String str) {
        this.a = playerProperties;
        this.c = str;
        if (playerProperties.audioMuted) {
            this.t = true;
        }
        this.c = this.c.trim();
        this.c = a(this.c);
        if (this.o == null) {
            this.o = Bitmap.createBitmap(R.styleable.MapAttrs_uiZoomControls, R.styleable.MapAttrs_uiZoomControls, Config.ARGB_8888);
            if (VERSION.SDK_INT >= 8) {
                try {
                    this.o = WrapperFunctions.getVideoBitmap(this.c);
                } catch (Exception e) {
                    Log.internal(Constants.RENDERING_LOG_TAG, "IMAVPlayer: unable to get video bitmap");
                }
            }
        }
    }

    public void setPlayDimensions(Dimensions dimensions) {
        this.v = dimensions;
    }

    public void setVolume(int i) {
        if (i != this.p && this.r != playerState.RELEASED) {
            b(i);
        }
    }

    public void show() {
        this.r = playerState.SHOWING;
        setVisibility(0);
    }

    public synchronized void start() {
        if (!(this.n == null || m())) {
            this.n.setOnTouchListener(new c());
        }
        if (this.r == null || this.r != playerState.PLAYING) {
            seekPlayer(this.d * 1000);
            super.start();
            this.r = playerState.PLAYING;
            this.m = false;
            h();
            Log.debug(Constants.RENDERING_LOG_TAG, "AVPlayer-> start playing");
            if (this.l) {
                b(f);
            }
        }
    }

    public void unMute() {
        if (this.s != null && this.t) {
            b(this.p);
        }
    }
}