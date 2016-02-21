package com.heyzap.house.model;

import com.heyzap.http.JsonHttpResponseHandler;
import com.heyzap.internal.Logger;
import org.apache.http.Header;
import org.json.JSONException;
import org.json.JSONObject;

class a extends JsonHttpResponseHandler {
    final /* synthetic */ AdModel a;

    a(AdModel adModel) {
        this.a = adModel;
    }

    public void onSuccess(int i, Header[] headerArr, JSONObject jSONObject) {
        try {
            if (jSONObject.getInt("status") == 200) {
                Logger.format("(CLICK) %s", new Object[]{this.a});
                AdModel.access$002(this.a, Boolean.valueOf(true));
            }
        } catch (JSONException e) {
        }
    }
}