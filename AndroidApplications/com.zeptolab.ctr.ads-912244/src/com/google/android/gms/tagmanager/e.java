package com.google.android.gms.tagmanager;

import android.content.Context;
import com.google.android.gms.internal.a;
import com.google.android.gms.internal.b;
import com.google.android.gms.internal.d;
import java.util.Map;

class e extends aj {
    private static final String ID;
    private static final String TD;
    private static final String TE;
    private final Context kL;

    static {
        ID = a.ah.toString();
        TD = b.bS.toString();
        TE = b.bV.toString();
    }

    public e(Context context) {
        super(ID, new String[]{TE});
        this.kL = context;
    }

    public boolean iy() {
        return true;
    }

    public d.a u(Map map) {
        d.a aVar = (d.a) map.get(TE);
        if (aVar == null) {
            return di.ku();
        }
        String j = di.j(aVar);
        aVar = (d.a) map.get(TD);
        String e = ay.e(this.kL, j, aVar != null ? di.j(aVar) : null);
        return e != null ? di.r(e) : di.ku();
    }
}