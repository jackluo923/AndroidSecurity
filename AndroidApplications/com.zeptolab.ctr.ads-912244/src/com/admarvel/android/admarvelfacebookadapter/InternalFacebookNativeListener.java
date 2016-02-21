package com.admarvel.android.admarvelfacebookadapter;

import com.admarvel.android.ads.AdMarvelAdapterListener;
import com.admarvel.android.ads.AdMarvelUtils;
import com.admarvel.android.ads.Constants;
import com.admarvel.android.nativeads.AdMarvelNativeAd;
import com.admarvel.android.nativeads.AdMarvelNativeCta;
import com.admarvel.android.nativeads.AdMarvelNativeImage;
import com.admarvel.android.nativeads.AdMarvelNativeMetadata;
import com.admarvel.android.nativeads.AdMarvelNativeRating;
import com.admarvel.android.util.Logging;
import com.facebook.ads.Ad;
import com.facebook.ads.AdError;
import com.facebook.ads.AdListener;
import com.facebook.ads.NativeAd;
import com.facebook.ads.NativeAd.Rating;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import java.util.HashMap;
import java.util.Map;

public class InternalFacebookNativeListener implements AdListener {
    final AdMarvelNativeAd adMarvelNativeAd;
    final AdMarvelAdapterListener adMarvelNativeAdAdapterListener;

    public InternalFacebookNativeListener(AdMarvelAdapterListener adMarvelAdapterListener, AdMarvelNativeAd adMarvelNativeAd) {
        this.adMarvelNativeAdAdapterListener = adMarvelAdapterListener;
        this.adMarvelNativeAd = adMarvelNativeAd;
    }

    private boolean updateAdMarvelNatvieAd(NativeAd nativeAd) {
        boolean z = false;
        try {
            Map hashMap = new HashMap();
            if (this.adMarvelNativeAd == null || nativeAd == null) {
                return true;
            }
            AdMarvelNativeImage adMarvelNativeImage;
            String url;
            int height;
            int width;
            if (nativeAd.getAdTitle() != null) {
                hashMap.put(AdMarvelNativeAd.FIELD_DISPLAYNAME, nativeAd.getAdTitle());
            }
            if (nativeAd.getAdBody() != null) {
                hashMap.put(AdMarvelNativeAd.FIELD_SHORTMESSAGE, nativeAd.getAdBody());
            }
            if (nativeAd.getAdIcon() != null) {
                adMarvelNativeImage = new AdMarvelNativeImage();
                url = nativeAd.getAdIcon().getUrl();
                height = nativeAd.getAdIcon().getHeight();
                width = nativeAd.getAdIcon().getWidth();
                if (url != null) {
                    adMarvelNativeImage.setImageUrl(url);
                }
                if (height > 0) {
                    adMarvelNativeImage.setHeight(height);
                }
                if (width > 0) {
                    adMarvelNativeImage.setWidth(width);
                }
                hashMap.put(AdMarvelNativeAd.FIELD_ICON, adMarvelNativeImage);
            }
            if (nativeAd.getAdCoverImage() != null) {
                adMarvelNativeImage = new AdMarvelNativeImage();
                url = nativeAd.getAdCoverImage().getUrl();
                height = nativeAd.getAdCoverImage().getHeight();
                width = nativeAd.getAdCoverImage().getWidth();
                if (url != null) {
                    adMarvelNativeImage.setImageUrl(url);
                }
                if (height > 0) {
                    adMarvelNativeImage.setHeight(height);
                }
                if (width > 0) {
                    adMarvelNativeImage.setWidth(width);
                }
                hashMap.put(AdMarvelNativeAd.FIELD_CAMPAIGNIMAGE, new Object{adMarvelNativeImage});
            }
            Rating adStarRating = nativeAd.getAdStarRating();
            if (adStarRating != null) {
                try {
                    AdMarvelNativeRating adMarvelNativeRating = new AdMarvelNativeRating();
                    double scale = adStarRating.getScale();
                    double value = adStarRating.getValue();
                    adMarvelNativeRating.setBase(String.valueOf(scale));
                    adMarvelNativeRating.setValue(String.valueOf(value));
                    hashMap.put(AdMarvelNativeAd.FIELD_RATING, adMarvelNativeRating);
                } catch (Exception e) {
                    Logging.log("Error in setting Rating fields");
                }
            }
            String adCallToAction = nativeAd.getAdCallToAction();
            if (adCallToAction != null) {
                AdMarvelNativeCta adMarvelNativeCta = new AdMarvelNativeCta();
                adMarvelNativeCta.setTitle(adCallToAction);
                hashMap.put(AdMarvelNativeAd.FIELD_CTA, adMarvelNativeCta);
            }
            adCallToAction = nativeAd.getAdSocialContext();
            if (adCallToAction != null) {
                AdMarvelNativeMetadata adMarvelNativeMetadata = new AdMarvelNativeMetadata();
                adMarvelNativeMetadata.setType("string");
                adMarvelNativeMetadata.setValue(adCallToAction);
                Map hashMap2 = new HashMap();
                hashMap2.put("availabilityString", adMarvelNativeMetadata);
                hashMap.put(Constants.NATIVE_AD_METADATAS_ELEMENT, hashMap2);
            }
            this.adMarvelNativeAd.updateNativeAdFromAdapter(hashMap);
            return true;
        } catch (Exception e2) {
            return z;
        }
    }

    public void onAdClicked(Ad ad) {
        if (this.adMarvelNativeAdAdapterListener != null) {
            this.adMarvelNativeAdAdapterListener.onClickAd(AdTrackerConstants.BLANK);
            Logging.log("Facebook SDK : onAdClicked");
        } else {
            Logging.log("Facebook SDK : onAdClicked .. No listener Found");
        }
    }

    public void onAdLoaded(Ad ad) {
        if (ad != null && ad instanceof NativeAd) {
            boolean updateAdMarvelNatvieAd = updateAdMarvelNatvieAd((NativeAd) ad);
            if (updateAdMarvelNatvieAd && this.adMarvelNativeAdAdapterListener != null) {
                this.adMarvelNativeAdAdapterListener.onReceiveNativeAd(this.adMarvelNativeAd);
                Logging.log("Facebook SDK : onAdLoaded");
            } else if (updateAdMarvelNatvieAd || this.adMarvelNativeAdAdapterListener == null) {
                Logging.log("Facebook SDK : onAdLoaded No listenr found");
            } else {
                this.adMarvelNativeAdAdapterListener.onFailedToReceiveAd(205, AdMarvelUtils.getErrorReason(205));
                Logging.log("Facebook SDK : onError");
            }
        }
    }

    public void onError(Ad ad, AdError adError) {
        if (this.adMarvelNativeAdAdapterListener != null) {
            this.adMarvelNativeAdAdapterListener.onFailedToReceiveAd(205, AdMarvelUtils.getErrorReason(205));
            Logging.log("Facebook SDK : onError");
        } else {
            Logging.log("Facebook SDK : onError .. No listener Found");
        }
    }
}