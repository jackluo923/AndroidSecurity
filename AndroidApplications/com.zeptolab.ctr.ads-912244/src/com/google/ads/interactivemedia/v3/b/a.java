package com.google.ads.interactivemedia.v3.b;

import android.view.ViewGroup;
import com.google.ads.interactivemedia.v3.api.AdDisplayContainer;
import com.google.ads.interactivemedia.v3.api.CompanionAdSlot;
import com.google.ads.interactivemedia.v3.api.player.VideoAdPlayer;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public final class a implements AdDisplayContainer {
    private static int e;
    private VideoAdPlayer a;
    private ViewGroup b;
    private Collection c;
    private Map d;

    static {
        e = 0;
    }

    public a() {
        this.c = Collections.emptyList();
        this.d = null;
    }

    public final Map a_() {
        if (this.d == null) {
            this.d = new HashMap();
            Iterator it = this.c.iterator();
            while (it.hasNext()) {
                CompanionAdSlot companionAdSlot = (CompanionAdSlot) it.next();
                Map map = this.d;
                StringBuilder stringBuilder = new StringBuilder("compSlot_");
                int i = e;
                e = i + 1;
                map.put(stringBuilder.append(i).toString(), companionAdSlot);
            }
        }
        return this.d;
    }

    public final ViewGroup getAdContainer() {
        return this.b;
    }

    public final Collection getCompanionSlots() {
        return this.c;
    }

    public final VideoAdPlayer getPlayer() {
        return this.a;
    }

    public final void setAdContainer(ViewGroup viewGroup) {
        this.b = viewGroup;
    }

    public final void setCompanionSlots(Collection collection) {
        this.c = collection;
    }

    public final void setPlayer(VideoAdPlayer videoAdPlayer) {
        this.a = videoAdPlayer;
    }
}