package com.google.android.gms.internal;

import java.util.Arrays;

public final class kg {
    final byte[] aai;
    final int tag;

    kg(int i, byte[] bArr) {
        this.tag = i;
        this.aai = bArr;
    }

    public boolean equals(kg kgVar) {
        if (kgVar == this) {
            return true;
        }
        if (!(kgVar instanceof kg)) {
            return false;
        }
        kgVar = kgVar;
        return this.tag == kgVar.tag && Arrays.equals(this.aai, kgVar.aai);
    }

    public int hashCode() {
        return (this.tag + 527) * 31 + Arrays.hashCode(this.aai);
    }
}