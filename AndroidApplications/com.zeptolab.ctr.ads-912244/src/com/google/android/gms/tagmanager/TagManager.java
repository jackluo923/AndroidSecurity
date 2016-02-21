package com.google.android.gms.tagmanager;

import android.content.Context;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import com.google.android.gms.common.api.PendingResult;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

public class TagManager {
    private static TagManager XB;
    private final DataLayer TN;
    private final r Wj;
    private final ConcurrentMap XA;
    private final a Xz;
    private final Context mContext;

    static interface a {
        o a_(Context context, TagManager tagManager, Looper looper, String str, int i, r rVar);
    }

    static /* synthetic */ class AnonymousClass_3 {
        static final /* synthetic */ int[] XD;

        static {
            XD = new int[a.values().length];
            try {
                XD[a.VW.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                XD[a.VX.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            XD[a.VY.ordinal()] = 3;
        }
    }

    TagManager(Context context, a aVar, DataLayer dataLayer) {
        if (context == null) {
            throw new NullPointerException(AdTrackerConstants.MSG_APP_CONTEXT_NULL);
        }
        this.mContext = context.getApplicationContext();
        this.Xz = aVar;
        this.XA = new ConcurrentHashMap();
        this.TN = dataLayer;
        this.TN.a(new b() {
            public void v(Map map) {
                Object obj = map.get(DataLayer.EVENT_KEY);
                if (obj != null) {
                    TagManager.this.bE(obj.toString());
                }
            }
        });
        this.TN.a(new d(this.mContext));
        this.Wj = new r();
    }

    private void bE(String str) {
        Iterator it = this.XA.keySet().iterator();
        while (it.hasNext()) {
            ((n) it.next()).ba(str);
        }
    }

    public static TagManager getInstance(Context context) {
        TagManager tagManager;
        synchronized (TagManager.class) {
            if (XB == null && context == null) {
                bh.t("TagManager.getInstance requires non-null context.");
                throw new NullPointerException();
            } else {
                XB = new TagManager(context, new a() {
                    public o a(Context context, TagManager tagManager, Looper looper, String str, int i, r rVar) {
                        return new o(context, tagManager, looper, str, i, rVar);
                    }
                }, new DataLayer(new v(context)));
            }
            tagManager = XB;
        }
        return tagManager;
    }

    void a(n nVar) {
        this.XA.put(nVar, Boolean.valueOf(true));
    }

    boolean b(n nVar) {
        return this.XA.remove(nVar) != null;
    }

    synchronized boolean f(Uri uri) {
        boolean z;
        ce ju = ce.ju();
        if (ju.f(uri)) {
            String containerId = ju.getContainerId();
            n nVar;
            switch (AnonymousClass_3.XD[ju.jv().ordinal()]) {
                case GoogleScorer.CLIENT_GAMES:
                    Iterator it = this.XA.keySet().iterator();
                    while (it.hasNext()) {
                        nVar = (n) it.next();
                        if (nVar.getContainerId().equals(containerId)) {
                            nVar.bc(null);
                            nVar.refresh();
                        }
                    }
                    break;
                case GoogleScorer.CLIENT_PLUS:
                case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                    Iterator it2 = this.XA.keySet().iterator();
                    while (it2.hasNext()) {
                        nVar = (n) it2.next();
                        if (nVar.getContainerId().equals(containerId)) {
                            nVar.bc(ju.jw());
                            nVar.refresh();
                        } else if (nVar.iF() != null) {
                            nVar.bc(null);
                            nVar.refresh();
                        }
                    }
                    break;
            }
            z = true;
        } else {
            z = false;
        }
        return z;
    }

    public DataLayer getDataLayer() {
        return this.TN;
    }

    public PendingResult loadContainerDefaultOnly(String str, int i) {
        PendingResult a = this.Xz.a(this.mContext, this, null, str, i, this.Wj);
        a.iI();
        return a;
    }

    public PendingResult loadContainerDefaultOnly(String str, int i, Handler handler) {
        PendingResult a = this.Xz.a(this.mContext, this, handler.getLooper(), str, i, this.Wj);
        a.iI();
        return a;
    }

    public PendingResult loadContainerPreferFresh(String str, int i) {
        PendingResult a = this.Xz.a(this.mContext, this, null, str, i, this.Wj);
        a.iK();
        return a;
    }

    public PendingResult loadContainerPreferFresh(String str, int i, Handler handler) {
        PendingResult a = this.Xz.a(this.mContext, this, handler.getLooper(), str, i, this.Wj);
        a.iK();
        return a;
    }

    public PendingResult loadContainerPreferNonDefault(String str, int i) {
        PendingResult a = this.Xz.a(this.mContext, this, null, str, i, this.Wj);
        a.iJ();
        return a;
    }

    public PendingResult loadContainerPreferNonDefault(String str, int i, Handler handler) {
        PendingResult a = this.Xz.a(this.mContext, this, handler.getLooper(), str, i, this.Wj);
        a.iJ();
        return a;
    }

    public void setVerboseLoggingEnabled(boolean z) {
        bh.setLogLevel(z ? GoogleScorer.CLIENT_PLUS : IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR);
    }
}