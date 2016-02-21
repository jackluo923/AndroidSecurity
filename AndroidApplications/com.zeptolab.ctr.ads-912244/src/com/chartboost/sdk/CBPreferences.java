package com.chartboost.sdk;

import com.chartboost.sdk.Libraries.CBLogging;
import com.chartboost.sdk.Libraries.CBLogging.Level;
import com.chartboost.sdk.Libraries.CBOrientation;
import com.chartboost.sdk.Libraries.CBOrientation.Difference;
import com.chartboost.sdk.Libraries.CBUtility;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;

public final class CBPreferences {
    private static volatile CBPreferences m;
    private String a;
    private String b;
    private ChartboostDelegate c;
    private int d;
    private boolean e;
    private CBOrientation f;
    private boolean g;
    private boolean h;
    private boolean i;
    private String j;
    private Chartboost k;
    private boolean l;

    static {
        m = null;
    }

    private CBPreferences() {
        this.d = 30000;
        this.e = false;
        this.h = false;
        this.i = false;
        this.j = null;
        this.k = null;
        this.l = false;
        this.k = Chartboost.sharedChartboost();
    }

    public static CBPreferences getInstance() {
        Chartboost.sharedChartboost();
        if (m == null) {
            m = new CBPreferences();
        }
        return m;
    }

    public boolean getAnimationsOff() {
        return this.i;
    }

    public String getAppID() {
        return this.a;
    }

    public String getAppSignature() {
        return this.b;
    }

    public ChartboostDelegate getDelegate() {
        return this.c;
    }

    public Difference getForcedOrientationDifference() {
        if (!this.g) {
            return Difference.ANGLE_0;
        }
        CBOrientation c = CBUtility.c(this.k.getContext());
        CBOrientation orientation = getOrientation();
        if (orientation == CBOrientation.UNSPECIFIED || orientation == c) {
            return Difference.ANGLE_0;
        }
        if (orientation == c.rotate90()) {
            return Difference.ANGLE_90;
        }
        return orientation == c.rotate180() ? Difference.ANGLE_180 : Difference.ANGLE_270;
    }

    public boolean getIgnoreErrors() {
        return this.h;
    }

    public boolean getImpressionsUseActivities() {
        return this.e;
    }

    public Level getLoggingLevel() {
        return CBLogging.a;
    }

    public CBOrientation getOrientation() {
        if (this.k.getContext() == null) {
            throw new IllegalStateException("The context must be set through the Chartboost method onCreate() before calling getOrientation().");
        } else if (!this.g || this.f == CBOrientation.UNSPECIFIED) {
            return CBUtility.c(this.k.getContext());
        } else {
            return this.f;
        }
    }

    public int getTimeout() {
        return this.d;
    }

    public String getUserAgentSuffix() {
        return this.j == null ? AdTrackerConstants.BLANK : this.j;
    }

    public void setAnimationsOff(boolean z) {
        this.i = z;
    }

    public void setAppID(String str) {
        this.a = str;
    }

    public void setAppSignature(String str) {
        this.b = str;
    }

    public void setDelegate(ChartboostDelegate chartboostDelegate) {
        this.c = chartboostDelegate;
    }

    public void setIgnoreErrors(boolean z) {
        this.h = z;
    }

    public void setImpressionsUseActivities(boolean z) {
        this.e = z;
    }

    public void setLoggingLevel(Level level) {
        CBLogging.a = level;
    }

    public void setOrientation(CBOrientation cBOrientation) {
        boolean z = true;
        if (!(this.l || this.k.getContext() == null || this.k.getContext().getApplicationInfo().targetSdkVersion < 14)) {
            this.l = true;
            CBLogging.a("The CBPreferences.setOrientation method is not supported when you set your app's targetSdkVersion to 14 or higher in your Android Manifest.");
        }
        if (cBOrientation == CBOrientation.UNSPECIFIED) {
            z = false;
        }
        this.g = z;
        this.f = cBOrientation;
    }

    public void setTimeout(int i) {
        this.d = i;
    }

    public void setUserAgentSuffix(String str) {
        this.j = str;
    }
}