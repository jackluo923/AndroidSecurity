package com.inmobi.androidsdk.impl.net;

import com.inmobi.androidsdk.impl.ConfigConstants;
import com.inmobi.androidsdk.impl.SDKUtil;
import com.inmobi.androidsdk.impl.UserInfo;
import com.inmobi.androidsdk.impl.net.RequestResponseManager.ActionType;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import com.inmobi.commons.thinICE.cellular.CellUtil;
import com.inmobi.commons.thinICE.wifi.WifiInfo;
import com.inmobi.monetization.internal.Constants;
import com.millennialmedia.android.MMException;
import com.zeptolab.utils.HTMLEncoder;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.Calendar;
import java.util.Iterator;
import java.util.Map.Entry;

public final class HttpRequestBuilder {
    private static String a(UserInfo userInfo) {
        try {
            StringBuilder stringBuilder = new StringBuilder();
            if (userInfo.getScreenDensity() != null) {
                stringBuilder.append("d-device-screen-density=").append(getURLEncoded(userInfo.getScreenDensity()));
            }
            if (userInfo.getScreenSize() != null) {
                stringBuilder.append("&d-device-screen-size=").append(getURLEncoded(userInfo.getScreenSize()));
            }
            String toString = stringBuilder.toString();
            return toString.charAt(0) == '&' ? toString.substring(1) : toString;
        } catch (Exception e) {
            Log.internal(ConfigConstants.LOGGING_TAG, "Couldn't build post string in IMHttpRequestBuilder", e);
            return null;
        }
    }

    private static String a(UserInfo userInfo, WifiInfo wifiInfo) {
        try {
            String str;
            StringBuilder stringBuilder = new StringBuilder();
            if (userInfo.getPostalCode() != null) {
                stringBuilder.append("u-postalCode=");
                stringBuilder.append(getURLEncoded(userInfo.getPostalCode()));
            }
            if (SDKUtil.getQAMode()) {
                stringBuilder.append("&mk-carrier=117.97.87.6");
                stringBuilder.append("&x-real-ip=117.97.87.6");
            }
            if (userInfo.getRequestParams() != null) {
                Iterator it = userInfo.getRequestParams().entrySet().iterator();
                while (it.hasNext()) {
                    Entry entry = (Entry) it.next();
                    stringBuilder.append("&").append(getURLEncoded(((String) entry.getKey()).toString())).append("=").append(getURLEncoded(((String) entry.getValue()).toString()));
                }
            }
            if (userInfo.getAreaCode() != null) {
                stringBuilder.append("&u-areaCode=");
                stringBuilder.append(getURLEncoded(userInfo.getAreaCode()));
            }
            if (userInfo.getDateOfBirth() != null) {
                stringBuilder.append("&u-dateOfBirth=");
                stringBuilder.append(getURLEncoded(userInfo.getDateOfBirth()));
            }
            if (userInfo.getGender() != null) {
                stringBuilder.append("&u-gender=");
                stringBuilder.append(userInfo.getGender().toString().toLowerCase());
            }
            if (userInfo.getKeywords() != null) {
                stringBuilder.append("&p-keywords=");
                stringBuilder.append(getURLEncoded(userInfo.getKeywords()));
            }
            if (userInfo.getSearchString() != null) {
                stringBuilder.append("&p-type=");
                stringBuilder.append(getURLEncoded(userInfo.getSearchString()));
            }
            if (userInfo.getIncome() > 0) {
                stringBuilder.append("&u-income=");
                stringBuilder.append(userInfo.getIncome());
            }
            if (userInfo.getEducation() != null) {
                stringBuilder.append("&u-education=");
                stringBuilder.append(userInfo.getEducation().toString().toLowerCase());
            }
            if (userInfo.getEthnicity() != null) {
                stringBuilder.append("&u-ethnicity=");
                stringBuilder.append(userInfo.getEthnicity().toString().toLowerCase());
            }
            if (userInfo.getAge() > 0) {
                stringBuilder.append("&u-age=");
                stringBuilder.append(userInfo.getAge());
            }
            if (userInfo.getInterests() != null) {
                stringBuilder.append("&u-interests=");
                stringBuilder.append(getURLEncoded(userInfo.getInterests()));
            }
            if (userInfo.getLocationWithCityStateCountry() != null) {
                stringBuilder.append("&u-location=");
                stringBuilder.append(getURLEncoded(userInfo.getLocationWithCityStateCountry()));
            }
            if (userInfo.getMaritalStatus() != null) {
                stringBuilder.append("&u-marital=");
                stringBuilder.append(userInfo.getMaritalStatus().toString().toLowerCase());
            }
            if (userInfo.getHasChildren() != null) {
                stringBuilder.append("&u-haschildren=");
                stringBuilder.append(userInfo.getHasChildren().toString().toLowerCase());
            }
            if (userInfo.getLanguage() != null) {
                stringBuilder.append("&u-language=");
                stringBuilder.append(getURLEncoded(userInfo.getLanguage()));
            }
            if (userInfo.getSexualOrientation() != null) {
                stringBuilder.append("&u-sexualorientation=");
                stringBuilder.append(userInfo.getSexualOrientation().toString().toLowerCase());
            }
            Calendar instance = Calendar.getInstance();
            System.currentTimeMillis();
            stringBuilder.append("&ts=" + instance.getTimeInMillis());
            stringBuilder.append("&tz=").append(instance.get(MMException.REQUEST_NOT_PERMITTED) + instance.get(MMException.REQUEST_BAD_RESPONSE));
            if (wifiInfo != null) {
                stringBuilder.append("&c-ap-bssid=" + wifiInfo.bssid);
            }
            try {
                str = CellUtil.getCurrentCellTower(InternalSDKUtil.getContext()).id;
                if (!(str == null || AdTrackerConstants.BLANK.equals(str))) {
                    stringBuilder.append("&c-sid=" + str);
                }
            } catch (Exception e) {
                Log.internal(ConfigConstants.LOGGING_TAG, "Exception getting cell tower id", e);
            }
            str = stringBuilder.toString();
            return str.charAt(0) == '&' ? str.substring(1) : str;
        } catch (Exception e2) {
            Log.internal(ConfigConstants.LOGGING_TAG, "Couldn't build post string in IMHttpRequestBuilder", e2);
            return null;
        }
    }

    private static String b(UserInfo userInfo) {
        try {
            StringBuilder stringBuilder = new StringBuilder();
            if (userInfo.getSiteId() != null) {
                stringBuilder.append("mk-siteid=");
                stringBuilder.append(getURLEncoded(userInfo.getSiteId()));
            }
            stringBuilder.append("&u-id-adt=");
            if (InternalSDKUtil.isLimitAdTrackingEnabled()) {
                stringBuilder.append(1);
            } else {
                stringBuilder.append(0);
            }
            if (userInfo.getPlainUidMap() != null) {
                stringBuilder.append("&u-id-map=");
                stringBuilder.append(getURLEncoded(userInfo.getPlainUidMap()));
            }
            if (userInfo.getAid() != null) {
                stringBuilder.append("&aid=");
                stringBuilder.append(getURLEncoded(userInfo.getAid()));
            }
            stringBuilder.append("&mk-version=");
            String str = "pr-SAND-" + InternalSDKUtil.getInMobiInternalVersion(Constants.MEDIATION_SDK_VERSION) + "-" + InternalSDKUtil.INMOBI_SDK_RELEASE_DATE;
            stringBuilder.append(getURLEncoded(str));
            stringBuilder.append("&mk-rel-version=");
            stringBuilder.append(getURLEncoded(str));
            stringBuilder.append("&format=imai");
            stringBuilder.append("&mk-ads=1");
            stringBuilder.append("&h-user-agent=");
            stringBuilder.append(getURLEncoded(userInfo.getPhoneDefaultUserAgent()));
            stringBuilder.append("&u-appbid=");
            stringBuilder.append(getURLEncoded(userInfo.getAppBId()));
            stringBuilder.append("&u-appDNM=");
            stringBuilder.append(getURLEncoded(userInfo.getAppDisplayName()));
            stringBuilder.append("&u-appver=");
            stringBuilder.append(getURLEncoded(userInfo.getAppVer()));
            stringBuilder.append("&d-localization=");
            stringBuilder.append(getURLEncoded(userInfo.getLocalization()));
            if (userInfo.getNetworkType() != null) {
                stringBuilder.append("&d-netType=");
                stringBuilder.append(getURLEncoded(userInfo.getNetworkType()));
            }
            if (userInfo.getOrientation() != 0) {
                stringBuilder.append("&d-orientation=");
                stringBuilder.append(userInfo.getOrientation());
            }
            stringBuilder.append("&mk-ad-slot=");
            stringBuilder.append(getURLEncoded(userInfo.getAdUnitSlot()));
            if (userInfo.getSlotId() != null) {
                stringBuilder.append("&mk-site-slotid=");
                stringBuilder.append(getURLEncoded(userInfo.getSlotId()));
            }
            if (userInfo.isValidGeoInfo()) {
                stringBuilder.append("&u-latlong-accu=");
                stringBuilder.append(getURLEncoded(currentLocationStr(userInfo)));
                stringBuilder.append("&u-ll-ts=");
                stringBuilder.append(userInfo.getGeoTS());
            }
            if (!(userInfo.getRefTagKey() == null || userInfo.getRefTagValue() == null)) {
                stringBuilder.append("&").append(getURLEncoded(userInfo.getRefTagKey())).append("=").append(getURLEncoded(userInfo.getRefTagValue()));
            }
            String toString = stringBuilder.toString();
            return toString.charAt(0) == '&' ? toString.substring(1) : toString;
        } catch (Exception e) {
            Log.internal(ConfigConstants.LOGGING_TAG, "Couldn't build post string in IMHttpRequestBuilder", e);
            return null;
        }
    }

    public static String buildPostBody(UserInfo userInfo, WifiInfo wifiInfo, ActionType actionType) {
        StringBuffer stringBuffer = new StringBuffer();
        try {
            String a = a(userInfo, wifiInfo);
            if (ActionType.AdRequest == actionType) {
                stringBuffer.append("requestactivity=AdRequest");
            } else if (ActionType.AdRequest_Interstitial == actionType) {
                stringBuffer.append("adtype=int");
            }
            if (!(a == null || a.equalsIgnoreCase(AdTrackerConstants.BLANK))) {
                stringBuffer.append("&" + a);
            }
            a = a(userInfo);
            if (!(a == null || AdTrackerConstants.BLANK.equals(a))) {
                stringBuffer.append("&" + a);
            }
            a = b(userInfo);
            if (!(a == null || AdTrackerConstants.BLANK.equals(a))) {
                stringBuffer.append("&" + a);
            }
        } catch (Exception e) {
            Log.internal(ConfigConstants.LOGGING_TAG, "Exception occured in an ad request" + e);
        }
        return stringBuffer.toString();
    }

    public static String currentLocationStr(UserInfo userInfo) {
        StringBuilder stringBuilder = new StringBuilder();
        if (stringBuilder == null || !userInfo.isValidGeoInfo()) {
            return AdTrackerConstants.BLANK;
        }
        stringBuilder.append(userInfo.getLat());
        stringBuilder.append(",");
        stringBuilder.append(userInfo.getLon());
        stringBuilder.append(",");
        stringBuilder.append((int) userInfo.getLocAccuracy());
        return stringBuilder.toString();
    }

    public static String getURLDecoded(String str, String str2) {
        try {
            return URLDecoder.decode(str, str2);
        } catch (Exception e) {
            return AdTrackerConstants.BLANK;
        }
    }

    public static String getURLEncoded(String str) {
        String str2 = AdTrackerConstants.BLANK;
        try {
            return URLEncoder.encode(str, HTMLEncoder.ENCODE_NAME_DEFAULT);
        } catch (Exception e) {
            return AdTrackerConstants.BLANK;
        }
    }
}