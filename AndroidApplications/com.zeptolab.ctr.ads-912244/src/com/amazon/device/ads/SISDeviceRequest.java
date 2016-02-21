package com.amazon.device.ads;

import com.amazon.device.ads.Configuration.ConfigOption;
import java.util.HashMap;

abstract class SISDeviceRequest implements SISRequest {
    private String a;
    private MetricType b;
    private String c;
    private Info d;

    SISDeviceRequest() {
    }

    private static String a(boolean z) {
        return z ? "1" : "0";
    }

    public static String getDInfoProperty() {
        return String.format("{\"make\":\"%s\",\"model\":\"%s\",\"os\":\"%s\",\"osVersion\":\"%s\"}", new Object[]{DeviceInfo.getMake(), DeviceInfo.getModel(), DeviceInfo.getOS(), DeviceInfo.getOSVersion()});
    }

    protected Info a() {
        return this.d;
    }

    public MetricType getCallMetricType() {
        return this.b;
    }

    public String getLogTag() {
        return this.a;
    }

    public String getPath() {
        return this.c;
    }

    public HashMap getPostParameters() {
        return null;
    }

    public QueryStringParameters getQueryParameters() {
        QueryStringParameters queryStringParameters = new QueryStringParameters();
        queryStringParameters.b("dt", DeviceInfo.getDeviceType());
        queryStringParameters.b("app", InternalAdRegistration.getInstance().getRegistrationInfo().getAppName());
        queryStringParameters.b("aud", Configuration.getInstance().getString(ConfigOption.SIS_DOMAIN));
        queryStringParameters.b("ua", Utils.getURLEncodedString(DeviceInfo.getUserAgentString()));
        queryStringParameters.b("dinfo", Utils.getURLEncodedString(getDInfoProperty()));
        queryStringParameters.b("pkg", Utils.getURLEncodedString(InternalAdRegistration.getInstance().getAppInfo().getPackageInfoJSONString()));
        if (this.d.c()) {
            queryStringParameters.b("idfa", this.d.b());
            queryStringParameters.b("oo", a(this.d.d()));
        } else {
            DeviceInfo deviceInfo = InternalAdRegistration.getInstance().getDeviceInfo();
            queryStringParameters.b("sha1_mac", deviceInfo.getMacSha1());
            queryStringParameters.b("sha1_serial", deviceInfo.getSerialSha1());
            queryStringParameters.b("sha1_udid", deviceInfo.getUdidSha1());
            queryStringParameters.a("badMac", "true", deviceInfo.isMacBad());
            queryStringParameters.a("badSerial", "true", deviceInfo.isSerialBad());
            queryStringParameters.a("badUdid", "true", deviceInfo.isUdidBad());
        }
        String a = AdvertisingIdentifier.a();
        queryStringParameters.a("aidts", a, a != null);
        return queryStringParameters;
    }

    public SISDeviceRequest setAdvertisingIdentifierInfo(Info info) {
        this.d = info;
        return this;
    }

    public SISDeviceRequest setCallMetricType(MetricType metricType) {
        this.b = metricType;
        return this;
    }

    public SISDeviceRequest setLogTag(String str) {
        this.a = str;
        return this;
    }

    public SISDeviceRequest setPath(String str) {
        this.c = str;
        return this;
    }
}