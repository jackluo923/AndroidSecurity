package com.admarvel.android.offlinesdk.model;

import java.io.Serializable;
import java.util.HashMap;

public class AdMarvelLinkedAD implements Serializable {
    private static final long serialVersionUID = 132198219871927192L;
    int adId;
    HashMap adTargetingOption;
    int adWeight;
    int campaignPriority;
    float deliveryPriority;
    HashMap deliveryPriorityBySite;
    int deliveryWeight;
    long endDate;
    long startDate;

    public int getAdId() {
        return this.adId;
    }

    public HashMap getAdTargetingOption() {
        return this.adTargetingOption;
    }

    public int getAdWeight() {
        return this.adWeight;
    }

    public int getCampaignPriority() {
        return this.campaignPriority;
    }

    public float getDeliveryPriority() {
        return this.deliveryPriority;
    }

    public HashMap getDeliveryPriorityBySite() {
        return this.deliveryPriorityBySite;
    }

    public int getDeliveryWeight() {
        return this.deliveryWeight;
    }

    public long getEndDate() {
        return this.endDate;
    }

    public long getStartDate() {
        return this.startDate;
    }

    public void setAdId(int i) {
        this.adId = i;
    }

    public void setAdTargetingOption(HashMap hashMap) {
        this.adTargetingOption = hashMap;
    }

    public void setAdWeight(int i) {
        this.adWeight = i;
    }

    public void setCampaignPriority(int i) {
        this.campaignPriority = i;
    }

    public void setDeliveryPriority(float f) {
        this.deliveryPriority = f;
    }

    public void setDeliveryPriorityBySite(HashMap hashMap) {
        this.deliveryPriorityBySite = hashMap;
    }

    public void setDeliveryWeight(int i) {
        this.deliveryWeight = i;
    }

    public void setEndDate(long j) {
        this.endDate = j;
    }

    public void setStartDate(long j) {
        this.startDate = j;
    }
}