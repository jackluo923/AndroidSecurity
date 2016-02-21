package com.wopnersoft.unitconverter.plus.util;

import android.content.SharedPreferences;
import android.os.Bundle;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.ListView;
import com.wopnersoft.unitconverter.plus.UnitConverterConvertMenu;
import com.wopnersoft.unitconverter.plus.b.u;

// compiled from: ProGuard
public class ListFilterDialog extends u {
    private SharedPreferences a;
    private g b;

    private void a(Bundle bundle) {
        bundle.putLong("ored_val", this.b.a());
    }

    protected void onCreate(Bundle bundle) {
        long j = -1;
        super.onCreate(bundle);
        this.a = this.l.h();
        setContentView(2130903077);
        ((Button) findViewById(2131034257)).setOnClickListener(new aj(this));
        ((Button) findViewById(2131034221)).setOnClickListener(new ak(this));
        ((CheckBox) findViewById(2131034254)).setOnClickListener(new al(this));
        ListView listView = (ListView) findViewById(2131034256);
        if (bundle != null) {
            j = bundle.getLong("ored_val", -1);
        }
        this.b = new g(this, this.a, UnitConverterConvertMenu.a, j);
        listView.setAdapter(this.b);
    }

    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        a(bundle);
    }
}