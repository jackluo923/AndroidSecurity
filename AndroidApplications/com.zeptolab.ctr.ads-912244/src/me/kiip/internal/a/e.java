package me.kiip.internal.a;

import android.os.Handler;
import java.util.concurrent.Executor;

public class e implements o {
    private final Executor a;

    class AnonymousClass_1 implements Executor {
        final /* synthetic */ Handler a;

        AnonymousClass_1(Handler handler) {
            this.a = handler;
        }

        public void execute(Runnable runnable) {
            this.a.post(runnable);
        }
    }

    private class a implements Runnable {
        private final l b;
        private final n c;
        private final Runnable d;

        public a(l lVar, n nVar, Runnable runnable) {
            this.b = lVar;
            this.c = nVar;
            this.d = runnable;
        }

        public void run() {
            if (this.b.f()) {
                this.b.b("canceled-at-delivery");
            } else {
                if (this.c.a()) {
                    this.b.a(e.this);
                } else {
                    this.b.b(this.c.c);
                }
                if (this.c.d) {
                    this.b.a("intermediate-response");
                } else {
                    this.b.b("done");
                }
                if (this.d != null) {
                    this.d.run();
                }
            }
        }
    }

    public e(Handler handler) {
        this.a = new AnonymousClass_1(handler);
    }

    public void a(l lVar, n nVar) {
        a(lVar, nVar, null);
    }

    public void a(l lVar, n nVar, Runnable runnable) {
        lVar.t();
        lVar.a("post-response");
        this.a.execute(new a(lVar, nVar, runnable));
    }

    public void a(l lVar, s sVar) {
        lVar.a("post-error");
        this.a.execute(new a(lVar, n.a(sVar), null));
    }
}