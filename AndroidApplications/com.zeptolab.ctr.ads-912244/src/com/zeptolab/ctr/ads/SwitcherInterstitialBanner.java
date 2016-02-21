package com.zeptolab.ctr.ads;

import android.content.Intent;
import android.widget.RelativeLayout;
import com.zeptolab.ctr.CtrRenderer;
import com.zeptolab.ctr.CtrView;
import com.zeptolab.ctr.L;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class SwitcherInterstitialBanner implements InterstitialBanner {
    private static volatile SwitcherInterstitialBanner m_instance;
    private final String TAG;
    private List m_interstitials;
    private int m_interstitialshows;
    private List m_videos;
    private int m_videoshows;
    private CtrView m_view;
    private boolean videoInterstitialShown;

    class AnonymousClass_2 implements Runnable {
        final /* synthetic */ float val$percent;

        AnonymousClass_2(float f) {
            this.val$percent = f;
        }

        public void run() {
            CtrRenderer.videoBannerWatched(this.val$percent);
        }
    }

    private SwitcherInterstitialBanner() {
        this.TAG = "SwitcherInterstitialBanner";
        this.m_videoshows = 0;
        this.m_interstitialshows = 0;
        this.m_view = null;
        this.videoInterstitialShown = false;
        this.m_videos = new ArrayList();
        this.m_interstitials = new ArrayList();
    }

    public static SwitcherInterstitialBanner getInstance() {
        SwitcherInterstitialBanner switcherInterstitialBanner = m_instance;
        if (switcherInterstitialBanner == null) {
            synchronized (SwitcherInterstitialBanner.class) {
                switcherInterstitialBanner = m_instance;
                if (switcherInterstitialBanner == null) {
                    switcherInterstitialBanner = new SwitcherInterstitialBanner();
                    m_instance = switcherInterstitialBanner;
                }
            }
        }
        return switcherInterstitialBanner;
    }

    private boolean showAnyInterstitial() {
        if (this.m_interstitials.size() <= 0) {
            return false;
        }
        int i = 0;
        while (i < this.m_interstitials.size()) {
            if (((InterstitialBanner) this.m_interstitials.get(this.m_interstitialshows % this.m_interstitials.size())).showVideoBanner()) {
                L.i("SwitcherInterstitialBanner", "Show interstitial " + this.m_interstitialshows);
                return true;
            } else {
                this.m_interstitialshows++;
                i++;
            }
        }
        return false;
    }

    private boolean showAnyVideo() {
        if (this.m_videos.size() <= 0) {
            return false;
        }
        int i = 0;
        while (i < this.m_videos.size()) {
            if (((InterstitialBanner) this.m_videos.get(i)).showVideoBanner()) {
                L.i("SwitcherInterstitialBanner", "Show video " + this.m_videoshows);
                return true;
            } else {
                this.m_videoshows++;
                i++;
            }
        }
        return false;
    }

    public void addInterstitialBanner(InterstitialBanner interstitialBanner) {
        this.m_interstitials.add(interstitialBanner);
    }

    public void addVideoBanner(InterstitialBanner interstitialBanner) {
        this.m_videos.add(interstitialBanner);
    }

    public List getInterstitialBanners() {
        return this.m_interstitials;
    }

    public List getVideoBanners() {
        return this.m_videos;
    }

    public boolean handleActivityResult(int i, int i2, Intent intent) {
        Iterator it = this.m_videos.iterator();
        while (it.hasNext()) {
            if (((InterstitialBanner) it.next()).handleActivityResult(i, i2, intent)) {
                return true;
            }
        }
        it = this.m_interstitials.iterator();
        while (it.hasNext()) {
            if (((InterstitialBanner) it.next()).handleActivityResult(i, i2, intent)) {
                return true;
            }
        }
        return false;
    }

    public void interstitialWatched() {
        if (this.m_view != null) {
            this.m_view.queueEvent(new Runnable() {
                public void run() {
                    CtrRenderer.interstitialWatched();
                }
            });
        }
    }

    public boolean isAvailable() {
        return isVideosAvailable() || isInterstitialsAvailable();
    }

    public boolean isInterstitialsAvailable() {
        Iterator it = this.m_interstitials.iterator();
        while (it.hasNext()) {
            if (((InterstitialBanner) it.next()).isAvailable()) {
                return true;
            }
        }
        return false;
    }

    public boolean isVideosAvailable() {
        Iterator it = this.m_videos.iterator();
        while (it.hasNext()) {
            if (((InterstitialBanner) it.next()).isAvailable()) {
                return true;
            }
        }
        return false;
    }

    public void onDestroy() {
        Iterator it = this.m_videos.iterator();
        while (it.hasNext()) {
            InterstitialBanner interstitialBanner = (InterstitialBanner) it.next();
            if (interstitialBanner.isAvailable()) {
                interstitialBanner.onDestroy();
                break;
            }
        }
        this.m_videos.clear();
        it = this.m_interstitials.iterator();
        while (it.hasNext()) {
            interstitialBanner = (InterstitialBanner) it.next();
            if (interstitialBanner.isAvailable()) {
                interstitialBanner.onDestroy();
                break;
            }
        }
        this.m_interstitials.clear();
    }

    public void onPause() {
        Iterator it = this.m_videos.iterator();
        while (it.hasNext()) {
            InterstitialBanner interstitialBanner = (InterstitialBanner) it.next();
            if (interstitialBanner.isAvailable()) {
                interstitialBanner.onPause();
                break;
            }
        }
        it = this.m_interstitials.iterator();
        while (it.hasNext()) {
            interstitialBanner = (InterstitialBanner) it.next();
            if (interstitialBanner.isAvailable()) {
                interstitialBanner.onPause();
                return;
            }
        }
    }

    public void onResume() {
        Iterator it = this.m_videos.iterator();
        while (it.hasNext()) {
            ((InterstitialBanner) it.next()).onResume();
        }
        it = this.m_interstitials.iterator();
        while (it.hasNext()) {
            ((InterstitialBanner) it.next()).onResume();
        }
    }

    public void setLayout(RelativeLayout relativeLayout) {
        Iterator it = this.m_videos.iterator();
        while (it.hasNext()) {
            InterstitialBanner interstitialBanner = (InterstitialBanner) it.next();
            if (interstitialBanner.isAvailable()) {
                interstitialBanner.setLayout(relativeLayout);
                break;
            }
        }
        it = this.m_interstitials.iterator();
        while (it.hasNext()) {
            interstitialBanner = (InterstitialBanner) it.next();
            if (interstitialBanner.isAvailable()) {
                interstitialBanner.setLayout(relativeLayout);
                return;
            }
        }
    }

    public void setView(CtrView ctrView) {
        this.m_view = ctrView;
    }

    public boolean showInterstitial(boolean z, boolean z2) {
        L.i("SwitcherInterstitialBanner", "showInterstitial(showVideos = " + z + ", showInterstitials = " + z2 + ")");
        if (!z && !z2) {
            return false;
        }
        if (z && z2) {
            if (!this.videoInterstitialShown && showAnyVideo()) {
                this.videoInterstitialShown = true;
                return true;
            } else if (showAnyInterstitial()) {
                return true;
            }
        } else if (z) {
            if (showAnyVideo()) {
                return true;
            }
        } else if (showAnyInterstitial()) {
            return true;
        }
        L.i("SwitcherInterstitialBanner", "Nothing to show");
        return false;
    }

    public boolean showVideoBanner() {
        return false;
    }

    public void videoBannerFinished() {
        if (this.m_view != null) {
            this.m_view.queueEvent(new Runnable() {
                public void run() {
                    CtrRenderer.videoBannerFinished();
                }
            });
        }
    }

    public void videoBannerWatched(float f) {
        if (this.m_view != null) {
            this.m_view.queueEvent(new AnonymousClass_2(f));
        }
    }
}