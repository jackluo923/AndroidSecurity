package com.IQzone.postitial.obfuscated;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Queue;
import java.util.TimeZone;
import java.util.concurrent.Executor;

public class ib extends oa {
    private static final ql a;
    private static DateFormat e;
    private static DateFormat f;
    private final String b;
    private final ma c;
    private final hf d;

    static {
        a = new ql();
        e = new SimpleDateFormat("yyyy-MM-dd");
        f = new SimpleDateFormat("HH:mm:ss");
    }

    public ib(Executor executor, Queue queue, String str, ma maVar, hf hfVar) {
        super(executor, queue, 750);
        e.setTimeZone(TimeZone.getTimeZone("UTC"));
        f.setTimeZone(TimeZone.getTimeZone("UTC"));
        this.d = hfVar;
        this.b = str;
        this.c = maVar;
    }

    protected final void a() {
    }

    protected final /* synthetic */ void a(Object obj) {
        ic icVar = (ic) obj;
        ql qlVar = a;
        Date date = new Date(icVar.b());
        String str = e.format(date) + "T" + f.format(date) + "Z";
        List arrayList = new ArrayList();
        List arrayList2 = new ArrayList();
        ce ceVar = new ce("PartnerAdSourceId", icVar.c() == null ? "null" : String.valueOf(icVar.c().b()));
        ce ceVar2 = new ce("AdTriggeringEventId", String.valueOf(icVar.a()));
        arrayList2.add(ceVar);
        arrayList2.add(ceVar2);
        arrayList.add(new df(arrayList2, icVar.d(), str, 1));
        bd bdVar = new bd(this.d.e(), arrayList, this.b, ei.b(), ei.c(), this.d.d());
        try {
            str = bdVar.d;
            gi a = this.c.a(bdVar);
            try {
                String str2 = a.b;
                if (!str2.equals(str)) {
                    this.d.b(str2);
                }
            } catch (NumberFormatException e) {
                qlVar = a;
            }
            ql qlVar2 = a;
            new StringBuilder("Log event response: ").append(a).toString();
        } catch (mc e2) {
            qlVar = a;
        } catch (md e3) {
            qlVar = a;
            throw new ol("<LogRequestedRunner><3>, ERROR:");
        }
        qlVar = a;
    }

    protected void b() {
    }
}