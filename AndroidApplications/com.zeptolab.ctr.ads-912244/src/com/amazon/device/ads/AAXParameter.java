package com.amazon.device.ads;

import android.location.Location;
import com.amazon.device.ads.Configuration.ConfigOption;
import com.inmobi.androidsdk.bootstrapper.PkInitilaizer;
import com.millennialmedia.android.MMRequest;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

abstract class AAXParameter {
    static final AAXParameter a;
    static final AAXParameter b;
    static final AAXParameter c;
    static final AAXParameter d;
    static final AAXParameter e;
    static final AAXParameter f;
    static final AAXParameter g;
    static final AAXParameter h;
    static final AAXParameter i;
    static final AAXParameter j;
    static final AAXParameter k;
    static final AAXParameter l;
    static final AAXParameter m;
    static final AAXParameter n;
    static final AAXParameter o;
    static final AAXParameter p;
    static final AAXParameter q;
    static final AAXParameter r;
    static final AAXParameter s;
    static final AAXParameter t;
    static final AAXParameter u;
    static final AAXParameter v;
    static final AAXParameter w;
    static final AAXParameter x;
    private static final String y;
    private final String A;
    private final String z;

    static class StringParameter extends AAXParameter {
        StringParameter(String str, String str2) {
            super(str, str2);
        }

        protected /* synthetic */ Object a(String str) {
            return b(str);
        }

        protected String b(String str) {
            return str;
        }

        protected /* synthetic */ Object d() {
            return f();
        }

        protected String f() {
            return DebugProperties.getDebugPropertyAsString(b(), null);
        }
    }

    static class AdvertisingIdentifierParameter extends StringParameter {
        AdvertisingIdentifierParameter() {
            super("idfa", DebugProperties.DEBUG_IDFA);
        }

        protected /* synthetic */ Object b(ParameterData parameterData) {
            return c(parameterData);
        }

        protected String c(ParameterData parameterData) {
            return parameterData.a.c().c() ? parameterData.a.c().b() : null;
        }
    }

    static class AppKeyParameter extends StringParameter {
        AppKeyParameter() {
            super("appId", DebugProperties.DEBUG_APPID);
        }

        protected /* synthetic */ Object b(ParameterData parameterData) {
            return c(parameterData);
        }

        protected String c(ParameterData parameterData) {
            return InternalAdRegistration.getInstance().getRegistrationInfo().getAppKey();
        }
    }

    static class BooleanParameter extends AAXParameter {
        BooleanParameter(String str, String str2) {
            super(str, str2);
        }

        protected /* synthetic */ Object a(String str) {
            return b(str);
        }

        protected Boolean b(String str) {
            return Boolean.valueOf(Boolean.parseBoolean(str));
        }

        protected /* synthetic */ Object d() {
            return f();
        }

        protected Boolean f() {
            return DebugProperties.getDebugPropertyAsBoolean(b(), null);
        }
    }

    static class JSONObjectParameter extends AAXParameter {
        JSONObjectParameter(String str, String str2) {
            super(str, str2);
        }

        protected /* synthetic */ Object a(String str) {
            return b(str);
        }

        protected JSONObject b(String str) {
            try {
                return new JSONObject(str);
            } catch (JSONException e) {
                Log.e(y, "Unable to parse the following value into a JSONObject: %s", new Object[]{a()});
                return null;
            }
        }

        protected /* synthetic */ Object d() {
            return f();
        }

        protected JSONObject f() {
            return b(DebugProperties.getDebugPropertyAsString(b(), null));
        }
    }

    static class DeviceInfoParameter extends JSONObjectParameter {
        DeviceInfoParameter() {
            super("dinfo", DebugProperties.DEBUG_DINFO);
        }

        protected /* synthetic */ Object b(ParameterData parameterData) {
            return c(parameterData);
        }

        protected JSONObject c(ParameterData parameterData) {
            return InternalAdRegistration.getInstance().getDeviceInfo().a(parameterData.a.b());
        }
    }

    static class LongParameter extends AAXParameter {
        LongParameter(String str, String str2) {
            super(str, str2);
        }

        protected /* synthetic */ Object a(String str) {
            return b(str);
        }

        protected Long b(String str) {
            return Long.valueOf(Long.parseLong(str));
        }

        protected /* synthetic */ Object d() {
            return f();
        }

        protected Long f() {
            return DebugProperties.getDebugPropertyAsLong(b(), null);
        }
    }

    static class FloorPriceParameter extends LongParameter {
        FloorPriceParameter() {
            super("ec", DebugProperties.DEBUG_ECPM);
        }

        protected /* synthetic */ Object b(ParameterData parameterData) {
            return c(parameterData);
        }

        protected Long c(ParameterData parameterData) {
            return parameterData.c.b().a() ? Long.valueOf(parameterData.c.b().getFloorPrice()) : null;
        }
    }

    static class GeoLocationParameter extends StringParameter {
        GeoLocationParameter() {
            super("geoloc", DebugProperties.DEBUG_GEOLOC);
        }

        protected /* synthetic */ Object b(ParameterData parameterData) {
            return c(parameterData);
        }

        protected String c(ParameterData parameterData) {
            if (!Configuration.getInstance().getBoolean(ConfigOption.SEND_GEO) || !parameterData.a.a().isGeoLocationEnabled()) {
                return null;
            }
            Location location = new AdLocation().getLocation();
            return location == null ? null : location.getLatitude() + "," + location.getLongitude();
        }
    }

    static class IntegerParameter extends AAXParameter {
        IntegerParameter(String str, String str2) {
            super(str, str2);
        }

        protected /* synthetic */ Object a(String str) {
            return b(str);
        }

        protected Integer b(String str) {
            return Integer.valueOf(Integer.parseInt(str));
        }

        protected /* synthetic */ Object d() {
            return f();
        }

        protected Integer f() {
            return DebugProperties.getDebugPropertyAsInteger(b(), null);
        }
    }

    static class JSONArrayParameter extends AAXParameter {
        JSONArrayParameter(String str, String str2) {
            super(str, str2);
        }

        protected /* synthetic */ Object a(String str) {
            return b(str);
        }

        protected JSONArray b(String str) {
            try {
                return new JSONArray(str);
            } catch (JSONException e) {
                Log.e(y, "Unable to parse the following value into a JSONArray: %s", new Object[]{a()});
                return null;
            }
        }

        protected /* synthetic */ Object d() {
            return f();
        }

        protected JSONArray f() {
            return b(DebugProperties.getDebugPropertyAsString(b(), null));
        }
    }

    static class MD5UDIDParameter extends StringParameter {
        MD5UDIDParameter() {
            super("md5_udid", DebugProperties.DEBUG_MD5UDID);
        }

        protected /* synthetic */ Object b(ParameterData parameterData) {
            return c(parameterData);
        }

        protected String c(ParameterData parameterData) {
            return parameterData.a.c().c() ? null : InternalAdRegistration.getInstance().getDeviceInfo().getUdidMd5();
        }
    }

    static class MaxSizeParameter extends StringParameter {
        MaxSizeParameter() {
            super("mxsz", DebugProperties.DEBUG_MXSZ);
        }

        protected /* synthetic */ Object b(ParameterData parameterData) {
            return c(parameterData);
        }

        protected String c(ParameterData parameterData) {
            return parameterData.c.a().getMaxSize();
        }
    }

    static class OptOutParameter extends BooleanParameter {
        OptOutParameter() {
            super("oo", DebugProperties.DEBUG_OPT_OUT);
        }

        protected /* synthetic */ Object b(ParameterData parameterData) {
            return c(parameterData);
        }

        protected Boolean c(ParameterData parameterData) {
            return parameterData.a.c().c() ? Boolean.valueOf(parameterData.a.c().d()) : null;
        }
    }

    static class PackageInfoParameter extends JSONObjectParameter {
        PackageInfoParameter() {
            super("pkg", DebugProperties.DEBUG_PKG);
        }

        protected /* synthetic */ Object b(ParameterData parameterData) {
            return c(parameterData);
        }

        protected JSONObject c(ParameterData parameterData) {
            return InternalAdRegistration.getInstance().getAppInfo().getPackageInfoJSON();
        }
    }

    static class ParameterData {
        private AdRequest a;
        private Map b;
        private LOISlot c;

        ParameterData() {
        }

        ParameterData a(LOISlot lOISlot) {
            this.c = lOISlot;
            return this;
        }

        ParameterData a(AdRequest adRequest) {
            this.a = adRequest;
            return this;
        }

        ParameterData a(Map map) {
            this.b = map;
            return this;
        }
    }

    static class SDKVersionParameter extends StringParameter {
        SDKVersionParameter() {
            super("adsdk", DebugProperties.DEBUG_VER);
        }

        protected /* synthetic */ Object b(ParameterData parameterData) {
            return c(parameterData);
        }

        protected String c(ParameterData parameterData) {
            return Version.getSDKVersion();
        }
    }

    static class SHA1UDIDParameter extends StringParameter {
        SHA1UDIDParameter() {
            super("sha1_udid", DebugProperties.DEBUG_SHA1UDID);
        }

        protected /* synthetic */ Object b(ParameterData parameterData) {
            return c(parameterData);
        }

        protected String c(ParameterData parameterData) {
            return parameterData.a.c().c() ? null : InternalAdRegistration.getInstance().getDeviceInfo().getUdidSha1();
        }
    }

    static class SISDeviceIdentifierParameter extends StringParameter {
        SISDeviceIdentifierParameter() {
            super("ad-id", DebugProperties.DEBUG_ADID);
        }

        protected /* synthetic */ Object b(ParameterData parameterData) {
            return c(parameterData);
        }

        protected String c(ParameterData parameterData) {
            return parameterData.a.c().e();
        }
    }

    static class SizeParameter extends StringParameter {
        SizeParameter() {
            super("sz", DebugProperties.DEBUG_SIZE);
        }

        protected /* synthetic */ Object b(ParameterData parameterData) {
            return c(parameterData);
        }

        protected String c(ParameterData parameterData) {
            return parameterData.c.a().a().toString();
        }
    }

    static class SlotIdParameter extends IntegerParameter {
        SlotIdParameter() {
            super("slotId", DebugProperties.DEBUG_SLOT_ID);
        }

        protected /* synthetic */ Object b(ParameterData parameterData) {
            return c(parameterData);
        }

        protected Integer c(ParameterData parameterData) {
            return Integer.valueOf(parameterData.c.a().getSlotId());
        }
    }

    static class SlotParameter extends StringParameter {
        SlotParameter() {
            super("slot", DebugProperties.DEBUG_SLOT);
        }

        protected /* synthetic */ Object b(ParameterData parameterData) {
            return c(parameterData);
        }

        protected String c(ParameterData parameterData) {
            return parameterData.a.b();
        }
    }

    static class TestParameter extends BooleanParameter {
        TestParameter() {
            super("isTest", DebugProperties.DEBUG_TEST);
        }

        protected /* synthetic */ Object b(ParameterData parameterData) {
            return c(parameterData);
        }

        protected Boolean c(ParameterData parameterData) {
            return Settings.getInstance().getBoolean("testingEnabled", null);
        }
    }

    static class UserAgentParameter extends StringParameter {
        UserAgentParameter() {
            super("ua", DebugProperties.DEBUG_UA);
        }

        protected /* synthetic */ Object b(ParameterData parameterData) {
            return c(parameterData);
        }

        protected String c(ParameterData parameterData) {
            return DeviceInfo.getUserAgentString();
        }
    }

    static class UserInfoParameter extends JSONObjectParameter {
        UserInfoParameter() {
            super("uinfo", DebugProperties.DEBUG_UI);
        }

        protected /* synthetic */ Object b(ParameterData parameterData) {
            return c(parameterData);
        }

        protected JSONObject c(ParameterData parameterData) {
            if (!parameterData.a.a().c()) {
                return null;
            }
            int age = parameterData.a.a().getAge();
            JSONObject jSONObject = new JSONObject();
            JSONUtils.b(jSONObject, MMRequest.KEY_AGE, String.valueOf(age));
            return jSONObject;
        }
    }

    static {
        y = AAXParameter.class.getSimpleName();
        a = new AppKeyParameter();
        b = new StringParameter("c", DebugProperties.DEBUG_CHANNEL);
        c = new JSONArrayParameter(PkInitilaizer.PRODUCT_PK, DebugProperties.DEBUG_PK);
        d = new JSONArrayParameter("pa", DebugProperties.DEBUG_PA);
        e = new UserAgentParameter();
        f = new SDKVersionParameter();
        g = new GeoLocationParameter();
        h = new UserInfoParameter();
        i = new DeviceInfoParameter();
        j = new PackageInfoParameter();
        k = new TestParameter();
        l = new SISDeviceIdentifierParameter();
        m = new SHA1UDIDParameter();
        n = new MD5UDIDParameter();
        o = new JSONArrayParameter("slots", DebugProperties.DEBUG_SLOTS);
        p = new AdvertisingIdentifierParameter();
        q = new OptOutParameter();
        r = new SizeParameter();
        s = new StringParameter("pt", DebugProperties.DEBUG_PT);
        t = new SlotParameter();
        u = new StringParameter("sp", DebugProperties.DEBUG_SP);
        v = new MaxSizeParameter();
        w = new SlotIdParameter();
        x = new FloorPriceParameter();
    }

    AAXParameter(String str, String str2) {
        this.z = str;
        this.A = str2;
    }

    Object a(ParameterData parameterData) {
        Object d;
        if (c()) {
            d = d();
        } else if (parameterData.b.containsKey(this.z)) {
            d = a((String) parameterData.b.remove(this.z));
        } else {
            d = b(parameterData);
        }
        return (d instanceof String && Utils.isNullOrWhiteSpace((String) d)) ? null : d;
    }

    protected abstract Object a(String str);

    String a() {
        return this.z;
    }

    protected Object b(ParameterData parameterData) {
        return null;
    }

    protected String b() {
        return this.A;
    }

    protected boolean c() {
        return DebugProperties.containsDebugProperty(this.A);
    }

    protected abstract Object d();
}