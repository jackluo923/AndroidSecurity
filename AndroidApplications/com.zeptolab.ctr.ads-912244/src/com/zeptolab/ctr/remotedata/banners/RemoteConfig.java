package com.zeptolab.ctr.remotedata.banners;

import android.text.TextUtils;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import junit.framework.Assert;

public class RemoteConfig implements Serializable {
    private static final long serialVersionUID = 1;
    ArrayList bannersList;
    ArrayList bannersWeights;
    int boxForCrossPromo;
    int changeInterstitialToVideoPeriod;
    int currentBanner;
    int currentWeight;
    boolean defaultInterstitial;
    boolean hideMainPromo;
    boolean hideSocialNetworks;
    int interstitialBannersPeriod;
    int totalBanners;
    int videoBannersCount;

    public RemoteConfig(String str, String str2) {
        this.hideMainPromo = false;
        this.hideSocialNetworks = false;
        this.interstitialBannersPeriod = 4;
        this.changeInterstitialToVideoPeriod = 1;
        this.defaultInterstitial = false;
        this.boxForCrossPromo = -1;
        this.videoBannersCount = 1;
        this.bannersList = convertArray(TextUtils.split(str, ","));
        this.bannersWeights = convertArray(TextUtils.split(str2, ","));
        this.currentBanner = 0;
        this.currentWeight = 0;
        this.hideMainPromo = false;
        Assert.assertEquals("List of banners and bannersWeights has different length! Application will be crashed soon =)", this.bannersList.size(), this.bannersWeights.size());
        this.totalBanners = this.bannersList.size();
    }

    protected ArrayList convertArray(String[] strArr) {
        int i = 0;
        ArrayList arrayList = new ArrayList(strArr.length);
        int length = strArr.length;
        int i2 = 0;
        while (i < length) {
            arrayList.add(i2, Integer.valueOf(Integer.parseInt(strArr[i])));
            i2++;
            i++;
        }
        return arrayList;
    }

    public int getBoxForCrossPromo() {
        return this.boxForCrossPromo;
    }

    public int getChangeInterstitialToVideoPeriod() {
        return this.changeInterstitialToVideoPeriod;
    }

    public int getCurrentBannerID() {
        return this.totalBanners > 0 ? ((Integer) this.bannersList.get(this.currentBanner)).intValue() : -1;
    }

    public boolean getDefaultInterstitial() {
        return this.defaultInterstitial;
    }

    public boolean getHideMainPromo() {
        return this.hideMainPromo;
    }

    public boolean getHideSocialNetworks() {
        return this.hideSocialNetworks;
    }

    public int getInterstitialBannersPeriod() {
        return this.interstitialBannersPeriod;
    }

    public int getVideoBannersCount() {
        return this.videoBannersCount;
    }

    public boolean hasSenseToRotateBanners() {
        if (this.totalBanners == 0) {
            return false;
        }
        this.currentWeight = 0;
        Iterator it = this.bannersWeights.iterator();
        int i = 0;
        while (it.hasNext()) {
            i = ((Integer) it.next()).intValue() > 0 ? i + 1 : i;
        }
        return i != 0;
    }

    public void iterateBanner() {
        if (this.totalBanners != 0) {
            if (this.currentBanner >= this.totalBanners) {
                this.currentBanner = 0;
                this.currentWeight = 0;
            }
            Iterator it = this.bannersWeights.iterator();
            int i = 0;
            while (it.hasNext()) {
                i = ((Integer) it.next()).intValue() + i;
            }
            if (i <= 0) {
                this.currentBanner = Integer.MAX_VALUE;
            } else {
                int intValue;
                do {
                    intValue = ((Integer) this.bannersWeights.get(this.currentBanner)).intValue();
                    if (this.currentWeight >= intValue) {
                        this.currentWeight = 0;
                        this.currentBanner++;
                        this.currentBanner %= this.totalBanners;
                    }
                } while (intValue == 0);
                this.currentWeight++;
            }
        }
    }

    public void nextBanner() {
        if (hasSenseToRotateBanners()) {
            do {
                this.currentBanner++;
                this.currentBanner %= this.totalBanners;
            } while (((Integer) this.bannersWeights.get(this.currentBanner)).intValue() <= 0);
        }
    }

    public void prevBanner() {
        if (hasSenseToRotateBanners()) {
            do {
                this.currentBanner--;
                if (this.currentBanner < 0) {
                    this.currentBanner = this.totalBanners - 1;
                }
            } while (((Integer) this.bannersWeights.get(this.currentBanner)).intValue() <= 0);
        }
    }

    public void removeBanner(int i) {
        int indexOf = this.bannersList.indexOf(Integer.valueOf(i));
        if (indexOf != -1) {
            this.bannersList.remove(indexOf);
            this.bannersWeights.remove(indexOf);
            this.currentBanner = 0;
            this.totalBanners = this.bannersList.size();
        }
    }

    public void setBoxForCrossPromo(int i) {
        this.boxForCrossPromo = i;
    }

    public void setChangeInterstitialToVideoPeriod(int i) {
        this.changeInterstitialToVideoPeriod = i;
    }

    public void setDefaultInterstitial(boolean z) {
        this.defaultInterstitial = z;
    }

    public void setHideMainPromo(boolean z) {
        this.hideMainPromo = z;
    }

    public void setHideSocialNetworks(boolean z) {
        this.hideSocialNetworks = z;
    }

    public void setInterstitialBannersPeriod(int i) {
        this.interstitialBannersPeriod = i;
    }

    public void setVideoBannersCount(int i) {
        this.videoBannersCount = i;
    }
}