package com.millennialmedia.android;

import android.content.Context;
import android.text.TextUtils;
import java.util.Map;

class BridgeMMBanner extends MMJSObject {
    static final String a = "resize";

    BridgeMMBanner() {
    }

    int a(Context context) {
        return Integer.parseInt(MMSDK.p(context));
    }

    MMJSResponse a(String str, Map map) {
        return a.equals(str) ? resize(map) : null;
    }

    int b(Context context) {
        return Integer.parseInt(MMSDK.o(context));
    }

    public MMJSResponse resize(Map map) {
        int i = 0;
        MMWebView mMWebView = (MMWebView) this.c.get();
        if (mMWebView == null) {
            return null;
        }
        if (mMWebView.x()) {
            return MMJSResponse.b("State is currently resized");
        }
        int parseFloat;
        int parseFloat2;
        int parseFloat3;
        String str = (String) map.get(MMLayout.KEY_WIDTH);
        String str2 = (String) map.get(MMLayout.KEY_HEIGHT);
        parseFloat = TextUtils.isEmpty(str) ? 0 : (int) Float.parseFloat(str);
        parseFloat2 = TextUtils.isEmpty(str2) ? 0 : (int) Float.parseFloat(str2);
        String str3 = (String) map.get("customClosePosition");
        str = (String) map.get("offsetX");
        str2 = (String) map.get("offsetY");
        parseFloat3 = TextUtils.isEmpty(str2) ? 0 : (int) Float.parseFloat(str2);
        if (!TextUtils.isEmpty(str)) {
            i = (int) Float.parseFloat(str);
        }
        boolean parseBoolean = Boolean.parseBoolean((String) map.get("allowOffscreen"));
        Context context = mMWebView.getContext();
        mMWebView.a(new DTOResizeParameters(context.getResources().getDisplayMetrics().density, parseFloat, parseFloat2, str3, i, parseFloat3, parseBoolean, b(context), a(context)));
        return MMJSResponse.a();
    }
}