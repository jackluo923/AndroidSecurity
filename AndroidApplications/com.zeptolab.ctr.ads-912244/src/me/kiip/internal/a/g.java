package me.kiip.internal.a;

import android.net.TrafficStats;
import android.os.Build.VERSION;
import android.os.Process;
import com.zeptolab.ctr.ads.R;
import java.util.concurrent.BlockingQueue;

public class g extends Thread {
    private final BlockingQueue a;
    private final f b;
    private final b c;
    private final o d;
    private volatile boolean e;

    public g(BlockingQueue blockingQueue, f fVar, b bVar, o oVar) {
        this.e = false;
        this.a = blockingQueue;
        this.b = fVar;
        this.c = bVar;
        this.d = oVar;
    }

    private void a(l lVar, s sVar) {
        this.d.a(lVar, lVar.a(sVar));
    }

    public void a() {
        this.e = true;
        interrupt();
    }

    public void run() {
        Process.setThreadPriority(R.styleable.MapAttrs_uiZoomControls);
        while (true) {
            try {
                l lVar = (l) this.a.take();
                try {
                    lVar.a("network-queue-take");
                    if (lVar.f()) {
                        lVar.b("network-discard-cancelled");
                    } else {
                        if (VERSION.SDK_INT >= 14) {
                            TrafficStats.setThreadStatsTag(lVar.b());
                        }
                        i a = this.b.a(lVar);
                        lVar.a("network-http-complete");
                        if (a.d && lVar.u()) {
                            lVar.b("not-modified");
                        } else {
                            n a2 = lVar.a(a);
                            lVar.a("network-parse-complete");
                            if (lVar.p() && a2.b != null) {
                                this.c.a(lVar.d(), a2.b);
                                lVar.a("network-cache-written");
                            }
                            lVar.t();
                            this.d.a(lVar, a2);
                        }
                    }
                } catch (s e) {
                    a(lVar, e);
                } catch (Exception e2) {
                    Throwable th = e2;
                    t.a(th, "Unhandled exception %s", new Object[]{th.toString()});
                    this.d.a(lVar, new s(th));
                }
            } catch (InterruptedException e3) {
                if (this.e) {
                }
            }
        }
    }
}