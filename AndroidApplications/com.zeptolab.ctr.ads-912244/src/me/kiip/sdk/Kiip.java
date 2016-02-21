package me.kiip.sdk;

import android.app.Application;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import java.util.Date;
import me.kiip.internal.i.d;

public abstract class Kiip {
    public static final String CAPABILITY_PROMOS = "promos";
    public static final String CAPABILITY_REAL = "real";
    public static final String CAPABILITY_SHARE = "share";
    public static final String CAPABILITY_SWARM = "swarm";
    public static final String CAPABILITY_VIRTUAL = "virtual";
    public static final String VERSION = "2.0.8";
    private static Kiip a;

    public static interface OnSwarmListener {
        void onSwarm(Kiip kiip, String str);
    }

    public static interface OnContentListener {
        void onContent(Kiip kiip, String str, int i, String str2, String str3);
    }

    public static interface Callback {
        void onFailed(Kiip kiip, Exception exception);

        void onFinished(Kiip kiip, Poptart poptart);
    }

    public static interface KiipAdapter {
        View getNotificationView(Context context, ViewGroup viewGroup, Poptart poptart);
    }

    public static interface OnPromoListener {
        void onPromo(Kiip kiip, Promo promo);
    }

    protected Kiip() {
    }

    public static Kiip getInstance() {
        return a;
    }

    public static Kiip init(Application application, String str, String str2) {
        return d.a(application, str, str2);
    }

    public static void setInstance(Kiip kiip) {
        a = kiip;
    }

    public abstract boolean endSession(Callback callback);

    public abstract String getAlias();

    public abstract Date getBirthday();

    public abstract String[] getCapabilities();

    public abstract String getDeviceIdentifier();

    public abstract String getEmail();

    public abstract String getGender();

    public abstract void getPromo(Context context, OnPromoListener onPromoListener);

    public abstract void saveMoment(String str, double d, Callback callback);

    public abstract void saveMoment(String str, Callback callback);

    public abstract void setAdapter(KiipAdapter kiipAdapter);

    public abstract void setAlias(String str);

    public abstract void setBirthday(Date date);

    public abstract void setCapabilities(String[] strArr);

    public abstract void setEmail(String str);

    public abstract void setGender(String str);

    public abstract void setOnContentListener(OnContentListener onContentListener);

    public abstract void setOnSwarmListener(OnSwarmListener onSwarmListener);

    public abstract void setWrapper(String str);

    public abstract boolean startSession(Callback callback);
}