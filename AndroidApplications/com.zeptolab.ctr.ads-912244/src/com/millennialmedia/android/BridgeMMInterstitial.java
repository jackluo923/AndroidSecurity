package com.millennialmedia.android;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import com.google.android.gms.plus.PlusShare;
import java.util.Map;

class BridgeMMInterstitial extends MMJSObject {
    private static final String a;
    private static final String d = "close";
    private static final String e = "expandToExternalBrowser";
    private static final String f = "expandWithProperties";
    private static final String g = "open";
    private static final String h = "setOrientation";
    private static final String i = "useCustomClose";

    static {
        a = BridgeMMInterstitial.class.getName();
    }

    BridgeMMInterstitial() {
    }

    private Intent a(String str, OverlaySettings overlaySettings) {
        Intent intent = new Intent();
        if (str != null) {
            intent.setData(Uri.parse(str));
        }
        intent.putExtra("settings", overlaySettings);
        intent.putExtra("internalId", overlaySettings.z);
        return intent;
    }

    private MMJSResponse a(Map map) {
        String str = (String) map.get("allowOrientationChange");
        if (str != null) {
            AdViewOverlayActivity d = d();
            if (d != null) {
                d.a(Boolean.parseBoolean(str));
                return MMJSResponse.a();
            }
        }
        return null;
    }

    private boolean a(MMJSResponse mMJSResponse) {
        if (mMJSResponse.c != 1 || !(mMJSResponse.d instanceof String)) {
            return false;
        }
        String str = (String) mMJSResponse.d;
        return str.contains(DeviceInfo.ORIENTATION_PORTRAIT) || str.contains(DeviceInfo.ORIENTATION_LANDSCAPE);
    }

    private MMJSResponse b(Map map) {
        String str = (String) map.get("forceOrientation");
        AdViewOverlayActivity d = d();
        if (d != null) {
            if ("none".equals(str)) {
                if ("none".equals(str)) {
                    d.a(true);
                    return MMJSResponse.a("none");
                }
            } else if (DeviceInfo.ORIENTATION_PORTRAIT.equals(str)) {
                d.b();
                return MMJSResponse.a(DeviceInfo.ORIENTATION_PORTRAIT);
            } else if (DeviceInfo.ORIENTATION_LANDSCAPE.equals(str)) {
                d.c();
                return MMJSResponse.a(DeviceInfo.ORIENTATION_LANDSCAPE);
            }
        }
        return null;
    }

    MMJSResponse a(String str, Map map) {
        if (d.equals(str)) {
            return close(map);
        }
        if (e.equals(str)) {
            return expandToExternalBrowser(map);
        }
        if (f.equals(str)) {
            return expandWithProperties(map);
        }
        if (g.equals(str)) {
            return open(map);
        }
        if (h.equals(str)) {
            return setOrientation(map);
        }
        return i.equals(str) ? useCustomClose(map) : null;
    }

    public MMJSResponse close(Map map) {
        MMWebView mMWebView = (MMWebView) this.c.get();
        if (mMWebView == null) {
            return null;
        }
        mMWebView.i().b();
        return MMJSResponse.a();
    }

    public MMJSResponse expandToExternalBrowser(Map map) {
        return open(map);
    }

    public MMJSResponse expandWithProperties(Map map) {
        String str = (String) map.get("PROPERTY_BANNER_TYPE");
        if (str != null && !Boolean.parseBoolean(str)) {
            return MMJSResponse.b("Cannot expand a non banner ad");
        }
        str = (String) map.get(PlusShare.KEY_CALL_TO_ACTION_URL);
        String str2 = (String) map.get("transparent");
        String str3 = (String) map.get(i);
        String str4 = (String) map.get("transition");
        String str5 = (String) map.get("orientation");
        String str6 = (String) map.get("transitionDuration");
        String str7 = (String) map.get(MMLayout.KEY_HEIGHT);
        String str8 = (String) map.get(MMLayout.KEY_WIDTH);
        String str9 = (String) map.get("modal");
        String str10 = (String) map.get("PROPERTY_EXPANDING");
        String str11 = (String) map.get("allowOrientationChange");
        Context context = (Context) this.b.get();
        if (context == null) {
            return null;
        }
        OverlaySettings overlaySettings = new OverlaySettings();
        if (str != null) {
            overlaySettings.p = str;
        }
        if (str10 != null) {
            overlaySettings.z = (long) ((int) Float.parseFloat(str10));
        }
        if (str2 != null) {
            overlaySettings.b(Boolean.parseBoolean(str2));
        }
        if (str3 != null) {
            overlaySettings.a(Boolean.parseBoolean(str3));
        }
        if (str4 != null) {
            overlaySettings.b(str4);
        }
        if (str11 != null) {
            overlaySettings.t = Boolean.parseBoolean(str11);
        }
        if (str5 == null) {
            str2 = (String) map.get("forceOrientation");
        } else {
            str2 = str5;
        }
        if (str2 != null) {
            overlaySettings.o = str2;
        }
        if (str7 != null) {
            overlaySettings.q = (int) Float.parseFloat(str7);
        }
        if (str8 != null) {
            overlaySettings.r = (int) Float.parseFloat(str8);
        }
        if (str9 != null) {
            overlaySettings.s = Boolean.parseBoolean(str9);
        }
        if (str6 != null) {
            try {
                overlaySettings.a(Long.parseLong(str6) * 1000);
            } catch (Exception e) {
                MMLog.e(a, "Problem converting transitionDuration", e);
            }
        }
        IntentUtils.a(context, a(str, overlaySettings));
        Event.a(context, b((String) map.get("PROPERTY_EXPANDING")));
        return MMJSResponse.a();
    }

    public MMJSResponse open(Map map) {
        String str = (String) map.get(PlusShare.KEY_CALL_TO_ACTION_URL);
        Context context = (Context) this.b.get();
        if (str == null || context == null) {
            return null;
        }
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
        Event.a(context, Event.INTENT_EXTERNAL_BROWSER, b((String) map.get("PROPERTY_EXPANDING")));
        IntentUtils.c(context, intent);
        return MMJSResponse.a();
    }

    public MMJSResponse setOrientation(Map map) {
        MMJSResponse b = b(map);
        return (b == null || !a(b)) ? a(map) : b;
    }

    public MMJSResponse useCustomClose(Map map) {
        MMWebView mMWebView = (MMWebView) this.c.get();
        String str = (String) map.get(i);
        if (!(str == null || mMWebView == null)) {
            AdViewOverlayView k = mMWebView.k();
            if (k != null) {
                k.a(Boolean.parseBoolean(str));
                return MMJSResponse.a();
            }
        }
        return null;
    }
}