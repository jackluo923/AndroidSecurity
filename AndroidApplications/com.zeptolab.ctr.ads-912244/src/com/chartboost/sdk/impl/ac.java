package com.chartboost.sdk.impl;

import java.util.Iterator;

class ac extends ab {
    private bi a;

    ac() {
        this.a = new bi();
    }

    void a(Class cls, ag agVar) {
        this.a.a(cls, agVar);
    }

    public void a(Object obj, StringBuilder stringBuilder) {
        Object a = y.a(obj);
        if (a == null) {
            stringBuilder.append(" null ");
        } else {
            ag agVar = null;
            Iterator it = bi.a(a.getClass()).iterator();
            while (it.hasNext()) {
                agVar = (ag) this.a.a((Class) it.next());
                if (agVar != null) {
                    break;
                }
            }
            if (agVar == null && a.getClass().isArray()) {
                agVar = (ag) this.a.a((Object)Object[].class);
            }
            if (agVar == null) {
                throw new RuntimeException("json can't serialize type : " + a.getClass());
            }
            agVar.a(a, stringBuilder);
        }
    }
}