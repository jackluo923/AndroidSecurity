package com.heyzap.house.model;

import com.heyzap.http.JsonHttpResponseHandler;
import com.heyzap.internal.Logger;
import org.apache.http.Header;
import org.json.JSONException;
import org.json.JSONObject;

class f extends JsonHttpResponseHandler {
    final /* synthetic */ VideoModel a;

    f(VideoModel videoModel) {
        this.a = videoModel;
    }

    public void onSuccess(int i, Header[] headerArr, JSONObject jSONObject) {
        try {
            if (jSONObject.getInt("status") == 200) {
                Logger.format("(COMPLETE) %s", new Object[]{this.a});
                this.a.sentVideoComplete = Boolean.valueOf(true);
            }
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }
}