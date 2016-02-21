package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.internal.v.a;
import com.inmobi.monetization.internal.NativeAdResponse;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.UUID;

public final class cp {
    private static final Object op;
    public static final String pu;
    private static cq pv;
    private static BigInteger pw;
    private static HashSet px;
    private static HashMap py;

    static {
        UUID randomUUID = UUID.randomUUID();
        byte[] toByteArray = BigInteger.valueOf(randomUUID.getLeastSignificantBits()).toByteArray();
        byte[] toByteArray2 = BigInteger.valueOf(randomUUID.getMostSignificantBits()).toByteArray();
        String str = new BigInteger(1, toByteArray).toString();
        int i = 0;
        while (i < 2) {
            try {
                MessageDigest instance = MessageDigest.getInstance("MD5");
                instance.update(toByteArray);
                instance.update(toByteArray2);
                Object obj = new Object[8];
                System.arraycopy(instance.digest(), 0, obj, 0, IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED);
                str = new BigInteger(1, obj).toString();
            } catch (NoSuchAlgorithmException e) {
            }
            i++;
        }
        pu = str;
        op = new Object();
        pv = new cq(pu);
        pw = BigInteger.ONE;
        px = new HashSet();
        py = new HashMap();
    }

    public static Bundle a(a aVar, String str, Context context) {
        Bundle bundle;
        synchronized (op) {
            bundle = new Bundle();
            bundle.putBundle("app", pv.b(str, context));
            Bundle bundle2 = new Bundle();
            Iterator it = py.keySet().iterator();
            while (it.hasNext()) {
                String str2 = (String) it.next();
                bundle2.putBundle(str2, ((cr) py.get(str2)).toBundle());
            }
            bundle.putBundle("slots", bundle2);
            ArrayList arrayList = new ArrayList();
            Iterator it2 = px.iterator();
            while (it2.hasNext()) {
                arrayList.add(((co) it2.next()).toBundle());
            }
            bundle.putParcelableArrayList(NativeAdResponse.KEY_ADS, arrayList);
            aVar.a(px);
            px = new HashSet();
        }
        return bundle;
    }

    public static void a(co coVar) {
        synchronized (op) {
            px.add(coVar);
        }
    }

    public static void a(a aVar) {
        synchronized (op) {
            px.addAll(aVar.ah());
        }
    }

    public static void a(String str, cr crVar) {
        synchronized (op) {
            py.put(str, crVar);
        }
    }

    public static String aP() {
        String toString;
        synchronized (op) {
            toString = pw.toString();
            pw = pw.add(BigInteger.ONE);
        }
        return toString;
    }

    public static cq aQ() {
        cq cqVar;
        synchronized (op) {
            cqVar = pv;
        }
        return cqVar;
    }
}