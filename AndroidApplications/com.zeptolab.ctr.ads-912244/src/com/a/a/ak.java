package com.a.a;

import java.util.ArrayList;

final class ak extends ThreadLocal {
    ak() {
    }

    protected ArrayList a() {
        return new ArrayList();
    }

    protected /* synthetic */ Object initialValue() {
        return a();
    }
}