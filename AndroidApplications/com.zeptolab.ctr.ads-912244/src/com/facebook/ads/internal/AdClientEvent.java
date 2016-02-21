package com.facebook.ads.internal;

import com.brightcove.player.media.CuePointFields;
import com.brightcove.player.model.Video.Fields;
import com.brightcove.player.util.ErrorUtil;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

public class AdClientEvent {
    private Map data;
    private String name;
    private int time;

    public AdClientEvent(String str, Map map, int i) {
        this.name = str;
        this.data = map;
        this.time = i;
    }

    public static AdClientEvent newErrorEvent(Exception exception) {
        Map hashMap = new HashMap();
        hashMap.put("ex", exception.getClass().getSimpleName());
        hashMap.put("ex_msg", exception.getMessage());
        return new AdClientEvent(ErrorUtil.ERROR, hashMap, (int) (System.currentTimeMillis() / 1000));
    }

    public JSONObject getClientEventJson() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(Fields.NAME, this.name);
            jSONObject.put(i.a, new JSONObject(this.data));
            jSONObject.put(CuePointFields.TIME, this.time);
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return jSONObject;
    }
}