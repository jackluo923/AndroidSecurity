package com.inmobi.monetization.internal;

import android.view.View;
import com.inmobi.androidsdk.AdRequest;
import com.inmobi.androidsdk.AdRequest.ErrorCode;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.inmobi.commons.data.UserInfo;
import com.inmobi.commons.internal.ActivityRecognitionManager;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.monetization.IMErrorCode;
import com.inmobi.monetization.internal.objects.LtvpRuleCache;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import com.zeptolab.zbuild.ZBuildConfig;
import java.util.HashMap;
import java.util.Map;

public class MonetizationUtils {

    static /* synthetic */ class a {
        static final /* synthetic */ int[] a;

        static {
            a = new int[ErrorCode.values().length];
            try {
                a[ErrorCode.AD_CLICK_IN_PROGRESS.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                a[ErrorCode.AD_DOWNLOAD_IN_PROGRESS.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                a[ErrorCode.AD_FETCH_TIMEOUT.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                a[ErrorCode.AD_RENDERING_TIMEOUT.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                a[ErrorCode.INTERNAL_ERROR.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                a[ErrorCode.INVALID_APP_ID.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                a[ErrorCode.INVALID_REQUEST.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                a[ErrorCode.NETWORK_ERROR.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            a[ErrorCode.NO_FILL.ordinal()] = 9;
        }
    }

    public static Map buildLtvpRequestMap(View view) {
        Map hashMap = new HashMap();
        String ltvpRuleId = LtvpRuleCache.getInstance(InternalSDKUtil.getContext()).getLtvpRuleId();
        if (ltvpRuleId != null) {
            hashMap.put("rule-id", ltvpRuleId);
        }
        if (view != null) {
            hashMap.put("placement-size", view.getWidth() + "x" + view.getHeight());
        }
        int detectedActivity = ActivityRecognitionManager.getDetectedActivity();
        if (detectedActivity != -1) {
            hashMap.put("u-activity-type", detectedActivity + AdTrackerConstants.BLANK);
        }
        return hashMap;
    }

    public static IMErrorCode getErrorCode(ErrorCode errorCode) {
        switch (a.a[errorCode.ordinal()]) {
            case GoogleScorer.CLIENT_GAMES:
                return IMErrorCode.INTERNAL_ERROR;
            case GoogleScorer.CLIENT_PLUS:
                return IMErrorCode.INTERNAL_ERROR;
            case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                return IMErrorCode.INTERNAL_ERROR;
            case GoogleScorer.CLIENT_APPSTATE:
                return IMErrorCode.INTERNAL_ERROR;
            case IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:
                return IMErrorCode.INTERNAL_ERROR;
            case IabHelper.BILLING_RESPONSE_RESULT_ERROR:
                return IMErrorCode.INVALID_REQUEST;
            case GoogleScorer.CLIENT_ALL:
                return IMErrorCode.INVALID_REQUEST;
            case IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED:
                return IMErrorCode.NETWORK_ERROR;
            case ZBuildConfig.$minsdk:
                return IMErrorCode.NO_FILL;
            default:
                return IMErrorCode.INTERNAL_ERROR;
        }
    }

    public static void updateIMAdRequest(AdRequest adRequest) {
        UserInfo instance = UserInfo.getInstance();
        Integer age = instance.getAge();
        if (age != null) {
            adRequest.setAge(age.intValue());
        }
        adRequest.setAreaCode(instance.getAreaCode());
        adRequest.setCurrentLocation(instance.getCurrentLocation());
        adRequest.setDateOfBirth(instance.getDateOfBirth());
        adRequest.setEducation(instance.getEducation());
        adRequest.setEthnicity(instance.getEthnicity());
        adRequest.setGender(instance.getGender());
        age = instance.getIncome();
        if (age != null) {
            adRequest.setIncome(age.intValue());
        }
        adRequest.setInterests(instance.getInterests());
        adRequest.setLocationInquiryAllowed(instance.isLocationInquiryAllowed());
        adRequest.setLocationOfCityStateAndCountry(instance.getLocationWithCityStateCountry());
        adRequest.setPostalCode(instance.getPostalCode());
        adRequest.setSearchString(instance.getSearchString());
        adRequest.setHasChildren(instance.getHasChildren());
        adRequest.setLanguage(instance.getLanguage());
        adRequest.setMaritalStatus(instance.getMaritalStatus());
        adRequest.setSexualOrientation(instance.getSexualOrientation());
    }
}