package com.amazon.device.ads;

import com.amazon.device.ads.Controller.Dimensions;
import com.amazon.device.ads.Controller.PlayerProperties;
import com.google.android.gms.plus.PlusShare;
import java.util.Map;

class MraidCommandPlayVideo extends MraidCommand {
    MraidCommandPlayVideo(Map map, MraidView mraidView) {
        super(map, mraidView);
    }

    void a() {
        Dimensions dimensions;
        Integer[] e = e("position");
        if (e[0].intValue() != -1) {
            Dimensions dimensions2 = new Dimensions();
            dimensions2.y = e[0].intValue();
            dimensions2.x = e[1].intValue();
            dimensions2.width = e[2].intValue();
            dimensions2.height = e[3].intValue();
            dimensions = dimensions2;
        } else {
            dimensions = null;
        }
        String b = b(PlusShare.KEY_CALL_TO_ACTION_URL);
        PlayerProperties playerProperties = new PlayerProperties();
        playerProperties.setProperties(d("audioMuted"), d("autoPlay"), d("controls"), true, d("loop"), b("startStyle"), b("stopStyle"));
        this.b.i().a(b, dimensions, playerProperties);
    }
}