package com.IQzone.postitial.obfuscated;

import com.zeptolab.ctr.scorer.GoogleScorer;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Queue;
import java.util.TimeZone;
import java.util.concurrent.Executor;

public class hu extends oa {
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

    public hu(Executor executor, Queue queue, String str, ma maVar, hf hfVar) {
        super(executor, queue, 750);
        b.setTimeZone(TimeZone.getTimeZone("UTC"));
        c.setTimeZone(TimeZone.getTimeZone("UTC"));
        this.f = hfVar;
        this.d = str;
        this.e = maVar;
    }

    public static int a(dz dzVar) {
        int[] iArr = hv.a;
        dzVar.ordinal();
        return GoogleScorer.CLIENT_PLUS;
    }

    protected final void a() {
    }

    protected final /* synthetic */ void a(Object obj) {
        hw hwVar = (hw) obj;
        ql qlVar = a;
        Date date = new Date(hwVar.c());
        String str = b.format(date) + "T" + c.format(date) + "Z";
        List arrayList = new ArrayList();
        List arrayList2 = new ArrayList();
        ce ceVar = new ce("PartnerAdSourceId", String.valueOf(hwVar.d().b()));
        ce ceVar2 = new ce("AdTriggeringEventId", String.valueOf(hwVar.a()));
        ce ceVar3 = new ce("AdTypeId", String.valueOf(hwVar.b()));
        ce ceVar4 = new ce("AdTypePriorityList", qc.a(hwVar.d().c(), ","));
        arrayList2.add(ceVar);
        arrayList2.add(ceVar2);
        arrayList2.add(ceVar3);
        arrayList2.add(ceVar4);
        arrayList.add(new df(arrayList2, hwVar.e(), str, 18));
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
            throw new ol("<LogImpressionRunner><3>, ERROR");
        }
    }

    protected void b() {
    }
}