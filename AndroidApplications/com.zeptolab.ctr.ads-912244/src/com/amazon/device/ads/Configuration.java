package com.amazon.device.ads;

import com.amazon.device.ads.PreferredMarketplaceRetriever.NullPreferredMarketplaceRetriever;
import com.amazon.device.ads.WebRequest.WebRequestException;
import com.amazon.device.ads.WebRequest.WebResponse;
import com.vungle.publisher.VungleService;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;

class Configuration {
    protected static final int a = 300000;
    protected static final int b = 172800;
    protected static final String c = "config-ttl";
    protected static final String d = "config-lastFetchTime";
    protected static final String e = "config-appDefinedMarketplace";
    protected static final String f = "configVersion";
    protected static final int g = 1;
    protected static Configuration h = null;
    private static final String i;
    private static final String j = "aax-us-east.amazon-adsystem.com";
    private static final String k = "/e/msdk/cfg";
    private String l;
    private boolean m;
    private List n;
    private AtomicBoolean o;
    private Boolean p;
    private boolean q;
    private PreferredMarketplaceRetriever r;

    static interface ConfigurationListener {
        void onConfigurationFailure();

        void onConfigurationReady();
    }

    public static class ConfigOption {
        public static final com.amazon.device.ads.Configuration.ConfigOption AAX_HOSTNAME;
        public static final com.amazon.device.ads.Configuration.ConfigOption AD_PREF_URL;
        public static final com.amazon.device.ads.Configuration.ConfigOption MADS_HOSTNAME;
        public static final com.amazon.device.ads.Configuration.ConfigOption SEND_GEO;
        public static final com.amazon.device.ads.Configuration.ConfigOption SIS_DOMAIN;
        public static final com.amazon.device.ads.Configuration.ConfigOption SIS_URL;
        public static final com.amazon.device.ads.Configuration.ConfigOption[] configOptions;
        private final String a;
        private final String b;
        private final Class c;
        private final String d;
        private final boolean e;

        static {
            AAX_HOSTNAME = new com.amazon.device.ads.Configuration.ConfigOption("config-aaxHostname", String.class, "aaxHostname", DebugProperties.DEBUG_AAX_AD_HOSTNAME);
            SIS_URL = new com.amazon.device.ads.Configuration.ConfigOption("config-sisURL", String.class, "sisURL", DebugProperties.DEBUG_SIS_URL);
            AD_PREF_URL = new com.amazon.device.ads.Configuration.ConfigOption("config-adPrefURL", String.class, "adPrefURL", DebugProperties.DEBUG_AD_PREF_URL);
            MADS_HOSTNAME = new com.amazon.device.ads.Configuration.ConfigOption("config-madsHostname", String.class, "madsHostname", DebugProperties.DEBUG_MADS_HOSTNAME, true);
            SIS_DOMAIN = new com.amazon.device.ads.Configuration.ConfigOption("config-sisDomain", String.class, "sisDomain", DebugProperties.DEBUG_SIS_DOMAIN);
            SEND_GEO = new com.amazon.device.ads.Configuration.ConfigOption("config-sendGeo", Boolean.class, "sendGeo", DebugProperties.DEBUG_SEND_GEO);
            configOptions = new com.amazon.device.ads.Configuration.ConfigOption[]{AAX_HOSTNAME, SIS_URL, AD_PREF_URL, MADS_HOSTNAME, SIS_DOMAIN, SEND_GEO};
        }

        protected ConfigOption(String str, Class cls, String str2, String str3) {
            this(str, cls, str2, str3, false);
        }

        protected ConfigOption(String str, Class cls, String str2, String str3, boolean z) {
            this.a = str;
            this.b = str2;
            this.c = cls;
            this.d = str3;
            this.e = z;
        }

        String a() {
            return this.a;
        }

        String b() {
            return this.b;
        }

        Class c() {
            return this.c;
        }

        String d() {
            return this.d;
        }

        boolean e() {
            return this.e;
        }
    }

    static {
        i = Configuration.class.getSimpleName();
        h = new Configuration();
    }

    protected Configuration() {
        this.l = null;
        this.m = false;
        this.n = null;
        this.o = null;
        this.p = null;
        this.q = false;
        this.r = new NullPreferredMarketplaceRetriever();
        this.n = new ArrayList(5);
        this.o = new AtomicBoolean(false);
    }

    private void a(ConfigOption configOption, JSONObject jSONObject) {
        if (configOption.c().equals(String.class)) {
            String string = jSONObject.getString(configOption.b());
            if (configOption.e() || !Utils.isNullOrWhiteSpace(string)) {
                Settings.getInstance().putStringWithNoFlush(configOption.a(), string);
            } else {
                throw new IllegalArgumentException("The configuration value must not be empty or contain only white spaces.");
            }
        } else if (configOption.c().equals(Boolean.class)) {
            Settings.getInstance().putBooleanWithNoFlush(configOption.a(), jSONObject.getBoolean(configOption.b()));
        } else {
            throw new IllegalArgumentException("Undefined configuration option type.");
        }
    }

    public static final Configuration getInstance() {
        return h;
    }

    public static int getMaxNoRetryTtl() {
        return DebugProperties.getDebugPropertyAsInteger(DebugProperties.DEBUG_NORETRYTTL_MAX, (int)a);
    }

    private boolean m() {
        Settings instance = Settings.getInstance();
        String string = instance.getString(e, null);
        if (this.m) {
            this.m = false;
            if (this.l != null && !this.l.equals(string)) {
                instance.putLongWithNoFlush(d, 0);
                instance.putStringWithNoFlush(e, this.l);
                instance.flush();
                InternalAdRegistration.getInstance().getRegistrationInfo().requestNewSISDeviceIdentifier();
                Log.d(i, "New application-defined marketplace set. A new configuration will be retrieved.");
                return true;
            } else if (string != null && this.l == null) {
                instance.remove(e);
                InternalAdRegistration.getInstance().getRegistrationInfo().requestNewSISDeviceIdentifier();
                Log.d(i, "Application-defined marketplace removed. A new configuration will be retrieved.");
                return true;
            }
        }
        return false;
    }

    private String n() {
        return this.r.retrievePreferredMarketplace();
    }

    protected WebRequest a(Info info) {
        WebRequest createJSONGetWebRequest = WebRequest.createJSONGetWebRequest();
        createJSONGetWebRequest.setExternalLogTag(i);
        createJSONGetWebRequest.enableLogUrl(true);
        createJSONGetWebRequest.setHost(DebugProperties.getDebugPropertyAsString(DebugProperties.DEBUG_AAX_CONFIG_HOSTNAME, j));
        createJSONGetWebRequest.setPath(k);
        createJSONGetWebRequest.setMetricsCollector(Metrics.getInstance().getMetricsCollector());
        createJSONGetWebRequest.setServiceCallLatencyMetric(MetricType.AAX_CONFIG_DOWNLOAD_LATENCY);
        createJSONGetWebRequest.setUseSecure(DebugProperties.getDebugPropertyAsBoolean(DebugProperties.DEBUG_AAX_CONFIG_USE_SECURE, true));
        RegistrationInfo registrationInfo = InternalAdRegistration.getInstance().getRegistrationInfo();
        DeviceInfo deviceInfo = InternalAdRegistration.getInstance().getDeviceInfo();
        createJSONGetWebRequest.putUnencodedQueryParameter("appId", registrationInfo.getAppKey());
        createJSONGetWebRequest.putUnencodedQueryParameter("dinfo", deviceInfo.getDInfoProperty().toString());
        createJSONGetWebRequest.putUnencodedQueryParameter(VungleService.AD_ID_EXTRA_KEY, info.e());
        createJSONGetWebRequest.putUnencodedQueryParameter("sdkVer", Version.getSDKVersion());
        createJSONGetWebRequest.putUnencodedQueryParameter("fp", Boolean.toString(this.q));
        createJSONGetWebRequest.putUnencodedQueryParameter("mkt", Settings.getInstance().getString(e, null));
        createJSONGetWebRequest.putUnencodedQueryParameter("pfm", n());
        boolean z = Settings.getInstance().getBoolean("testingEnabled", false);
        b(z);
        if (z) {
            createJSONGetWebRequest.putUnencodedQueryParameter("testMode", "true");
        }
        createJSONGetWebRequest.setAdditionalQueryParamsString(DebugProperties.getDebugPropertyAsString(DebugProperties.DEBUG_AAX_CONFIG_PARAMS, null));
        return createJSONGetWebRequest;
    }

    protected void a(boolean z) {
        this.o.set(z);
    }

    boolean a() {
        return this.q;
    }

    protected void b(boolean z) {
        this.p = Boolean.valueOf(z);
    }

    protected boolean b() {
        Settings instance = Settings.getInstance();
        if (m() || Settings.getInstance().getInt(f, 0) != 1) {
            return true;
        }
        long c = c();
        long j = instance.getLong(d, 0);
        long j2 = (long) instance.getInt(c, b);
        if (j == 0) {
            Log.d(i, "No configuration found. A new configuration will be retrieved.");
            return true;
        } else if (c - j > Utils.convertToNsFromS(j2)) {
            Log.d(i, "The configuration has expired. A new configuration will be retrieved.");
            return true;
        } else if (this.p != null && this.p.booleanValue() != instance.getBoolean("testingEnabled", false)) {
            Log.d(i, "The testing mode has changed. A new configuration will be retrieved.");
            return true;
        } else if (DebugProperties.getDebugPropertyAsBoolean(DebugProperties.DEBUG_SHOULD_FETCH_CONFIG, false)) {
            return true;
        } else {
            return false;
        }
    }

    protected long c() {
        return System.nanoTime();
    }

    protected boolean d() {
        return this.o.get();
    }

    protected void e() {
        ThreadUtils.executeRunnable(new Runnable() {
            public void run() {
                Configuration.this.j();
            }
        });
    }

    protected synchronized void f() {
        int i = 0;
        synchronized (this) {
            a(false);
            ConfigurationListener[] h = h();
            int length = h.length;
            while (i < length) {
                h[i].onConfigurationReady();
                i++;
            }
        }
    }

    protected synchronized void g() {
        int i = 0;
        synchronized (this) {
            Metrics.getInstance().getMetricsCollector().incrementMetric(MetricType.AAX_CONFIG_DOWNLOAD_FAILED);
            a(false);
            ConfigurationListener[] h = h();
            int length = h.length;
            while (i < length) {
                h[i].onConfigurationFailure();
                i++;
            }
        }
    }

    public String getAppDefinedMarketplace() {
        return this.l;
    }

    public boolean getBoolean(ConfigOption configOption) {
        return getBooleanWithDefault(configOption, false);
    }

    public boolean getBooleanWithDefault(ConfigOption configOption, boolean z) {
        return DebugProperties.containsDebugProperty(configOption.d()) ? DebugProperties.getDebugPropertyAsBoolean(configOption.d(), z) : Settings.getInstance().getBoolean(configOption.a(), z);
    }

    public String getString(ConfigOption configOption) {
        String debugPropertyAsString = DebugProperties.getDebugPropertyAsString(configOption.d(), null);
        return debugPropertyAsString == null ? Settings.getInstance().getString(configOption.a(), null) : debugPropertyAsString;
    }

    protected synchronized ConfigurationListener[] h() {
        ConfigurationListener[] configurationListenerArr;
        configurationListenerArr = (ConfigurationListener[]) this.n.toArray(new ConfigurationListener[this.n.size()]);
        this.n.clear();
        return configurationListenerArr;
    }

    protected ConfigOption[] i() {
        return ConfigOption.configOptions;
    }

    protected void j() {
        int i = b;
        Log.d(i, "In configuration fetcher background thread.");
        if (PermissionChecker.a().passesInternetPermissionCheck(InternalAdRegistration.getInstance().getApplicationContext(), i)) {
            Info k = k();
            if (k.a()) {
                try {
                    WebResponse makeCall = a(k).makeCall();
                    Log.d(i, "Response Body: %s", new Object[]{makeCall.getBody()});
                    JSONObject jSONObjectBody = makeCall.getJSONObjectBody();
                    Settings instance = Settings.getInstance();
                    try {
                        ConfigOption[] i2 = i();
                        int length = i2.length;
                        int i3 = 0;
                        while (i3 < length) {
                            ConfigOption configOption = i2[i3];
                            if (!jSONObjectBody.isNull(configOption.b())) {
                                a(configOption, jSONObjectBody);
                            } else if (configOption.e()) {
                                instance.removeWithNoFlush(configOption.a());
                            } else {
                                throw new Exception("The configuration value must be present and not null.");
                            }
                            i3++;
                        }
                        if (jSONObjectBody.isNull("ttl")) {
                            throw new Exception("The configuration value must be present and not null.");
                        }
                        i3 = jSONObjectBody.getInt("ttl");
                        if (i3 <= 172800) {
                            i = i3;
                        }
                        instance.putIntWithNoFlush(c, i);
                        instance.putLongWithNoFlush(d, c());
                        instance.putIntWithNoFlush(f, g);
                        instance.flush();
                        Log.d(i, "Configuration fetched and saved.");
                        f();
                    } catch (JSONException e) {
                        JSONException jSONException = e;
                        Log.e(i, "Unable to parse JSON response: %s", new Object[]{jSONException.getMessage()});
                        g();
                    } catch (Exception e2) {
                        Exception exception = e2;
                        Log.e(i, "Unexpected error during parsing: %s", new Object[]{exception.getMessage()});
                        g();
                    }
                } catch (WebRequestException e3) {
                    g();
                }
            } else {
                g();
            }
        } else {
            g();
        }
    }

    Info k() {
        boolean z = false;
        AdvertisingIdentifier advertisingIdentifier = new AdvertisingIdentifier();
        if (Settings.getInstance().getInt(f, 0) != 0) {
            z = true;
        }
        return advertisingIdentifier.a(z).b();
    }

    PreferredMarketplaceRetriever l() {
        return this.r;
    }

    public synchronized void queueConfigurationListener(ConfigurationListener configurationListener) {
        queueConfigurationListener(configurationListener, true);
    }

    public synchronized void queueConfigurationListener(ConfigurationListener configurationListener, boolean z) {
        if (d()) {
            this.n.add(configurationListener);
        } else if (b()) {
            this.n.add(configurationListener);
            if (z) {
                Log.d(i, "Starting configuration fetching...");
                a(true);
                e();
            }
        } else {
            configurationListener.onConfigurationReady();
        }
    }

    public void setAppDefinedMarketplace(String str) {
        this.l = str;
        this.m = true;
    }

    public void setIsFirstParty(boolean z) {
        this.q = z;
    }

    public void setPreferredMarketplaceRetriever(PreferredMarketplaceRetriever preferredMarketplaceRetriever) {
        this.r = preferredMarketplaceRetriever;
    }
}