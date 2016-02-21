package com.wopnersoft.unitconverter.plus;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.Toast;
import com.wopnersoft.unitconverter.plus.util.aa;

// compiled from: ProGuard
class a implements OnClickListener {
    final /* synthetic */ FavoriteConverterMenu a;

    a(FavoriteConverterMenu favoriteConverterMenu) {
        this.a = favoriteConverterMenu;
    }

    public void onClick(DialogInterface dialogInterface, int i) {
        aa aaVar;
        aa aaVar2 = null;
        try {
            aaVar = new aa(this.a.getBaseContext());
            try {
                aaVar.a();
                aaVar.c();
                this.a.i();
                this.a.f();
                Toast.makeText(this.a.getBaseContext(), this.a.getString(2131362389), 1).show();
                if (aaVar != null) {
                    aaVar.b();
                }
            } catch (Exception e) {
                Toast.makeText(this.a.getBaseContext(), this.a.getString(2131362062), 1).show();
                if (aaVar != null) {
                    aaVar.b();
                }
            }
        } catch (Exception e2) {
            aaVar = aaVar2;
            try {
                Toast.makeText(this.a.getBaseContext(), this.a.getString(2131362062), 1).show();
                if (aaVar != null) {
                    aaVar.b();
                }
            } catch (Throwable th) {
                aaVar2 = aaVar;
                th = th;
                if (aaVar2 != null) {
                    aaVar2.b();
                }
                throw th;
            }
        } catch (Throwable th2) {
            Throwable th3 = th2;
            if (aaVar2 != null) {
                aaVar2.b();
            }
            throw th3;
        }
    }
}