package android.support.v4.app;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.util.Log;

final class FragmentState implements Parcelable {
    public static final Creator CREATOR;
    final String a;
    final int b;
    final boolean c;
    final int d;
    final int e;
    final String f;
    final boolean g;
    final boolean h;
    final Bundle i;
    Bundle j;
    Fragment k;

    static {
        CREATOR = new v();
    }

    public FragmentState(Parcel parcel) {
        boolean z = true;
        this.a = parcel.readString();
        this.b = parcel.readInt();
        this.c = parcel.readInt() != 0;
        this.d = parcel.readInt();
        this.e = parcel.readInt();
        this.f = parcel.readString();
        this.g = parcel.readInt() != 0;
        if (parcel.readInt() == 0) {
            z = false;
        }
        this.h = z;
        this.i = parcel.readBundle();
        this.j = parcel.readBundle();
    }

    public FragmentState(Fragment fragment) {
        this.a = fragment.getClass().getName();
        this.b = fragment.o;
        this.c = fragment.x;
        this.d = fragment.F;
        this.e = fragment.G;
        this.f = fragment.H;
        this.g = fragment.K;
        this.h = fragment.J;
        this.i = fragment.q;
    }

    public Fragment a(Context context, Fragment fragment) {
        if (this.k != null) {
            return this.k;
        }
        if (this.i != null) {
            this.i.setClassLoader(context.getClassLoader());
        }
        this.k = Fragment.a(context, this.a, this.i);
        if (this.j != null) {
            this.j.setClassLoader(context.getClassLoader());
            this.k.m = this.j;
        }
        this.k.a(this.b, fragment);
        this.k.x = this.c;
        this.k.z = true;
        this.k.F = this.d;
        this.k.G = this.e;
        this.k.H = this.f;
        this.k.K = this.g;
        this.k.J = this.h;
        this.k.B = context.b;
        if (q.a) {
            Log.v("FragmentManager", "Instantiated fragment " + this.k);
        }
        return this.k;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        int i2 = 1;
        parcel.writeString(this.a);
        parcel.writeInt(this.b);
        parcel.writeInt(this.c ? 1 : 0);
        parcel.writeInt(this.d);
        parcel.writeInt(this.e);
        parcel.writeString(this.f);
        parcel.writeInt(this.g ? 1 : 0);
        if (!this.h) {
            i2 = 0;
        }
        parcel.writeInt(i2);
        parcel.writeBundle(this.i);
        parcel.writeBundle(this.j);
    }
}