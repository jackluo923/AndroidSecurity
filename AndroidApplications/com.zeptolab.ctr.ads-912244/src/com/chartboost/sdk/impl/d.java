package com.chartboost.sdk.impl;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils.TruncateAt;
import android.view.ViewGroup.LayoutParams;
import android.widget.ImageView.ScaleType;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.admarvel.android.nativeads.AdMarvelNativeAd;
import com.brightcove.player.event.Event;
import com.brightcove.player.model.Video.Fields;
import com.chartboost.sdk.Libraries.CBUtility;
import com.chartboost.sdk.impl.g.b;
import com.google.android.gms.plus.PlusShare;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.millennialmedia.android.MMException;
import com.zeptolab.ctr.scorer.GoogleScorer;
import org.json.JSONObject;

public class d extends b implements b {
    private static int c;
    private static int d;
    public e b;
    private f e;
    private TextView f;

    static {
        c = 50;
        d = 10;
    }

    public d(Context context) {
        super(context);
        this.e = new f(context);
        this.b = new e(context);
        this.f = new TextView(context);
        this.f.setTypeface(null, 1);
        this.f.setTextSize(GoogleScorer.CLIENT_PLUS, 16.0f);
        this.f.setShadowLayer(1.0f, 1.0f, 1.0f, -1);
        this.f.setBackgroundColor(0);
        this.f.setTextColor(-16777216);
        this.f.setEllipsize(TruncateAt.END);
        setBackgroundColor(-3355444);
        setFocusable(false);
        addView(this.e);
        addView(this.f);
        addView(this.b);
    }

    public int a() {
        return CBUtility.a(c + d * 2, getContext());
    }

    public void a(JSONObject jSONObject, int i) {
        this.f.setText(jSONObject.optString(Fields.NAME, "Unknown App"));
        CharSequence optString = jSONObject.optString("deep-text");
        if (optString == null || optString.equals(AdTrackerConstants.BLANK)) {
            this.b.setText(jSONObject.optString("text", "VIEW"));
        } else {
            this.b.setText(optString);
        }
        JSONObject optJSONObject = jSONObject.optJSONObject("assets");
        if (optJSONObject != null) {
            JSONObject optJSONObject2 = optJSONObject.optJSONObject(AdMarvelNativeAd.FIELD_ICON);
            if (optJSONObject2 != null) {
                Bundle bundle = new Bundle();
                bundle.putInt(Event.INDEX, i);
                n.a().a(optJSONObject2.optString(PlusShare.KEY_CALL_TO_ACTION_URL), optJSONObject2.optString("checksum"), null, this.e, bundle);
            }
        }
        b();
    }

    protected void b() {
        int a = CBUtility.a(c, getContext());
        LayoutParams layoutParams = new LinearLayout.LayoutParams(a, a);
        LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -1);
        LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-2, -2);
        int a2 = CBUtility.a(d, getContext());
        layoutParams.setMargins(a2, a2, a2, a2);
        layoutParams2.setMargins(a2, a2, a2, a2);
        layoutParams3.setMargins(a2, a2, a2, a2);
        layoutParams2.weight = 1.0f;
        this.f.setGravity(MMException.REQUEST_NOT_PERMITTED);
        layoutParams3.gravity = 16;
        this.e.setLayoutParams(layoutParams);
        this.e.setScaleType(ScaleType.FIT_CENTER);
        this.f.setLayoutParams(layoutParams2);
        this.b.setLayoutParams(layoutParams3);
    }
}