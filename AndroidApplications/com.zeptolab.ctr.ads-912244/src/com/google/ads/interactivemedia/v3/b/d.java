package com.google.ads.interactivemedia.v3.b;

import com.google.ads.interactivemedia.v3.api.player.VideoAdPlayer.VideoAdPlayerCallback;
import com.google.ads.interactivemedia.v3.api.player.VideoProgressUpdate;
import com.google.ads.interactivemedia.v3.b.r.b;
import com.google.ads.interactivemedia.v3.b.r.c;
import com.google.ads.interactivemedia.v3.b.v.a;

public final class d implements VideoAdPlayerCallback, a {
    private s a;
    private String b;
    private boolean c;
    private boolean d;
    private v e;

    public d(s sVar, String str, v vVar) {
        this.c = false;
        this.d = false;
        this.a = sVar;
        this.b = str;
        this.e = vVar;
    }

    private void a(c cVar, VideoProgressUpdate videoProgressUpdate) {
        this.a.b(new r(b.videoDisplay, cVar, this.b, videoProgressUpdate));
    }

    public final void a(VideoProgressUpdate videoProgressUpdate) {
        if (videoProgressUpdate != null && videoProgressUpdate.getDuration() > 0.0f) {
            if (!this.d && videoProgressUpdate.getCurrentTime() > 0.0f) {
                a(c.start, null);
                this.d = true;
            }
            a(c.timeupdate, videoProgressUpdate);
        }
    }

    public final void onEnded() {
        this.e.c();
        a(c.end, null);
    }

    public final void onError() {
        this.e.c();
        a(c.error, null);
    }

    public final void onPause() {
        this.e.c();
        a(c.pause, null);
    }

    public final void onPlay() {
        this.e.b();
        this.d = false;
    }

    public final void onResume() {
        this.e.b();
        a(c.play, null);
    }

    public final void onVolumeChanged(int i) {
        if (i == 0 && !this.c) {
            a(c.mute, null);
            this.c = true;
        }
        if (i != 0 && this.c) {
            a(c.unmute, null);
            this.c = false;
        }
    }
}