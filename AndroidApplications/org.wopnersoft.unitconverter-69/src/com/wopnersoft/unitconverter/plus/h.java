package com.wopnersoft.unitconverter.plus;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.Toast;
import com.wopnersoft.unitconverter.plus.util.m;

// compiled from: ProGuard
class h implements OnClickListener {
    final /* synthetic */ g a;

    h(g gVar) {
        this.a = gVar;
    }

    public void onClick(DialogInterface dialogInterface, int i) {
        m mVar;
        m mVar2 = null;
        try {
            mVar = new m(this.a.a.getBaseContext());
            try {
                mVar.a();
                mVar.e();
                this.a.a.b.a("currency_table_empty", Boolean.valueOf(true));
                Toast.makeText(this.a.a.getBaseContext(), this.a.a.getString(2131362382), 1).show();
                if (mVar != null) {
                    mVar.b();
                }
            } catch (Exception e) {
                Toast.makeText(this.a.a.getBaseContext(), this.a.a.getString(2131362060), 1).show();
                if (mVar != null) {
                    mVar.b();
                }
            }
        } catch (Exception e2) {
            mVar = mVar2;
            try {
                Toast.makeText(this.a.a.getBaseContext(), this.a.a.getString(2131362060), 1).show();
                if (mVar != null) {
                    mVar.b();
                }
            } catch (Throwable th) {
                mVar2 = mVar;
                th = th;
                if (mVar2 != null) {
                    mVar2.b();
                }
                throw th;
            }
        } catch (Throwable th2) {
            Throwable th3 = th2;
            if (mVar2 != null) {
                mVar2.b();
            }
            throw th3;
        }
    }
}