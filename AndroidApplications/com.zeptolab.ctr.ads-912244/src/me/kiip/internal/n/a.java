package me.kiip.internal.n;

import android.graphics.Bitmap.Config;
import java.util.HashMap;
import java.util.Map;
import me.kiip.internal.a.n.b;
import me.kiip.internal.b.h;

public class a extends h {
    public a(String str, b bVar, int i, int i2, Config config, me.kiip.internal.a.n.a aVar) {
        super(str, bVar, i, i2, config, aVar);
    }

    public Map g() {
        Map hashMap = new HashMap();
        hashMap.put("Cache-Control", "only-if-cached");
        return hashMap;
    }
}