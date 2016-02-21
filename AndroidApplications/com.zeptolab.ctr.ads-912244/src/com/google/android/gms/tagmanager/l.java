package com.google.android.gms.tagmanager;

import android.os.Build.VERSION;

class l {
    final a TK;

    public static interface a {
        int sizeOf(Object obj, Object obj2);
    }

    public l() {
        this.TK = new a() {
            public int sizeOf(Object obj, Object obj2) {
                return 1;
            }
        };
    }

    public k a(int i, a aVar) {
        if (i <= 0) {
            throw new IllegalArgumentException("maxSize <= 0");
        } else if (iA() < 12) {
            return new da(i, aVar);
        } else {
            return new bb(i, aVar);
        }
    }

    int iA() {
        return VERSION.SDK_INT;
    }
}