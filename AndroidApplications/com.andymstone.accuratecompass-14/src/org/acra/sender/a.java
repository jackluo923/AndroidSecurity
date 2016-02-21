package org.acra.sender;

import android.content.Context;
import android.content.Intent;
import org.acra.ACRA;
import org.acra.ReportField;
import org.acra.b.c;
import org.acra.d;

public class a implements c {
    private final Context a;

    public a(Context context) {
        this.a = context;
    }

    private String b(c cVar) {
        ?[] Arr;
        ReportField[] e = ACRA.getConfig().e();
        Arr = e.length == 0 ? d.b : e;
        StringBuilder stringBuilder = new StringBuilder();
        int length = Arr.length;
        int i = 0;
        while (i < length) {
            ReportField reportField = Arr[i];
            stringBuilder.append(reportField.toString()).append("=");
            stringBuilder.append((String) cVar.get(reportField));
            stringBuilder.append('\n');
            i++;
        }
        return stringBuilder.toString();
    }

    public void a_(c cVar) {
        String toString = new StringBuilder(String.valueOf(this.a.getPackageName())).append(" Crash Report").toString();
        String b = b(cVar);
        Intent intent = new Intent("android.intent.action.SEND");
        intent.addFlags(268435456);
        intent.setType("text/plain");
        intent.putExtra("android.intent.extra.SUBJECT", toString);
        intent.putExtra("android.intent.extra.TEXT", b);
        intent.putExtra("android.intent.extra.EMAIL", new String[]{ACRA.getConfig().p()});
        this.a.startActivity(intent);
    }
}