package com.admarvel.android.nativeads;

import android.content.Context;
import android.os.AsyncTask;
import com.admarvel.android.ads.AdFetcher;
import com.admarvel.android.ads.AdFetcher.Adtype;
import com.admarvel.android.ads.AdMarvelAdapterInstances;
import com.admarvel.android.ads.AdMarvelAnalyticsAdapterInstances;
import com.admarvel.android.ads.AdMarvelUtils.AdMArvelErrorReason;
import com.admarvel.android.ads.AdMarvelXMLReader;
import com.admarvel.android.ads.Constants;
import com.admarvel.android.nativeads.AdMarvelNativeAd.AdType;
import com.admarvel.android.nativeads.AdMarvelNativeAd.RequestParameters;
import com.admarvel.android.util.Logging;
import java.util.Map;

class b extends AsyncTask {
    String a;
    private AdMarvelNativeAd b;

    b() {
        this.a = null;
    }

    private Map a(Context context, String str, Map map) {
        try {
            Map enhancedTargetParams = AdMarvelAnalyticsAdapterInstances.getInstance(Constants.MOLOGIQ_ANALYTICS_ADAPTER_FULL_CLASSNAME, context).getEnhancedTargetParams(str, map);
            if (enhancedTargetParams == null) {
                return map;
            }
            if (map == null) {
                return enhancedTargetParams;
            }
            map.putAll(enhancedTargetParams);
            return map;
        } catch (Exception e) {
            return map;
        }
    }

    protected AdMarvelNativeAd a(Object... objArr) {
        RequestParameters requestParameters = (RequestParameters) objArr[0];
        this.b = (AdMarvelNativeAd) objArr[1];
        if (this.b == null) {
            return null;
        }
        int intValue = ((Integer) objArr[2]).intValue();
        String str = (String) objArr[3];
        Map targetParams = requestParameters.getTargetParams();
        String partnerId = requestParameters.getPartnerId();
        String siteId = requestParameters.getSiteId();
        Context context = this.b.getmContext();
        if (context == null) {
            return null;
        }
        Map a = a(context, siteId, targetParams);
        try {
            this.a = new AdFetcher().fetchAd(Adtype.NATIVE, context, null, this.b.getOrientation(), this.b.getDeviceConnectivity(), a, partnerId, siteId, intValue, str, false, null, false, false, false);
            if (this.a == null) {
                a listener = this.b.getListener();
                if (listener != null) {
                    listener.a(this.b, AdMArvelErrorReason.AD_REQUEST_XML_PARSING_EXCEPTION.getErrorCode(), AdMArvelErrorReason.AD_REQUEST_XML_PARSING_EXCEPTION);
                }
                return null;
            } else {
                AdMarvelXMLReader loadAd = this.b.loadAd(this.a);
                if (loadAd != null && this.b.getAdType() == AdType.SDKCALL && this.b.getSdkNetwork() != null && this.b.getSdkNetwork().length() > 0) {
                    AdMarvelAdapterInstances.getInstance(this.b.ADMARVEL_NATIVE_AD_GUID, this.b.getSdkNetwork()).loadNativeAd(this.b, loadAd);
                }
                return this.b;
            }
        } catch (Exception e) {
            this.b.setAdType(AdType.ERROR);
            this.b.setErrorCode(AdMArvelErrorReason.AD_REQUEST_XML_PARSING_EXCEPTION.getErrorCode());
        }
    }

    protected void a(AdMarvelNativeAd adMarvelNativeAd) {
        if (adMarvelNativeAd != null) {
            a listener;
            if (adMarvelNativeAd.getAdType() == AdType.ERROR) {
                Logging.log("ADType Error ");
                listener = adMarvelNativeAd.getListener();
                if (listener != null) {
                    listener.a(adMarvelNativeAd, AdMArvelErrorReason.AD_REQUEST_XML_PARSING_EXCEPTION.getErrorCode(), AdMArvelErrorReason.AD_REQUEST_XML_PARSING_EXCEPTION);
                }
            } else if (adMarvelNativeAd.getAdType() == AdType.SDKCALL) {
                if (adMarvelNativeAd.getSdkNetwork() != null) {
                    adMarvelNativeAd.requestPendingAd();
                }
            } else if (adMarvelNativeAd.isDisableAdrequest()) {
                String disableAdDuration = adMarvelNativeAd.getDisableAdDuration();
                if (disableAdDuration != null) {
                    adMarvelNativeAd.disableAdRequest(disableAdDuration);
                }
            } else {
                listener = adMarvelNativeAd.getListener();
                if (listener != null) {
                    listener.a(adMarvelNativeAd);
                }
            }
        }
    }

    protected /* synthetic */ Object doInBackground(Object[] objArr) {
        return a(objArr);
    }

    protected /* synthetic */ void onPostExecute(Object obj) {
        a((AdMarvelNativeAd) obj);
    }
}