package com.google.android.gms.tagmanager;

import android.content.Context;
import android.net.Uri;
import android.net.Uri.Builder;
import com.google.android.gms.internal.b;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

class i extends dg {
    private static final String ID;
    private static final String TF;
    private static final String TG;
    static final String TH;
    private static final Set TI;
    private static final String URL;
    private final a TJ;
    private final Context mContext;

    public static interface a {
        aq iz();
    }

    class AnonymousClass_1 implements com.google.android.gms.tagmanager.i.a {
        final /* synthetic */ Context os;

        AnonymousClass_1(Context context) {
            this.os = context;
        }

        public aq iz() {
            return y.F(this.os);
        }
    }

    static {
        ID = com.google.android.gms.internal.a.aA.toString();
        URL = b.ez.toString();
        TF = b.bi.toString();
        TG = b.ey.toString();
        TH = "gtm_" + ID + "_unrepeatable";
        TI = new HashSet();
    }

    public i(Context context) {
        this(context, new AnonymousClass_1(context));
    }

    i(Context context, a aVar) {
        super(ID, new String[]{URL});
        this.TJ = aVar;
        this.mContext = context;
    }

    private synchronized boolean aU(String str) {
        boolean z = true;
        synchronized (this) {
            if (!aW(str)) {
                if (aV(str)) {
                    TI.add(str);
                } else {
                    z = false;
                }
            }
        }
        return z;
    }

    boolean aV(String str) {
        return this.mContext.getSharedPreferences(TH, 0).contains(str);
    }

    boolean aW(String str) {
        return TI.contains(str);
    }

    public void w(Map map) {
        String j = map.get(TG) != null ? di.j((com.google.android.gms.internal.d.a) map.get(TG)) : null;
        if (j == null || !aU(j)) {
            Builder buildUpon = Uri.parse(di.j((com.google.android.gms.internal.d.a) map.get(URL))).buildUpon();
            com.google.android.gms.internal.d.a aVar = (com.google.android.gms.internal.d.a) map.get(TF);
            if (aVar != null) {
                Object o = di.o(aVar);
                if (o instanceof List) {
                    Iterator it = ((List) o).iterator();
                    while (it.hasNext()) {
                        o = it.next();
                        if (o instanceof Map) {
                            Iterator it2 = ((Map) o).entrySet().iterator();
                            while (it2.hasNext()) {
                                Entry entry = (Entry) it2.next();
                                buildUpon.appendQueryParameter(entry.getKey().toString(), entry.getValue().toString());
                            }
                        } else {
                            bh.t("ArbitraryPixel: additional params contains non-map: not sending partial hit: " + buildUpon.build().toString());
                            return;
                        }
                    }
                } else {
                    bh.t("ArbitraryPixel: additional params not a list: not sending partial hit: " + buildUpon.build().toString());
                    return;
                }
            }
            String toString = buildUpon.build().toString();
            this.TJ.iz().bk(toString);
            bh.v("ArbitraryPixel: url = " + toString);
            if (j != null) {
                synchronized (i.class) {
                    TI.add(j);
                    cz.a(this.mContext, TH, j, "true");
                }
            }
        }
    }
}