package com.inmobi.commons.uid;

import android.content.Context;
import com.inmobi.commons.IMIDType;
import com.inmobi.commons.analytics.bootstrapper.AnalyticsInitializer;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.inmobi.commons.data.UserInfo;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public class UID {
    public static final boolean FBA_DEF = false;
    public static final boolean GPID_DEF = true;
    public static final String KEY_FACEBOOK_ID = "FBA";
    public static final String KEY_GPID = "GPID";
    public static final String KEY_LOGIN_ID = "LID";
    public static final String KEY_LTVID = "LTVID";
    public static final String KEY_ODIN1 = "O1";
    public static final String KEY_SESSION_ID = "SID";
    public static final String KEY_UM5_ID = "UM5";
    public static final boolean LID_DEF = true;
    public static final boolean LTVE_DEF = true;
    public static final boolean O1_DEF = true;
    public static final boolean SID_DEF = true;
    public static final boolean UM5_DEF = true;
    private static UID a;
    private boolean b;
    private boolean c;
    private boolean d;
    private boolean e;
    private boolean f;
    private boolean g;
    private boolean h;
    private String i;

    static {
        a = new UID();
    }

    public UID() {
        this.b = true;
        this.c = true;
        this.d = true;
        this.e = false;
        this.f = true;
        this.g = true;
        this.h = true;
        this.i = null;
    }

    public UID(Context context) {
        this.b = true;
        this.c = true;
        this.d = true;
        this.e = false;
        this.f = true;
        this.g = true;
        this.h = true;
        this.i = null;
        InternalSDKUtil.setContext(context);
    }

    public UID(Context context, Map map) {
        this(context);
        setFromMap(map);
    }

    public UID(Map map) {
        this.b = true;
        this.c = true;
        this.d = true;
        this.e = false;
        this.f = true;
        this.g = true;
        this.h = true;
        this.i = null;
        setFromMap(map);
    }

    private Map a(int i, String str) {
        String fBId;
        int deviceIDMask = UserInfo.getInstance().getDeviceIDMask();
        Context context = InternalSDKUtil.getContext();
        Map hashMap = new HashMap();
        if (this.i == null) {
            this.i = UIDHelper.getPlatformId();
        }
        if (deviceIDMask <= 0) {
            if (this.b && a.b && InternalSDKUtil.isPlatformIdEnabled()) {
                hashMap.put(KEY_ODIN1, UIDHelper.getODIN1(this.i));
            }
            if (this.e && a.e) {
                fBId = UIDHelper.getFBId(context);
                if (fBId != null) {
                    hashMap.put(KEY_FACEBOOK_ID, fBId);
                }
            }
            if (this.f && a.f && InternalSDKUtil.isPlatformIdEnabled()) {
                hashMap.put(KEY_UM5_ID, UIDHelper.getUM5(this.i));
            }
        } else {
            if ((deviceIDMask & 2) != 2 && this.b && a.b && InternalSDKUtil.isPlatformIdEnabled()) {
                hashMap.put(KEY_ODIN1, UIDHelper.getODIN1(this.i));
            }
            if ((deviceIDMask & 4) != 4 && this.e && a.e) {
                String fBId2 = UIDHelper.getFBId(context);
                if (fBId2 != null) {
                    hashMap.put(KEY_FACEBOOK_ID, fBId2);
                }
            }
            if ((deviceIDMask & 8) != 8 && this.f && a.f && InternalSDKUtil.isPlatformIdEnabled()) {
                hashMap.put(KEY_UM5_ID, UIDHelper.getUM5(this.i));
            }
        }
        if (this.d && a.d) {
            fBId = UserInfo.getInstance().getIDType(IMIDType.ID_LOGIN);
            if (fBId != null) {
                hashMap.put(KEY_LOGIN_ID, fBId);
            }
        }
        if (this.c && a.c) {
            fBId = UserInfo.getInstance().getIDType(IMIDType.ID_SESSION);
            if (fBId != null) {
                hashMap.put(KEY_SESSION_ID, fBId);
            }
        }
        if (this.g && a.g) {
            Long lTVId = AnalyticsInitializer.getRawConfigParams().getLTVId();
            if (lTVId != null) {
                hashMap.put(KEY_LTVID, lTVId + AdTrackerConstants.BLANK);
            }
        }
        if (this.h && a.h) {
            AdvertisingId advertisingId = UIDHelper.getAdvertisingId();
            if (advertisingId != null) {
                fBId = advertisingId.getAdId();
                if (fBId != null) {
                    hashMap.put(KEY_GPID, fBId);
                }
            }
        }
        return hashMap;
    }

    private Map b(int i, String str) {
        String fBId;
        int deviceIDMask = UserInfo.getInstance().getDeviceIDMask();
        Context context = InternalSDKUtil.getContext();
        Map hashMap = new HashMap();
        if (this.i == null) {
            this.i = UIDHelper.getPlatformId();
        }
        if (deviceIDMask <= 0) {
            if (this.b && a.b && InternalSDKUtil.isPlatformIdEnabled()) {
                hashMap.put(KEY_ODIN1, UIDHelper.a(UIDHelper.getODIN1(this.i), str));
            }
            if (this.e && a.e) {
                fBId = UIDHelper.getFBId(context);
                if (fBId != null) {
                    hashMap.put(KEY_FACEBOOK_ID, UIDHelper.a(fBId, str));
                }
            }
            if (this.f && a.f && InternalSDKUtil.isPlatformIdEnabled()) {
                hashMap.put(KEY_UM5_ID, UIDHelper.a(UIDHelper.getUM5(this.i), str));
            }
        } else {
            if ((deviceIDMask & 2) != 2 && this.b && a.b && InternalSDKUtil.isPlatformIdEnabled()) {
                hashMap.put(KEY_ODIN1, UIDHelper.a(UIDHelper.getODIN1(this.i), str));
            }
            if ((deviceIDMask & 4) != 4 && this.e && a.e) {
                String fBId2 = UIDHelper.getFBId(context);
                if (fBId2 != null) {
                    hashMap.put(KEY_FACEBOOK_ID, UIDHelper.a(fBId2, str));
                }
            }
            if ((deviceIDMask & 8) != 8 && this.f && a.f && InternalSDKUtil.isPlatformIdEnabled()) {
                hashMap.put(KEY_UM5_ID, UIDHelper.a(UIDHelper.getUM5(this.i), str));
            }
        }
        if (this.d && a.d) {
            fBId = UserInfo.getInstance().getIDType(IMIDType.ID_LOGIN);
            if (fBId != null) {
                hashMap.put(KEY_LOGIN_ID, UIDHelper.a(fBId, str));
            }
        }
        if (this.c && a.c) {
            fBId = UserInfo.getInstance().getIDType(IMIDType.ID_SESSION);
            if (fBId != null) {
                hashMap.put(KEY_SESSION_ID, UIDHelper.a(fBId, str));
            }
        }
        if (this.g && a.g) {
            Long lTVId = AnalyticsInitializer.getRawConfigParams().getLTVId();
            if (lTVId != null) {
                hashMap.put(KEY_LTVID, UIDHelper.a(lTVId + AdTrackerConstants.BLANK, str));
            }
        }
        if (this.h && a.h) {
            AdvertisingId advertisingId = UIDHelper.getAdvertisingId();
            if (advertisingId != null) {
                fBId = advertisingId.getAdId();
                if (fBId != null) {
                    hashMap.put(KEY_GPID, UIDHelper.a(fBId + AdTrackerConstants.BLANK, str));
                }
            }
        }
        return hashMap;
    }

    public static UID getCommonsUid() {
        return a;
    }

    public String getDefaultUidMap(int i, String str, Map map) {
        Map b = b(i, str);
        if (map != null) {
            Iterator it = map.keySet().iterator();
            while (it.hasNext()) {
                String str2 = (String) it.next();
                String str3 = (String) map.get(str2);
                if (str3 != null) {
                    b.put(str2, UIDHelper.a(str3, str));
                }
            }
        }
        return UIDUtil.getEncryptedJSON(b);
    }

    public String getDefaultUidMapWithoutXor(int i, String str, Map map) {
        Map a = a(i, str);
        if (map != null) {
            Iterator it = map.keySet().iterator();
            while (it.hasNext()) {
                String str2 = (String) it.next();
                String str3 = (String) map.get(str2);
                if (str3 != null) {
                    a.put(str2, str3);
                }
            }
        }
        return UIDUtil.getJSON(a);
    }

    public String getUidMap(int i, String str, Map map) {
        try {
            InternalSDKUtil.initialize(InternalSDKUtil.getContext());
        } catch (Exception e) {
            Log.internal(InternalSDKUtil.PRODUCT_COMMONS, "Unable to initialize commons.");
        }
        return getDefaultUidMap(i, str, map);
    }

    public String getUidMapWitoutXOR(int i, String str, Map map) {
        try {
            InternalSDKUtil.initialize(InternalSDKUtil.getContext());
        } catch (Exception e) {
            Log.internal(InternalSDKUtil.PRODUCT_COMMONS, "Unable to initialize commons.");
        }
        return getDefaultUidMapWithoutXor(i, str, map);
    }

    public boolean isFba() {
        return this.e;
    }

    public boolean isGPId() {
        return this.h;
    }

    public boolean isLid() {
        return this.d;
    }

    public boolean isLtve() {
        return this.g;
    }

    public boolean isO1() {
        return this.b;
    }

    public boolean isSid() {
        return this.c;
    }

    public boolean isUm5() {
        return this.f;
    }

    public final void setFromMap(Map map) {
        this.b = InternalSDKUtil.getBooleanFromMap(map, KEY_ODIN1);
        this.c = InternalSDKUtil.getBooleanFromMap(map, KEY_SESSION_ID);
        this.d = InternalSDKUtil.getBooleanFromMap(map, KEY_LOGIN_ID);
        this.e = InternalSDKUtil.getBooleanFromMap(map, KEY_FACEBOOK_ID);
        this.f = InternalSDKUtil.getBooleanFromMap(map, KEY_UM5_ID);
        this.g = InternalSDKUtil.getBooleanFromMap(map, KEY_LTVID);
        this.h = InternalSDKUtil.getBooleanFromMap(map, KEY_GPID);
    }
}