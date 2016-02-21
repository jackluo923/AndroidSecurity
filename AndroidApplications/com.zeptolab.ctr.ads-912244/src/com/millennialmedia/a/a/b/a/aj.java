package com.millennialmedia.a.a.b.a;

import com.millennialmedia.a.a.ak;
import com.millennialmedia.a.a.d.a;
import com.millennialmedia.a.a.d.e;
import java.sql.Timestamp;
import java.util.Date;

class aj extends ak {
    final /* synthetic */ ak a;
    final /* synthetic */ ai b;

    aj(ai aiVar, ak akVar) {
        this.b = aiVar;
        this.a = akVar;
    }

    public Timestamp a(a aVar) {
        Date date = (Date) this.a.b(aVar);
        return date != null ? new Timestamp(date.getTime()) : null;
    }

    public void a(e eVar, Object obj) {
        this.a.a(eVar, obj);
    }

    public /* synthetic */ Object b(a aVar) {
        return a(aVar);
    }
}