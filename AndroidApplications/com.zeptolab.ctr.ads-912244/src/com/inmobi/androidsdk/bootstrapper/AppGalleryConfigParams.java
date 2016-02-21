package com.inmobi.androidsdk.bootstrapper;

import com.google.android.gms.plus.PlusShare;
import com.inmobi.commons.internal.InternalSDKUtil;
import java.util.Map;

public class AppGalleryConfigParams {
    String a;

    public AppGalleryConfigParams() {
        this.a = "http://appgalleries.inmobi.com/inmobi_sdk";
    }

    public String getUrl() {
        return this.a;
    }

    public void setFromMap(Map map) {
        this.a = InternalSDKUtil.getStringFromMap(map, PlusShare.KEY_CALL_TO_ACTION_URL);
    }
}