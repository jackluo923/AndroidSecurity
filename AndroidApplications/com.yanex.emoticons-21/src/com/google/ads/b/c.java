package com.google.ads.b;

import android.app.Activity;
import android.media.MediaPlayer;
import android.media.MediaPlayer.OnCompletionListener;
import android.media.MediaPlayer.OnErrorListener;
import android.media.MediaPlayer.OnPreparedListener;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.MediaController;
import android.widget.VideoView;
import com.google.ads.util.g;
import java.lang.ref.WeakReference;

public final class c extends FrameLayout implements OnCompletionListener, OnErrorListener, OnPreparedListener {
    private static final h b;
    public MediaController a;
    private final WeakReference c;
    private final e d;
    private long e;
    private final VideoView f;
    private String g;

    static {
        b = (h) h.a.a();
    }

    public c(Activity activity, e eVar) {
        super(activity);
        this.c = new WeakReference(activity);
        this.d = eVar;
        this.f = new VideoView(activity);
        addView(this.f, new LayoutParams(-1, -1, 17));
        this.a = null;
        this.g = null;
        this.e = 0;
        new d(this).a();
        this.f.setOnCompletionListener(this);
        this.f.setOnPreparedListener(this);
        this.f.setOnErrorListener(this);
    }

    public final void a() {
        if (TextUtils.isEmpty(this.g)) {
            h hVar = b;
            h.a(this.d, "onVideoEvent", "{'event': 'error', 'what': 'no_src'}");
        } else {
            this.f.setVideoPath(this.g);
        }
    }

    public final void a(int i) {
        this.f.seekTo(i);
    }

    public final void a(MotionEvent motionEvent) {
        this.f.onTouchEvent(motionEvent);
    }

    public final void a(String str) {
        this.g = str;
    }

    public final void a(boolean z) {
        Activity activity = (Activity) this.c.get();
        if (activity == null) {
            g.e("adActivity was null while trying to enable controls on a video.");
        } else if (z) {
            if (this.a == null) {
                this.a = new MediaController(activity);
            }
            this.f.setMediaController(this.a);
        } else {
            if (this.a != null) {
                this.a.hide();
            }
            this.f.setMediaController(null);
        }
    }

    public final void b() {
        this.f.pause();
    }

    public final void c_() {
        this.f.start();
    }

    public final void d() {
        this.f.stopPlayback();
    }

    final void e() {
        long currentPosition = (long) this.f.getCurrentPosition();
        if (this.e != currentPosition) {
            float f = ((float) currentPosition) / 1000.0f;
            h hVar = b;
            h.a(this.d, "onVideoEvent", new StringBuilder("{'event': 'timeupdate', 'time': ").append(f).append("}").toString());
            this.e = currentPosition;
        }
    }

    public final void onCompletion(MediaPlayer mediaPlayer) {
        h hVar = b;
        h.a(this.d, "onVideoEvent", "{'event': 'ended'}");
    }

    public final boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
        g.e(new StringBuilder("Video threw error! <what:").append(i).append(", extra:").append(i2).append(">").toString());
        h hVar = b;
        h.a(this.d, "onVideoEvent", new StringBuilder("{'event': 'error', 'what': '").append(i).append("', 'extra': '").append(i2).append("'}").toString());
        return true;
    }

    public final void onPrepared(MediaPlayer mediaPlayer) {
        float duration = ((float) this.f.getDuration()) / 1000.0f;
        h hVar = b;
        h.a(this.d, "onVideoEvent", new StringBuilder("{'event': 'canplaythrough', 'duration': '").append(duration).append("'}").toString());
    }
}