package com.vungle.publisher;

import android.os.Bundle;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public class b implements a {
    protected Bundle a;
    protected Bundle b;

    public b() {
        this.a = new Bundle();
        this.b = new Bundle();
    }

    private static void a(StringBuilder stringBuilder, Bundle bundle) {
        Iterator it = bundle.keySet().iterator();
        int i = 1;
        while (it.hasNext()) {
            String str = (String) it.next();
            if (i != 0) {
                boolean z = 0;
            } else {
                stringBuilder.append(", ");
            }
            stringBuilder.append(str).append(" = ").append(bundle.get(str));
        }
    }

    public final String a(String str) {
        return this.b.getString(str);
    }

    public final void a(Orientation orientation) {
        this.a.putParcelable("orientation", orientation);
    }

    public final void a(String str, String str2) {
        this.b.putString(str, str2);
    }

    public final void a(boolean z) {
        this.a.putBoolean("isBackButtonEnabled", z);
    }

    public final void b_(String str) {
        this.a.putString("incentivizedCancelDialogBodyText", str);
    }

    public final void b_(boolean z) {
        this.a.putBoolean("isImmersiveMode", z);
    }

    public final void c(String str) {
        this.a.putString("incentivizedCancelDialogNegativeButtonText", str);
    }

    public final void c(boolean z) {
        this.a.putBoolean("isIncentivized", z);
    }

    public final void d(String str) {
        this.a.putString("incentivizedCancelDialogPositiveButtonText", str);
    }

    public final void d(boolean z) {
        this.a.putBoolean("isSoundEnabled", z);
    }

    public final void e(String str) {
        this.a.putString("incentivizedCancelDialogTitle", str);
    }

    public boolean equals(Object obj) {
        if (obj != null && obj instanceof b) {
            int i;
            b bVar = (b) obj;
            i = bVar != null && bVar.a.equals(this.a) && bVar.b.equals(this.b);
            if (i != 0) {
                return true;
            }
        }
        return false;
    }

    public final void f(String str) {
        this.a.putString("incentivizedUserId", str);
    }

    public final void g(String str) {
        this.a.putString("placement", str);
    }

    public Map getExtras() {
        Map hashMap = new HashMap();
        Iterator it = this.b.keySet().iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            hashMap.put(str, this.b.getString(str));
        }
        return hashMap;
    }

    public String getIncentivizedCancelDialogBodyText() {
        return this.a.getString("incentivizedCancelDialogBodyText");
    }

    public String getIncentivizedCancelDialogCloseButtonText() {
        return this.a.getString("incentivizedCancelDialogNegativeButtonText");
    }

    public String getIncentivizedCancelDialogKeepWatchingButtonText() {
        return this.a.getString("incentivizedCancelDialogPositiveButtonText");
    }

    public String getIncentivizedCancelDialogTitle() {
        return this.a.getString("incentivizedCancelDialogTitle");
    }

    public String getIncentivizedUserId() {
        return this.a.getString("incentivizedUserId");
    }

    public Orientation getOrientation() {
        return (Orientation) this.a.getParcelable("orientation");
    }

    public String getPlacement() {
        return this.a.getString("placement");
    }

    public int hashCode() {
        return this.a.hashCode() ^ this.b.hashCode();
    }

    public boolean isBackButtonImmediatelyEnabled() {
        return this.a.getBoolean("isBackButtonEnabled");
    }

    public boolean isImmersiveMode() {
        return this.a.getBoolean("isImmersiveMode");
    }

    public boolean isIncentivized() {
        return this.a.getBoolean("isIncentivized");
    }

    public boolean isSoundEnabled() {
        return this.a.getBoolean("isSoundEnabled");
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder(123);
        a(stringBuilder, this.a);
        a(stringBuilder, this.b);
        stringBuilder.append('}');
        return stringBuilder.toString();
    }
}