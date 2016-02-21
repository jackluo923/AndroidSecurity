package com.inmobi.monetization.internal.objects;

import android.content.Context;
import android.util.Base64;
import com.inmobi.androidsdk.bootstrapper.Initializer;
import com.inmobi.commons.ads.cache.AdData;
import com.inmobi.commons.ads.cache.AdDatabaseManager;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import com.inmobi.monetization.IMNative;
import com.inmobi.monetization.internal.Constants;
import com.inmobi.monetization.internal.NativeAdResponse;
import java.util.List;
import org.json.JSONObject;

public class NativeAdsCache {
    static NativeAdsCache a;

    private NativeAdsCache(Context context) {
    }

    public static NativeAdsCache getInstance() {
        if (a == null) {
            synchronized (NativeAdsCache.class) {
                a = new NativeAdsCache(InternalSDKUtil.getContext());
            }
        }
        AdDatabaseManager.getInstance().setDBLimit(Initializer.getConfigParams().getNativeSdkConfigParams().getmMaxCacheSize());
        return a;
    }

    public IMNative getCachedAd(String str) {
        try {
            JSONObject jSONObject = new JSONObject(AdDatabaseManager.getInstance().getAd(str).getContent());
            return new NativeAd(new String(Base64.decode(jSONObject.getString(NativeAdResponse.KEY_PUBCONTENT), 0)).trim(), jSONObject.getString(NativeAdResponse.KEY_CONTEXTCODE), jSONObject.getString(NativeAdResponse.KEY_NAMESPACE));
        } catch (Exception e) {
            Log.internal(Constants.LOG_TAG, "Exception getting cached ad", e);
            return null;
        }
    }

    public int getNumCachedAds(String str) {
        try {
            return AdDatabaseManager.getInstance().getNoOfAds(str);
        } catch (Exception e) {
            return 0;
        }
    }

    public void saveNativeAds(String str, List list) {
        if (list != null && list.size() > 0) {
            int i = 0;
            while (i < list.size()) {
                AdData adData = new AdData();
                adData.setContent((String) list.get(i));
                adData.setTimestamp(System.currentTimeMillis());
                adData.setAppId(str);
                adData.setAdType("native");
                AdDatabaseManager.getInstance().insertAd(adData);
                i++;
            }
        }
    }
}