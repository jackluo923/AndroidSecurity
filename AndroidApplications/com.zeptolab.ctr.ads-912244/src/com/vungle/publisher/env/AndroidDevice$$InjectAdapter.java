package com.vungle.publisher.env;

import a.a.b;
import a.a.l;
import android.content.Context;
import android.content.SharedPreferences;
import android.media.AudioManager;
import android.view.WindowManager;
import com.vungle.publisher.env.AndroidDevice.DeviceIdStrategy;
import java.util.Set;
import javax.inject.Provider;

public final class AndroidDevice$$InjectAdapter extends b implements a.b, Provider {
    private b a;
    private b b;
    private b c;
    private b d;
    private b e;

    public AndroidDevice$$InjectAdapter() {
        super("com.vungle.publisher.env.AndroidDevice", "members/com.vungle.publisher.env.AndroidDevice", true, AndroidDevice.class);
    }

    public final void attach(l lVar) {
        this.a = lVar.a("android.media.AudioManager", (Object)AndroidDevice.class, getClass().getClassLoader());
        this.b = lVar.a("android.view.WindowManager", (Object)AndroidDevice.class, getClass().getClassLoader());
        this.c = lVar.a("android.content.Context", (Object)AndroidDevice.class, getClass().getClassLoader());
        this.d = lVar.a("@com.vungle.publisher.inject.annotations.EnvSharedPreferences()/android.content.SharedPreferences", (Object)AndroidDevice.class, getClass().getClassLoader());
        this.e = lVar.a("com.vungle.publisher.env.AndroidDevice$DeviceIdStrategy", (Object)AndroidDevice.class, getClass().getClassLoader());
    }

    public final AndroidDevice get() {
        AndroidDevice androidDevice = new AndroidDevice();
        injectMembers(androidDevice);
        return androidDevice;
    }

    public final void getDependencies(Set set, Set set2) {
        set2.add(this.a);
        set2.add(this.b);
        set2.add(this.c);
        set2.add(this.d);
        set2.add(this.e);
    }

    public final void injectMembers(AndroidDevice androidDevice) {
        androidDevice.d = (AudioManager) this.a.get();
        androidDevice.e = (WindowManager) this.b.get();
        androidDevice.f = (Context) this.c.get();
        androidDevice.g = (SharedPreferences) this.d.get();
        androidDevice.h = (DeviceIdStrategy) this.e.get();
    }
}