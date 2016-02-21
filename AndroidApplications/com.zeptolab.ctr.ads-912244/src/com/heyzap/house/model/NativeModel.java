package com.heyzap.house.model;

import android.content.Context;
import com.heyzap.house.model.AdModel.ModelPostFetchCompleteListener;
import java.util.Map;
import org.json.JSONObject;

public class NativeModel extends AdModel {
    public static String FORMAT;
    public JSONObject data;
    private Map nameValuePairs;

    static {
        FORMAT = "native";
    }

    public NativeModel(JSONObject jSONObject) {
        super(jSONObject);
        this.creativeType = FORMAT;
        if (!jSONObject.has(i.a) || jSONObject.isNull(i.a)) {
            throw new Exception("no_data");
        }
        this.data = jSONObject.getJSONObject(i.a);
    }

    public void cleanup(Context context) {
    }

    public void doPostFetchActions(Context context, ModelPostFetchCompleteListener modelPostFetchCompleteListener) {
        if (modelPostFetchCompleteListener != null) {
            modelPostFetchCompleteListener.onComplete(this, null);
        }
    }
}