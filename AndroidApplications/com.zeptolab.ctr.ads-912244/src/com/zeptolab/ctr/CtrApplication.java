package com.zeptolab.ctr;

import android.app.Application;
import android.util.Log;
import com.admarvel.android.ads.AdMarvelUtils;
import com.admarvel.android.util.AdMarvelBitmapDrawableUtils;
import com.zeptolab.ctr.ads.AdMarvelPostitial;
import com.zeptolab.ctr.ads.R;
import com.zeptolab.ctr.ads.R.drawable;
import com.zeptolab.zbuild.ZR;
import java.util.HashMap;
import java.util.Map;

public class CtrApplication extends Application {
    public void onCreate() {
        Runnable anonymousClass_1 = new Runnable() {
            public void run() {
                CtrPreferences.getInstance();
            }
        };
        Rewards.setApplication(this);
        super.onCreate();
        Map hashMap = new HashMap();
        String str = AdMarvelBitmapDrawableUtils.ADMARVEL_CUSTOM_CLOSE_BUTTON;
        drawable com_zeptolab_ctr_ads_R_drawable = ZR.drawable;
        hashMap.put(str, AdMarvelBitmapDrawableUtils.convertBitmapTobyteArray(R.drawable.close_button, this));
        AdMarvelUtils.setAdMarvelOptionalFlags(hashMap);
        AdMarvelPostitial.onCreate(this);
    }

    public void onLowMemory() {
        Log.i("Cut the Rope", "WARNING: MEMORY IS LOW");
    }

    public void onTerminate() {
        super.onTerminate();
    }
}