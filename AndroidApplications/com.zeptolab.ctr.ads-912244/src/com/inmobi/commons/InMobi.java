package com.inmobi.commons;

import android.app.Activity;
import android.content.Context;
import android.location.Location;
import com.inmobi.commons.analytics.androidsdk.IMAdTracker;
import com.inmobi.commons.analytics.events.AnalyticsEventsWrapper;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.inmobi.commons.cache.LocalCache;
import com.inmobi.commons.data.UserInfo;
import com.inmobi.commons.internal.ActivityRecognitionManager;
import com.inmobi.commons.internal.ApplicationFocusManager;
import com.inmobi.commons.internal.ApplicationFocusManager.FocusChangedListener;
import com.inmobi.commons.internal.FileOperations;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import com.inmobi.commons.internal.Log.INTERNAL_LOG_LEVEL;
import com.inmobi.commons.internal.ThinICE;
import com.inmobi.commons.uid.UIDHelper;
import com.inmobi.monetization.internal.Constants;
import java.util.Calendar;

public final class InMobi {
    public static final int EXCLUDE_FB_ID = 4;
    public static final int EXCLUDE_ODIN1 = 2;
    public static final int EXCLUDE_UM5_ID = 8;
    public static final int ID_DEVICE_NONE = 0;
    public static final int INCLUDE_DEFAULT = 1;
    private static String a;

    public enum LOG_LEVEL {
        NONE(0),
        DEBUG(1),
        VERBOSE(2);
        private final int a;

        static {
            NONE = new com.inmobi.commons.InMobi.LOG_LEVEL("NONE", 0, 0);
            DEBUG = new com.inmobi.commons.InMobi.LOG_LEVEL("DEBUG", 1, 1);
            VERBOSE = new com.inmobi.commons.InMobi.LOG_LEVEL("VERBOSE", 2, 2);
            b = new com.inmobi.commons.InMobi.LOG_LEVEL[]{NONE, DEBUG, VERBOSE};
        }

        private LOG_LEVEL(int i) {
            this.a = i;
        }

        public int getValue() {
            return this.a;
        }
    }

    final class a implements FocusChangedListener {
        a() {
        }

        public void onFocusChanged(boolean z) {
            if (z) {
                UIDHelper.setAdvertisingId();
                AnalyticsEventsWrapper.getInstance().startSession(a, null);
            } else {
                AnalyticsEventsWrapper.getInstance().endSession(null);
            }
        }
    }

    static {
        a = null;
    }

    private InMobi() {
    }

    private static void a(Context context, String str) {
        if (context == null) {
            Log.debug(InternalSDKUtil.LOGGING_TAG, "Application Context NULL");
            Log.debug(InternalSDKUtil.LOGGING_TAG, AdTrackerConstants.MSG_APP_CONTEXT_NULL);
        } else {
            Context applicationContext = context.getApplicationContext();
            InternalSDKUtil.setContext(applicationContext);
            if (InternalSDKUtil.isPlatformIdEnabled() || InternalSDKUtil.isGooglePlayServicesJarIncluded()) {
                UIDHelper.setAdvertisingId();
                try {
                    if (FileOperations.getPreferences(context.getApplicationContext(), InternalSDKUtil.IM_PREF, "version") != getVersion()) {
                        FileOperations.setPreferences(context.getApplicationContext(), InternalSDKUtil.IM_PREF, "version", getVersion());
                        LocalCache.reset();
                    }
                    InternalSDKUtil.getUserAgent(context.getApplicationContext());
                    if (a != null) {
                        ThinICE.start(context);
                    } else {
                        if (str != null) {
                            if (!AdTrackerConstants.BLANK.equals(str.trim())) {
                                Log.debug(InternalSDKUtil.LOGGING_TAG, "InMobi init successful");
                                a = str.trim();
                                ThinICE.start(context);
                                IMAdTracker.getInstance().init(applicationContext, str);
                                IMAdTracker.getInstance().reportAppDownloadGoal();
                                ApplicationFocusManager.init(context);
                                ApplicationFocusManager.addFocusChangedListener(new a());
                                AnalyticsEventsWrapper.getInstance().startSession(a, null);
                                ActivityRecognitionManager.init(context.getApplicationContext());
                                UserInfo.getInstance().updateInfo();
                                return;
                            }
                        }
                        Log.debug(InternalSDKUtil.LOGGING_TAG, AdTrackerConstants.MSG_APP_ID_EMPTY);
                    }
                } catch (Exception e) {
                    Log.internal(InternalSDKUtil.LOGGING_TAG, "Exception in initialize", e);
                }
            } else {
                throw new RuntimeException("Integration Issue. Please include Google Play services in your project or update your playstore app and google play services in the phone");
            }
        }
    }

    public static void addIDType(IMIDType iMIDType, String str) {
        UserInfo.getInstance().addIDType(iMIDType, str);
    }

    public static String getAppId() {
        return a;
    }

    public static String getVersion() {
        return Constants.MEDIATION_SDK_VERSION;
    }

    public static void initialize(Activity activity, String str) {
        a(activity, str);
    }

    public static void initialize(Context context, String str) {
        a(context, str);
    }

    public static void removeIDType(IMIDType iMIDType) {
        UserInfo.getInstance().removeIDType(iMIDType);
    }

    public static void setAge(int i) {
        UserInfo.getInstance().setAge(Integer.valueOf(i));
    }

    public static void setAreaCode(String str) {
        if (str == null || AdTrackerConstants.BLANK.equals(str.trim())) {
            Log.debug(InternalSDKUtil.LOGGING_TAG, "Area code cannot be null");
        } else {
            UserInfo.getInstance().setAreaCode(str);
        }
    }

    public static void setCurrentLocation(Location location) {
        if (location != null) {
            UserInfo.getInstance().setCurrentLocation(location);
        } else {
            Log.debug(InternalSDKUtil.LOGGING_TAG, "Location cannot be null");
        }
    }

    public static void setDateOfBirth(Calendar calendar) {
        if (calendar != null) {
            UserInfo.getInstance().setDateOfBirth(calendar);
        } else {
            Log.debug(InternalSDKUtil.LOGGING_TAG, "Date Of Birth cannot be null");
        }
    }

    public static void setDeviceIDMask(int i) {
        UserInfo.getInstance().setDeviceIDMask(i);
    }

    public static void setEducation(EducationType educationType) {
        if (educationType != null) {
            UserInfo.getInstance().setEducation(educationType);
        }
    }

    public static void setEthnicity(EthnicityType ethnicityType) {
        if (ethnicityType != null) {
            UserInfo.getInstance().setEthnicity(ethnicityType);
        }
    }

    public static void setGender(GenderType genderType) {
        if (genderType != null) {
            UserInfo.getInstance().setGender(genderType);
        }
    }

    public static void setHasChildren(HasChildren hasChildren) {
        if (hasChildren != null) {
            UserInfo.getInstance().setHasChildren(hasChildren);
        }
    }

    public static void setIncome(int i) {
        UserInfo.getInstance().setIncome(Integer.valueOf(i));
    }

    public static void setInterests(String str) {
        if (str == null || AdTrackerConstants.BLANK.equals(str.trim())) {
            Log.debug(InternalSDKUtil.LOGGING_TAG, "Interests cannot be null");
        } else {
            UserInfo.getInstance().setInterests(str);
        }
    }

    public static void setLanguage(String str) {
        if (str == null || AdTrackerConstants.BLANK.equals(str.trim())) {
            Log.debug(InternalSDKUtil.LOGGING_TAG, "Language cannot be null");
        } else {
            UserInfo.getInstance().setLanguage(str);
        }
    }

    public static void setLocationInquiryAllowed(boolean z) {
        UserInfo.getInstance().setLocationInquiryAllowed(z);
    }

    public static void setLocationWithCityStateCountry(String str, String str2, String str3) {
        UserInfo.getInstance().setLocationWithCityStateCountry(str, str2, str3);
    }

    public static void setLogLevel(LOG_LEVEL log_level) {
        if (log_level == LOG_LEVEL.NONE) {
            Log.setInternalLogLevel(INTERNAL_LOG_LEVEL.NONE);
        } else if (log_level == LOG_LEVEL.DEBUG) {
            Log.setInternalLogLevel(INTERNAL_LOG_LEVEL.DEBUG);
        } else if (log_level == LOG_LEVEL.VERBOSE) {
            Log.setInternalLogLevel(INTERNAL_LOG_LEVEL.VERBOSE);
        } else {
            Log.setInternalLogLevel(INTERNAL_LOG_LEVEL.INTERNAL);
        }
    }

    public static void setMaritalStatus(MaritalStatus maritalStatus) {
        if (maritalStatus != null) {
            UserInfo.getInstance().setMaritalStatus(maritalStatus);
        }
    }

    public static void setPostalCode(String str) {
        if (str == null || AdTrackerConstants.BLANK.equals(str.trim())) {
            Log.debug(InternalSDKUtil.LOGGING_TAG, "Postal Code cannot be null");
        } else {
            UserInfo.getInstance().setPostalCode(str);
        }
    }

    public static void setSexualOrientation(SexualOrientation sexualOrientation) {
        if (sexualOrientation != null) {
            UserInfo.getInstance().setSexualOrientation(sexualOrientation);
        }
    }
}