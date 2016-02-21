package com.wopnersoft.unitconverter.plus.util;

import android.app.AlertDialog;
import android.content.Context;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.ListView;
import com.actionbarsherlock.R;
import com.wopnersoft.unitconverter.plus.d.f;

// compiled from: ProGuard
public class ad extends AlertDialog {
    private final ListView a;
    private final EditText b;
    private final af c;
    private final TextWatcher d;

    public ad(Context context, String[] strArr, String str, Boolean bool) {
        super(context);
        this.d = new ae(this);
        View inflate = LayoutInflater.from(context).inflate(2130903076, null);
        setView(inflate);
        setTitle(str);
        this.b = (EditText) inflate.findViewById(2131034252);
        this.a = (ListView) inflate.findViewById(2131034253);
        ((ImageView) inflate.findViewById(2131034251)).setImageResource(f.a().a((int)R.styleable.SherlockTheme_actionBarStyle));
        this.c = new af(context, 2130903071, strArr, bool);
    }

    public ListView getListView() {
        return this.a;
    }

    protected void onStart() {
        super.onStart();
        this.b.setText("");
        this.b.addTextChangedListener(this.d);
        this.a.setAdapter(this.c);
        this.b.requestFocus();
    }

    public void onStop() {
        super.onStop();
        this.b.removeTextChangedListener(this.d);
        this.c.getFilter().filter(null);
    }
}