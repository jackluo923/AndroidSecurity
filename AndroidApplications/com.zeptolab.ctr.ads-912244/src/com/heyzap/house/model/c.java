package com.heyzap.house.model;

import com.heyzap.http.JsonHttpResponseHandler;
import com.heyzap.internal.Logger;
import java.util.Iterator;
import java.util.List;
import org.apache.http.Header;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

final class c extends JsonHttpResponseHandler {
    final /* synthetic */ List a;

    c(List list) {
        this.a = list;
    }

    public void a(Throwable th) {
    }

    public void onFailure(int i, Header[] headerArr, Throwable th, JSONArray jSONArray) {
    }

    public void onFailure(int i, Header[] headerArr, Throwable th, JSONObject jSONObject) {
    }

    public void onSuccess(int i, Header[] headerArr, JSONArray jSONArray) {
    }

    public void onSuccess(int i, Header[] headerArr, JSONObject jSONObject) {
        try {
            Iterator it;
            AdModel adModel;
            if (jSONObject.getInt("status") == 200) {
                it = this.a.iterator();
                while (it.hasNext()) {
                    adModel = (AdModel) it.next();
                    if (!adModel.sentImpression.booleanValue()) {
                        Logger.format("(IMPRESSION) %s", new Object[]{adModel});
                        adModel.setSentImpression(Boolean.valueOf(true));
                    }
                }
            } else {
                it = this.a.iterator();
                while (it.hasNext()) {
                    adModel = (AdModel) it.next();
                    Logger.log(new Object[]{"(IMPRESSION ERROR) Bad Response: %s", adModel});
                }
            }
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }
}