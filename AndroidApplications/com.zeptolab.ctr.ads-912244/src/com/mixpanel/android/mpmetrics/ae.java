package com.mixpanel.android.mpmetrics;

import android.bluetooth.BluetoothAdapter;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.net.ConnectivityManager;
import android.os.Build.VERSION;
import android.telephony.TelephonyManager;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.WindowManager;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import com.zeptolab.zbuild.ZBuildConfig;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

class ae {
    public static final String a = "MixpanelAPI";
    private final Context b;
    private final Boolean c;
    private final Boolean d;
    private final DisplayMetrics e;
    private final String f;
    private final Integer g;

    public ae(Context context) {
        String str;
        Integer valueOf;
        Boolean bool;
        Boolean bool2 = null;
        this.b = context;
        PackageManager packageManager = this.b.getPackageManager();
        try {
            PackageInfo packageInfo = packageManager.getPackageInfo(this.b.getPackageName(), 0);
            str = packageInfo.versionName;
            try {
                valueOf = Integer.valueOf(packageInfo.versionCode);
            } catch (NameNotFoundException e) {
                str = str;
                Log.w(a, "System information constructed with a context that apparently doesn't exist.");
                str = str;
                bool = bool2;
                this.f = str;
                this.g = valueOf;
                Method method = packageManager.getClass().getMethod("hasSystemFeature", new Class[]{String.class});
                if (method != null) {
                    bool = (Boolean) method.invoke(packageManager, new Object[]{"android.hardware.nfc"});
                    bool2 = (Boolean) method.invoke(packageManager, new Object[]{"android.hardware.telephony"});
                } else {
                    bool = bool2;
                }
                this.c = bool;
                this.d = bool2;
                this.e = new DisplayMetrics();
                ((WindowManager) this.b.getSystemService("window")).getDefaultDisplay().getMetrics(this.e);
            }
        } catch (NameNotFoundException e2) {
            String str2;
            bool = bool2;
            Log.w(a, "System information constructed with a context that apparently doesn't exist.");
            str = str2;
            bool = bool2;
            this.f = str;
            this.g = valueOf;
            try {
                Method method2 = packageManager.getClass().getMethod("hasSystemFeature", new Class[]{String.class});
            } catch (NoSuchMethodException e3) {
                Boolean bool3 = bool2;
            }
            if (method2 != null) {
                bool = bool2;
            } else {
                bool = (Boolean) method2.invoke(packageManager, new Object[]{"android.hardware.nfc"});
                try {
                    bool2 = (Boolean) method2.invoke(packageManager, new Object[]{"android.hardware.telephony"});
                } catch (InvocationTargetException e4) {
                    Log.w(a, "System version appeared to support PackageManager.hasSystemFeature, but we were unable to call it.");
                    this.c = bool;
                    this.d = bool2;
                    this.e = new DisplayMetrics();
                    ((WindowManager) this.b.getSystemService("window")).getDefaultDisplay().getMetrics(this.e);
                } catch (IllegalAccessException e5) {
                    Log.w(a, "System version appeared to support PackageManager.hasSystemFeature, but we were unable to call it.");
                    this.c = bool;
                    this.d = bool2;
                    this.e = new DisplayMetrics();
                    ((WindowManager) this.b.getSystemService("window")).getDefaultDisplay().getMetrics(this.e);
                }
            }
            this.c = bool;
            this.d = bool2;
            this.e = new DisplayMetrics();
            ((WindowManager) this.b.getSystemService("window")).getDefaultDisplay().getMetrics(this.e);
        }
        this.f = str;
        this.g = valueOf;
        Method method22 = packageManager.getClass().getMethod("hasSystemFeature", new Class[]{String.class});
        if (method22 != null) {
            try {
                bool = (Boolean) method22.invoke(packageManager, new Object[]{"android.hardware.nfc"});
                bool2 = (Boolean) method22.invoke(packageManager, new Object[]{"android.hardware.telephony"});
            } catch (InvocationTargetException e6) {
                bool = bool2;
                Log.w(a, "System version appeared to support PackageManager.hasSystemFeature, but we were unable to call it.");
                this.c = bool;
                this.d = bool2;
                this.e = new DisplayMetrics();
                ((WindowManager) this.b.getSystemService("window")).getDefaultDisplay().getMetrics(this.e);
            } catch (IllegalAccessException e7) {
                bool = bool2;
                Log.w(a, "System version appeared to support PackageManager.hasSystemFeature, but we were unable to call it.");
                this.c = bool;
                this.d = bool2;
                this.e = new DisplayMetrics();
                ((WindowManager) this.b.getSystemService("window")).getDefaultDisplay().getMetrics(this.e);
            }
        } else {
            bool = bool2;
        }
        this.c = bool;
        this.d = bool2;
        this.e = new DisplayMetrics();
        ((WindowManager) this.b.getSystemService("window")).getDefaultDisplay().getMetrics(this.e);
    }

    public String a() {
        return this.f;
    }

    public Integer b() {
        return this.g;
    }

    public boolean c() {
        return this.c.booleanValue();
    }

    public boolean d() {
        return this.d.booleanValue();
    }

    public DisplayMetrics e() {
        return this.e;
    }

    public String f() {
        TelephonyManager telephonyManager = (TelephonyManager) this.b.getSystemService(ZBuildConfig.device);
        if (telephonyManager == null) {
            return null;
        }
        switch (telephonyManager.getPhoneType()) {
            case IabHelper.BILLING_RESPONSE_RESULT_OK:
                return "none";
            case GoogleScorer.CLIENT_GAMES:
                return "gsm";
            case GoogleScorer.CLIENT_PLUS:
                return "cdma";
            case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                return "sip";
            default:
                return null;
        }
    }

    public String g() {
        TelephonyManager telephonyManager = (TelephonyManager) this.b.getSystemService(ZBuildConfig.device);
        return telephonyManager != null ? telephonyManager.getNetworkOperatorName() : null;
    }

    public Boolean h() {
        return this.b.checkCallingOrSelfPermission("android.permission.ACCESS_NETWORK_STATE") == 0 ? Boolean.valueOf(((ConnectivityManager) this.b.getSystemService("connectivity")).getNetworkInfo(1).isConnected()) : null;
    }

    public Boolean i() {
        Boolean bool = null;
        try {
            BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
            return defaultAdapter != null ? Boolean.valueOf(defaultAdapter.isEnabled()) : bool;
        } catch (SecurityException e) {
            return bool;
        }
    }

    public String j() {
        if (VERSION.SDK_INT < 8) {
            return null;
        }
        String str = "none";
        if (VERSION.SDK_INT >= 18 && this.b.getPackageManager().hasSystemFeature("android.hardware.bluetooth_le")) {
            return "ble";
        }
        return this.b.getPackageManager().hasSystemFeature("android.hardware.bluetooth") ? "classic" : str;
    }
}