package com.google.android.gms.internal;

import com.brightcove.player.event.Event;
import com.google.android.gms.plus.PlusShare;
import com.inmobi.commons.analytics.db.AnalyticsSQLiteHelper;
import java.util.Map;

public final class ck {
    private final Object mg;
    private int nX;
    private dd ng;
    public final ar oA;
    private String ox;
    private String oy;
    public final ar oz;

    public ck(String str) {
        this.mg = new Object();
        this.nX = -2;
        this.oz = new ar() {
            public void a(dd ddVar, Map map) {
                synchronized (ck.this.mg) {
                    String str = (String) map.get(Event.ERRORS);
                    da.w("Invalid " + ((String) map.get(AnalyticsSQLiteHelper.EVENT_LIST_TYPE)) + " request error: " + str);
                    ck.this.nX = 1;
                    ck.this.mg.notify();
                }
            }
        };
        this.oA = new ar() {
            public void a(dd ddVar, Map map) {
                synchronized (ck.this.mg) {
                    String str = (String) map.get(PlusShare.KEY_CALL_TO_ACTION_URL);
                    if (str == null) {
                        da.w("URL missing in loadAdUrl GMSG.");
                    } else {
                        if (str.contains("%40mediation_adapters%40")) {
                            str = str.replaceAll("%40mediation_adapters%40", cs.b(ddVar.getContext(), (String) map.get("check_adapters"), ck.this.ox));
                            da.v("Ad request URL modified to " + str);
                        }
                        ck.this.oy = str;
                        ck.this.mg.notify();
                    }
                }
            }
        };
        this.ox = str;
    }

    public String aI() {
        String str;
        synchronized (this.mg) {
            while (this.oy == null && this.nX == -2) {
                try {
                    this.mg.wait();
                } catch (InterruptedException e) {
                    da.w("Ad request service was interrupted.");
                    str = null;
                }
            }
            str = this.oy;
        }
        return str;
    }

    public void b(dd ddVar) {
        synchronized (this.mg) {
            this.ng = ddVar;
        }
    }

    public int getErrorCode() {
        int i;
        synchronized (this.mg) {
            i = this.nX;
        }
        return i;
    }
}