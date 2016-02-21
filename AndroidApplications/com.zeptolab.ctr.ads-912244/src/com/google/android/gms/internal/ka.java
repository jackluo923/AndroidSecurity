package com.google.android.gms.internal;

import java.util.ArrayList;
import java.util.List;

public abstract class ka extends ke {
    protected List aae;

    public final Object a(kb kbVar) {
        return kbVar.g(this.aae);
    }

    public void a(jz jzVar) {
        int size = this.aae == null ? 0 : this.aae.size();
        int i = 0;
        while (i < size) {
            kg kgVar = (kg) this.aae.get(i);
            jzVar.cF(kgVar.tag);
            jzVar.p(kgVar.aai);
            i++;
        }
    }

    protected final boolean a(jy jyVar, int i) {
        int position = jyVar.getPosition();
        if (!jyVar.cv(i)) {
            return false;
        }
        if (this.aae == null) {
            this.aae = new ArrayList();
        }
        this.aae.add(new kg(i, jyVar.e(position, jyVar.getPosition() - position)));
        return true;
    }

    public int c() {
        int i = 0;
        int i2 = 0;
        while (i < (this.aae == null ? 0 : this.aae.size())) {
            kg kgVar = (kg) this.aae.get(i);
            i2 = i2 + jz.cG(kgVar.tag) + kgVar.aai.length;
            i++;
        }
        this.DY = i2;
        return i2;
    }
}