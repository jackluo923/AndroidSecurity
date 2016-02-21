package com.chartboost.sdk.impl;

import android.content.Context;
import android.os.Bundle;
import android.widget.LinearLayout.LayoutParams;
import com.brightcove.player.event.Event;
import com.chartboost.sdk.CBPreferences;
import com.chartboost.sdk.Libraries.CBUtility;
import com.chartboost.sdk.impl.g.b;
import com.google.android.gms.plus.PlusShare;
import org.json.JSONObject;

public class c extends b implements b {
    private static int b;
    private static int c;
    private f d;

    static {
        b = 100;
        c = 5;
    }

    public c(Context context) {
        super(context);
        this.d = new f(context);
        addView(this.d, new LayoutParams(-1, -1));
    }

    public int a() {
        return CBUtility.a(b + c * 2, getContext());
    }

    public void a(JSONObject jSONObject, int i) {
        boolean isPortrait = CBPreferences.getInstance().getOrientation().isPortrait();
        JSONObject optJSONObject = jSONObject.optJSONObject("assets");
        if (optJSONObject != null) {
            JSONObject optJSONObject2 = optJSONObject.optJSONObject(isPortrait ? DeviceInfo.ORIENTATION_PORTRAIT : DeviceInfo.ORIENTATION_LANDSCAPE);
            if (optJSONObject2 != null) {
                Bundle bundle = new Bundle();
                bundle.putInt(Event.INDEX, i);
                n.a().a(optJSONObject2.optString(PlusShare.KEY_CALL_TO_ACTION_URL), optJSONObject2.optString("checksum"), null, this.d, bundle);
            }
        }
    }
}