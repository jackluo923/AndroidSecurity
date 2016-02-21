package com.google.android.gms.internal;

import com.brightcove.player.model.Video.Fields;
import java.util.Map;

public final class ao implements ar {
    private final ap lV;

    public ao(ap apVar) {
        this.lV = apVar;
    }

    public void a(dd ddVar, Map map) {
        String str = (String) map.get(Fields.NAME);
        if (str == null) {
            da.w("App event with no name parameter.");
        } else {
            this.lV.onAppEvent(str, (String) map.get("info"));
        }
    }
}