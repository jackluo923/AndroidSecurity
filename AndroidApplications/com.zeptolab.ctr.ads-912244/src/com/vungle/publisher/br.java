package com.vungle.publisher;

import com.vungle.publisher.bz.a;
import java.util.ArrayList;
import java.util.List;

public abstract class br implements bw, a {
    public final String a;
    protected final int b;
    protected final List c;

    protected br(String str, int i) {
        this.c = new ArrayList();
        this.a = str;
        this.b = i;
    }

    public void a(bw.a... aVarArr) {
        if (aVarArr != null && aVarArr.length > 0) {
            int length = aVarArr.length;
            int i = 0;
            while (i < length) {
                this.c.add(aVarArr[i]);
                i++;
            }
        }
    }
}