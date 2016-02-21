package com.heyzap.house.handler;

import com.heyzap.http.JsonHttpResponseHandler;
import com.heyzap.internal.Logger;
import org.apache.http.Header;
import org.json.JSONObject;

class b extends JsonHttpResponseHandler {
    final /* synthetic */ String a;
    final /* synthetic */ AttributionHandler b;

    b(AttributionHandler attributionHandler, String str) {
        this.b = attributionHandler;
        this.a = str;
    }

    public void onSuccess(int i, Header[] headerArr, JSONObject jSONObject) {
        try {
            if (jSONObject.getInt("status") == 200) {
                Logger.log("(SELF INSTALL) Package: " + this.a);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}