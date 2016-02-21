package com.vungle.publisher.inject;

import a.c;
import a.e;
import android.content.Context;
import android.content.SharedPreferences;
import android.media.AudioManager;
import android.net.ConnectivityManager;
import android.telephony.TelephonyManager;
import android.view.WindowManager;
import com.vungle.log.Logger;
import com.vungle.publisher.FullScreenAdActivity;
import com.vungle.publisher.VunglePub;
import com.vungle.publisher.VungleService;
import com.vungle.publisher.ad.AdManager;
import com.vungle.publisher.ar;
import com.vungle.publisher.as;
import com.vungle.publisher.az;
import com.vungle.publisher.ba;
import com.vungle.publisher.bd;
import com.vungle.publisher.bg;
import com.vungle.publisher.bh;
import com.vungle.publisher.bj;
import com.vungle.publisher.cj;
import com.vungle.publisher.display.view.PostRollFragment;
import com.vungle.publisher.display.view.VideoFragment;
import com.vungle.publisher.env.AdvertisingDeviceIdStrategy;
import com.vungle.publisher.env.AndroidDevice;
import com.vungle.publisher.env.AndroidDevice.DeviceIdStrategy;
import com.vungle.publisher.env.SdkState.SessionEndListener;
import com.vungle.publisher.env.WrapperFramework;
import com.vungle.publisher.image.BitmapFactory;
import com.vungle.publisher.inject.annotations.AdTempDirectory;
import com.vungle.publisher.inject.annotations.EnvSharedPreferences;
import com.vungle.publisher.inject.annotations.OldAdTempDirectory;
import com.vungle.publisher.inject.annotations.RequestConfigHttpTransaction;
import com.vungle.publisher.inject.annotations.RequestLocalAdHttpTransaction;
import com.vungle.publisher.inject.annotations.TrackInstallHttpTransaction;
import com.vungle.publisher.inject.annotations.VungleBaseUrl;
import com.vungle.publisher.location.AndroidLocation;
import com.vungle.publisher.location.GooglePlayServicesDetailedLocationProvider;
import com.vungle.publisher.net.AndroidNetwork;
import com.vungle.publisher.net.http.DownloadHttpRequest.Creator;
import com.vungle.publisher.net.http.DownloadHttpResponseHandler;
import com.vungle.publisher.net.http.FireAndForgetHttpResponseHandler;
import com.vungle.publisher.net.http.HttpTransaction;
import com.vungle.publisher.net.http.InfiniteRetryHttpResponseHandler;
import com.vungle.publisher.protocol.ReportAdHttpResponseHandler;
import com.vungle.publisher.protocol.ReportLocalAdHttpRequest;
import com.vungle.publisher.protocol.ReportStreamingAdHttpRequest;
import com.vungle.publisher.protocol.RequestConfigHttpRequest;
import com.vungle.publisher.protocol.RequestConfigHttpRequest.Factory;
import com.vungle.publisher.protocol.RequestConfigHttpResponseHandler;
import com.vungle.publisher.protocol.RequestLocalAdHttpRequest;
import com.vungle.publisher.protocol.RequestLocalAdHttpResponseHandler;
import com.vungle.publisher.protocol.RequestStreamingAdHttpRequest;
import com.vungle.publisher.protocol.RequestStreamingAdHttpResponseHandler;
import com.vungle.publisher.protocol.SessionEndHttpRequest;
import com.vungle.publisher.protocol.SessionStartHttpRequest;
import com.vungle.publisher.protocol.TrackEventHttpRequest;
import com.vungle.publisher.protocol.TrackInstallHttpRequest;
import com.vungle.publisher.protocol.TrackInstallHttpResponseHandler;
import com.vungle.publisher.protocol.UnfilledAdHttpRequest;
import com.vungle.publisher.service.SessionEventHandler;
import com.vungle.sdk.VungleAdvert;
import com.vungle.sdk.VungleIntentService;
import com.zeptolab.zbuild.ZBuildConfig;
import java.util.ArrayList;
import java.util.Collection;
import javax.inject.Singleton;

@c(a = {AndroidDevice.class, AndroidLocation.class, AndroidNetwork.class, ar.class, AdManager.class, FullScreenAdActivity.class, SessionEventHandler.class, VungleAdvert.class, VungleIntentService.class, VunglePub.class, VungleService.class, Creator.class, DownloadHttpResponseHandler.Creator.class, FireAndForgetHttpResponseHandler.Creator.class, HttpTransaction.Creator.class, InfiniteRetryHttpResponseHandler.Creator.class, PostRollFragment.class, ReportAdHttpResponseHandler.Creator.class, ReportLocalAdHttpRequest.Creator.class, ReportStreamingAdHttpRequest.Creator.class, RequestConfigHttpRequest.Creator.class, RequestConfigHttpResponseHandler.Creator.class, RequestLocalAdHttpRequest.Creator.class, RequestLocalAdHttpResponseHandler.Creator.class, RequestStreamingAdHttpRequest.Creator.class, RequestStreamingAdHttpResponseHandler.Creator.class, SessionEndHttpRequest.Creator.class, SessionStartHttpRequest.Creator.class, TrackEventHttpRequest.Creator.class, TrackInstallHttpRequest.Creator.class, TrackInstallHttpResponseHandler.Creator.class, UnfilledAdHttpRequest.Creator.class, VideoFragment.class})
class ConfigurablePublisherModule implements bd {
    Context a;
    String b;
    BitmapFactory c;
    Class d;
    Class e;
    WrapperFramework f;
    String g;
    private boolean h;

    ConfigurablePublisherModule() {
    }

    @Singleton
    @e
    static as a(AndroidDevice androidDevice) {
        return androidDevice;
    }

    @e
    static bg a(GooglePlayServicesDetailedLocationProvider googlePlayServicesDetailedLocationProvider) {
        return googlePlayServicesDetailedLocationProvider;
    }

    @Singleton
    @e
    static bh a(AndroidLocation androidLocation) {
        return androidLocation;
    }

    @Singleton
    @e
    static bj a(AndroidNetwork androidNetwork) {
        return androidNetwork;
    }

    @Singleton
    @e
    static cj a() {
        return new cj();
    }

    @Singleton
    @e
    static DeviceIdStrategy a(AdvertisingDeviceIdStrategy advertisingDeviceIdStrategy) {
        return advertisingDeviceIdStrategy;
    }

    @Singleton
    @RequestConfigHttpTransaction
    @e
    static HttpTransaction a(Factory factory, RequestConfigHttpResponseHandler requestConfigHttpResponseHandler) {
        return new HttpTransaction(factory.d(), requestConfigHttpResponseHandler);
    }

    @RequestLocalAdHttpTransaction
    @e
    static HttpTransaction a(RequestLocalAdHttpRequest.Factory factory, RequestLocalAdHttpResponseHandler requestLocalAdHttpResponseHandler) {
        return new HttpTransaction(factory.d(), requestLocalAdHttpResponseHandler);
    }

    @TrackInstallHttpTransaction
    @e
    static HttpTransaction a(TrackInstallHttpRequest.Factory factory, TrackInstallHttpResponseHandler trackInstallHttpResponseHandler) {
        return new HttpTransaction(factory.d(), trackInstallHttpResponseHandler);
    }

    @AdTempDirectory
    @e
    static String a(Context context) {
        if (context.getExternalFilesDir(null) == null) {
            throw new az();
        }
        return ba.a(new Object[]{file.getAbsolutePath(), ".vungle"});
    }

    @Singleton
    @e
    static Collection a(SessionEndListener sessionEndListener) {
        Collection arrayList = new ArrayList();
        arrayList.add(sessionEndListener);
        return arrayList;
    }

    @VungleBaseUrl
    @e
    static String b() {
        return "http://api.vungle.com/api/v1/";
    }

    @OldAdTempDirectory
    @e
    static String b(Context context) {
        if (context.getExternalCacheDir() == null) {
            throw new az();
        }
        return ba.a(new Object[]{file, ".VungleCacheDir"});
    }

    @Singleton
    @e
    static AudioManager c(Context context) {
        AudioManager audioManager = (AudioManager) context.getSystemService("audio");
        if (audioManager == null) {
            Logger.d(Logger.DEVICE_TAG, "AudioManager not avaialble");
        }
        return audioManager;
    }

    @e
    public static ConnectivityManager d(Context context) {
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        if (connectivityManager == null) {
            Logger.d(Logger.DEVICE_TAG, "ConnectivityManager not available");
        }
        return connectivityManager;
    }

    @EnvSharedPreferences
    @e
    static SharedPreferences e(Context context) {
        return context.getSharedPreferences("VUNGLE_PUB_APP_INFO", 0);
    }

    @e
    static TelephonyManager f(Context context) {
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService(ZBuildConfig.device);
        if (telephonyManager == null) {
            Logger.d(Logger.DEVICE_TAG, "TelephonyManager not avaialble");
        }
        return telephonyManager;
    }

    @e
    static WindowManager g(Context context) {
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        if (windowManager == null) {
            Logger.d(Logger.DEVICE_TAG, "WindowManager not available");
        }
        return windowManager;
    }

    public final void a(Context context, String str) {
        if (this.h) {
            Logger.d(Logger.INJECT_TAG, "publisher module already initialized");
        } else {
            Logger.d(Logger.INJECT_TAG, "initializing publisher module");
            this.a = context.getApplicationContext();
            this.b = str;
            this.h = true;
        }
    }

    public final void a(Class cls) {
        if (this.h) {
            Logger.d(Logger.INJECT_TAG, "full screen ad activity class in publisher module NOT set - already initialized");
        } else {
            Logger.d(Logger.INJECT_TAG, new StringBuilder("setting full screen ad activity class in publisher module: ").append(this.e).toString());
            this.d = cls;
        }
    }

    public final void b(Class cls) {
        if (this.h) {
            Logger.d(Logger.INJECT_TAG, "service class in publisher module NOT set - already initialized");
        } else {
            Logger.d(Logger.INJECT_TAG, new StringBuilder("setting service class in publisher module: ").append(cls).toString());
            this.e = cls;
        }
    }

    public void setBitmapFactory(BitmapFactory bitmapFactory) {
        if (this.h) {
            Logger.d(Logger.INJECT_TAG, "BitmapFactory in publisher module NOT set - already initialized");
        } else {
            Logger.d(Logger.INJECT_TAG, new StringBuilder("setting BitmapFactory in publisher module: ").append(bitmapFactory).toString());
            this.c = bitmapFactory;
        }
    }

    public void setWrapperFramework(WrapperFramework wrapperFramework) {
        if (this.h) {
            Logger.d(Logger.INJECT_TAG, "wrapper framework in publisher module NOT set - already initialized");
        } else {
            Logger.d(Logger.INJECT_TAG, new StringBuilder("setting framework in publisher module: ").append(wrapperFramework).toString());
            this.f = wrapperFramework;
        }
    }

    public void setWrapperFrameworkVersion(String str) {
        if (this.h) {
            Logger.d(Logger.INJECT_TAG, "wrapper framework version in publisher module NOT set - already initialized");
        } else {
            Logger.d(Logger.INJECT_TAG, new StringBuilder("setting framework in publisher module: ").append(str).toString());
            this.g = str;
        }
    }
}