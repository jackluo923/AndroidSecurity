package com.vungle.publisher.inject;

import a.a.b;
import a.a.d;
import a.a.l;
import a.a.r;
import a.a.u;
import android.content.Context;
import android.content.SharedPreferences;
import android.media.AudioManager;
import android.net.ConnectivityManager;
import android.telephony.TelephonyManager;
import android.view.WindowManager;
import com.vungle.publisher.FullScreenAdActivity;
import com.vungle.publisher.VungleService;
import com.vungle.publisher.ar;
import com.vungle.publisher.as;
import com.vungle.publisher.at;
import com.vungle.publisher.bg;
import com.vungle.publisher.bh;
import com.vungle.publisher.bj;
import com.vungle.publisher.cj;
import com.vungle.publisher.env.AdvertisingDeviceIdStrategy;
import com.vungle.publisher.env.AndroidDevice;
import com.vungle.publisher.env.AndroidDevice.DeviceIdStrategy;
import com.vungle.publisher.env.SdkState.SessionEndListener;
import com.vungle.publisher.env.WrapperFramework;
import com.vungle.publisher.image.AssetBitmapFactory;
import com.vungle.publisher.image.BitmapFactory;
import com.vungle.publisher.location.AndroidLocation;
import com.vungle.publisher.location.GooglePlayServicesDetailedLocationProvider;
import com.vungle.publisher.net.AndroidNetwork;
import com.vungle.publisher.net.http.HttpTransaction;
import com.vungle.publisher.protocol.RequestConfigHttpRequest.Factory;
import com.vungle.publisher.protocol.RequestConfigHttpResponseHandler;
import com.vungle.publisher.protocol.RequestLocalAdHttpRequest;
import com.vungle.publisher.protocol.RequestLocalAdHttpResponseHandler;
import com.vungle.publisher.protocol.TrackInstallHttpRequest;
import com.vungle.publisher.protocol.TrackInstallHttpResponseHandler;
import java.util.Collection;
import java.util.Set;
import javax.inject.Provider;

public final class ConfigurablePublisherModule$$ModuleAdapter extends r {
    private static final String[] a;
    private static final Class[] b;
    private static final Class[] c;

    public static final class ProvideAdTempDirectoryProvidesAdapter extends u implements Provider {
        private final ConfigurablePublisherModule a;
        private b b;

        public ProvideAdTempDirectoryProvidesAdapter(ConfigurablePublisherModule configurablePublisherModule) {
            super("@com.vungle.publisher.inject.annotations.AdTempDirectory()/java.lang.String", false, "com.vungle.publisher.inject.ConfigurablePublisherModule", "provideAdTempDirectory");
            this.a = configurablePublisherModule;
            setLibrary(false);
        }

        public final void attach(l lVar) {
            this.b = lVar.a("android.content.Context", (Object)ConfigurablePublisherModule.class, getClass().getClassLoader());
        }

        public final String get() {
            ConfigurablePublisherModule configurablePublisherModule = this.a;
            return ConfigurablePublisherModule.a((Context) this.b.get());
        }

        public final void getDependencies(Set set, Set set2) {
            set.add(this.b);
        }
    }

    public static final class ProvideApplicationContextProvidesAdapter extends u implements Provider {
        private final ConfigurablePublisherModule a;

        public ProvideApplicationContextProvidesAdapter(ConfigurablePublisherModule configurablePublisherModule) {
            super("android.content.Context", false, "com.vungle.publisher.inject.ConfigurablePublisherModule", "provideApplicationContext");
            this.a = configurablePublisherModule;
            setLibrary(false);
        }

        public final Context get() {
            return this.a.a;
        }
    }

    public static final class ProvideAudioManagerProvidesAdapter extends u implements Provider {
        private final ConfigurablePublisherModule a;
        private b b;

        public ProvideAudioManagerProvidesAdapter(ConfigurablePublisherModule configurablePublisherModule) {
            super("android.media.AudioManager", true, "com.vungle.publisher.inject.ConfigurablePublisherModule", "provideAudioManager");
            this.a = configurablePublisherModule;
            setLibrary(false);
        }

        public final void attach(l lVar) {
            this.b = lVar.a("android.content.Context", (Object)ConfigurablePublisherModule.class, getClass().getClassLoader());
        }

        public final AudioManager get() {
            ConfigurablePublisherModule configurablePublisherModule = this.a;
            return ConfigurablePublisherModule.c((Context) this.b.get());
        }

        public final void getDependencies(Set set, Set set2) {
            set.add(this.b);
        }
    }

    public static final class ProvideBitmapFactoryProvidesAdapter extends u implements Provider {
        private final ConfigurablePublisherModule a;
        private b b;

        public ProvideBitmapFactoryProvidesAdapter(ConfigurablePublisherModule configurablePublisherModule) {
            super("com.vungle.publisher.image.BitmapFactory", true, "com.vungle.publisher.inject.ConfigurablePublisherModule", "provideBitmapFactory");
            this.a = configurablePublisherModule;
            setLibrary(false);
        }

        public final void attach(l lVar) {
            this.b = lVar.a("com.vungle.publisher.image.AssetBitmapFactory", (Object)ConfigurablePublisherModule.class, getClass().getClassLoader());
        }

        public final BitmapFactory get() {
            ConfigurablePublisherModule configurablePublisherModule = this.a;
            return configurablePublisherModule.c == null ? (AssetBitmapFactory) this.b.get() : configurablePublisherModule.c;
        }

        public final void getDependencies(Set set, Set set2) {
            set.add(this.b);
        }
    }

    public static final class ProvideConnectivityManagerProvidesAdapter extends u implements Provider {
        private final ConfigurablePublisherModule a;
        private b b;

        public ProvideConnectivityManagerProvidesAdapter(ConfigurablePublisherModule configurablePublisherModule) {
            super("android.net.ConnectivityManager", false, "com.vungle.publisher.inject.ConfigurablePublisherModule", "provideConnectivityManager");
            this.a = configurablePublisherModule;
            setLibrary(false);
        }

        public final void attach(l lVar) {
            this.b = lVar.a("android.content.Context", (Object)ConfigurablePublisherModule.class, getClass().getClassLoader());
        }

        public final ConnectivityManager get() {
            ConfigurablePublisherModule configurablePublisherModule = this.a;
            return ConfigurablePublisherModule.d((Context) this.b.get());
        }

        public final void getDependencies(Set set, Set set2) {
            set.add(this.b);
        }
    }

    public static final class ProvideDetailedLocationProviderProvidesAdapter extends u implements Provider {
        private final ConfigurablePublisherModule a;
        private b b;

        public ProvideDetailedLocationProviderProvidesAdapter(ConfigurablePublisherModule configurablePublisherModule) {
            super("com.vungle.publisher.bg", false, "com.vungle.publisher.inject.ConfigurablePublisherModule", "provideDetailedLocationProvider");
            this.a = configurablePublisherModule;
            setLibrary(false);
        }

        public final void attach(l lVar) {
            this.b = lVar.a("com.vungle.publisher.location.GooglePlayServicesDetailedLocationProvider", (Object)ConfigurablePublisherModule.class, getClass().getClassLoader());
        }

        public final bg get() {
            ConfigurablePublisherModule configurablePublisherModule = this.a;
            return ConfigurablePublisherModule.a((GooglePlayServicesDetailedLocationProvider) this.b.get());
        }

        public final void getDependencies(Set set, Set set2) {
            set.add(this.b);
        }
    }

    public static final class ProvideDeviceIdStrategyProvidesAdapter extends u implements Provider {
        private final ConfigurablePublisherModule a;
        private b b;

        public ProvideDeviceIdStrategyProvidesAdapter(ConfigurablePublisherModule configurablePublisherModule) {
            super("com.vungle.publisher.env.AndroidDevice$DeviceIdStrategy", true, "com.vungle.publisher.inject.ConfigurablePublisherModule", "provideDeviceIdStrategy");
            this.a = configurablePublisherModule;
            setLibrary(false);
        }

        public final void attach(l lVar) {
            this.b = lVar.a("com.vungle.publisher.env.AdvertisingDeviceIdStrategy", (Object)ConfigurablePublisherModule.class, getClass().getClassLoader());
        }

        public final DeviceIdStrategy get() {
            ConfigurablePublisherModule configurablePublisherModule = this.a;
            return ConfigurablePublisherModule.a((AdvertisingDeviceIdStrategy) this.b.get());
        }

        public final void getDependencies(Set set, Set set2) {
            set.add(this.b);
        }
    }

    public static final class ProvideDeviceProvidesAdapter extends u implements Provider {
        private final ConfigurablePublisherModule a;
        private b b;

        public ProvideDeviceProvidesAdapter(ConfigurablePublisherModule configurablePublisherModule) {
            super("com.vungle.publisher.as", true, "com.vungle.publisher.inject.ConfigurablePublisherModule", "provideDevice");
            this.a = configurablePublisherModule;
            setLibrary(false);
        }

        public final void attach(l lVar) {
            this.b = lVar.a("com.vungle.publisher.env.AndroidDevice", (Object)ConfigurablePublisherModule.class, getClass().getClassLoader());
        }

        public final as get() {
            ConfigurablePublisherModule configurablePublisherModule = this.a;
            return ConfigurablePublisherModule.a((AndroidDevice) this.b.get());
        }

        public final void getDependencies(Set set, Set set2) {
            set.add(this.b);
        }
    }

    public static final class ProvideEnvSharedPreferencesProvidesAdapter extends u implements Provider {
        private final ConfigurablePublisherModule a;
        private b b;

        public ProvideEnvSharedPreferencesProvidesAdapter(ConfigurablePublisherModule configurablePublisherModule) {
            super("@com.vungle.publisher.inject.annotations.EnvSharedPreferences()/android.content.SharedPreferences", false, "com.vungle.publisher.inject.ConfigurablePublisherModule", "provideEnvSharedPreferences");
            this.a = configurablePublisherModule;
            setLibrary(false);
        }

        public final void attach(l lVar) {
            this.b = lVar.a("android.content.Context", (Object)ConfigurablePublisherModule.class, getClass().getClassLoader());
        }

        public final SharedPreferences get() {
            ConfigurablePublisherModule configurablePublisherModule = this.a;
            return ConfigurablePublisherModule.e((Context) this.b.get());
        }

        public final void getDependencies(Set set, Set set2) {
            set.add(this.b);
        }
    }

    public static final class ProvideEventBusProvidesAdapter extends u implements Provider {
        private final ConfigurablePublisherModule a;

        public ProvideEventBusProvidesAdapter(ConfigurablePublisherModule configurablePublisherModule) {
            super("com.vungle.publisher.cj", true, "com.vungle.publisher.inject.ConfigurablePublisherModule", "provideEventBus");
            this.a = configurablePublisherModule;
            setLibrary(false);
        }

        public final cj get() {
            ConfigurablePublisherModule configurablePublisherModule = this.a;
            return ConfigurablePublisherModule.a();
        }
    }

    public static final class ProvideFullScreenAdActivityClassProvidesAdapter extends u implements Provider {
        private final ConfigurablePublisherModule a;

        public ProvideFullScreenAdActivityClassProvidesAdapter(ConfigurablePublisherModule configurablePublisherModule) {
            super("@com.vungle.publisher.inject.annotations.FullScreenAdActivityClass()/java.lang.Class", false, "com.vungle.publisher.inject.ConfigurablePublisherModule", "provideFullScreenAdActivityClass");
            this.a = configurablePublisherModule;
            setLibrary(false);
        }

        public final Class get() {
            ConfigurablePublisherModule configurablePublisherModule = this.a;
            return configurablePublisherModule.d == null ? FullScreenAdActivity.class : configurablePublisherModule.d;
        }
    }

    public static final class ProvideLocationProvidesAdapter extends u implements Provider {
        private final ConfigurablePublisherModule a;
        private b b;

        public ProvideLocationProvidesAdapter(ConfigurablePublisherModule configurablePublisherModule) {
            super("com.vungle.publisher.bh", true, "com.vungle.publisher.inject.ConfigurablePublisherModule", "provideLocation");
            this.a = configurablePublisherModule;
            setLibrary(false);
        }

        public final void attach(l lVar) {
            this.b = lVar.a("com.vungle.publisher.location.AndroidLocation", (Object)ConfigurablePublisherModule.class, getClass().getClassLoader());
        }

        public final bh get() {
            ConfigurablePublisherModule configurablePublisherModule = this.a;
            return ConfigurablePublisherModule.a((AndroidLocation) this.b.get());
        }

        public final void getDependencies(Set set, Set set2) {
            set.add(this.b);
        }
    }

    public static final class ProvideNetworkProvidesAdapter extends u implements Provider {
        private final ConfigurablePublisherModule a;
        private b b;

        public ProvideNetworkProvidesAdapter(ConfigurablePublisherModule configurablePublisherModule) {
            super("com.vungle.publisher.bj", true, "com.vungle.publisher.inject.ConfigurablePublisherModule", "provideNetwork");
            this.a = configurablePublisherModule;
            setLibrary(false);
        }

        public final void attach(l lVar) {
            this.b = lVar.a("com.vungle.publisher.net.AndroidNetwork", (Object)ConfigurablePublisherModule.class, getClass().getClassLoader());
        }

        public final bj get() {
            ConfigurablePublisherModule configurablePublisherModule = this.a;
            return ConfigurablePublisherModule.a((AndroidNetwork) this.b.get());
        }

        public final void getDependencies(Set set, Set set2) {
            set.add(this.b);
        }
    }

    public static final class ProvideOldAdTempDirectoryProvidesAdapter extends u implements Provider {
        private final ConfigurablePublisherModule a;
        private b b;

        public ProvideOldAdTempDirectoryProvidesAdapter(ConfigurablePublisherModule configurablePublisherModule) {
            super("@com.vungle.publisher.inject.annotations.OldAdTempDirectory()/java.lang.String", false, "com.vungle.publisher.inject.ConfigurablePublisherModule", "provideOldAdTempDirectory");
            this.a = configurablePublisherModule;
            setLibrary(false);
        }

        public final void attach(l lVar) {
            this.b = lVar.a("android.content.Context", (Object)ConfigurablePublisherModule.class, getClass().getClassLoader());
        }

        public final String get() {
            ConfigurablePublisherModule configurablePublisherModule = this.a;
            return ConfigurablePublisherModule.b((Context) this.b.get());
        }

        public final void getDependencies(Set set, Set set2) {
            set.add(this.b);
        }
    }

    public static final class ProvidePublisherAppProvidesAdapter extends u implements Provider {
        private final ConfigurablePublisherModule a;
        private b b;
        private b c;

        public ProvidePublisherAppProvidesAdapter(ConfigurablePublisherModule configurablePublisherModule) {
            super("com.vungle.publisher.at", true, "com.vungle.publisher.inject.ConfigurablePublisherModule", "providePublisherApp");
            this.a = configurablePublisherModule;
            setLibrary(false);
        }

        public final void attach(l lVar) {
            this.b = lVar.a("android.content.Context", (Object)ConfigurablePublisherModule.class, getClass().getClassLoader());
            this.c = lVar.a("com.vungle.publisher.env.WrapperFramework", (Object)ConfigurablePublisherModule.class, getClass().getClassLoader());
        }

        public final at get() {
            return new ar(((Context) this.b.get()).getPackageName(), this.a.b, (WrapperFramework) this.c.get());
        }

        public final void getDependencies(Set set, Set set2) {
            set.add(this.b);
            set.add(this.c);
        }
    }

    public static final class ProvideRequestConfigHttpTransactionProvidesAdapter extends u implements Provider {
        private final ConfigurablePublisherModule a;
        private b b;
        private b c;

        public ProvideRequestConfigHttpTransactionProvidesAdapter(ConfigurablePublisherModule configurablePublisherModule) {
            super("@com.vungle.publisher.inject.annotations.RequestConfigHttpTransaction()/com.vungle.publisher.net.http.HttpTransaction", true, "com.vungle.publisher.inject.ConfigurablePublisherModule", "provideRequestConfigHttpTransaction");
            this.a = configurablePublisherModule;
            setLibrary(false);
        }

        public final void attach(l lVar) {
            this.b = lVar.a("com.vungle.publisher.protocol.RequestConfigHttpRequest$Factory", (Object)ConfigurablePublisherModule.class, getClass().getClassLoader());
            this.c = lVar.a("com.vungle.publisher.protocol.RequestConfigHttpResponseHandler", (Object)ConfigurablePublisherModule.class, getClass().getClassLoader());
        }

        public final HttpTransaction get() {
            ConfigurablePublisherModule configurablePublisherModule = this.a;
            return ConfigurablePublisherModule.a((Factory) this.b.get(), (RequestConfigHttpResponseHandler) this.c.get());
        }

        public final void getDependencies(Set set, Set set2) {
            set.add(this.b);
            set.add(this.c);
        }
    }

    public static final class ProvideRequestLocalAdHttpTransactionProvidesAdapter extends u implements Provider {
        private final ConfigurablePublisherModule a;
        private b b;
        private b c;

        public ProvideRequestLocalAdHttpTransactionProvidesAdapter(ConfigurablePublisherModule configurablePublisherModule) {
            super("@com.vungle.publisher.inject.annotations.RequestLocalAdHttpTransaction()/com.vungle.publisher.net.http.HttpTransaction", false, "com.vungle.publisher.inject.ConfigurablePublisherModule", "provideRequestLocalAdHttpTransaction");
            this.a = configurablePublisherModule;
            setLibrary(false);
        }

        public final void attach(l lVar) {
            this.b = lVar.a("com.vungle.publisher.protocol.RequestLocalAdHttpRequest$Factory", (Object)ConfigurablePublisherModule.class, getClass().getClassLoader());
            this.c = lVar.a("com.vungle.publisher.protocol.RequestLocalAdHttpResponseHandler", (Object)ConfigurablePublisherModule.class, getClass().getClassLoader());
        }

        public final HttpTransaction get() {
            ConfigurablePublisherModule configurablePublisherModule = this.a;
            return ConfigurablePublisherModule.a((RequestLocalAdHttpRequest.Factory) this.b.get(), (RequestLocalAdHttpResponseHandler) this.c.get());
        }

        public final void getDependencies(Set set, Set set2) {
            set.add(this.b);
            set.add(this.c);
        }
    }

    public static final class ProvideSessionEndListenersProvidesAdapter extends u implements Provider {
        private final ConfigurablePublisherModule a;
        private b b;

        public ProvideSessionEndListenersProvidesAdapter(ConfigurablePublisherModule configurablePublisherModule) {
            super("java.util.Collection<com.vungle.publisher.service.SessionEventIntentHandler$SessionEndListener>", true, "com.vungle.publisher.inject.ConfigurablePublisherModule", "provideSessionEndListeners");
            this.a = configurablePublisherModule;
            setLibrary(false);
        }

        public final void attach(l lVar) {
            this.b = lVar.a("com.vungle.publisher.env.SdkState$SessionEndListener", (Object)ConfigurablePublisherModule.class, getClass().getClassLoader());
        }

        public final Collection get() {
            ConfigurablePublisherModule configurablePublisherModule = this.a;
            return ConfigurablePublisherModule.a((SessionEndListener) this.b.get());
        }

        public final void getDependencies(Set set, Set set2) {
            set.add(this.b);
        }
    }

    public static final class ProvideTelephonyManagerProvidesAdapter extends u implements Provider {
        private final ConfigurablePublisherModule a;
        private b b;

        public ProvideTelephonyManagerProvidesAdapter(ConfigurablePublisherModule configurablePublisherModule) {
            super("android.telephony.TelephonyManager", false, "com.vungle.publisher.inject.ConfigurablePublisherModule", "provideTelephonyManager");
            this.a = configurablePublisherModule;
            setLibrary(false);
        }

        public final void attach(l lVar) {
            this.b = lVar.a("android.content.Context", (Object)ConfigurablePublisherModule.class, getClass().getClassLoader());
        }

        public final TelephonyManager get() {
            ConfigurablePublisherModule configurablePublisherModule = this.a;
            return ConfigurablePublisherModule.f((Context) this.b.get());
        }

        public final void getDependencies(Set set, Set set2) {
            set.add(this.b);
        }
    }

    public static final class ProvideTrackInstallHttpTransactionProvidesAdapter extends u implements Provider {
        private final ConfigurablePublisherModule a;
        private b b;
        private b c;

        public ProvideTrackInstallHttpTransactionProvidesAdapter(ConfigurablePublisherModule configurablePublisherModule) {
            super("@com.vungle.publisher.inject.annotations.TrackInstallHttpTransaction()/com.vungle.publisher.net.http.HttpTransaction", false, "com.vungle.publisher.inject.ConfigurablePublisherModule", "provideTrackInstallHttpTransaction");
            this.a = configurablePublisherModule;
            setLibrary(false);
        }

        public final void attach(l lVar) {
            this.b = lVar.a("com.vungle.publisher.protocol.TrackInstallHttpRequest$Factory", (Object)ConfigurablePublisherModule.class, getClass().getClassLoader());
            this.c = lVar.a("com.vungle.publisher.protocol.TrackInstallHttpResponseHandler", (Object)ConfigurablePublisherModule.class, getClass().getClassLoader());
        }

        public final HttpTransaction get() {
            ConfigurablePublisherModule configurablePublisherModule = this.a;
            return ConfigurablePublisherModule.a((TrackInstallHttpRequest.Factory) this.b.get(), (TrackInstallHttpResponseHandler) this.c.get());
        }

        public final void getDependencies(Set set, Set set2) {
            set.add(this.b);
            set.add(this.c);
        }
    }

    public static final class ProvideVungleBaseUrlProvidesAdapter extends u implements Provider {
        private final ConfigurablePublisherModule a;

        public ProvideVungleBaseUrlProvidesAdapter(ConfigurablePublisherModule configurablePublisherModule) {
            super("@com.vungle.publisher.inject.annotations.VungleBaseUrl()/java.lang.String", false, "com.vungle.publisher.inject.ConfigurablePublisherModule", "provideVungleBaseUrl");
            this.a = configurablePublisherModule;
            setLibrary(false);
        }

        public final String get() {
            ConfigurablePublisherModule configurablePublisherModule = this.a;
            return ConfigurablePublisherModule.b();
        }
    }

    public static final class ProvideVungleServiceClassProvidesAdapter extends u implements Provider {
        private final ConfigurablePublisherModule a;

        public ProvideVungleServiceClassProvidesAdapter(ConfigurablePublisherModule configurablePublisherModule) {
            super("@com.vungle.publisher.inject.annotations.VungleServiceClass()/java.lang.Class", false, "com.vungle.publisher.inject.ConfigurablePublisherModule", "provideVungleServiceClass");
            this.a = configurablePublisherModule;
            setLibrary(false);
        }

        public final Class get() {
            ConfigurablePublisherModule configurablePublisherModule = this.a;
            return configurablePublisherModule.e == null ? VungleService.class : configurablePublisherModule.e;
        }
    }

    public static final class ProvideWindowManagerProvidesAdapter extends u implements Provider {
        private final ConfigurablePublisherModule a;
        private b b;

        public ProvideWindowManagerProvidesAdapter(ConfigurablePublisherModule configurablePublisherModule) {
            super("android.view.WindowManager", false, "com.vungle.publisher.inject.ConfigurablePublisherModule", "provideWindowManager");
            this.a = configurablePublisherModule;
            setLibrary(false);
        }

        public final void attach(l lVar) {
            this.b = lVar.a("android.content.Context", (Object)ConfigurablePublisherModule.class, getClass().getClassLoader());
        }

        public final WindowManager get() {
            ConfigurablePublisherModule configurablePublisherModule = this.a;
            return ConfigurablePublisherModule.g((Context) this.b.get());
        }

        public final void getDependencies(Set set, Set set2) {
            set.add(this.b);
        }
    }

    public static final class ProvideWrapperFrameworkProvidesAdapter extends u implements Provider {
        private final ConfigurablePublisherModule a;

        public ProvideWrapperFrameworkProvidesAdapter(ConfigurablePublisherModule configurablePublisherModule) {
            super("com.vungle.publisher.env.WrapperFramework", false, "com.vungle.publisher.inject.ConfigurablePublisherModule", "provideWrapperFramework");
            this.a = configurablePublisherModule;
            setLibrary(false);
        }

        public final WrapperFramework get() {
            return this.a.f;
        }
    }

    public static final class ProvideWrapperFrameworkVersionProvidesAdapter extends u implements Provider {
        private final ConfigurablePublisherModule a;

        public ProvideWrapperFrameworkVersionProvidesAdapter(ConfigurablePublisherModule configurablePublisherModule) {
            super("@com.vungle.publisher.inject.annotations.WrapperFrameworkVersion()/java.lang.String", false, "com.vungle.publisher.inject.ConfigurablePublisherModule", "provideWrapperFrameworkVersion");
            this.a = configurablePublisherModule;
            setLibrary(false);
        }

        public final String get() {
            return this.a.g;
        }
    }

    static {
        a = new String[]{"members/com.vungle.publisher.env.AndroidDevice", "members/com.vungle.publisher.location.AndroidLocation", "members/com.vungle.publisher.net.AndroidNetwork", "members/com.vungle.publisher.env.AndroidPublisherApp", "members/com.vungle.publisher.ad.AdManager", "members/com.vungle.publisher.FullScreenAdActivity", "members/com.vungle.publisher.service.SessionEventHandler", "members/com.vungle.sdk.VungleAdvert", "members/com.vungle.sdk.VungleIntentService", "members/com.vungle.publisher.VunglePub", "members/com.vungle.publisher.VungleService", "members/com.vungle.publisher.net.http.DownloadHttpRequest$Creator", "members/com.vungle.publisher.net.http.DownloadHttpResponseHandler$Creator", "members/com.vungle.publisher.net.http.FireAndForgetHttpResponseHandler$Creator", "members/com.vungle.publisher.net.http.HttpTransaction$Creator", "members/com.vungle.publisher.net.http.InfiniteRetryHttpResponseHandler$Creator", "members/com.vungle.publisher.display.view.PostRollFragment", "members/com.vungle.publisher.protocol.ReportAdHttpResponseHandler$Creator", "members/com.vungle.publisher.protocol.ReportLocalAdHttpRequest$Creator", "members/com.vungle.publisher.protocol.ReportStreamingAdHttpRequest$Creator", "members/com.vungle.publisher.protocol.RequestConfigHttpRequest$Creator", "members/com.vungle.publisher.protocol.RequestConfigHttpResponseHandler$Creator", "members/com.vungle.publisher.protocol.RequestLocalAdHttpRequest$Creator", "members/com.vungle.publisher.protocol.RequestLocalAdHttpResponseHandler$Creator", "members/com.vungle.publisher.protocol.RequestStreamingAdHttpRequest$Creator", "members/com.vungle.publisher.protocol.RequestStreamingAdHttpResponseHandler$Creator", "members/com.vungle.publisher.protocol.SessionEndHttpRequest$Creator", "members/com.vungle.publisher.protocol.SessionStartHttpRequest$Creator", "members/com.vungle.publisher.protocol.TrackEventHttpRequest$Creator", "members/com.vungle.publisher.protocol.TrackInstallHttpRequest$Creator", "members/com.vungle.publisher.protocol.TrackInstallHttpResponseHandler$Creator", "members/com.vungle.publisher.protocol.UnfilledAdHttpRequest$Creator", "members/com.vungle.publisher.display.view.VideoFragment"};
        b = new Class[0];
        c = new Class[0];
    }

    public ConfigurablePublisherModule$$ModuleAdapter() {
        super(ConfigurablePublisherModule.class, a, b, false, c, true, false);
    }

    public final /* synthetic */ void getBindings(d dVar, Object obj) {
        ConfigurablePublisherModule configurablePublisherModule = (ConfigurablePublisherModule) obj;
        dVar.a("android.content.Context", new ProvideApplicationContextProvidesAdapter(configurablePublisherModule));
        dVar.a("@com.vungle.publisher.inject.annotations.AdTempDirectory()/java.lang.String", new ProvideAdTempDirectoryProvidesAdapter(configurablePublisherModule));
        dVar.a("@com.vungle.publisher.inject.annotations.OldAdTempDirectory()/java.lang.String", new ProvideOldAdTempDirectoryProvidesAdapter(configurablePublisherModule));
        dVar.a("android.media.AudioManager", new ProvideAudioManagerProvidesAdapter(configurablePublisherModule));
        dVar.a("com.vungle.publisher.image.BitmapFactory", new ProvideBitmapFactoryProvidesAdapter(configurablePublisherModule));
        dVar.a("android.net.ConnectivityManager", new ProvideConnectivityManagerProvidesAdapter(configurablePublisherModule));
        dVar.a("com.vungle.publisher.bg", new ProvideDetailedLocationProviderProvidesAdapter(configurablePublisherModule));
        dVar.a("com.vungle.publisher.as", new ProvideDeviceProvidesAdapter(configurablePublisherModule));
        dVar.a("com.vungle.publisher.env.AndroidDevice$DeviceIdStrategy", new ProvideDeviceIdStrategyProvidesAdapter(configurablePublisherModule));
        dVar.a("@com.vungle.publisher.inject.annotations.EnvSharedPreferences()/android.content.SharedPreferences", new ProvideEnvSharedPreferencesProvidesAdapter(configurablePublisherModule));
        dVar.a("com.vungle.publisher.cj", new ProvideEventBusProvidesAdapter(configurablePublisherModule));
        dVar.a("@com.vungle.publisher.inject.annotations.FullScreenAdActivityClass()/java.lang.Class", new ProvideFullScreenAdActivityClassProvidesAdapter(configurablePublisherModule));
        dVar.a("com.vungle.publisher.bh", new ProvideLocationProvidesAdapter(configurablePublisherModule));
        dVar.a("com.vungle.publisher.bj", new ProvideNetworkProvidesAdapter(configurablePublisherModule));
        dVar.a("com.vungle.publisher.at", new ProvidePublisherAppProvidesAdapter(configurablePublisherModule));
        dVar.a("@com.vungle.publisher.inject.annotations.RequestConfigHttpTransaction()/com.vungle.publisher.net.http.HttpTransaction", new ProvideRequestConfigHttpTransactionProvidesAdapter(configurablePublisherModule));
        dVar.a("@com.vungle.publisher.inject.annotations.RequestLocalAdHttpTransaction()/com.vungle.publisher.net.http.HttpTransaction", new ProvideRequestLocalAdHttpTransactionProvidesAdapter(configurablePublisherModule));
        dVar.a("java.util.Collection<com.vungle.publisher.service.SessionEventIntentHandler$SessionEndListener>", new ProvideSessionEndListenersProvidesAdapter(configurablePublisherModule));
        dVar.a("android.telephony.TelephonyManager", new ProvideTelephonyManagerProvidesAdapter(configurablePublisherModule));
        dVar.a("@com.vungle.publisher.inject.annotations.TrackInstallHttpTransaction()/com.vungle.publisher.net.http.HttpTransaction", new ProvideTrackInstallHttpTransactionProvidesAdapter(configurablePublisherModule));
        dVar.a("@com.vungle.publisher.inject.annotations.VungleBaseUrl()/java.lang.String", new ProvideVungleBaseUrlProvidesAdapter(configurablePublisherModule));
        dVar.a("@com.vungle.publisher.inject.annotations.VungleServiceClass()/java.lang.Class", new ProvideVungleServiceClassProvidesAdapter(configurablePublisherModule));
        dVar.a("android.view.WindowManager", new ProvideWindowManagerProvidesAdapter(configurablePublisherModule));
        dVar.a("com.vungle.publisher.env.WrapperFramework", new ProvideWrapperFrameworkProvidesAdapter(configurablePublisherModule));
        dVar.a("@com.vungle.publisher.inject.annotations.WrapperFrameworkVersion()/java.lang.String", new ProvideWrapperFrameworkVersionProvidesAdapter(configurablePublisherModule));
    }

    public final /* synthetic */ Object newModule() {
        return new ConfigurablePublisherModule();
    }
}