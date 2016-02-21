package android.support.v4.content;

import android.support.v4.b.a;
import java.io.PrintWriter;

public final class i {
    int a;
    j b;
    boolean c;
    boolean d;
    boolean e;
    boolean f;

    public final void a() {
        this.c = true;
        this.e = false;
        this.d = false;
    }

    public final void a(int i, j jVar) {
        if (this.b != null) {
            throw new IllegalStateException("There is already a listener registered");
        }
        this.b = jVar;
        this.a = i;
    }

    public final void a(j jVar) {
        if (this.b == null) {
            throw new IllegalStateException("No listener register");
        } else if (this.b != jVar) {
            throw new IllegalArgumentException("Attempting to unregister the wrong listener");
        } else {
            this.b = null;
        }
    }

    public final void a(String str, PrintWriter printWriter) {
        printWriter.print(str);
        printWriter.print("mId=");
        printWriter.print(this.a);
        printWriter.print(" mListener=");
        printWriter.println(this.b);
        printWriter.print(str);
        printWriter.print("mStarted=");
        printWriter.print(this.c);
        printWriter.print(" mContentChanged=");
        printWriter.print(this.f);
        printWriter.print(" mAbandoned=");
        printWriter.print(this.d);
        printWriter.print(" mReset=");
        printWriter.println(this.e);
    }

    public final void b() {
        this.c = false;
    }

    public final void c() {
        this.d = true;
    }

    public final void d() {
        this.e = true;
        this.c = false;
        this.d = false;
        this.f = false;
    }

    public final String toString() {
        StringBuilder stringBuilder = new StringBuilder(64);
        a.a(this, stringBuilder);
        stringBuilder.append(" id=");
        stringBuilder.append(this.a);
        stringBuilder.append("}");
        return stringBuilder.toString();
    }
}