package com.facebook.ads.internal;

import android.content.Context;
import android.net.Uri;
import android.util.Log;
import com.admarvel.android.ads.Constants;
import com.admarvel.android.nativeads.AdMarvelNativeAd;
import com.facebook.ads.NativeAd.Image;
import com.facebook.ads.NativeAd.Rating;
import com.facebook.ads.internal.action.AdAction;
import com.facebook.ads.internal.action.AdActionFactory;
import com.google.android.gms.plus.PlusShare;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class NativeAdDataModel implements AdDataModel {
    private static final String TAG;
    private final Uri adCommand;
    private final String body;
    private final String callToAction;
    private boolean clickLogged;
    private final String clickReportUrl;
    private final Collection detectionStrings;
    private final Image icon;
    private final Image image;
    private boolean impressionLogged;
    private final String impressionReportUrl;
    private final AdInvalidationBehavior invalidationBehavior;
    private final String socialContext;
    private final Rating starRating;
    private final String title;

    static {
        TAG = NativeAdDataModel.class.getSimpleName();
    }

    private NativeAdDataModel(Uri uri, String str, String str2, String str3, String str4, Image image, Image image2, Rating rating, String str5, String str6, AdInvalidationBehavior adInvalidationBehavior, Collection collection) {
        this.adCommand = uri;
        this.title = str;
        this.body = str2;
        this.callToAction = str3;
        this.socialContext = str4;
        this.icon = image;
        this.image = image2;
        this.starRating = rating;
        this.impressionReportUrl = str5;
        this.clickReportUrl = str6;
        this.invalidationBehavior = adInvalidationBehavior;
        this.detectionStrings = collection;
    }

    public static NativeAdDataModel fromJSONObject(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        JSONArray jSONArray;
        Uri parse = Uri.parse(jSONObject.optString("fbad_command"));
        String optString = jSONObject.optString(PlusShare.KEY_CONTENT_DEEP_LINK_METADATA_TITLE);
        String optString2 = jSONObject.optString("body");
        String optString3 = jSONObject.optString("call_to_action");
        String optString4 = jSONObject.optString("social_context");
        Image fromJSONObject = Image.fromJSONObject(jSONObject.optJSONObject(AdMarvelNativeAd.FIELD_ICON));
        Image fromJSONObject2 = Image.fromJSONObject(jSONObject.optJSONObject(Constants.NATIVE_AD_IMAGE_ELEMENT));
        Rating fromJSONObject3 = Rating.fromJSONObject(jSONObject.optJSONObject("star_rating"));
        String optString5 = jSONObject.optString("impression_report_url");
        String optString6 = jSONObject.optString("click_report_url");
        AdInvalidationBehavior fromString = AdInvalidationBehavior.fromString(jSONObject.optString("invalidation_behavior"));
        try {
            jSONArray = new JSONArray(jSONObject.optString("detection_strings"));
        } catch (JSONException e) {
            e.printStackTrace();
            jSONArray = null;
        }
        return new NativeAdDataModel(parse, optString, optString2, optString3, optString4, fromJSONObject, fromJSONObject2, fromJSONObject3, optString5, optString6, fromString, AdInvalidationUtils.parseDetectionStrings(jSONArray));
    }

    public String getBody() {
        return this.body;
    }

    public String getCallToAction() {
        return this.callToAction;
    }

    public Collection getDetectionStrings() {
        return this.detectionStrings;
    }

    public Image getIcon() {
        return this.icon;
    }

    public Image getImage() {
        return this.image;
    }

    public AdInvalidationBehavior getInvalidationBehavior() {
        return this.invalidationBehavior;
    }

    public String getSocialContext() {
        return this.socialContext;
    }

    public Rating getStarRating() {
        return this.starRating;
    }

    public String getTitle() {
        return this.title;
    }

    public void handleClick(Context context, Map map) {
        if (!this.clickLogged) {
            Map hashMap = new HashMap();
            hashMap.put("touch", AdUtilities.jsonEncode(map));
            new OpenUrlTask(hashMap).execute(new String[]{this.clickReportUrl});
            this.clickLogged = true;
        }
        AdAction adAction = AdActionFactory.getAdAction(context, this.adCommand);
        if (adAction != null) {
            try {
                adAction.execute();
            } catch (Exception e) {
                Log.e(TAG, "Error executing action", e);
            }
        }
    }

    public boolean isValid() {
        return this.title != null && this.title.length() > 0 && this.callToAction != null && this.callToAction.length() > 0 && this.icon != null && this.image != null;
    }

    public void logImpression() {
        if (!this.impressionLogged) {
            new OpenUrlTask().execute(new String[]{this.impressionReportUrl});
            this.impressionLogged = true;
        }
    }
}