package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.ads.mediation.MediationAdapter;
import com.google.ads.mediation.NetworkExtras;
import com.google.android.gms.internal.bf.a;
import java.util.Map;

public final class be extends a {
    private Map mQ;

    private bg n(String str) {
        Class forName = Class.forName(str, false, be.class.getClassLoader());
        if (MediationAdapter.class.isAssignableFrom(forName)) {
            MediationAdapter mediationAdapter = (MediationAdapter) forName.newInstance();
            return new bi(mediationAdapter, (NetworkExtras) this.mQ.get(mediationAdapter.getAdditionalParametersType()));
        } else {
            da.w("Could not instantiate mediation adapter: " + str + ".");
            throw new RemoteException();
        }
    }

    public void c(Map map) {
        this.mQ = map;
    }

    public bg m(String str) {
        return n(str);
    }
}