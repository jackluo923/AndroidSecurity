package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.fb.a;
import com.google.android.gms.plus.model.moments.ItemScope;
import com.google.android.gms.plus.model.moments.Moment;
import com.inmobi.commons.analytics.db.AnalyticsEvent;
import com.inmobi.commons.analytics.db.AnalyticsSQLiteHelper;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public final class io extends fb implements SafeParcelable, Moment {
    public static final ip CREATOR;
    private static final HashMap RL;
    private String Oc;
    private final Set RM;
    private im SH;
    private im SI;
    private String Sz;
    private String uS;
    private final int wj;

    static {
        CREATOR = new ip();
        RL = new HashMap();
        RL.put(AnalyticsEvent.EVENT_ID, a.j(AnalyticsEvent.EVENT_ID, GoogleScorer.CLIENT_PLUS));
        RL.put("result", a.a("result", GoogleScorer.CLIENT_APPSTATE, im.class));
        RL.put("startDate", a.j("startDate", IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR));
        RL.put("target", a.a("target", IabHelper.BILLING_RESPONSE_RESULT_ERROR, im.class));
        RL.put(AnalyticsSQLiteHelper.EVENT_LIST_TYPE, a.j(AnalyticsSQLiteHelper.EVENT_LIST_TYPE, GoogleScorer.CLIENT_ALL));
    }

    public io() {
        this.wj = 1;
        this.RM = new HashSet();
    }

    io(Set set, int i, String str, im imVar, String str2, im imVar2, String str3) {
        this.RM = set;
        this.wj = i;
        this.uS = str;
        this.SH = imVar;
        this.Sz = str2;
        this.SI = imVar2;
        this.Oc = str3;
    }

    public io(Set set, String str, im imVar, String str2, im imVar2, String str3) {
        this.RM = set;
        this.wj = 1;
        this.uS = str;
        this.SH = imVar;
        this.Sz = str2;
        this.SI = imVar2;
        this.Oc = str3;
    }

    protected boolean a(a aVar) {
        return this.RM.contains(Integer.valueOf(aVar.eu()));
    }

    protected Object ak(String str) {
        return null;
    }

    protected boolean al(String str) {
        return false;
    }

    protected Object b(a aVar) {
        switch (aVar.eu()) {
            case GoogleScorer.CLIENT_PLUS:
                return this.uS;
            case GoogleScorer.CLIENT_APPSTATE:
                return this.SH;
            case IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:
                return this.Sz;
            case IabHelper.BILLING_RESPONSE_RESULT_ERROR:
                return this.SI;
            case GoogleScorer.CLIENT_ALL:
                return this.Oc;
            default:
                throw new IllegalStateException("Unknown safe parcelable id=" + aVar.eu());
        }
    }

    public int describeContents() {
        ip ipVar = CREATOR;
        return 0;
    }

    public HashMap en() {
        return RL;
    }

    public boolean equals(io ioVar) {
        if (!(ioVar instanceof io)) {
            return false;
        }
        if (this == ioVar) {
            return true;
        }
        ioVar = ioVar;
        Iterator it = RL.values().iterator();
        while (it.hasNext()) {
            a aVar = (a) it.next();
            if (a(aVar)) {
                if (!ioVar.a(aVar)) {
                    return false;
                }
                if (!b(aVar).equals(ioVar.b(aVar))) {
                    return false;
                }
            } else if (ioVar.a(aVar)) {
                return false;
            }
        }
        return true;
    }

    public /* synthetic */ Object freeze() {
        return hU();
    }

    public String getId() {
        return this.uS;
    }

    public ItemScope getResult() {
        return this.SH;
    }

    public String getStartDate() {
        return this.Sz;
    }

    public ItemScope getTarget() {
        return this.SI;
    }

    public String getType() {
        return this.Oc;
    }

    int getVersionCode() {
        return this.wj;
    }

    Set hB() {
        return this.RM;
    }

    im hS() {
        return this.SH;
    }

    im hT() {
        return this.SI;
    }

    public io hU() {
        return this;
    }

    public boolean hasId() {
        return this.RM.contains(Integer.valueOf(GoogleScorer.CLIENT_PLUS));
    }

    public boolean hasResult() {
        return this.RM.contains(Integer.valueOf(GoogleScorer.CLIENT_APPSTATE));
    }

    public boolean hasStartDate() {
        return this.RM.contains(Integer.valueOf(IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR));
    }

    public boolean hasTarget() {
        return this.RM.contains(Integer.valueOf(IabHelper.BILLING_RESPONSE_RESULT_ERROR));
    }

    public boolean hasType() {
        return this.RM.contains(Integer.valueOf(GoogleScorer.CLIENT_ALL));
    }

    public int hashCode() {
        Iterator it = RL.values().iterator();
        int i = 0;
        while (it.hasNext()) {
            int hashCode;
            a aVar = (a) it.next();
            if (a(aVar)) {
                hashCode = b(aVar).hashCode() + i + aVar.eu();
            } else {
                hashCode = i;
            }
            i = hashCode;
        }
        return i;
    }

    public boolean isDataValid() {
        return true;
    }

    public void writeToParcel(Parcel parcel, int i) {
        ip ipVar = CREATOR;
        ip.a(this, parcel, i);
    }
}