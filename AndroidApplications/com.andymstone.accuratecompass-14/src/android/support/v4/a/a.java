package android.support.v4.a;

import java.io.FileDescriptor;
import java.io.PrintWriter;

public class a {
    int a;
    b b;
    boolean c;
    boolean d;
    boolean e;
    boolean f;
    boolean g;

    public String a_(Object obj) {
        StringBuilder stringBuilder = new StringBuilder(64);
        android.support.v4.c.a.a(obj, stringBuilder);
        stringBuilder.append("}");
        return stringBuilder.toString();
    }

    public final void a_() {
        this.c = true;
        this.e = false;
        this.d = false;
        b();
    }

    public void a_(int i, b bVar) {
        if (this.b != null) {
            throw new IllegalStateException("There is already a listener registered");
        }
        this.b = bVar;
        this.a = i;
    }

    public void a_(b bVar) {
        if (this.b == null) {
            throw new IllegalStateException("No listener register");
        } else if (this.b != bVar) {
            throw new IllegalArgumentException("Attempting to unregister the wrong listener");
        } else {
            this.b = null;
        }
    }

    public void a_(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        printWriter.print(str);
        printWriter.print("mId=");
        printWriter.print(this.a);
        printWriter.print(" mListener=");
        printWriter.println(this.b);
        if (this.c || this.f || this.g) {
            printWriter.print(str);
            printWriter.print("mStarted=");
            printWriter.print(this.c);
            printWriter.print(" mContentChanged=");
            printWriter.print(this.f);
            printWriter.print(" mProcessingChange=");
            printWriter.println(this.g);
        }
        if (this.d || this.e) {
            printWriter.print(str);
            printWriter.print("mAbandoned=");
            printWriter.print(this.d);
            printWriter.print(" mReset=");
            printWriter.println(this.e);
        }
    }

    protected void b() {
    }

    public void c() {
        this.c = false;
        d();
    }

    protected void d() {
    }

    public void e() {
        f();
        this.e = true;
        this.c = false;
        this.d = false;
        this.f = false;
        this.g = false;
    }

    protected void f() {
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder(64);
        android.support.v4.c.a.a(this, stringBuilder);
        stringBuilder.append(" id=");
        stringBuilder.append(this.a);
        stringBuilder.append("}");
        return stringBuilder.toString();
    }
}