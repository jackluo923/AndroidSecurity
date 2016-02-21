package com.inmobi.commons.data;

import android.location.Location;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import com.inmobi.commons.EducationType;
import com.inmobi.commons.EthnicityType;
import com.inmobi.commons.GenderType;
import com.inmobi.commons.HasChildren;
import com.inmobi.commons.IMIDType;
import com.inmobi.commons.MaritalStatus;
import com.inmobi.commons.SexualOrientation;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import com.inmobi.commons.internal.WrapperFunctions;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Map;

public final class UserInfo {
    private static UserInfo a;
    private static int c;
    private boolean b;
    private Location d;
    private boolean e;
    private String f;
    private EducationType g;
    private EthnicityType h;
    private GenderType i;
    private Calendar j;
    private Integer k;
    private Integer l;
    private String m;
    private String n;
    private String o;
    private String p;
    private HasChildren q;
    private MaritalStatus r;
    private String s;
    private SexualOrientation t;
    private Map u;

    static {
        a = new UserInfo();
        c = 1;
    }

    private UserInfo() {
        this.e = true;
        this.k = Integer.valueOf(0);
        this.l = Integer.valueOf(0);
        this.u = new HashMap();
    }

    public static UserInfo getInstance() {
        return a;
    }

    public void addIDType(IMIDType iMIDType, String str) {
        if (this.u != null) {
            this.u.put(iMIDType, str);
        }
    }

    public Integer getAge() {
        return this.l;
    }

    public String getAreaCode() {
        return this.p;
    }

    public Location getCurrentLocation() {
        return this.d;
    }

    public Calendar getDateOfBirth() {
        return this.j;
    }

    public int getDeviceIDMask() {
        return c;
    }

    public EducationType getEducation() {
        return this.g;
    }

    public EthnicityType getEthnicity() {
        return this.h;
    }

    public GenderType getGender() {
        return this.i;
    }

    public HasChildren getHasChildren() {
        return this.q;
    }

    public String getIDType(IMIDType iMIDType) {
        return this.u != null ? (String) this.u.get(iMIDType) : null;
    }

    public Integer getIncome() {
        return this.k;
    }

    public String getInterests() {
        return this.m;
    }

    public String getLanguage() {
        return this.s;
    }

    public String getLocationWithCityStateCountry() {
        return this.n;
    }

    public MaritalStatus getMaritalStatus() {
        return this.r;
    }

    public String getPostalCode() {
        return this.o;
    }

    public String getSearchString() {
        return this.f;
    }

    public SexualOrientation getSexualOrientation() {
        return this.t;
    }

    public boolean isLocationInquiryAllowed() {
        return this.e;
    }

    public boolean isTestMode() {
        return this.b;
    }

    public void removeIDType(IMIDType iMIDType) {
        if (this.u != null) {
            this.u.remove(iMIDType);
        }
    }

    public void setAge(Integer num) {
        this.l = num;
    }

    public void setAreaCode(String str) {
        this.p = str;
    }

    public void setCurrentLocation(Location location) {
        this.d = location;
    }

    public void setDateOfBirth(Calendar calendar) {
        this.j = calendar;
    }

    public void setDeviceIDMask(int i) {
        c = i;
    }

    public void setEducation(EducationType educationType) {
        this.g = educationType;
    }

    public void setEthnicity(EthnicityType ethnicityType) {
        this.h = ethnicityType;
    }

    public void setGender(GenderType genderType) {
        this.i = genderType;
    }

    public void setHasChildren(HasChildren hasChildren) {
        this.q = hasChildren;
    }

    public void setIncome(Integer num) {
        this.k = num;
    }

    public void setInterests(String str) {
        this.m = str;
    }

    public void setLanguage(String str) {
        this.s = str;
    }

    public void setLocationInquiryAllowed(boolean z) {
        this.e = z;
    }

    public void setLocationWithCityStateCountry(String str, String str2, String str3) {
        if (!(str == null || AdTrackerConstants.BLANK.equals(str.trim()))) {
            this.n = str;
        }
        if (!(str2 == null || AdTrackerConstants.BLANK.equals(str2.trim()))) {
            this.n += "-" + str2;
        }
        if (str3 != null && !AdTrackerConstants.BLANK.equals(str3.trim())) {
            this.n += "-" + str3;
        }
    }

    public void setMaritalStatus(MaritalStatus maritalStatus) {
        this.r = maritalStatus;
    }

    public void setPostalCode(String str) {
        this.o = str;
    }

    public void setSexualOrientation(SexualOrientation sexualOrientation) {
        this.t = sexualOrientation;
    }

    public void setTestMode(boolean z) {
        this.b = z;
    }

    public void updateDeviceInfo() {
        try {
            DisplayMetrics displayMetrics = new DisplayMetrics();
            Display defaultDisplay = ((WindowManager) InternalSDKUtil.getContext().getSystemService("window")).getDefaultDisplay();
            defaultDisplay.getMetrics(displayMetrics);
            float f = displayMetrics.density;
            int displayWidth = (int) (((float) WrapperFunctions.getDisplayWidth(defaultDisplay)) / f);
            int displayHeight = (int) (((float) WrapperFunctions.getDisplayHeight(defaultDisplay)) / f);
            DeviceInfo.setScreenDensity(String.valueOf(f));
            DeviceInfo.setScreenSize(AdTrackerConstants.BLANK + displayWidth + "X" + displayHeight);
        } catch (Exception e) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "Exception setting device info", e);
        }
    }

    public synchronized void updateInfo() {
        try {
            updateDeviceInfo();
            DeviceInfo.setPhoneDefaultUserAgent(InternalSDKUtil.getUserAgent(InternalSDKUtil.getContext()));
            DeviceInfo.getInstance().fillDeviceInfo();
            AppInfo.fillAppInfo();
            LocationInfo.b(false);
            if (!isLocationInquiryAllowed()) {
                LocationInfo.a(true);
            } else if (getCurrentLocation() != null) {
                LocationInfo.a(getCurrentLocation());
                LocationInfo.b(true);
            } else {
                LocationInfo.verifyLocationPermission();
                if (!LocationInfo.isLocationDeniedByUser()) {
                    LocationInfo.updateBestKnownLocation();
                }
            }
        } catch (Exception e) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "Exception updating user info", e);
        }
    }
}