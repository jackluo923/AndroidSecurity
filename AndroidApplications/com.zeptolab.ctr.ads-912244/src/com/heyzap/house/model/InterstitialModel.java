package com.heyzap.house.model;

import android.content.Context;
import com.heyzap.house.model.AdModel.HtmlAssetFetcher;
import com.heyzap.house.model.AdModel.ModelPostFetchCompleteListener;
import org.json.JSONObject;

public class InterstitialModel extends AdModel {
    public static String FORMAT;
    private Integer backgroundOverlay;
    private Boolean disableGlobalTouch;
    private int height;
    private Boolean manualSize;
    private int width;

    static {
        FORMAT = "interstitial";
    }

    public InterstitialModel(JSONObject jSONObject) {
        boolean z;
        super(jSONObject);
        this.creativeType = FORMAT;
        setHtmlData(jSONObject.getString("ad_html"));
        this.height = jSONObject.optInt("ad_height");
        this.width = jSONObject.optInt("ad_width");
        if (this.height == 0 && jSONObject.optString("ad_height").equals("fill_parent")) {
            this.height = -1;
        }
        if (this.width == 0 && jSONObject.optString("ad_width").equals("fill_parent")) {
            this.width = -1;
        }
        z = this.height != 0 && this.width != 0;
        this.manualSize = Boolean.valueOf(z);
        String optString = jSONObject.optString("required_orientation", DeviceInfo.ORIENTATION_PORTRAIT);
        if (Boolean.valueOf(jSONObject.optBoolean("hide_on_orientation_change", true)).booleanValue()) {
            if (optString.equals(DeviceInfo.ORIENTATION_LANDSCAPE)) {
                this.requiredOrientation = 2;
            } else if (optString.equals(DeviceInfo.ORIENTATION_PORTRAIT)) {
                this.requiredOrientation = 1;
            } else {
                this.requiredOrientation = 0;
            }
        }
        this.disableGlobalTouch = Boolean.valueOf(jSONObject.optBoolean("disable_global_touch", false));
        this.backgroundOverlay = Integer.valueOf(jSONObject.optInt("background_overlay", -1));
    }

    public void cleanup(Context context) {
    }

    public void doPostFetchActions(Context context, ModelPostFetchCompleteListener modelPostFetchCompleteListener) {
        HtmlAssetFetcher.fetch(this, new e(this, modelPostFetchCompleteListener));
    }

    public Integer getBackgroundOverlayColor() {
        return this.backgroundOverlay.intValue() == -1 ? Integer.valueOf(0) : this.backgroundOverlay;
    }

    public int getHeight() {
        return this.height;
    }

    public int getWidth() {
        return this.width;
    }
}