package com.amazon.device.ads;

import com.inmobi.commons.internal.ApiStatCollector.ApiEventType;
import org.json.JSONArray;
import org.json.JSONException;

public class AdProperties {
    private static final String a = "AdProperties";
    private AdType b;
    private boolean c;
    private boolean d;
    private boolean e;

    public enum AdType {
        IMAGE_BANNER("Image Banner"),
        MRAID_1("MRAID 1.0"),
        MRAID_2("MRAID 2.0"),
        INTERSTITIAL("Interstitial", "i");
        private final String a;
        private final String b;

        static {
            String str = "Image Banner";
            IMAGE_BANNER = new com.amazon.device.ads.AdProperties.AdType("IMAGE_BANNER", 0, "Image Banner");
            str = "MRAID 1.0";
            MRAID_1 = new com.amazon.device.ads.AdProperties.AdType("MRAID_1", 1, "MRAID 1.0");
            str = "MRAID 2.0";
            MRAID_2 = new com.amazon.device.ads.AdProperties.AdType("MRAID_2", 2, "MRAID 2.0");
            str = "Interstitial";
            String str2 = "i";
            INTERSTITIAL = new com.amazon.device.ads.AdProperties.AdType("INTERSTITIAL", 3, "Interstitial", "i");
            c = new com.amazon.device.ads.AdProperties.AdType[]{IMAGE_BANNER, MRAID_1, MRAID_2, INTERSTITIAL};
        }

        private AdType(String str) {
            this(str, i, str, null);
        }

        private AdType(String str, String str2) {
            this.a = str;
            this.b = str2;
        }

        String a() {
            return this.b;
        }

        public String toString() {
            return this.a;
        }
    }

    protected AdProperties() {
        this.c = false;
        this.d = false;
        this.e = false;
    }

    AdProperties(JSONArray jSONArray) {
        this.c = false;
        this.d = false;
        this.e = false;
        if (jSONArray != null) {
            int i = 0;
            while (i < jSONArray.length()) {
                try {
                    switch (jSONArray.getInt(i)) {
                        case ApiEventType.API_IMAI_OPEN_EMBEDDED:
                        case ApiEventType.API_IMAI_OPEN_EXTERNAL:
                            this.d = true;
                            break;
                        case ApiEventType.API_IMAI_PING:
                        case ApiEventType.API_IMAI_PING_IN_WEB_VIEW:
                            this.c = true;
                            break;
                        case AdData.HTML_CT:
                            this.b = AdType.IMAGE_BANNER;
                            break;
                        case AdData.INTERSTITIAL_CT:
                            this.b = AdType.INTERSTITIAL;
                            break;
                        case AdData.CAN_PLAY_VIDEO_CT:
                            this.e = true;
                            break;
                        case AdData.MRAID1_CT:
                            this.b = AdType.MRAID_1;
                            break;
                        case AdData.MRAID2_CT:
                            this.b = AdType.MRAID_2;
                            break;
                    }
                } catch (JSONException e) {
                    JSONException jSONException = e;
                    Log.w(a, "Unable to parse creative type: %s", new Object[]{jSONException.getMessage()});
                }
                i++;
            }
        }
    }

    void a(AdType adType) {
        this.b = adType;
    }

    void a(boolean z) {
        this.c = z;
    }

    void b(boolean z) {
        this.d = z;
    }

    void c(boolean z) {
        this.e = z;
    }

    public boolean canExpand() {
        return this.c;
    }

    public boolean canPlayAudio() {
        return this.d;
    }

    public boolean canPlayVideo() {
        return this.e;
    }

    public AdType getAdType() {
        return this.b;
    }
}