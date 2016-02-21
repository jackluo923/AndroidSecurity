package com.facebook.ads.internal;

import android.content.Intent;
import android.os.Bundle;
import java.util.Collection;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class HtmlAdDataModel implements AdDataModel {
    private static final String ACTIVATION_COMMAND_KEY = "activation_command";
    private static final String DETECTION_STRINGS_KEY = "detection_strings";
    private static final String INVALIDATION_BEHAVIOR_KEY = "invalidation_behavior";
    private static final String MARKUP_KEY = "markup";
    private final String activationCommand;
    private final Collection detectionStrings;
    private final AdInvalidationBehavior invalidationBehavior;
    private final String markup;

    private HtmlAdDataModel(String str, String str2, AdInvalidationBehavior adInvalidationBehavior, Collection collection) {
        this.markup = str;
        this.activationCommand = str2;
        this.invalidationBehavior = adInvalidationBehavior;
        this.detectionStrings = collection;
    }

    public static HtmlAdDataModel fromBundle(Bundle bundle) {
        return new HtmlAdDataModel(bundle.getString(MARKUP_KEY), bundle.getString(ACTIVATION_COMMAND_KEY), AdInvalidationBehavior.NONE, null);
    }

    public static HtmlAdDataModel fromIntentExtra(Intent intent) {
        return new HtmlAdDataModel(intent.getStringExtra(MARKUP_KEY), intent.getStringExtra(ACTIVATION_COMMAND_KEY), AdInvalidationBehavior.NONE, null);
    }

    public static HtmlAdDataModel fromJSONObject(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        JSONArray jSONArray;
        String optString = jSONObject.optString(MARKUP_KEY);
        String optString2 = jSONObject.optString(ACTIVATION_COMMAND_KEY);
        AdInvalidationBehavior fromString = AdInvalidationBehavior.fromString(jSONObject.optString(INVALIDATION_BEHAVIOR_KEY));
        try {
            jSONArray = new JSONArray(jSONObject.optString(DETECTION_STRINGS_KEY));
        } catch (JSONException e) {
            e.printStackTrace();
            jSONArray = null;
        }
        return new HtmlAdDataModel(optString, optString2, fromString, AdInvalidationUtils.parseDetectionStrings(jSONArray));
    }

    public void addToIntentExtra(Intent intent) {
        intent.putExtra(MARKUP_KEY, this.markup);
        intent.putExtra(ACTIVATION_COMMAND_KEY, this.activationCommand);
    }

    public String getActivationCommand() {
        return this.activationCommand;
    }

    public Collection getDetectionStrings() {
        return this.detectionStrings;
    }

    public AdInvalidationBehavior getInvalidationBehavior() {
        return this.invalidationBehavior;
    }

    public String getMarkup() {
        return this.markup;
    }

    public String getSendImpressionCommand() {
        return "facebookAd.sendImpression();";
    }

    public Bundle saveToBundle() {
        Bundle bundle = new Bundle();
        bundle.putString(MARKUP_KEY, this.markup);
        return bundle;
    }
}