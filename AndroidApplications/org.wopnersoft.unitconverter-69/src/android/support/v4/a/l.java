package android.support.v4.a;

import android.support.v4.c.d;
import java.io.FileDescriptor;
import java.io.PrintWriter;

// compiled from: ProGuard
public class l {
    int a;
    m b;
    boolean c;
    boolean d;
    boolean e;
    boolean f;
    boolean g;

    public String a(Object obj) {
        StringBuilder stringBuilder = new StringBuilder(64);
        d.a(obj, stringBuilder);
        stringBuilder.append("}");
        return stringBuilder.toString();
    }

    public final void a() {
        this.c = true;
        this.e = false;
        this.d = false;
        b();
    }

    public void a(int i, m mVar) {
        if (this.b != null) {
            throw new IllegalStateException("There is already a listener registered");
        }
        this.b = mVar;
        this.a = i;
    }

    public void a(m mVar) {
        if (this.b == null) {
            throw new IllegalStateException("No listener register");
        } else if (this.b != mVar) {
            throw new IllegalArgumentException("Attempting to unregister the wrong listener");
        } else {
            this.b = null;
        }
    }

    public void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
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
        this.d = true;
        f();
    }

    protected void f() {
    }

    public void g() {
        h();
        this.e = true;
        this.c = false;
        this.d = false;
        this.f = false;
        this.g = false;
    }

    protected void h() {
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder(64);
        d.a(this, stringBuilder);
        stringBuilder.append(" id=");
        stringBuilder.append(this.a);
        stringBuilder.append("}");
        return stringBuilder.toString();
    }
}