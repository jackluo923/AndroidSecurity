package com.heyzap.house.model;

import com.heyzap.http.JsonHttpResponseHandler;
import com.heyzap.internal.Logger;
import org.apache.http.Header;
import org.json.JSONException;
import org.json.JSONObject;

class b extends JsonHttpResponseHandler {
    final /* synthetic */ AdModel a;

    b(AdModel adModel) {
        this.a = adModel;
    }

    public void onSuccess(int i, Header[] headerArr, JSONObject jSONObject) {
        try {
            if (jSONObject.getInt("status") == 200) {
                Logger.format("(IMPRESSION) %s", new Object[]{this.a});
                AdModel.access$102(this.a, Boolean.valueOf(true));
            }
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }
}