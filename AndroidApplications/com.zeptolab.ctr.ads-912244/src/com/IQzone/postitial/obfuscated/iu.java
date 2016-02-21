package com.IQzone.postitial.obfuscated;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Queue;
import java.util.TimeZone;
import java.util.concurrent.Executor;

public class iu extends oa {
    private static final ql a;
    private static final DateFormat b;
    private static final DateFormat c;
    private final String d;
    private final ma e;
    private final hf f;

    static {
        a = new ql();
        b = new SimpleDateFormat("yyyy-MM-dd");
        c = new SimpleDateFormat("HH:mm:ss");
    }

    public iu(Executor executor, Queue queue, String str, ma maVar, hf hfVar) {
        super(executor, queue, 750);
        b.setTimeZone(TimeZone.getTimeZone("UTC"));
        c.setTimeZone(TimeZone.getTimeZone("UTC"));
        this.f = hfVar;
        this.d = str;
        this.e = maVar;
    }

    protected final void a() {
    }

    protected final /* synthetic */ void a(Object obj) {
        iv ivVar = (iv) obj;
        ql qlVar = a;
        Date date = new Date(ivVar.b());
        String str = b.format(date) + "T" + c.format(date) + "Z";
        List arrayList = new ArrayList();
        List arrayList2 = new ArrayList();
        ce ceVar = new ce("PartnerAdSourceId", String.valueOf(ivVar.c().b()));
        ce ceVar2 = new ce("AdTypeId", String.valueOf(ivVar.a()));
        ce ceVar3 = new ce("AdTypePriorityList", qc.a(ivVar.c().c(), ","));
        arrayList2.add(ceVar);
        arrayList2.add(ceVar2);
        arrayList2.add(ceVar3);
        arrayList.add(new df(arrayList2, ivVar.d(), str, 19));
        bd bdVar = new bd(this.f.e(), arrayList, this.d, ei.b(), ei.c(), this.f.d());
        try {
            String str2 = bdVar.d;
            gi a = this.e.a(bdVar);
            try {
                String str3 = a.b;
                if (!str3.equals(str2)) {
                    this.f.b(str3);
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
            throw new ol("<LogTimeoutRunner><3>, ERROR");
        }
    }

    protected void b() {
    }
}