package android.support.v4.app;

import android.support.v4.c.a;
import android.support.v4.c.c;
import android.util.Log;
import java.io.FileDescriptor;
import java.io.PrintWriter;

class ac extends aa {
    static boolean a;
    final c b;
    final c c;
    final String d;
    i e;
    boolean f;
    boolean g;

    static {
        a = false;
    }

    ac(String str, i iVar, boolean z) {
        this.b = new c();
        this.c = new c();
        this.d = str;
        this.e = iVar;
        this.f = z;
    }

    void a(i iVar) {
        this.e = iVar;
    }

    public void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        int i = 0;
        if (this.b.a() > 0) {
            printWriter.print(str);
            printWriter.println("Active Loaders:");
            String str2 = str + "    ";
            int i2 = 0;
            while (i2 < this.b.a()) {
                ad adVar = (ad) this.b.b(i2);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(this.b.a(i2));
                printWriter.print(": ");
                printWriter.println(adVar.toString());
                adVar.a(str2, fileDescriptor, printWriter, strArr);
                i2++;
            }
        }
        if (this.c.a() > 0) {
            printWriter.print(str);
            printWriter.println("Inactive Loaders:");
            String str3 = str + "    ";
            while (i < this.c.a()) {
                adVar = (ad) this.c.b(i);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(this.c.a(i));
                printWriter.print(": ");
                printWriter.println(adVar.toString());
                adVar.a(str3, fileDescriptor, printWriter, strArr);
                i++;
            }
        }
    }

    public boolean a() {
        int a = this.b.a();
        int i = 0;
        boolean z = false;
        while (i < a) {
            int i2;
            ad adVar = (ad) this.b.b(i);
            i2 = (!adVar.h || adVar.f) ? 0 : 1;
            z |= i2;
            i++;
        }
        return z;
    }

    void b() {
        if (a) {
            Log.v("LoaderManager", "Starting in " + this);
        }
        if (this.f) {
            Throwable runtimeException = new RuntimeException("here");
            runtimeException.fillInStackTrace();
            Log.w("LoaderManager", "Called doStart when already started: " + this, runtimeException);
        } else {
            this.f = true;
            int i = this.b.a() - 1;
            while (i >= 0) {
                ((ad) this.b.b(i)).a();
                i--;
            }
        }
    }

    void c() {
        if (a) {
            Log.v("LoaderManager", "Stopping in " + this);
        }
        if (this.f) {
            int i = this.b.a() - 1;
            while (i >= 0) {
                ((ad) this.b.b(i)).e();
                i--;
            }
            this.f = false;
        } else {
            Throwable runtimeException = new RuntimeException("here");
            runtimeException.fillInStackTrace();
            Log.w("LoaderManager", "Called doStop when not started: " + this, runtimeException);
        }
    }

    void d() {
        if (a) {
            Log.v("LoaderManager", "Retaining in " + this);
        }
        if (this.f) {
            this.g = true;
            this.f = false;
            int i = this.b.a() - 1;
            while (i >= 0) {
                ((ad) this.b.b(i)).b();
                i--;
            }
        } else {
            Throwable runtimeException = new RuntimeException("here");
            runtimeException.fillInStackTrace();
            Log.w("LoaderManager", "Called doRetain when not started: " + this, runtimeException);
        }
    }

    void e() {
        if (this.g) {
            if (a) {
                Log.v("LoaderManager", "Finished Retaining in " + this);
            }
            this.g = false;
            int i = this.b.a() - 1;
            while (i >= 0) {
                ((ad) this.b.b(i)).c();
                i--;
            }
        }
    }

    void f() {
        int i = this.b.a() - 1;
        while (i >= 0) {
            ((ad) this.b.b(i)).k = true;
            i--;
        }
    }

    void g() {
        int i = this.b.a() - 1;
        while (i >= 0) {
            ((ad) this.b.b(i)).d();
            i--;
        }
    }

    void h() {
        int i;
        if (!this.g) {
            if (a) {
                Log.v("LoaderManager", "Destroying Active in " + this);
            }
            i = this.b.a() - 1;
            while (i >= 0) {
                ((ad) this.b.b(i)).f();
                i--;
            }
            this.b.b();
        }
        if (a) {
            Log.v("LoaderManager", "Destroying Inactive in " + this);
        }
        i = this.c.a() - 1;
        while (i >= 0) {
            ((ad) this.c.b(i)).f();
            i--;
        }
        this.c.b();
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder(128);
        stringBuilder.append("LoaderManager{");
        stringBuilder.append(Integer.toHexString(System.identityHashCode(this)));
        stringBuilder.append(" in ");
        a.a(this.e, stringBuilder);
        stringBuilder.append("}}");
        return stringBuilder.toString();
    }
}