package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.c.c;
import com.google.android.gms.internal.c.d;
import com.google.android.gms.internal.c.i;
import com.google.android.gms.internal.d.a;
import java.util.Map;

class ai {
    private static void a(DataLayer dataLayer, d dVar) {
        a[] aVarArr = dVar.fd;
        int length = aVarArr.length;
        int i = 0;
        while (i < length) {
            dataLayer.bg(di.j(aVarArr[i]));
            i++;
        }
    }

    public static void a(DataLayer dataLayer, i iVar) {
        if (iVar.fT == null) {
            bh.w("supplemental missing experimentSupplemental");
        } else {
            a(dataLayer, iVar.fT);
            b(dataLayer, iVar.fT);
            c(dataLayer, iVar.fT);
        }
    }

    private static void b(DataLayer dataLayer, d dVar) {
        a[] aVarArr = dVar.fc;
        int length = aVarArr.length;
        int i = 0;
        while (i < length) {
            Map c = c(aVarArr[i]);
            if (c != null) {
                dataLayer.push(c);
            }
            i++;
        }
    }

    private static Map c(a aVar) {
        Object o = di.o(aVar);
        if (o instanceof Map) {
            return (Map) o;
        }
        bh.w("value: " + o + " is not a map value, ignored.");
        return null;
    }

    private static void c(DataLayer dataLayer, d dVar) {
        c[] cVarArr = dVar.fe;
        int length = cVarArr.length;
        int i = 0;
        while (i < length) {
            c cVar = cVarArr[i];
            if (cVar.eX == null) {
                bh.w("GaExperimentRandom: No key");
            } else {
                Object obj = dataLayer.get(cVar.eX);
                Long valueOf = obj instanceof Number ? Long.valueOf(((Number) obj).longValue()) : null;
                long j = cVar.eY;
                long j2 = cVar.eZ;
                if ((!cVar.fa || valueOf == null || valueOf.longValue() < j || valueOf.longValue() > j2) && j > j2) {
                    bh.w("GaExperimentRandom: random range invalid");
                } else {
                    obj = Long.valueOf(Math.round(Math.random() * ((double) (j2 - j)) + ((double) j)));
                    dataLayer.bg(cVar.eX);
                    Map b = dataLayer.b(cVar.eX, obj);
                    if (cVar.fb > 0) {
                        if (b.containsKey("gtm")) {
                            Object obj2 = b.get("gtm");
                            if (obj2 instanceof Map) {
                                ((Map) obj2).put("lifetime", Long.valueOf(cVar.fb));
                            } else {
                                bh.w("GaExperimentRandom: gtm not a map");
                            }
                        } else {
                            b.put("gtm", DataLayer.mapOf(new Object[]{"lifetime", Long.valueOf(cVar.fb)}));
                        }
                    }
                    dataLayer.push(b);
                }
            }
            i++;
        }
    }
}