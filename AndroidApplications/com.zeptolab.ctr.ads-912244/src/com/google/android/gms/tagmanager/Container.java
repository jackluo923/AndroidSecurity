package com.google.android.gms.tagmanager;

import android.content.Context;
import com.google.android.gms.internal.c.f;
import com.google.android.gms.internal.c.i;
import com.google.android.gms.internal.c.j;
import com.google.android.gms.tagmanager.cr.c;
import com.google.android.gms.tagmanager.cr.g;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class Container {
    private final String TM;
    private final DataLayer TN;
    private ct TO;
    private Map TP;
    private Map TQ;
    private volatile long TR;
    private volatile String TS;
    private final Context mContext;

    public static interface FunctionCallMacroCallback {
        Object getValue(String str, Map map);
    }

    public static interface FunctionCallTagCallback {
        void execute(String str, Map map);
    }

    private class a implements com.google.android.gms.tagmanager.s.a {
        private a() {
        }

        public Object b(String str, Map map) {
            com.google.android.gms.tagmanager.Container.FunctionCallMacroCallback aY = Container.this.aY(str);
            return aY == null ? null : aY.getValue(str, map);
        }
    }

    private class b implements com.google.android.gms.tagmanager.s.a {
        private b() {
        }

        public Object b_(String str, Map map) {
            com.google.android.gms.tagmanager.Container.FunctionCallTagCallback aZ = Container.this.aZ(str);
            if (aZ != null) {
                aZ.execute(str, map);
            }
            return di.kt();
        }
    }

    Container(Context context, DataLayer dataLayer, String str, long j, j jVar) {
        this.TP = new HashMap();
        this.TQ = new HashMap();
        this.TS = AdTrackerConstants.BLANK;
        this.mContext = context;
        this.TN = dataLayer;
        this.TM = str;
        this.TR = j;
        a(jVar.fV);
        if (jVar.fU != null) {
            a(jVar.fU);
        }
    }

    Container(Context context, DataLayer dataLayer, String str, long j, c cVar) {
        this.TP = new HashMap();
        this.TQ = new HashMap();
        this.TS = AdTrackerConstants.BLANK;
        this.mContext = context;
        this.TN = dataLayer;
        this.TM = str;
        this.TR = j;
        a(cVar);
    }

    private void a(f fVar) {
        if (fVar == null) {
            throw new NullPointerException();
        }
        try {
            a(cr.b(fVar));
        } catch (g e) {
            bh.t("Not loading resource: " + fVar + " because it is invalid: " + e.toString());
        }
    }

    private void a(c cVar) {
        this.TS = cVar.getVersion();
        c cVar2 = cVar;
        a(new ct(this.mContext, cVar2, this.TN, new a(null), new b(null), bb(this.TS)));
    }

    private synchronized void a(ct ctVar) {
        this.TO = ctVar;
    }

    private void a(i[] iVarArr) {
        List arrayList = new ArrayList();
        int length = iVarArr.length;
        int i = 0;
        while (i < length) {
            arrayList.add(iVarArr[i]);
            i++;
        }
        iE().f(arrayList);
    }

    private synchronized ct iE() {
        return this.TO;
    }

    FunctionCallMacroCallback aY(String str) {
        FunctionCallMacroCallback functionCallMacroCallback;
        synchronized (this.TP) {
            functionCallMacroCallback = (FunctionCallMacroCallback) this.TP.get(str);
        }
        return functionCallMacroCallback;
    }

    FunctionCallTagCallback aZ(String str) {
        FunctionCallTagCallback functionCallTagCallback;
        synchronized (this.TQ) {
            functionCallTagCallback = (FunctionCallTagCallback) this.TQ.get(str);
        }
        return functionCallTagCallback;
    }

    void ba(String str) {
        iE().ba(str);
    }

    ag bb(String str) {
        if (ce.ju().jv().equals(a.VY)) {
        }
        return new bq();
    }

    public boolean getBoolean(String str) {
        ct iE = iE();
        if (iE == null) {
            bh.t("getBoolean called for closed container.");
            return di.kr().booleanValue();
        } else {
            try {
                return di.n((com.google.android.gms.internal.d.a) iE.bC(str).getObject()).booleanValue();
            } catch (Exception e) {
                bh.t("Calling getBoolean() threw an exception: " + e.getMessage() + " Returning default value.");
                return di.kr().booleanValue();
            }
        }
    }

    public String getContainerId() {
        return this.TM;
    }

    public double getDouble(String str) {
        ct iE = iE();
        if (iE == null) {
            bh.t("getDouble called for closed container.");
            return di.kq().doubleValue();
        } else {
            try {
                return di.m((com.google.android.gms.internal.d.a) iE.bC(str).getObject()).doubleValue();
            } catch (Exception e) {
                bh.t("Calling getDouble() threw an exception: " + e.getMessage() + " Returning default value.");
                return di.kq().doubleValue();
            }
        }
    }

    public long getLastRefreshTime() {
        return this.TR;
    }

    public long getLong(String str) {
        ct iE = iE();
        if (iE == null) {
            bh.t("getLong called for closed container.");
            return di.kp().longValue();
        } else {
            try {
                return di.l((com.google.android.gms.internal.d.a) iE.bC(str).getObject()).longValue();
            } catch (Exception e) {
                bh.t("Calling getLong() threw an exception: " + e.getMessage() + " Returning default value.");
                return di.kp().longValue();
            }
        }
    }

    public String getString(String str) {
        ct iE = iE();
        if (iE == null) {
            bh.t("getString called for closed container.");
            return di.kt();
        } else {
            try {
                return di.j((com.google.android.gms.internal.d.a) iE.bC(str).getObject());
            } catch (Exception e) {
                bh.t("Calling getString() threw an exception: " + e.getMessage() + " Returning default value.");
                return di.kt();
            }
        }
    }

    String iD() {
        return this.TS;
    }

    public boolean isDefault() {
        return getLastRefreshTime() == 0;
    }

    public void registerFunctionCallMacroCallback(String str, FunctionCallMacroCallback functionCallMacroCallback) {
        if (functionCallMacroCallback == null) {
            throw new NullPointerException("Macro handler must be non-null");
        }
        synchronized (this.TP) {
            this.TP.put(str, functionCallMacroCallback);
        }
    }

    public void registerFunctionCallTagCallback(String str, FunctionCallTagCallback functionCallTagCallback) {
        if (functionCallTagCallback == null) {
            throw new NullPointerException("Tag callback must be non-null");
        }
        synchronized (this.TQ) {
            this.TQ.put(str, functionCallTagCallback);
        }
    }

    void release() {
        this.TO = null;
    }

    public void unregisterFunctionCallMacroCallback(String str) {
        synchronized (this.TP) {
            this.TP.remove(str);
        }
    }

    public void unregisterFunctionCallTagCallback(String str) {
        synchronized (this.TQ) {
            this.TQ.remove(str);
        }
    }
}