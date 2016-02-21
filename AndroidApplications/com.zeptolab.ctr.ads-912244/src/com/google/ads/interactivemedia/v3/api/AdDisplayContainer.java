package com.google.ads.interactivemedia.v3.api;

import android.view.ViewGroup;
import com.google.ads.interactivemedia.v3.api.player.VideoAdPlayer;
import java.util.Collection;

public interface AdDisplayContainer {
    ViewGroup getAdContainer();

    Collection getCompanionSlots();

    VideoAdPlayer getPlayer();

    void setAdContainer(ViewGroup viewGroup);

    void setCompanionSlots(Collection collection);

    void setPlayer(VideoAdPlayer videoAdPlayer);
}