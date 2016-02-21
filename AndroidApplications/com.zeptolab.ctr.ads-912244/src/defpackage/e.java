package defpackage;

import com.loopj.android.http.JsonHttpResponseHandler;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

class e extends JsonHttpResponseHandler {
    final /* synthetic */ d a;

    e(d dVar) {
        this.a = dVar;
    }

    public void onSuccess(JSONArray jSONArray) {
        try {
            System.out.println(((JSONObject) jSONArray.get(0)).getString("text"));
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }
}