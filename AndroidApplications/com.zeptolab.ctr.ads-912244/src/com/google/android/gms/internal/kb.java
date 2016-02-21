package com.google.android.gms.internal;

import com.zeptolab.ctr.ads.R;
import java.io.IOException;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.List;

public class kb {
    protected final Class aaf;
    protected final boolean aag;
    protected final int tag;
    protected final int type;

    private kb(int i, Class cls, int i2, boolean z) {
        this.type = i;
        this.aaf = cls;
        this.tag = i2;
        this.aag = z;
    }

    public static kb a(int i, Class cls, int i2) {
        return new kb(i, cls, i2, false);
    }

    protected void a(kg kgVar, List list) {
        list.add(o(jy.n(kgVar.aai)));
    }

    protected boolean cI(int i) {
        return i == this.tag;
    }

    final Object g(List list) {
        int i = 0;
        if (list == null) {
            return null;
        }
        kg kgVar;
        if (this.aag) {
            List arrayList = new ArrayList();
            int i2 = 0;
            while (i2 < list.size()) {
                kgVar = (kg) list.get(i2);
                if (cI(kgVar.tag) && kgVar.aai.length != 0) {
                    a(kgVar, arrayList);
                }
                i2++;
            }
            i2 = arrayList.size();
            if (i2 == 0) {
                return null;
            }
            Object cast = this.aaf.cast(Array.newInstance(this.aaf.getComponentType(), i2));
            while (i < i2) {
                Array.set(cast, i, arrayList.get(i));
                i++;
            }
            return cast;
        } else {
            i = list.size() - 1;
            kg kgVar2 = null;
            while (kgVar2 == null && i >= 0) {
                kgVar = (kg) list.get(i);
                if (!cI(kgVar.tag) || kgVar.aai.length == 0) {
                    kgVar = kgVar2;
                }
                i--;
                kgVar2 = kgVar;
            }
            return kgVar2 == null ? null : this.aaf.cast(o(jy.n(kgVar2.aai)));
        }
    }

    protected Object o(jy jyVar) {
        Class componentType = this.aag ? this.aaf.getComponentType() : this.aaf;
        try {
            ke keVar;
            switch (this.type) {
                case R.styleable.MapAttrs_uiZoomControls:
                    keVar = (ke) componentType.newInstance();
                    jyVar.a(keVar, kh.cK(this.tag));
                    return keVar;
                case R.styleable.MapAttrs_uiZoomGestures:
                    keVar = (ke) componentType.newInstance();
                    jyVar.a(keVar);
                    return keVar;
                default:
                    throw new IllegalArgumentException("Unknown type " + this.type);
            }
        } catch (InstantiationException e) {
            throw new IllegalArgumentException("Error creating instance of class " + componentType, e);
        } catch (IllegalAccessException e2) {
            throw new IllegalArgumentException("Error creating instance of class " + componentType, e2);
        } catch (IOException e3) {
            throw new IllegalArgumentException("Error reading extension field", e3);
        }
    }
}