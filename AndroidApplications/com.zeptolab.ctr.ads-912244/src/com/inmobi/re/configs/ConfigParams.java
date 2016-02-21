package com.inmobi.re.configs;

import android.graphics.Color;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import com.inmobi.commons.uid.UID;
import com.inmobi.re.controller.util.Constants;
import java.util.HashMap;
import java.util.Map;

public class ConfigParams {
    static int g;
    static String h;
    String a;
    int b;
    int c;
    int d;
    int e;
    int f;
    HashMap i;

    static {
        g = 5;
        h = "[\"video/mp4\"]";
    }

    public ConfigParams() {
        this.a = "#00000000";
        this.b = 320;
        this.c = 480;
        this.d = 100;
        this.e = 20;
        this.f = 5;
        this.i = new HashMap();
    }

    public String getAllowedContentType() {
        return h;
    }

    public int getMaxSaveContentSize() {
        return g;
    }

    public int getMaxVibDuration() {
        return this.f * 1000;
    }

    public int getMaxVibPatternLength() {
        return this.e;
    }

    public int getPicHeight() {
        return this.c;
    }

    public int getPicQuality() {
        return this.d;
    }

    public int getPicWidth() {
        return this.b;
    }

    public UID getUID() {
        return UID.getCommonsUid();
    }

    public int getWebviewBgColor() {
        try {
            return Color.parseColor(this.a);
        } catch (Exception e) {
            Log.internal(Constants.RENDERING_LOG_TAG, "Invalid bg color. Reverting to default", e);
            return Color.parseColor("#00000000");
        }
    }

    public void setFromMap(Map map) {
        try {
            this.i = (HashMap) map.get("savecontent");
            g = InternalSDKUtil.getIntFromMap(this.i, "maxl", 1, 2147483647L);
            h = this.i.get("ctp").toString();
            String replace = h.replace("\\", AdTrackerConstants.BLANK);
            replace = replace.substring(1, replace.length() - 1);
            if (replace.contains(",")) {
                String[] split = replace.split(",");
                int i = 0;
                while (i < split.length) {
                    if (split[i].substring(1, split[i].length() - 1).equals(AdTrackerConstants.BLANK)) {
                        throw new IllegalArgumentException();
                    }
                    i++;
                }
            } else {
                if (new String[]{replace}[0].equals(AdTrackerConstants.BLANK)) {
                    throw new IllegalArgumentException();
                }
            }
            this.a = InternalSDKUtil.getStringFromMap(map, "wthc");
            this.c = InternalSDKUtil.getIntFromMap(map, "picH", 1, 2147483647L);
            this.b = InternalSDKUtil.getIntFromMap(map, "picW", 1, 2147483647L);
            this.d = InternalSDKUtil.getIntFromMap(map, "picA", 1, 100);
            this.f = InternalSDKUtil.getIntFromMap(map, "mvd", 0, 2147483647L);
            this.e = InternalSDKUtil.getIntFromMap(map, "mvp", 0, 2147483647L);
        } catch (IllegalArgumentException e) {
            g = 5;
            h = "[\"video/mp4\"]";
            throw new IllegalArgumentException();
        }
    }
}