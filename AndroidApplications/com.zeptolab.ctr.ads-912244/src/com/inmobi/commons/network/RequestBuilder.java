package com.inmobi.commons.network;

import com.inmobi.commons.InMobi;
import com.inmobi.commons.analytics.bootstrapper.AnalyticsInitializer;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.inmobi.commons.data.AppInfo;
import com.inmobi.commons.data.DeviceInfo;
import com.inmobi.commons.data.LocationInfo;
import com.inmobi.commons.data.UserInfo;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import com.inmobi.commons.thinICE.cellular.CellUtil;
import com.inmobi.commons.thinICE.icedatacollector.IceDataCollector;
import com.inmobi.commons.thinICE.wifi.WifiInfo;
import com.inmobi.commons.uid.UID;
import com.inmobi.commons.uid.UIDHelper;
import com.inmobi.monetization.internal.Constants;
import com.millennialmedia.android.MMException;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import com.zeptolab.utils.HTMLEncoder;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;

public class RequestBuilder {
    private String a(Calendar calendar) {
        return calendar != null ? calendar.get(1) + "-" + (calendar.get(GoogleScorer.CLIENT_PLUS) + 1) + "-" + calendar.get(IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR) : null;
    }

    public static String currentLocationStr() {
        StringBuilder stringBuilder = new StringBuilder();
        if (stringBuilder == null || !LocationInfo.isValidGeoInfo()) {
            return AdTrackerConstants.BLANK;
        }
        stringBuilder.append(LocationInfo.getLat());
        stringBuilder.append(",");
        stringBuilder.append(LocationInfo.getLon());
        stringBuilder.append(",");
        stringBuilder.append((int) LocationInfo.getLocAccuracy());
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

    public String buildPostBody() {
        StringBuffer stringBuffer = new StringBuffer();
        try {
            String sDKDelegatePostBody = getSDKDelegatePostBody();
            String devicePostBody = getDevicePostBody();
            String applicationPostBody = getApplicationPostBody();
            String publisherPostBody = getPublisherPostBody();
            String adFormatPostBody = getAdFormatPostBody();
            String uidMapPostBody = getUidMapPostBody();
            if (!(sDKDelegatePostBody == null || AdTrackerConstants.BLANK.equals(sDKDelegatePostBody.trim()))) {
                stringBuffer.append(sDKDelegatePostBody);
            }
            if (!(devicePostBody == null || AdTrackerConstants.BLANK.equals(devicePostBody.trim()))) {
                if (sDKDelegatePostBody == null || AdTrackerConstants.BLANK.equals(sDKDelegatePostBody.trim())) {
                    stringBuffer.append(devicePostBody);
                } else {
                    stringBuffer.append("&" + devicePostBody);
                }
            }
            if (!(applicationPostBody == null || AdTrackerConstants.BLANK.equals(applicationPostBody.trim()))) {
                stringBuffer.append("&" + applicationPostBody);
            }
            if (!(publisherPostBody == null || AdTrackerConstants.BLANK.equals(publisherPostBody.trim()))) {
                stringBuffer.append("&" + publisherPostBody);
            }
            if (!(adFormatPostBody == null || AdTrackerConstants.BLANK.equals(adFormatPostBody.trim()))) {
                stringBuffer.append("&" + adFormatPostBody);
            }
            if (!(uidMapPostBody == null || AdTrackerConstants.BLANK.equals(uidMapPostBody.trim()))) {
                stringBuffer.append("&" + uidMapPostBody);
            }
        } catch (Exception e) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "Exception occured in an ad request" + e);
        }
        return stringBuffer.toString();
    }

    public String getAdFormatPostBody() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("format=imai");
        stringBuilder.append("&mk-ads=1");
        return stringBuilder.toString();
    }

    public String getApplicationPostBody() {
        try {
            StringBuilder stringBuilder = new StringBuilder();
            if (AppInfo.getAppId() != null) {
                stringBuilder.append("mk-siteid=");
                stringBuilder.append(getURLEncoded(AppInfo.getAppId()));
            } else {
                stringBuilder.append("mk-siteid=");
                stringBuilder.append(getURLEncoded(InMobi.getAppId()));
            }
            stringBuilder.append("&mk-version=");
            String str = "pr-SAND-" + InternalSDKUtil.getInMobiInternalVersion(Constants.MEDIATION_SDK_VERSION) + "-" + InternalSDKUtil.INMOBI_SDK_RELEASE_DATE;
            stringBuilder.append(getURLEncoded(str));
            stringBuilder.append("&mk-rel-version=");
            stringBuilder.append(getURLEncoded(str));
            stringBuilder.append("&h-user-agent=");
            stringBuilder.append(getURLEncoded(DeviceInfo.getPhoneDefaultUserAgent()));
            stringBuilder.append("&u-appbid=");
            stringBuilder.append(getURLEncoded(AppInfo.getAppBId()));
            stringBuilder.append("&u-appDNM=");
            stringBuilder.append(getURLEncoded(AppInfo.getAppDisplayName()));
            stringBuilder.append("&u-appver=");
            stringBuilder.append(getURLEncoded(AppInfo.getAppVer()));
            String toString = stringBuilder.toString();
            try {
                return toString.charAt(0) == '&' ? toString.substring(1) : toString;
            } catch (Exception e) {
                Log.internal(InternalSDKUtil.LOGGING_TAG, "Couldn't build post string in Request Builder", e);
                return toString;
            }
        } catch (Exception e2) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "Couldn't build post string in Request Builder", e2);
            return null;
        }
    }

    public String getDevicePostBody() {
        WifiInfo wifiInfo = null;
        try {
            String str;
            StringBuilder stringBuilder = new StringBuilder();
            if (DeviceInfo.getScreenDensity() != null) {
                stringBuilder.append("d-device-screen-density=").append(getURLEncoded(DeviceInfo.getScreenDensity()));
            }
            if (DeviceInfo.getScreenSize() != null) {
                stringBuilder.append("&d-device-screen-size=").append(getURLEncoded(DeviceInfo.getScreenSize()));
            }
            if (DeviceInfo.getOrientation() != 0) {
                stringBuilder.append("&d-orientation=");
                stringBuilder.append(DeviceInfo.getOrientation());
            }
            if (DeviceInfo.getAid() != null) {
                stringBuilder.append("&aid=");
                stringBuilder.append(getURLEncoded(DeviceInfo.getAid()));
            }
            if (DeviceInfo.getNetworkType() != null) {
                stringBuilder.append("&d-netType=");
                stringBuilder.append(getURLEncoded(DeviceInfo.getNetworkType()));
            }
            stringBuilder.append("&d-localization=");
            stringBuilder.append(getURLEncoded(DeviceInfo.getLocalization()));
            Calendar instance = Calendar.getInstance();
            System.currentTimeMillis();
            stringBuilder.append("&ts=" + instance.getTimeInMillis());
            stringBuilder.append("&tz=").append(instance.get(MMException.REQUEST_NOT_PERMITTED) + instance.get(MMException.REQUEST_BAD_RESPONSE));
            try {
                WifiInfo connectedWifiInfo = IceDataCollector.getConnectedWifiInfo(InternalSDKUtil.getContext());
            } catch (Exception e) {
                Log.internal(InternalSDKUtil.LOGGING_TAG, "No wifi permissions set, unable to send wifi data");
                connectedWifiInfo = wifiInfo;
            }
            if (connectedWifiInfo != null) {
                stringBuilder.append("&c-ap-bssid=" + connectedWifiInfo.bssid);
            }
            try {
                str = CellUtil.getCurrentCellTower(InternalSDKUtil.getContext()).id;
                if (!(str == null || AdTrackerConstants.BLANK.equals(str))) {
                    stringBuilder.append("&c-sid=" + str);
                }
            } catch (Exception e2) {
                Log.internal(InternalSDKUtil.LOGGING_TAG, "Couldn't get cell tower info in Request Builder", e2);
            }
            str = stringBuilder.toString();
            try {
                return str.charAt(0) == '&' ? str.substring(1) : str;
            } catch (Exception e3) {
                Log.internal(InternalSDKUtil.LOGGING_TAG, "Couldn't build post string in Request Builder", e3);
                return str;
            }
        } catch (Exception e4) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "Couldn't build post string in Request Builder", e4);
            return wifiInfo;
        }
    }

    protected String getPublisherPostBody() {
        return null;
    }

    public String getSDKDelegatePostBody() {
        try {
            StringBuilder stringBuilder = new StringBuilder();
            UserInfo instance = UserInfo.getInstance();
            if (instance.getPostalCode() != null) {
                stringBuilder.append("u-postalCode=");
                stringBuilder.append(getURLEncoded(instance.getPostalCode()));
            }
            if (instance.getAreaCode() != null) {
                stringBuilder.append("&u-areaCode=");
                stringBuilder.append(getURLEncoded(instance.getAreaCode()));
            }
            String a = a(instance.getDateOfBirth());
            if (a != null) {
                stringBuilder.append("&u-dateOfBirth=");
                stringBuilder.append(getURLEncoded(a));
            }
            if (instance.getGender() != null) {
                stringBuilder.append("&u-gender=");
                stringBuilder.append(instance.getGender().toString().toLowerCase());
            }
            if (instance.getSearchString() != null) {
                stringBuilder.append("&p-type=");
                stringBuilder.append(getURLEncoded(instance.getSearchString()));
            }
            if (instance.getIncome().intValue() > 0) {
                stringBuilder.append("&u-income=");
                stringBuilder.append(instance.getIncome());
            }
            if (instance.getEducation() != null) {
                stringBuilder.append("&u-education=");
                stringBuilder.append(instance.getEducation().toString().toLowerCase());
            }
            if (instance.getEthnicity() != null) {
                stringBuilder.append("&u-ethnicity=");
                stringBuilder.append(instance.getEthnicity().toString().toLowerCase());
            }
            if (instance.getAge().intValue() > 0) {
                stringBuilder.append("&u-age=");
                stringBuilder.append(instance.getAge());
            }
            if (instance.getInterests() != null) {
                stringBuilder.append("&u-interests=");
                stringBuilder.append(getURLEncoded(instance.getInterests()));
            }
            if (instance.getLocationWithCityStateCountry() != null) {
                stringBuilder.append("&u-location=");
                stringBuilder.append(getURLEncoded(instance.getLocationWithCityStateCountry()));
            }
            if (instance.getMaritalStatus() != null) {
                stringBuilder.append("&u-marital=");
                stringBuilder.append(instance.getMaritalStatus().toString().toLowerCase());
            }
            if (instance.getHasChildren() != null) {
                stringBuilder.append("&u-haschildren=");
                stringBuilder.append(instance.getHasChildren().toString().toLowerCase());
            }
            if (instance.getLanguage() != null) {
                stringBuilder.append("&u-language=");
                stringBuilder.append(getURLEncoded(instance.getLanguage()));
            }
            if (instance.getSexualOrientation() != null) {
                stringBuilder.append("&u-sexualorientation=");
                stringBuilder.append(instance.getSexualOrientation().toString().toLowerCase());
            }
            if (LocationInfo.isValidGeoInfo()) {
                stringBuilder.append("&u-latlong-accu=");
                stringBuilder.append(getURLEncoded(currentLocationStr()));
                stringBuilder.append("&u-ll-ts=");
                stringBuilder.append(LocationInfo.getGeoTS());
            }
            String toString = stringBuilder.toString();
            try {
                return toString.charAt(0) == '&' ? toString.substring(1) : toString;
            } catch (Exception e) {
                Log.internal(InternalSDKUtil.LOGGING_TAG, "Couldn't build post string in Request Builder", e);
                return toString;
            }
        } catch (Exception e2) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "Couldn't build post string in Request Builder", e2);
            return null;
        }
    }

    public String getUidMapPostBody() {
        String str = null;
        Map hashMap = new HashMap();
        try {
            Object lTVId = AnalyticsInitializer.getConfigParams().getLTVId();
        } catch (Exception e) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "LTVID not available yet in configs");
            toString = str;
        }
        if (lTVId != null) {
            hashMap.put(UID.KEY_LTVID, lTVId + AdTrackerConstants.BLANK);
        }
        String toString2 = Integer.toString(new Random().nextInt());
        String uidMap = UID.getCommonsUid().getUidMap(UserInfo.getInstance().getDeviceIDMask(), toString2, hashMap);
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("u-id-adt=");
        if (InternalSDKUtil.isLimitAdTrackingEnabled()) {
            stringBuilder.append(1);
        } else {
            stringBuilder.append(0);
        }
        if (uidMap == null) {
            return str;
        }
        stringBuilder.append("&u-id-map=");
        stringBuilder.append(getURLEncoded(uidMap));
        stringBuilder.append("&u-id-key=");
        stringBuilder.append(toString2);
        stringBuilder.append("&u-key-ver=");
        stringBuilder.append(UIDHelper.getRSAKeyVersion());
        str = stringBuilder.toString();
        try {
            return str.charAt(0) == '&' ? str.substring(1) : str;
        } catch (Exception e2) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "Couldn't build post string in Request Builder", e2);
            return str;
        }
    }
}