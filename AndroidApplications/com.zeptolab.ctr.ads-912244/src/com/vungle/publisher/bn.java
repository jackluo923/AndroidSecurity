package com.vungle.publisher;

import android.util.SparseArray;
import com.vungle.log.Logger;
import java.net.HttpURLConnection;

public final class bn {
    private static final SparseArray c;
    public final int a;
    public final HttpURLConnection b;

    static {
        c = new SparseArray();
    }

    private bn(int i) {
        this(i, null);
    }

    private bn(int i, HttpURLConnection httpURLConnection) {
        this.a = i;
        this.b = httpURLConnection;
    }

    public static bn a(int i) {
        return a(i, null);
    }

    public static bn a(int i, HttpURLConnection httpURLConnection) {
        if ((i / 100 == 6 ? 1 : 0) != 0) {
            bn bnVar = (bn) c.get(i);
            if (bnVar == null) {
                bnVar = new bn(i);
                Logger.d(Logger.NETWORK_TAG, new StringBuilder("caching response: ").append(i).toString());
                c.put(i, bnVar);
                return bnVar;
            } else {
                Logger.d(Logger.NETWORK_TAG, new StringBuilder("using cached response: ").append(i).toString());
                return bnVar;
            }
        } else {
            Logger.v(Logger.NETWORK_TAG, new StringBuilder("response not cacheable: ").append(i).toString());
            return new bn(i, httpURLConnection);
        }
    }
}