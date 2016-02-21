package com.admarvel.android.admarvelheyzapadapter;

import android.app.Activity;
import com.admarvel.android.ads.AdMarvelAdapterListener;
import com.admarvel.android.ads.AdMarvelUtils;
import com.admarvel.android.ads.Constants;
import com.admarvel.android.nativeads.AdMarvelNativeAd;
import com.admarvel.android.nativeads.AdMarvelNativeImage;
import com.admarvel.android.nativeads.AdMarvelNativeMetadata;
import com.admarvel.android.nativeads.AdMarvelNativeRating;
import com.admarvel.android.util.Logging;
import com.google.android.gms.plus.PlusShare;
import com.heyzap.sdk.ads.NativeAd.Ad;
import com.heyzap.sdk.ads.NativeAd.FetchResponse;
import com.heyzap.sdk.ads.NativeAd.OnFetchListener;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class InternalHeyzapNativeListener implements OnFetchListener {
    final AdMarvelNativeAd adMarvelNativeAd;
    final AdMarvelAdapterListener adMarvelNativeAdAdapterListener;
    FetchResponse heyzapResponse;

    public InternalHeyzapNativeListener(AdMarvelAdapterListener adMarvelAdapterListener, AdMarvelNativeAd adMarvelNativeAd) {
        this.heyzapResponse = null;
        this.adMarvelNativeAdAdapterListener = adMarvelAdapterListener;
        this.adMarvelNativeAd = adMarvelNativeAd;
    }

    private boolean updateAdMarvelNatvieAd(Ad ad) {
        boolean z = false;
        try {
            Map hashMap = new HashMap();
            if (this.adMarvelNativeAd == null || ad == null) {
                return z;
            }
            if (ad.optString("display_name") != null) {
                hashMap.put(AdMarvelNativeAd.FIELD_DISPLAYNAME, ad.optString("display_name"));
            }
            if (ad.optString(PlusShare.KEY_CONTENT_DEEP_LINK_METADATA_DESCRIPTION) != null) {
                hashMap.put(AdMarvelNativeAd.FIELD_FULLMESSAGE, ad.optString(PlusShare.KEY_CONTENT_DEEP_LINK_METADATA_DESCRIPTION));
            }
            if (ad.optString("icon_uri") != null) {
                AdMarvelNativeImage adMarvelNativeImage = new AdMarvelNativeImage();
                String optString = ad.optString("icon_uri");
                if (optString != null) {
                    adMarvelNativeImage.setImageUrl(optString);
                }
                hashMap.put(AdMarvelNativeAd.FIELD_ICON, adMarvelNativeImage);
            }
            if (ad.optDouble(AdMarvelNativeAd.FIELD_RATING) != null) {
                try {
                    AdMarvelNativeRating adMarvelNativeRating = new AdMarvelNativeRating();
                    double doubleValue = ad.optDouble(AdMarvelNativeAd.FIELD_RATING).doubleValue();
                    adMarvelNativeRating.setBase(String.valueOf(IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR));
                    adMarvelNativeRating.setValue(String.valueOf(doubleValue));
                    hashMap.put(AdMarvelNativeAd.FIELD_RATING, adMarvelNativeRating);
                } catch (Exception e) {
                    Logging.log("Error in setting Rating fields");
                }
            }
            if (ad.optString("developer_name") != null) {
                AdMarvelNativeMetadata adMarvelNativeMetadata = new AdMarvelNativeMetadata();
                adMarvelNativeMetadata.setType("string");
                adMarvelNativeMetadata.setValue(ad.optString("developer_name"));
                Map hashMap2 = new HashMap();
                hashMap2.put("appDeveloperName", adMarvelNativeMetadata);
                hashMap.put(Constants.NATIVE_AD_METADATAS_ELEMENT, hashMap2);
            }
            if (ad.optString("category") != null) {
                adMarvelNativeMetadata = new AdMarvelNativeMetadata();
                adMarvelNativeMetadata.setType("string");
                adMarvelNativeMetadata.setValue(ad.optString("category"));
                hashMap2 = new HashMap();
                hashMap2.put("appCategory", adMarvelNativeMetadata);
                hashMap.put(Constants.NATIVE_AD_METADATAS_ELEMENT, hashMap2);
            }
            this.adMarvelNativeAd.updateNativeAdFromAdapter(hashMap);
            return true;
        } catch (Exception e2) {
            return z;
        }
    }

    public void doImpression() {
        if (this.heyzapResponse != null) {
            List ads = this.heyzapResponse.getAds();
            if (ads != null && ads.size() == 1) {
                Ad ad = (Ad) ads.get(0);
                if (ad != null) {
                    ad.doImpression();
                }
            }
        }
    }

    public void handleClick(Activity activity) {
        if (this.heyzapResponse != null) {
            List ads = this.heyzapResponse.getAds();
            if (ads != null && ads.size() == 1) {
                Ad ad = (Ad) ads.get(0);
                if (ad != null) {
                    ad.doClick(activity);
                }
            }
        }
    }

    public void onResponse(FetchResponse fetchResponse, String str, Throwable th) {
        if (th == null) {
            this.heyzapResponse = fetchResponse;
            if (this.heyzapResponse != null) {
                List ads = this.heyzapResponse.getAds();
                if (ads != null && ads.size() == 1) {
                    boolean updateAdMarvelNatvieAd = updateAdMarvelNatvieAd((Ad) ads.get(0));
                    if (updateAdMarvelNatvieAd && this.adMarvelNativeAdAdapterListener != null) {
                        this.adMarvelNativeAdAdapterListener.onReceiveNativeAd(this.adMarvelNativeAd);
                        Logging.log("Heyzap SDK : onResponse");
                    } else if (!updateAdMarvelNatvieAd && this.adMarvelNativeAdAdapterListener != null) {
                        this.adMarvelNativeAdAdapterListener.onFailedToReceiveAd(205, AdMarvelUtils.getErrorReason(205));
                        Logging.log("HeyZap SDK : onError");
                    }
                }
            }
        } else {
            this.heyzapResponse = null;
            if (this.adMarvelNativeAdAdapterListener != null) {
                this.adMarvelNativeAdAdapterListener.onFailedToReceiveAd(205, AdMarvelUtils.getErrorReason(205));
            }
            Logging.log("HeyZap SDK : onError");
        }
    }
}