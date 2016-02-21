package com.amazon.device.ads;

import com.zeptolab.ctr.ads.R;
import java.util.ArrayList;
import java.util.Map;

abstract class MraidCommand {
    protected Map a;
    protected MraidView b;

    MraidCommand(Map map, MraidView mraidView) {
        this.a = map;
        this.b = mraidView;
    }

    protected int a(String str) {
        String str2 = (String) this.a.get(str);
        if (str2 == null) {
            return -1;
        }
        try {
            return Integer.parseInt(str2, R.styleable.MapAttrs_uiZoomControls);
        } catch (NumberFormatException e) {
            return -1;
        }
    }

    abstract void a();

    protected String b(String str) {
        return (String) this.a.get(str);
    }

    protected float c(String str) {
        if (((String) this.a.get(str)) == null) {
            return 0.0f;
        }
        try {
            return Float.parseFloat(str);
        } catch (NumberFormatException e) {
            return 0.0f;
        }
    }

    protected boolean d(String str) {
        return "true".equals(this.a.get(str));
    }

    protected Integer[] e(String str) {
        String str2 = (String) this.a.get(str);
        if (str2 == null) {
            return null;
        }
        String[] split = str2.split(",");
        ArrayList arrayList = new ArrayList();
        int length = split.length;
        int i = 0;
        while (i < length) {
            try {
                arrayList.add(Integer.valueOf(Integer.parseInt(split[i], R.styleable.MapAttrs_uiZoomControls)));
            } catch (NumberFormatException e) {
                arrayList.add(Integer.valueOf(-1));
            }
            i++;
        }
        return (Integer[]) arrayList.toArray(new Integer[arrayList.size()]);
    }
}