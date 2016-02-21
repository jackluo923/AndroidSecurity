package me.kiip.internal.a;

import android.os.Process;
import com.zeptolab.ctr.ads.R;
import java.util.concurrent.BlockingQueue;
import me.kiip.internal.a.b.a;

public class c extends Thread {
    private static final boolean a;
    private final BlockingQueue b;
    private final BlockingQueue c;
    private final b d;
    private final o e;
    private volatile boolean f;

    class AnonymousClass_1 implements Runnable {
        final /* synthetic */ l a;

        AnonymousClass_1(l lVar) {
            this.a = lVar;
        }

        public void run() {
            try {
                c.this.c.put(this.a);
            } catch (InterruptedException e) {
            }
        }
    }

    static {
        a = t.b;
    }

    public c(BlockingQueue blockingQueue, BlockingQueue blockingQueue2, b bVar, o oVar) {
        this.f = false;
        this.b = blockingQueue;
        this.c = blockingQueue2;
        this.d = bVar;
        this.e = oVar;
    }

    public void a() {
        this.f = true;
        interrupt();
    }

    public void run() {
        if (a) {
            t.a("start new dispatcher", new Object[0]);
        }
        Process.setThreadPriority(R.styleable.MapAttrs_uiZoomControls);
        this.d.a();
        while (true) {
            try {
                l lVar = (l) this.b.take();
                lVar.a("cache-queue-take");
                if (lVar.f()) {
                    lVar.b("cache-discard-canceled");
                } else {
                    a a = this.d.a(lVar.d());
                    if (a == null) {
                        lVar.a("cache-miss");
                        this.c.put(lVar);
                    } else if (a.a()) {
                        lVar.a("cache-hit-expired");
                        lVar.a(a);
                        this.c.put(lVar);
                    } else {
                        lVar.a("cache-hit");
                        n a2 = lVar.a(new i(a.a, a.f));
                        lVar.a("cache-hit-parsed");
                        if (a.b()) {
                            lVar.a("cache-hit-refresh-needed");
                            lVar.a(a);
                            a2.d = true;
                            this.e.a(lVar, a2, new AnonymousClass_1(lVar));
                        } else {
                            this.e.a(lVar, a2);
                        }
                    }
                }
            } catch (InterruptedException e) {
                if (this.f) {
                }
            }
        }
    }
}