package com.google.android.gms.tagmanager;

import android.content.Context;
import com.brightcove.player.model.Video.Fields;
import com.google.android.gms.analytics.Tracker;
import com.google.android.gms.internal.a;
import com.google.android.gms.internal.b;
import com.google.android.gms.internal.d;
import com.inmobi.commons.analytics.db.AnalyticsSQLiteHelper;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.vungle.publisher.VungleService;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

class dj extends dg {
    private static final String ID;
    private static final String XR;
    private static final String XS;
    private static final String XT;
    private static final String XU;
    private static final String XV;
    private static final String XW;
    private static Map XX;
    private static Map XY;
    private final DataLayer TN;
    private final Set XZ;
    private final df Ya;

    static {
        ID = a.aQ.toString();
        XR = b.bg.toString();
        XS = b.bp.toString();
        XT = b.bo.toString();
        XU = b.er.toString();
        XV = b.et.toString();
        XW = b.ev.toString();
    }

    public dj(Context context, DataLayer dataLayer) {
        this(context, dataLayer, new df(context));
    }

    dj(Context context, DataLayer dataLayer, df dfVar) {
        super(ID, new String[0]);
        this.TN = dataLayer;
        this.Ya = dfVar;
        this.XZ = new HashSet();
        this.XZ.add(AdTrackerConstants.BLANK);
        this.XZ.add("0");
        this.XZ.add("false");
    }

    private Map E(Map map) {
        d.a aVar = (d.a) map.get(XV);
        if (aVar != null) {
            return c(aVar);
        }
        if (XX == null) {
            Map hashMap = new HashMap();
            hashMap.put(AnalyticsSQLiteHelper.TRANSACTION_ID, "&ti");
            hashMap.put("transactionAffiliation", "&ta");
            hashMap.put("transactionTax", "&tt");
            hashMap.put("transactionShipping", "&ts");
            hashMap.put("transactionTotal", "&tr");
            hashMap.put("transactionCurrency", "&cu");
            XX = hashMap;
        }
        return XX;
    }

    private Map F(Map map) {
        d.a aVar = (d.a) map.get(XW);
        if (aVar != null) {
            return c(aVar);
        }
        if (XY == null) {
            Map hashMap = new HashMap();
            hashMap.put(Fields.NAME, "&in");
            hashMap.put("sku", "&ic");
            hashMap.put("category", "&iv");
            hashMap.put("price", "&ip");
            hashMap.put("quantity", "&iq");
            hashMap.put("currency", "&cu");
            XY = hashMap;
        }
        return XY;
    }

    private void a(Tracker tracker, Map map) {
        String bN = bN(AnalyticsSQLiteHelper.TRANSACTION_ID);
        if (bN == null) {
            bh.t("Cannot find transactionId in data layer.");
        } else {
            List linkedList = new LinkedList();
            try {
                Map p = p((d.a) map.get(XT));
                p.put("&t", VungleService.HTTP_TRANSACTION_EXTRA_KEY);
                Iterator it = E(map).entrySet().iterator();
                while (it.hasNext()) {
                    Entry entry = (Entry) it.next();
                    b(p, (String) entry.getValue(), bN((String) entry.getKey()));
                }
                linkedList.add(p);
                List kv = kv();
                if (kv != null) {
                    it = kv.iterator();
                    while (it.hasNext()) {
                        Map map2 = (Map) it.next();
                        if (map2.get(Fields.NAME) == null) {
                            bh.t("Unable to send transaction item hit due to missing 'name' field.");
                            return;
                        } else {
                            Map p2 = p((d.a) map.get(XT));
                            p2.put("&t", "item");
                            p2.put("&ti", bN);
                            Iterator it2 = F(map).entrySet().iterator();
                            while (it2.hasNext()) {
                                Entry entry2 = (Entry) it2.next();
                                b(p2, (String) entry2.getValue(), (String) map2.get(entry2.getKey()));
                            }
                            linkedList.add(p2);
                        }
                    }
                }
                Iterator it3 = linkedList.iterator();
                while (it3.hasNext()) {
                    tracker.send((Map) it3.next());
                }
            } catch (IllegalArgumentException e) {
                bh.c("Unable to send transaction", e);
            }
        }
    }

    private void b(Map map, String str, String str2) {
        if (str2 != null) {
            map.put(str, str2);
        }
    }

    private String bN(String str) {
        Object obj = this.TN.get(str);
        return obj == null ? null : obj.toString();
    }

    private Map c(d.a aVar) {
        Object o = di.o(aVar);
        if (!(o instanceof Map)) {
            return null;
        }
        Map map = (Map) o;
        Map linkedHashMap = new LinkedHashMap();
        Iterator it = map.entrySet().iterator();
        while (it.hasNext()) {
            Entry entry = (Entry) it.next();
            linkedHashMap.put(entry.getKey().toString(), entry.getValue().toString());
        }
        return linkedHashMap;
    }

    private boolean d(Map map, String str) {
        d.a aVar = (d.a) map.get(str);
        return aVar == null ? false : di.n(aVar).booleanValue();
    }

    private List kv() {
        Object obj = this.TN.get("transactionProducts");
        if (obj == null) {
            return null;
        }
        if (obj instanceof List) {
            Iterator it = ((List) obj).iterator();
            while (it.hasNext()) {
                if (!it.next() instanceof Map) {
                    throw new IllegalArgumentException("Each element of transactionProducts should be of type Map.");
                }
            }
            return (List) obj;
        } else {
            throw new IllegalArgumentException("transactionProducts should be of type List.");
        }
    }

    private Map p(d.a aVar) {
        if (aVar == null) {
            return new HashMap();
        }
        Map c = c(aVar);
        if (c == null) {
            return new HashMap();
        }
        String str = (String) c.get("&aip");
        if (str != null && this.XZ.contains(str.toLowerCase())) {
            c.remove("&aip");
        }
        return c;
    }

    public void w(Map map) {
        Tracker bF = this.Ya.bF("_GTM_DEFAULT_TRACKER_");
        if (d(map, XS)) {
            bF.send(p((d.a) map.get(XT)));
        } else if (d(map, XU)) {
            a(bF, map);
        } else {
            bh.w("Ignoring unknown tag.");
        }
    }
}