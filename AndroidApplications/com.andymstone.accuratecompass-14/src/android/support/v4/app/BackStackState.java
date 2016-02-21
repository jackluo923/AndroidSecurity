package android.support.v4.app;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import android.util.Log;
import java.util.ArrayList;

final class BackStackState implements Parcelable {
    public static final Creator CREATOR;
    final int[] a;
    final int b;
    final int c;
    final String d;
    final int e;
    final int f;
    final CharSequence g;
    final int h;
    final CharSequence i;

    static {
        CREATOR = new d();
    }

    public BackStackState(Parcel parcel) {
        this.a = parcel.createIntArray();
        this.b = parcel.readInt();
        this.c = parcel.readInt();
        this.d = parcel.readString();
        this.e = parcel.readInt();
        this.f = parcel.readInt();
        this.g = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.h = parcel.readInt();
        this.i = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
    }

    public BackStackState(q qVar, b bVar) {
        c cVar = bVar.b;
        int i = 0;
        while (cVar != null) {
            if (cVar.i != null) {
                i += cVar.i.size();
            }
            cVar = cVar.a;
        }
        this.a = new int[(i + bVar.d * 7)];
        if (bVar.k) {
            c cVar2 = bVar.b;
            i = 0;
            while (cVar2 != null) {
                int i2 = i + 1;
                this.a[i] = cVar2.c;
                int i3 = i2 + 1;
                this.a[i2] = cVar2.d != null ? cVar2.d.o : -1;
                int i4 = i3 + 1;
                this.a[i3] = cVar2.e;
                i2 = i4 + 1;
                this.a[i4] = cVar2.f;
                i4 = i2 + 1;
                this.a[i2] = cVar2.g;
                i2 = i4 + 1;
                this.a[i4] = cVar2.h;
                if (cVar2.i != null) {
                    int size = cVar2.i.size();
                    i4 = i2 + 1;
                    this.a[i2] = size;
                    i2 = 0;
                    while (i2 < size) {
                        i3 = i4 + 1;
                        this.a[i4] = ((Fragment) cVar2.i.get(i2)).o;
                        i2++;
                        i4 = i3;
                    }
                    i = i4;
                } else {
                    i = i2 + 1;
                    this.a[i2] = 0;
                }
                cVar2 = cVar2.a;
            }
            this.b = bVar.i;
            this.c = bVar.j;
            this.d = bVar.m;
            this.e = bVar.o;
            this.f = bVar.p;
            this.g = bVar.q;
            this.h = bVar.r;
            this.i = bVar.s;
        } else {
            throw new IllegalStateException("Not on back stack");
        }
    }

    public b a(q qVar) {
        b bVar = new b(qVar);
        int i = 0;
        int i2 = 0;
        while (i2 < this.a.length) {
            c cVar = new c();
            int i3 = i2 + 1;
            cVar.c = this.a[i2];
            if (q.a) {
                Log.v("FragmentManager", "Instantiate " + bVar + " op #" + i + " base fragment #" + this.a[i3]);
            }
            int i4 = i3 + 1;
            i2 = this.a[i3];
            if (i2 >= 0) {
                cVar.d = (Fragment) qVar.f.get(i2);
            } else {
                cVar.d = null;
            }
            i3 = i4 + 1;
            cVar.e = this.a[i4];
            i4 = i3 + 1;
            cVar.f = this.a[i3];
            i3 = i4 + 1;
            cVar.g = this.a[i4];
            int i5 = i3 + 1;
            cVar.h = this.a[i3];
            i4 = i5 + 1;
            int i6 = this.a[i5];
            if (i6 > 0) {
                cVar.i = new ArrayList(i6);
                i3 = 0;
                while (i3 < i6) {
                    if (q.a) {
                        Log.v("FragmentManager", "Instantiate " + bVar + " set remove fragment #" + this.a[i4]);
                    }
                    i5 = i4 + 1;
                    cVar.i.add((Fragment) qVar.f.get(this.a[i4]));
                    i3++;
                    i4 = i5;
                }
            }
            bVar.a(cVar);
            i++;
            i2 = i4;
        }
        bVar.i = this.b;
        bVar.j = this.c;
        bVar.m = this.d;
        bVar.o = this.e;
        bVar.k = true;
        bVar.p = this.f;
        bVar.q = this.g;
        bVar.r = this.h;
        bVar.s = this.i;
        bVar.a(1);
        return bVar;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeIntArray(this.a);
        parcel.writeInt(this.b);
        parcel.writeInt(this.c);
        parcel.writeString(this.d);
        parcel.writeInt(this.e);
        parcel.writeInt(this.f);
        TextUtils.writeToParcel(this.g, parcel, 0);
        parcel.writeInt(this.h);
        TextUtils.writeToParcel(this.i, parcel, 0);
    }
}