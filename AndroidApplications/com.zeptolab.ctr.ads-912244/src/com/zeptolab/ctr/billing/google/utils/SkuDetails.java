package com.zeptolab.ctr.billing.google.utils;

import com.google.android.gms.plus.PlusShare;
import com.inmobi.commons.analytics.db.AnalyticsSQLiteHelper;
import org.json.JSONObject;

public class SkuDetails {
    String mDescription;
    String mItemType;
    String mJson;
    String mPrice;
    String mSku;
    String mTitle;
    String mType;

    public SkuDetails(String str) {
        this(IabHelper.ITEM_TYPE_INAPP, str);
    }

    public SkuDetails(String str, String str2) {
        this.mItemType = str;
        this.mJson = str2;
        JSONObject jSONObject = new JSONObject(this.mJson);
        this.mSku = jSONObject.optString(AnalyticsSQLiteHelper.TRANSACTION_PRODUCT_ID);
        this.mType = jSONObject.optString(AnalyticsSQLiteHelper.EVENT_LIST_TYPE);
        this.mPrice = jSONObject.optString("price");
        this.mTitle = jSONObject.optString(PlusShare.KEY_CONTENT_DEEP_LINK_METADATA_TITLE);
        this.mDescription = jSONObject.optString(PlusShare.KEY_CONTENT_DEEP_LINK_METADATA_DESCRIPTION);
    }

    public String getDescription() {
        return this.mDescription;
    }

    public String getPrice() {
        return this.mPrice;
    }

    public String getSku() {
        return this.mSku;
    }

    public String getTitle() {
        return this.mTitle;
    }

    public String getType() {
        return this.mType;
    }

    public String toString() {
        return "SkuDetails:" + this.mJson;
    }
}