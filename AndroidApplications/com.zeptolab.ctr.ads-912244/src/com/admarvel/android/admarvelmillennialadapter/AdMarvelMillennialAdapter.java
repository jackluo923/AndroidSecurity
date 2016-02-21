package com.admarvel.android.admarvelmillennialadapter;

import android.app.Activity;
import android.content.Context;
import android.location.Location;
import android.util.TypedValue;
import android.view.View;
import android.widget.FrameLayout.LayoutParams;
import com.admarvel.android.ads.AdMarvelAd;
import com.admarvel.android.ads.AdMarvelAd.AdType;
import com.admarvel.android.ads.AdMarvelAdapter;
import com.admarvel.android.ads.AdMarvelAdapterListener;
import com.admarvel.android.ads.AdMarvelInterstitialAdapterListener;
import com.admarvel.android.ads.AdMarvelUtils.SDKAdNetwork;
import com.admarvel.android.ads.AdMarvelXMLElement;
import com.admarvel.android.ads.AdMarvelXMLReader;
import com.admarvel.android.util.Logging;
import com.millennialmedia.android.MMAdView;
import com.millennialmedia.android.MMInterstitial;
import com.millennialmedia.android.MMLog;
import com.millennialmedia.android.MMRequest;
import com.millennialmedia.android.MMSDK;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import java.util.Hashtable;
import java.util.Map;

public class AdMarvelMillennialAdapter extends AdMarvelAdapter {
    private MMInterstitial interAdView;
    private InternalMillennialInterstitialListener internalMillennialInterstitialListener;
    private InternalMillennialListener internalMillennialListener;
    private Location userLocation;

    public AdMarvelMillennialAdapter() {
        this.userLocation = null;
    }

    private String getAdNetworkSDKDate() {
        return "2014-06-02";
    }

    private String getAdNetworkSDKVersion() {
        return MMSDK.VERSION;
    }

    protected void cleanupView(View view) {
        if (this.internalMillennialListener != null) {
            Logging.log("Millennial Adapter: cleanupView");
            this.internalMillennialListener.destroyListener();
        }
        this.internalMillennialInterstitialListener = null;
        this.internalMillennialListener = null;
        this.interAdView = null;
        this.userLocation = null;
    }

    protected void displayInterstitial(Activity activity, String str) {
        if (this.interAdView != null) {
            Logging.log("Millennial Adapter: displayInterstitial");
            this.interAdView.display();
        }
    }

    protected void forceCloseFullScreenAd(Activity activity) {
    }

    public String getAdapterVersion() {
        return g.a;
    }

    public String getAdnetworkSDKVersionInfo() {
        return "admarvel_version: " + g.a + "; millennial_sdk_version: " + getAdNetworkSDKVersion() + "; date: " + getAdNetworkSDKDate();
    }

    public void handleClick() {
    }

    public void handleImpression() {
    }

    public void initialize(Activity activity, Map map) {
    }

    protected AdMarvelAd loadAd(AdMarvelAd adMarvelAd, AdMarvelXMLReader adMarvelXMLReader) {
        Logging.log("Millennial Adapter: loadAd");
        AdMarvelXMLElement parsedXMLData = adMarvelXMLReader.getParsedXMLData();
        String str = (String) parsedXMLData.getAttributes().get("pubid");
        if (str == null || str.length() <= 0) {
            adMarvelAd.setAdType(AdType.ERROR);
            adMarvelAd.setErrorCode(306);
            adMarvelAd.setErrorReason("Missing SDK publisher id");
        } else {
            adMarvelAd.setPubId(str);
        }
        str = (String) parsedXMLData.getAttributes().get("creativetype");
        if (str == null || str.length() <= 0) {
            adMarvelAd.setAdType(AdType.ERROR);
            adMarvelAd.setErrorCode(306);
            adMarvelAd.setErrorReason("Missing SDK creative type");
        } else if (str.equals("MMBannerAdTop")) {
            adMarvelAd.setCreativeType(str);
        } else if (str.equals("MMBannerAdBottom")) {
            adMarvelAd.setCreativeType(str);
        } else if (str.equals("MMBannerAdRectangle")) {
            adMarvelAd.setCreativeType(str);
        } else if (str.equals("MMFullScreenAdLaunch")) {
            adMarvelAd.setCreativeType(str);
        } else if (str.equals("MMFullScreenAdTransition")) {
            adMarvelAd.setCreativeType(str);
        } else {
            adMarvelAd.setAdType(AdType.ERROR);
            adMarvelAd.setErrorCode(306);
            adMarvelAd.setErrorReason("Unsupported creative type: " + str);
        }
        str = (String) parsedXMLData.getAttributes().get(MMLayout.KEY_WIDTH);
        if (str == null || str.length() <= 0) {
            adMarvelAd.setAdType(AdType.ERROR);
            adMarvelAd.setErrorCode(306);
            adMarvelAd.setErrorReason("Missing SDK width");
        } else {
            adMarvelAd.setWidth(str);
        }
        str = (String) parsedXMLData.getAttributes().get(MMLayout.KEY_HEIGHT);
        if (str == null || str.length() <= 0) {
            adMarvelAd.setAdType(AdType.ERROR);
            adMarvelAd.setErrorCode(306);
            adMarvelAd.setErrorReason("Missing SDK height");
        } else {
            adMarvelAd.setHeight(str);
        }
        return adMarvelAd;
    }

    public Object loadNativeAd(Object obj, AdMarvelXMLReader adMarvelXMLReader) {
        return null;
    }

    public void pause(Activity activity, Map map) {
    }

    public void registerViewForInteraction(View view) {
    }

    protected void requestIntersitialNewAd(AdMarvelInterstitialAdapterListener adMarvelInterstitialAdapterListener, Context context, AdMarvelAd adMarvelAd, Map map, int i, int i2) {
        Logging.log("Millennial Adapter: requestIntersitialNewAd");
        this.internalMillennialInterstitialListener = new InternalMillennialInterstitialListener(adMarvelInterstitialAdapterListener, adMarvelAd);
        Hashtable hashtable = new Hashtable();
        if (map != null) {
            String str;
            try {
                if (map.get("AGE") != null && ((String) map.get("AGE")).length() > 0) {
                    hashtable.put(MMRequest.KEY_AGE, (String) map.get("AGE"));
                }
            } catch (Exception e) {
                Logging.log("Exception in setting AGE TargetParam " + e.getMessage());
            }
            try {
                if (map.get("GENDER") != null && ((String) map.get("GENDER")).length() > 0) {
                    if (((String) map.get("GENDER")).toLowerCase().startsWith("m")) {
                        hashtable.put(MMRequest.KEY_GENDER, MMRequest.GENDER_MALE);
                    } else {
                        hashtable.put(MMRequest.KEY_GENDER, MMRequest.GENDER_FEMALE);
                    }
                }
            } catch (Exception e2) {
                Logging.log("Exception in setting GENDER TargetParam " + e2.getMessage());
            }
            try {
                if (map.get("POSTAL_CODE") != null && ((String) map.get("POSTAL_CODE")).length() > 0) {
                    hashtable.put(MMRequest.KEY_ZIP_CODE, (String) map.get("POSTAL_CODE"));
                }
            } catch (Exception e3) {
                Logging.log("Exception in setting GENDER TargetParam " + e3.getMessage());
            }
            try {
                if (map.get("MARITAL") != null && ((String) map.get("MARITAL")).length() > 0) {
                    hashtable.put(MMRequest.KEY_MARITAL_STATUS, (String) map.get("MARITAL"));
                }
            } catch (Exception e4) {
                Logging.log("Exception in setting GENDER TargetParam " + e4.getMessage());
            }
            try {
                if (map.get("ORIENTATION") != null && ((String) map.get("ORIENTATION")).length() > 0) {
                    hashtable.put("orientation", (String) map.get("ORIENTATION"));
                }
            } catch (Exception e5) {
                Logging.log("Exception in setting ORIENTATION TargetParam " + e5.getMessage());
            }
            try {
                if (map.get("ENTHNICITY") != null && ((String) map.get("ENTHNICITY")).length() > 0) {
                    str = (String) map.get("ENTHNICITY");
                    if ("0".equals(str)) {
                        hashtable.put(MMRequest.KEY_ETHNICITY, "african american");
                    } else if ("1".equals(str)) {
                        hashtable.put(MMRequest.KEY_ETHNICITY, MMRequest.ETHNICITY_ASIAN);
                    } else if ("2".equals(str)) {
                        hashtable.put(MMRequest.KEY_ETHNICITY, MMRequest.ETHNICITY_HISPANIC);
                    } else if ("3".equals(str)) {
                        hashtable.put(MMRequest.KEY_ETHNICITY, MMRequest.ETHNICITY_WHITE);
                    } else if ("4".equals(str)) {
                        hashtable.put(MMRequest.KEY_ETHNICITY, MMRequest.MARITAL_OTHER);
                    } else {
                        hashtable.put(MMRequest.KEY_ETHNICITY, MMRequest.MARITAL_OTHER);
                    }
                }
            } catch (Exception e6) {
                Logging.log("Exception in setting ENTHNICITY TargetParam " + e6.getMessage());
            }
            try {
                if (map.get("EDUCATION") != null && ((String) map.get("EDUCATION")).length() > 0) {
                    str = (String) map.get("EDUCATION");
                    if ("0".equals(str)) {
                        hashtable.put(MMRequest.KEY_EDUCATION, "no college");
                    } else if ("1".equals(str)) {
                        hashtable.put(MMRequest.KEY_EDUCATION, "college");
                    } else if ("2".equals(str)) {
                        hashtable.put(MMRequest.KEY_EDUCATION, "graduate school");
                    } else {
                        hashtable.put(MMRequest.KEY_EDUCATION, "college");
                    }
                }
            } catch (Exception e7) {
                Logging.log("Exception in setting EDUCATION TargetParam " + e7.getMessage());
            }
            try {
                if (map.get("CHILDREN") != null && ((String) map.get("CHILDREN")).length() > 0) {
                    hashtable.put(MMRequest.KEY_CHILDREN, (String) map.get("CHILDREN"));
                }
            } catch (Exception e8) {
                Logging.log("Exception in setting CHILDREN TargetParam " + e8.getMessage());
            }
            try {
                if (map.get("POLITICS") != null && ((String) map.get("POLITICS")).length() > 0) {
                    hashtable.put(MMRequest.KEY_POLITICS, (String) map.get("POLITICS"));
                }
            } catch (Exception e9) {
                Logging.log("Exception in setting POLITICS TargetParam " + e9.getMessage());
            }
            try {
                if (map.get("INCOME") != null && ((String) map.get("INCOME")).length() > 0) {
                    hashtable.put(MMRequest.KEY_INCOME, (String) map.get("INCOME"));
                }
            } catch (Exception e10) {
                Logging.log("Exception in setting INCOME TargetParam " + e10.getMessage());
            }
            try {
                if (map.get("KEYWORDS") != null && ((String) map.get("KEYWORDS")).length() > 0) {
                    hashtable.put(MMRequest.KEY_KEYWORDS, (String) map.get("KEYWORDS"));
                }
            } catch (Exception e11) {
                Logging.log("Exception in setting KEYWORDS TargetParam " + e11.getMessage());
            }
        }
        MMLog.setLogLevel(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE);
        this.interAdView = new MMInterstitial(context);
        this.interAdView.setApid(adMarvelAd.getPubId());
        this.interAdView.setListener(this.internalMillennialInterstitialListener);
        if (!this.interAdView.isAdAvailable()) {
            this.interAdView.fetch();
            if (this.interAdView.isAdAvailable() && adMarvelInterstitialAdapterListener != null) {
                adMarvelInterstitialAdapterListener.onReceiveInterstitialAd(SDKAdNetwork.MILLENNIAL, adMarvelAd.getPubId(), adMarvelAd);
            }
        } else if (adMarvelInterstitialAdapterListener != null) {
            adMarvelInterstitialAdapterListener.onReceiveInterstitialAd(SDKAdNetwork.MILLENNIAL, adMarvelAd.getPubId(), adMarvelAd);
        }
    }

    public Object requestNativeAd(AdMarvelAdapterListener adMarvelAdapterListener, Object obj) {
        return null;
    }

    protected View requestNewAd(AdMarvelAdapterListener adMarvelAdapterListener, Context context, AdMarvelAd adMarvelAd, Map map, int i, int i2) {
        int parseInt;
        int i3 = 0;
        Logging.log("Millennial Adapter: requestNewAd");
        this.internalMillennialListener = new InternalMillennialListener(adMarvelAdapterListener, adMarvelAd);
        Map hashtable = new Hashtable();
        if (map != null) {
            String str;
            try {
                if (map.get("AGE") != null && ((String) map.get("AGE")).length() > 0) {
                    hashtable.put(MMRequest.KEY_AGE, (String) map.get("AGE"));
                }
            } catch (Exception e) {
                Logging.log("Exception in setting AGE TargetParam " + e.getMessage());
            }
            try {
                if (map.get("GENDER") != null && ((String) map.get("GENDER")).length() > 0) {
                    if (((String) map.get("GENDER")).toLowerCase().startsWith("m")) {
                        hashtable.put(MMRequest.KEY_GENDER, MMRequest.GENDER_MALE);
                    } else {
                        hashtable.put(MMRequest.KEY_GENDER, MMRequest.GENDER_FEMALE);
                    }
                }
            } catch (Exception e2) {
                Logging.log("Exception in setting GENDER TargetParam " + e2.getMessage());
            }
            try {
                if (map.get("POSTAL_CODE") != null && ((String) map.get("POSTAL_CODE")).length() > 0) {
                    hashtable.put(MMRequest.KEY_ZIP_CODE, (String) map.get("POSTAL_CODE"));
                }
            } catch (Exception e3) {
                Logging.log("Exception in setting POSTAL_CODE TargetParam " + e3.getMessage());
            }
            try {
                if (map.get("MARITAL") != null && ((String) map.get("MARITAL")).length() > 0) {
                    hashtable.put(MMRequest.KEY_MARITAL_STATUS, (String) map.get("MARITAL"));
                }
            } catch (Exception e4) {
                Logging.log("Exception in setting MARITAL TargetParam " + e4.getMessage());
            }
            try {
                if (map.get("ORIENTATION") != null && ((String) map.get("ORIENTATION")).length() > 0) {
                    hashtable.put("orientation", (String) map.get("ORIENTATION"));
                }
            } catch (Exception e5) {
                Logging.log("Exception in setting ORIENTATION TargetParam " + e5.getMessage());
            }
            try {
                if (map.get("ENTHNICITY") != null && ((String) map.get("ENTHNICITY")).length() > 0) {
                    str = (String) map.get("ENTHNICITY");
                    if ("0".equals(str)) {
                        hashtable.put(MMRequest.KEY_ETHNICITY, "african american");
                    } else if ("1".equals(str)) {
                        hashtable.put(MMRequest.KEY_ETHNICITY, MMRequest.ETHNICITY_ASIAN);
                    } else if ("2".equals(str)) {
                        hashtable.put(MMRequest.KEY_ETHNICITY, MMRequest.ETHNICITY_HISPANIC);
                    } else if ("3".equals(str)) {
                        hashtable.put(MMRequest.KEY_ETHNICITY, MMRequest.ETHNICITY_WHITE);
                    } else if ("4".equals(str)) {
                        hashtable.put(MMRequest.KEY_ETHNICITY, MMRequest.MARITAL_OTHER);
                    } else {
                        hashtable.put(MMRequest.KEY_ETHNICITY, MMRequest.MARITAL_OTHER);
                    }
                }
            } catch (Exception e6) {
                Logging.log("Exception in setting ENTHNICITY TargetParam " + e6.getMessage());
            }
            try {
                if (map.get("EDUCATION") != null && ((String) map.get("EDUCATION")).length() > 0) {
                    str = (String) map.get("EDUCATION");
                    if ("0".equals(str)) {
                        hashtable.put(MMRequest.KEY_EDUCATION, "no college");
                    } else if ("1".equals(str)) {
                        hashtable.put(MMRequest.KEY_EDUCATION, "college");
                    } else if ("2".equals(str)) {
                        hashtable.put(MMRequest.KEY_EDUCATION, "graduate school");
                    } else {
                        hashtable.put(MMRequest.KEY_EDUCATION, "college");
                    }
                }
            } catch (Exception e7) {
                Logging.log("Exception in setting EDUCATION TargetParam " + e7.getMessage());
            }
            try {
                if (map.get("CHILDREN") != null && ((String) map.get("CHILDREN")).length() > 0) {
                    hashtable.put(MMRequest.KEY_CHILDREN, (String) map.get("CHILDREN"));
                }
            } catch (Exception e8) {
                Logging.log("Exception in setting CHILDREN TargetParam " + e8.getMessage());
            }
            try {
                if (map.get("POLITICS") != null && ((String) map.get("POLITICS")).length() > 0) {
                    hashtable.put(MMRequest.KEY_POLITICS, (String) map.get("POLITICS"));
                }
            } catch (Exception e9) {
                Logging.log("Exception in setting POLITICS TargetParam " + e9.getMessage());
            }
            try {
                if (map.get("INCOME") != null && ((String) map.get("INCOME")).length() > 0) {
                    hashtable.put(MMRequest.KEY_INCOME, (String) map.get("INCOME"));
                }
            } catch (Exception e10) {
                Logging.log("Exception in setting INCOME TargetParam " + e10.getMessage());
            }
            try {
                if (map.get("KEYWORDS") != null && ((String) map.get("KEYWORDS")).length() > 0) {
                    hashtable.put(MMRequest.KEY_KEYWORDS, (String) map.get("KEYWORDS"));
                }
            } catch (Exception e11) {
                Logging.log("Exception in setting INCOME TargetParam " + e11.getMessage());
            }
            if (map.get("LOCATION_OBJECT") != null) {
                try {
                    this.userLocation = (Location) map.get("LOCATION_OBJECT");
                } catch (Exception e12) {
                    e12.printStackTrace();
                }
            }
        }
        if (adMarvelAd != null) {
            i3 = Integer.parseInt(adMarvelAd.getWidth());
            parseInt = Integer.parseInt(adMarvelAd.getHeight());
        } else {
            parseInt = 0;
        }
        int applyDimension = (int) TypedValue.applyDimension(1, (float) parseInt, context.getResources().getDisplayMetrics());
        int applyDimension2 = (int) TypedValue.applyDimension(1, (float) i3, context.getResources().getDisplayMetrics());
        MMLog.setLogLevel(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE);
        View mMAdView = new MMAdView(context);
        mMAdView.setWidth(i3);
        mMAdView.setHeight(parseInt);
        mMAdView.setLayoutParams(new LayoutParams(applyDimension2, applyDimension));
        mMAdView.setId(MMSDK.getDefaultAdId());
        if (adMarvelAd != null) {
            mMAdView.setApid(adMarvelAd.getPubId());
        }
        MMRequest mMRequest = new MMRequest();
        mMRequest.setMetaValues(hashtable);
        if (!(map.get("LOCATION_OBJECT") == null || this.userLocation == null)) {
            MMRequest.setUserLocation(this.userLocation);
        }
        mMAdView.setMMRequest(mMRequest);
        mMAdView.setListener(this.internalMillennialListener);
        mMAdView.getAd();
        return mMAdView;
    }

    public void resume(Activity activity, Map map) {
    }

    public void uninitialize(Activity activity, Map map) {
    }

    public void unregisterView() {
    }
}