package com.wopnersoft.unitconverter.plus.util;

import android.os.Bundle;
import android.widget.Spinner;
import com.actionbarsherlock.R;
import com.actionbarsherlock.app.SherlockActivity;

// compiled from: ProGuard
public class SqliteRawViewer extends SherlockActivity {
    private Spinner a;

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void a(int r14) {
        throw new UnsupportedOperationException("Method not decompiled: com.wopnersoft.unitconverter.plus.util.SqliteRawViewer.a(int):void");
        /*
        r13 = this;
        r12 = 1;
        r2 = 0;
        r0 = 2131034419; // 0x7f050133 float:1.7679355E38 double:1.0528708965E-314;
        r0 = r13.findViewById(r0);
        r0 = (android.widget.TableLayout) r0;
        r0.removeAllViews();
        if (r14 != 0) goto L_0x00b6;
    L_0x0010:
        r1 = new com.wopnersoft.unitconverter.plus.util.aa;
        r1.<init>(r13);
        r1.a();
        r4 = r1.d();	 Catch:{ Exception -> 0x020c }
        r1 = r4.moveToFirst();	 Catch:{ Exception -> 0x020c }
        if (r1 == 0) goto L_0x0052;
    L_0x0022:
        r3 = new android.widget.TableRow;	 Catch:{ Exception -> 0x020c }
        r1 = r13.getApplicationContext();	 Catch:{ Exception -> 0x020c }
        r3.<init>(r1);	 Catch:{ Exception -> 0x020c }
        r5 = r4.getColumnNames();	 Catch:{ Exception -> 0x020c }
        r6 = r5.length;	 Catch:{ Exception -> 0x020c }
        r1 = r2;
    L_0x0031:
        if (r1 < r6) goto L_0x005c;
    L_0x0033:
        r0.addView(r3);	 Catch:{ Exception -> 0x020c }
        r1 = r2;
    L_0x0037:
        r5 = new android.widget.TableRow;	 Catch:{ Exception -> 0x020c }
        r3 = r13.getApplicationContext();	 Catch:{ Exception -> 0x020c }
        r5.<init>(r3);	 Catch:{ Exception -> 0x020c }
        r3 = r2;
    L_0x0041:
        r6 = r4.getColumnCount();	 Catch:{ Exception -> 0x020c }
        if (r3 < r6) goto L_0x0086;
    L_0x0047:
        r0.addView(r5);	 Catch:{ Exception -> 0x020c }
        r1 = r1 + 1;
        r3 = r4.moveToNext();	 Catch:{ Exception -> 0x020c }
        if (r3 != 0) goto L_0x0037;
    L_0x0052:
        r0 = r4.isClosed();	 Catch:{ Exception -> 0x020c }
        if (r0 != 0) goto L_0x005b;
    L_0x0058:
        r4.close();	 Catch:{ Exception -> 0x020c }
    L_0x005b:
        return;
    L_0x005c:
        r7 = r5[r1];	 Catch:{ Exception -> 0x020c }
        r8 = new android.widget.TextView;	 Catch:{ Exception -> 0x020c }
        r9 = r13.getApplicationContext();	 Catch:{ Exception -> 0x020c }
        r8.<init>(r9);	 Catch:{ Exception -> 0x020c }
        r8.setText(r7);	 Catch:{ Exception -> 0x020c }
        r7 = 2131165207; // 0x7f070017 float:1.7944625E38 double:1.0529355144E-314;
        r8.setBackgroundResource(r7);	 Catch:{ Exception -> 0x020c }
        r7 = 20;
        r9 = 20;
        r10 = 20;
        r11 = 20;
        r8.setPadding(r7, r9, r10, r11);	 Catch:{ Exception -> 0x020c }
        r7 = -16777216; // 0xffffffffff000000 float:-1.7014118E38 double:NaN;
        r8.setTextColor(r7);	 Catch:{ Exception -> 0x020c }
        r3.addView(r8);	 Catch:{ Exception -> 0x020c }
        r1 = r1 + 1;
        goto L_0x0031;
    L_0x0086:
        r6 = new android.widget.TextView;	 Catch:{ Exception -> 0x020c }
        r7 = r13.getApplicationContext();	 Catch:{ Exception -> 0x020c }
        r6.<init>(r7);	 Catch:{ Exception -> 0x020c }
        r7 = r4.getString(r3);	 Catch:{ Exception -> 0x020c }
        r6.setText(r7);	 Catch:{ Exception -> 0x020c }
        r7 = 20;
        r8 = 20;
        r9 = 20;
        r10 = 20;
        r6.setPadding(r7, r8, r9, r10);	 Catch:{ Exception -> 0x020c }
        r7 = -16777216; // 0xffffffffff000000 float:-1.7014118E38 double:NaN;
        r6.setTextColor(r7);	 Catch:{ Exception -> 0x020c }
        r7 = r1 % 2;
        if (r7 != r12) goto L_0x00b0;
    L_0x00aa:
        r7 = -3355444; // 0xffffffffffcccccc float:NaN double:NaN;
        r6.setBackgroundColor(r7);	 Catch:{ Exception -> 0x020c }
    L_0x00b0:
        r5.addView(r6);	 Catch:{ Exception -> 0x020c }
        r3 = r3 + 1;
        goto L_0x0041;
    L_0x00b6:
        if (r14 != r12) goto L_0x0162;
    L_0x00b8:
        r1 = new com.wopnersoft.unitconverter.plus.util.au;
        r1.<init>(r13);
        r1.a();
        r4 = r1.c();	 Catch:{ Exception -> 0x0105 }
        r1 = r4.moveToFirst();	 Catch:{ Exception -> 0x0105 }
        if (r1 == 0) goto L_0x00fa;
    L_0x00ca:
        r3 = new android.widget.TableRow;	 Catch:{ Exception -> 0x0105 }
        r1 = r13.getApplicationContext();	 Catch:{ Exception -> 0x0105 }
        r3.<init>(r1);	 Catch:{ Exception -> 0x0105 }
        r5 = r4.getColumnNames();	 Catch:{ Exception -> 0x0105 }
        r6 = r5.length;	 Catch:{ Exception -> 0x0105 }
        r1 = r2;
    L_0x00d9:
        if (r1 < r6) goto L_0x0108;
    L_0x00db:
        r0.addView(r3);	 Catch:{ Exception -> 0x0105 }
        r1 = r2;
    L_0x00df:
        r5 = new android.widget.TableRow;	 Catch:{ Exception -> 0x0105 }
        r3 = r13.getApplicationContext();	 Catch:{ Exception -> 0x0105 }
        r5.<init>(r3);	 Catch:{ Exception -> 0x0105 }
        r3 = r2;
    L_0x00e9:
        r6 = r4.getColumnCount();	 Catch:{ Exception -> 0x0105 }
        if (r3 < r6) goto L_0x0132;
    L_0x00ef:
        r0.addView(r5);	 Catch:{ Exception -> 0x0105 }
        r1 = r1 + 1;
        r3 = r4.moveToNext();	 Catch:{ Exception -> 0x0105 }
        if (r3 != 0) goto L_0x00df;
    L_0x00fa:
        r0 = r4.isClosed();	 Catch:{ Exception -> 0x0105 }
        if (r0 != 0) goto L_0x005b;
    L_0x0100:
        r4.close();	 Catch:{ Exception -> 0x0105 }
        goto L_0x005b;
    L_0x0105:
        r0 = move-exception;
        goto L_0x005b;
    L_0x0108:
        r7 = r5[r1];	 Catch:{ Exception -> 0x0105 }
        r8 = new android.widget.TextView;	 Catch:{ Exception -> 0x0105 }
        r9 = r13.getApplicationContext();	 Catch:{ Exception -> 0x0105 }
        r8.<init>(r9);	 Catch:{ Exception -> 0x0105 }
        r8.setText(r7);	 Catch:{ Exception -> 0x0105 }
        r7 = 2131165207; // 0x7f070017 float:1.7944625E38 double:1.0529355144E-314;
        r8.setBackgroundResource(r7);	 Catch:{ Exception -> 0x0105 }
        r7 = 20;
        r9 = 20;
        r10 = 20;
        r11 = 20;
        r8.setPadding(r7, r9, r10, r11);	 Catch:{ Exception -> 0x0105 }
        r7 = -16777216; // 0xffffffffff000000 float:-1.7014118E38 double:NaN;
        r8.setTextColor(r7);	 Catch:{ Exception -> 0x0105 }
        r3.addView(r8);	 Catch:{ Exception -> 0x0105 }
        r1 = r1 + 1;
        goto L_0x00d9;
    L_0x0132:
        r6 = new android.widget.TextView;	 Catch:{ Exception -> 0x0105 }
        r7 = r13.getApplicationContext();	 Catch:{ Exception -> 0x0105 }
        r6.<init>(r7);	 Catch:{ Exception -> 0x0105 }
        r7 = r4.getString(r3);	 Catch:{ Exception -> 0x0105 }
        r6.setText(r7);	 Catch:{ Exception -> 0x0105 }
        r7 = 20;
        r8 = 20;
        r9 = 20;
        r10 = 20;
        r6.setPadding(r7, r8, r9, r10);	 Catch:{ Exception -> 0x0105 }
        r7 = -16777216; // 0xffffffffff000000 float:-1.7014118E38 double:NaN;
        r6.setTextColor(r7);	 Catch:{ Exception -> 0x0105 }
        r7 = r1 % 2;
        if (r7 != r12) goto L_0x015c;
    L_0x0156:
        r7 = -3355444; // 0xffffffffffcccccc float:NaN double:NaN;
        r6.setBackgroundColor(r7);	 Catch:{ Exception -> 0x0105 }
    L_0x015c:
        r5.addView(r6);	 Catch:{ Exception -> 0x0105 }
        r3 = r3 + 1;
        goto L_0x00e9;
    L_0x0162:
        r1 = new com.wopnersoft.unitconverter.plus.util.r;
        r1.<init>(r13);
        r1.a();
        r4 = r1.b();	 Catch:{ Exception -> 0x01af }
        r1 = r4.moveToFirst();	 Catch:{ Exception -> 0x01af }
        if (r1 == 0) goto L_0x01a4;
    L_0x0174:
        r3 = new android.widget.TableRow;	 Catch:{ Exception -> 0x01af }
        r1 = r13.getApplicationContext();	 Catch:{ Exception -> 0x01af }
        r3.<init>(r1);	 Catch:{ Exception -> 0x01af }
        r5 = r4.getColumnNames();	 Catch:{ Exception -> 0x01af }
        r6 = r5.length;	 Catch:{ Exception -> 0x01af }
        r1 = r2;
    L_0x0183:
        if (r1 < r6) goto L_0x01b2;
    L_0x0185:
        r0.addView(r3);	 Catch:{ Exception -> 0x01af }
        r1 = r2;
    L_0x0189:
        r5 = new android.widget.TableRow;	 Catch:{ Exception -> 0x01af }
        r3 = r13.getApplicationContext();	 Catch:{ Exception -> 0x01af }
        r5.<init>(r3);	 Catch:{ Exception -> 0x01af }
        r3 = r2;
    L_0x0193:
        r6 = r4.getColumnCount();	 Catch:{ Exception -> 0x01af }
        if (r3 < r6) goto L_0x01dc;
    L_0x0199:
        r0.addView(r5);	 Catch:{ Exception -> 0x01af }
        r1 = r1 + 1;
        r3 = r4.moveToNext();	 Catch:{ Exception -> 0x01af }
        if (r3 != 0) goto L_0x0189;
    L_0x01a4:
        r0 = r4.isClosed();	 Catch:{ Exception -> 0x01af }
        if (r0 != 0) goto L_0x005b;
    L_0x01aa:
        r4.close();	 Catch:{ Exception -> 0x01af }
        goto L_0x005b;
    L_0x01af:
        r0 = move-exception;
        goto L_0x005b;
    L_0x01b2:
        r7 = r5[r1];	 Catch:{ Exception -> 0x01af }
        r8 = new android.widget.TextView;	 Catch:{ Exception -> 0x01af }
        r9 = r13.getApplicationContext();	 Catch:{ Exception -> 0x01af }
        r8.<init>(r9);	 Catch:{ Exception -> 0x01af }
        r8.setText(r7);	 Catch:{ Exception -> 0x01af }
        r7 = 2131165207; // 0x7f070017 float:1.7944625E38 double:1.0529355144E-314;
        r8.setBackgroundResource(r7);	 Catch:{ Exception -> 0x01af }
        r7 = 20;
        r9 = 20;
        r10 = 20;
        r11 = 20;
        r8.setPadding(r7, r9, r10, r11);	 Catch:{ Exception -> 0x01af }
        r7 = -16777216; // 0xffffffffff000000 float:-1.7014118E38 double:NaN;
        r8.setTextColor(r7);	 Catch:{ Exception -> 0x01af }
        r3.addView(r8);	 Catch:{ Exception -> 0x01af }
        r1 = r1 + 1;
        goto L_0x0183;
    L_0x01dc:
        r6 = new android.widget.TextView;	 Catch:{ Exception -> 0x01af }
        r7 = r13.getApplicationContext();	 Catch:{ Exception -> 0x01af }
        r6.<init>(r7);	 Catch:{ Exception -> 0x01af }
        r7 = r4.getString(r3);	 Catch:{ Exception -> 0x01af }
        r6.setText(r7);	 Catch:{ Exception -> 0x01af }
        r7 = 20;
        r8 = 20;
        r9 = 20;
        r10 = 20;
        r6.setPadding(r7, r8, r9, r10);	 Catch:{ Exception -> 0x01af }
        r7 = -16777216; // 0xffffffffff000000 float:-1.7014118E38 double:NaN;
        r6.setTextColor(r7);	 Catch:{ Exception -> 0x01af }
        r7 = r1 % 2;
        if (r7 != r12) goto L_0x0206;
    L_0x0200:
        r7 = -3355444; // 0xffffffffffcccccc float:NaN double:NaN;
        r6.setBackgroundColor(r7);	 Catch:{ Exception -> 0x01af }
    L_0x0206:
        r5.addView(r6);	 Catch:{ Exception -> 0x01af }
        r3 = r3 + 1;
        goto L_0x0193;
    L_0x020c:
        r0 = move-exception;
        goto L_0x005b;
        */
    }

    protected void onCreate(Bundle bundle) {
        setTheme(R.style.Theme_Sherlock_Light_NoActionBar);
        super.onCreate(bundle);
        setContentView(2130903099);
        this.a = (Spinner) findViewById(2131034417);
        this.a.setOnItemSelectedListener(new az(this));
    }
}