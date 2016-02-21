package com.amazon.device.ads;

import android.content.Context;
import java.util.Map;

abstract class AdRenderer implements AdView {
    protected static final String a = "aax-us-east.amazon-adsystem.com";
    protected static final String b = "aax-us-east.amazon-adsystem.com";
    protected static final String c = "aax-beta.integ.amazon.com";
    protected static final String d = "pda-bes.amazon.com";
    protected static final String e = "d16g-cornerstone-bes.integ.amazon.com";
    private static final String l = "AdRenderer";
    protected final IAdController f;
    protected final Context g;
    protected AdData h;
    protected boolean i;
    protected boolean j;
    protected boolean k;
    private double m;

    protected enum AdState {
        EXPANDED;

        static {
            EXPANDED = new AdState("EXPANDED", 0);
            a = new AdState[]{EXPANDED};
        }
    }

    protected AdRenderer(AdData adData, IAdController iAdController, Context context) {
        this.i = false;
        this.j = false;
        this.k = false;
        this.m = 1.0d;
        this.h = adData;
        this.f = iAdController;
        this.g = context;
    }

    protected static double a(int i, int i2, int i3, int i4) {
        double d = ((double) i3) / ((double) i);
        double d2 = ((double) i4) / ((double) i2);
        if ((d2 < d || d == 0.0d) && d2 != 0.0d) {
            d = d2;
        }
        return d == 0.0d ? 1.0d : d;
    }

    protected static double a(AdData adData, IAdController iAdController) {
        float scalingFactorAsFloat = InternalAdRegistration.getInstance().getDeviceInfo().getScalingFactorAsFloat();
        double a = a((int) (((float) adData.f()) * scalingFactorAsFloat), (int) (((float) adData.e()) * scalingFactorAsFloat), iAdController.getWindowWidth(), iAdController.getWindowHeight());
        Log.d(l, "Scaling Params: scalingDensity: %f, windowWidth: %d, windowHeight: %d, adWidth: %d, adHeight: %d, scale: %f", new Object[]{Float.valueOf(scalingFactorAsFloat), Integer.valueOf(iAdController.getWindowWidth()), Integer.valueOf(iAdController.getWindowHeight()), Integer.valueOf(i), Integer.valueOf(i), Double.valueOf(a)});
        return a;
    }

    protected double a() {
        return this.m;
    }

    protected void a(AdData adData) {
        this.h = adData;
    }

    protected void a(AdProperties adProperties) {
        this.f.adLoaded(adProperties);
    }

    protected abstract boolean a(AdState adState);

    protected abstract boolean a(String str, Map map);

    protected boolean b() {
        return !isInitialized() || this.j;
    }

    protected boolean c() {
        return !isInitialized() || this.i;
    }

    protected abstract boolean d();

    protected abstract void e();

    protected abstract boolean f();

    protected abstract void g();

    public int getHeight() {
        return this.h.e();
    }

    public String getScalingMultiplierDescription() {
        if (a() > 1.0d) {
            return "u";
        }
        return (a() >= 1.0d || a() <= 0.0d) ? "n" : "d";
    }

    public UrlExecutor getSpecialUrlExecutor() {
        return this.f.getSpecialUrlExecutor();
    }

    protected abstract void h();

    public void initialize() {
        this.m = a(this.h, this.f);
        this.k = true;
    }

    public boolean isAdViewRenderable() {
        return isInitialized() && !c() && !b();
    }

    public boolean isInitialized() {
        return this.k;
    }

    public boolean shouldDisableWebViewHardwareAcceleration() {
        return this.f.shouldDisableWebViewHardwareAcceleration();
    }
}