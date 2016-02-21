package com.google.ads.b;

import android.os.Bundle;
import java.io.Serializable;
import java.util.HashMap;

public final class x {
    private final String a;
    private HashMap b;

    public x(Bundle bundle) {
        this.a = bundle.getString("action");
        Serializable serializable = bundle.getSerializable("params");
        this.b = serializable instanceof HashMap ? (HashMap) serializable : null;
    }

    private x(String str) {
        this.a = str;
    }

    public x(String str, HashMap hashMap) {
        this(str);
        this.b = hashMap;
    }

    public final Bundle a() {
        Bundle bundle = new Bundle();
        bundle.putString("action", this.a);
        bundle.putSerializable("params", this.b);
        return bundle;
    }

    public final String b() {
        return this.a;
    }

    public final HashMap c() {
        return this.b;
    }
}