package com.inmobi.androidsdk;

import android.location.Location;
import com.inmobi.commons.EducationType;
import com.inmobi.commons.EthnicityType;
import com.inmobi.commons.GenderType;
import com.inmobi.commons.HasChildren;
import com.inmobi.commons.MaritalStatus;
import com.inmobi.commons.SexualOrientation;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public class AdRequest {
    private boolean a;
    private Location b;
    private String c;
    private boolean d;
    private String e;
    private String f;
    private Calendar g;
    private GenderType h;
    private String i;
    private String j;
    private int k;
    private EducationType l;
    private EthnicityType m;
    private int n;
    private String o;
    private Map p;
    private MaritalStatus q;
    private String r;
    private SexualOrientation s;
    private HasChildren t;

    public enum ErrorCode {
        INVALID_REQUEST,
        AD_DOWNLOAD_IN_PROGRESS,
        AD_CLICK_IN_PROGRESS,
        AD_FETCH_TIMEOUT,
        AD_RENDERING_TIMEOUT,
        NETWORK_ERROR,
        INTERNAL_ERROR,
        NO_FILL,
        INVALID_APP_ID;

        static {
            INVALID_REQUEST = new com.inmobi.androidsdk.AdRequest.ErrorCode("INVALID_REQUEST", 0);
            AD_DOWNLOAD_IN_PROGRESS = new com.inmobi.androidsdk.AdRequest.ErrorCode("AD_DOWNLOAD_IN_PROGRESS", 1);
            AD_CLICK_IN_PROGRESS = new com.inmobi.androidsdk.AdRequest.ErrorCode("AD_CLICK_IN_PROGRESS", 2);
            AD_FETCH_TIMEOUT = new com.inmobi.androidsdk.AdRequest.ErrorCode("AD_FETCH_TIMEOUT", 3);
            AD_RENDERING_TIMEOUT = new com.inmobi.androidsdk.AdRequest.ErrorCode("AD_RENDERING_TIMEOUT", 4);
            NETWORK_ERROR = new com.inmobi.androidsdk.AdRequest.ErrorCode("NETWORK_ERROR", 5);
            INTERNAL_ERROR = new com.inmobi.androidsdk.AdRequest.ErrorCode("INTERNAL_ERROR", 6);
            NO_FILL = new com.inmobi.androidsdk.AdRequest.ErrorCode("NO_FILL", 7);
            INVALID_APP_ID = new com.inmobi.androidsdk.AdRequest.ErrorCode("INVALID_APP_ID", 8);
            a = new com.inmobi.androidsdk.AdRequest.ErrorCode[]{INVALID_REQUEST, AD_DOWNLOAD_IN_PROGRESS, AD_CLICK_IN_PROGRESS, AD_FETCH_TIMEOUT, AD_RENDERING_TIMEOUT, NETWORK_ERROR, INTERNAL_ERROR, NO_FILL, INVALID_APP_ID};
        }

        public int getErrorCode() {
            int i = IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE;
            if (this == AD_FETCH_TIMEOUT) {
                i = 1;
            }
            return this == NETWORK_ERROR ? GoogleScorer.CLIENT_PLUS : i;
        }
    }

    public enum IMIDType {
        ID_LOGIN,
        ID_SESSION;

        static {
            ID_LOGIN = new com.inmobi.androidsdk.AdRequest.IMIDType("ID_LOGIN", 0);
            ID_SESSION = new com.inmobi.androidsdk.AdRequest.IMIDType("ID_SESSION", 1);
            a = new com.inmobi.androidsdk.AdRequest.IMIDType[]{ID_LOGIN, ID_SESSION};
        }
    }

    public AdRequest() {
        this.a = true;
        this.b = null;
        this.c = null;
        this.d = false;
        this.e = null;
        this.f = null;
        this.g = null;
        this.i = null;
        this.j = null;
        this.k = 0;
        this.n = 0;
        this.o = null;
        this.p = null;
    }

    public int getAge() {
        return this.n;
    }

    public String getAreaCode() {
        return this.f;
    }

    public Location getCurrentLocation() {
        return this.b;
    }

    public Calendar getDateOfBirth() {
        return this.g;
    }

    public EducationType getEducation() {
        return this.l;
    }

    public EthnicityType getEthnicity() {
        return this.m;
    }

    public GenderType getGender() {
        return this.h;
    }

    public HasChildren getHasChildren() {
        return this.t;
    }

    public int getIncome() {
        return this.k;
    }

    public String getInterests() {
        return this.o;
    }

    public String getKeywords() {
        return this.i;
    }

    public String getLanguage() {
        return this.r;
    }

    public String getLocationWithCityStateCountry() {
        return this.c;
    }

    public MaritalStatus getMaritalStatus() {
        return this.q;
    }

    public String getPostalCode() {
        return this.e;
    }

    public Map getRequestParams() {
        return this.p;
    }

    public String getSearchString() {
        return this.j;
    }

    public SexualOrientation getSexualOrientation() {
        return this.s;
    }

    public boolean isLocationInquiryAllowed() {
        return this.a;
    }

    @Deprecated
    public boolean isTestMode() {
        return this.d;
    }

    public void setAge(int i) {
        if (i >= 0) {
            this.n = i;
        }
    }

    public void setAreaCode(String str) {
        if (str != null && !AdTrackerConstants.BLANK.equals(str.trim())) {
            this.f = str;
        }
    }

    public void setCurrentLocation(Location location) {
        if (location != null) {
            this.b = location;
        }
    }

    public void setDateOfBirth(Calendar calendar) {
        if (calendar != null) {
            this.g = calendar;
        }
    }

    public void setDateOfBirth(Date date) {
        if (date != null) {
            if (this.g == null) {
                this.g = Calendar.getInstance();
            }
            this.g.setTime(date);
        }
    }

    public void setEducation(EducationType educationType) {
        this.l = educationType;
    }

    public void setEthnicity(EthnicityType ethnicityType) {
        this.m = ethnicityType;
    }

    public void setGender(GenderType genderType) {
        this.h = genderType;
    }

    public void setHasChildren(HasChildren hasChildren) {
        this.t = hasChildren;
    }

    public void setIncome(int i) {
        this.k = i;
    }

    public void setInterests(String str) {
        if (str != null && !AdTrackerConstants.BLANK.equals(str.trim())) {
            this.o = str;
        }
    }

    public void setKeywords(String str) {
        if (str != null && !AdTrackerConstants.BLANK.equals(str.trim())) {
            this.i = str;
        }
    }

    public void setLanguage(String str) {
        if (str != null && !AdTrackerConstants.BLANK.equals(str.trim())) {
            this.r = str;
        }
    }

    public void setLocationInquiryAllowed(boolean z) {
        this.a = z;
    }

    public void setLocationOfCityStateAndCountry(String str) {
        if (str != null && !AdTrackerConstants.BLANK.equals(str.trim())) {
            this.c = str;
        }
    }

    public void setLocationWithCityStateCountry(String str, String str2, String str3) {
        if (!(str == null || AdTrackerConstants.BLANK.equals(str.trim()))) {
            this.c = str;
        }
        if (!(str2 == null || AdTrackerConstants.BLANK.equals(str2.trim()))) {
            this.c += "-" + str2;
        }
        if (str3 != null && !AdTrackerConstants.BLANK.equals(str3.trim())) {
            this.c += "-" + str3;
        }
    }

    public void setMaritalStatus(MaritalStatus maritalStatus) {
        this.q = maritalStatus;
    }

    public void setPostalCode(String str) {
        if (str != null && !AdTrackerConstants.BLANK.equals(str.trim())) {
            this.e = str;
        }
    }

    public void setRequestParams(Map map) {
        if (map != null) {
            if (this.p == null) {
                this.p = new HashMap();
            }
            Iterator it = map.keySet().iterator();
            while (it.hasNext()) {
                String str = (String) it.next();
                this.p.put(str, map.get(str));
            }
        }
    }

    public void setSearchString(String str) {
        if (str != null && !AdTrackerConstants.BLANK.equals(str.trim())) {
            this.j = str;
        }
    }

    public void setSexualOrientation(SexualOrientation sexualOrientation) {
        this.s = sexualOrientation;
    }

    @Deprecated
    public void setTestMode(boolean z) {
        this.d = z;
    }
}