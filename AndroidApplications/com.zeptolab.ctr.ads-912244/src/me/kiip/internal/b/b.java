package me.kiip.internal.b;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.LinkedList;
import java.util.List;

public class b {
    protected static final Comparator a;
    private List b;
    private List c;
    private int d;
    private final int e;

    static {
        a = new Comparator() {
            public int a(byte[] bArr, byte[] bArr2) {
                return bArr.length - bArr2.length;
            }

            public /* synthetic */ int compare(Object obj, Object obj2) {
                return a((byte[]) obj, (byte[]) obj2);
            }
        };
    }

    public b(int i) {
        this.b = new LinkedList();
        this.c = new ArrayList(64);
        this.d = 0;
        this.e = i;
    }

    private synchronized void a() {
        while (this.d > this.e) {
            byte[] bArr = (byte[]) this.b.remove(0);
            this.c.remove(bArr);
            this.d -= bArr.length;
        }
    }

    public synchronized void a(byte[] bArr) {
        if (bArr != null) {
            if (bArr.length <= this.e) {
                this.b.add(bArr);
                int binarySearch = Collections.binarySearch(this.c, bArr, a);
                if (binarySearch < 0) {
                    binarySearch = (-binarySearch) - 1;
                }
                this.c.add(binarySearch, bArr);
                this.d += bArr.length;
                a();
            }
        }
    }

    public synchronized byte[] a(int i) {
        byte[] bArr;
        int i2 = 0;
        while (i2 < this.c.size()) {
            bArr = (byte[]) this.c.get(i2);
            if (bArr.length >= i) {
                this.d -= bArr.length;
                this.c.remove(i2);
                this.b.remove(bArr);
                break;
            } else {
                i2++;
            }
        }
        bArr = new byte[i];
        return bArr;
    }
}