package com.google.ads.interactivemedia.v3.b;

import com.google.ads.interactivemedia.v3.api.player.VideoProgressUpdate;
import com.google.ads.interactivemedia.v3.b.r.b;
import com.google.ads.interactivemedia.v3.b.r.c;
import com.google.ads.interactivemedia.v3.b.v.a;
import java.util.SortedSet;

public final class n implements a {
    private final SortedSet a;
    private s b;
    private String c;
    private float d;

    public n(s sVar, SortedSet sortedSet, String str) {
        this.d = 0.0f;
        this.b = sVar;
        this.c = str;
        this.a = sortedSet;
    }

    public final void a(VideoProgressUpdate videoProgressUpdate) {
        if (videoProgressUpdate != null && videoProgressUpdate.getDuration() >= 0.0f) {
            int i;
            float currentTime = videoProgressUpdate.getCurrentTime();
            i = (this.d < currentTime ? this.a.subSet(Float.valueOf(this.d), Float.valueOf(currentTime)) : this.a.subSet(Float.valueOf(currentTime), Float.valueOf(this.d))).isEmpty() ? 0 : 1;
            this.d = videoProgressUpdate.getCurrentTime();
            if (i != 0) {
                this.b.b(new r(b.contentTimeUpdate, c.contentTimeUpdate, this.c, videoProgressUpdate));
            }
        }
    }
}