package com.google.ads.interactivemedia.v3.b;

import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Message;
import com.google.ads.interactivemedia.v3.api.player.VideoAdPlayer;
import com.google.ads.interactivemedia.v3.api.player.VideoProgressUpdate;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class v implements Callback {
    protected final VideoAdPlayer a;
    protected final long b;
    protected boolean c;
    private Handler d;
    private List e;
    private List f;
    private List g;

    public static interface a {
        void a_(VideoProgressUpdate videoProgressUpdate);
    }

    public v(VideoAdPlayer videoAdPlayer, long j) {
        this(videoAdPlayer, j, (byte) 0);
    }

    private v(VideoAdPlayer videoAdPlayer, long j, byte b) {
        this.c = false;
        this.e = new ArrayList(1);
        this.f = new ArrayList(1);
        this.a = videoAdPlayer;
        this.b = j;
        this.d = null;
        this.d = new Handler(this);
        this.g = this.e;
    }

    private void d() {
        if (!this.c) {
            this.c = true;
            this.d.sendEmptyMessage(1);
        }
    }

    public final void a() {
        this.g = this.f;
        d();
    }

    public final void a(a aVar) {
        this.e.add(aVar);
    }

    public final void b() {
        this.g = this.e;
        d();
    }

    public final void b(a aVar) {
        this.e.remove(aVar);
    }

    public final void c() {
        this.c = false;
        this.d.sendMessageAtFrontOfQueue(Message.obtain(this.d, GoogleScorer.CLIENT_PLUS));
    }

    public final void c(a aVar) {
        this.f.add(aVar);
    }

    public final boolean handleMessage(Message message) {
        switch (message.what) {
            case GoogleScorer.CLIENT_GAMES:
                VideoProgressUpdate progress = this.a.getProgress();
                Iterator it = this.g.iterator();
                while (it.hasNext()) {
                    ((a) it.next()).a(progress);
                }
                this.d.sendMessageDelayed(Message.obtain(this.d, 1), this.b);
                break;
            case GoogleScorer.CLIENT_PLUS:
                this.d.removeMessages(1);
                break;
        }
        return true;
    }
}