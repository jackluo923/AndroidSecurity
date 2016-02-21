package com.admarvel.android.offlinesdk.model;

import java.io.Serializable;
import java.util.ArrayList;

public class BannerFolderName implements Serializable {
    private static final long serialVersionUID = 12198219871927192L;
    private ArrayList bannerFolderName;

    public ArrayList getBannerFolderName() {
        return this.bannerFolderName;
    }

    public void setBannerFolderName(ArrayList arrayList) {
        this.bannerFolderName = arrayList;
    }
}