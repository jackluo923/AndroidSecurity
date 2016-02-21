package com.wopnersoft.unitconverter.plus.util;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemSelectedListener;

// compiled from: ProGuard
class az implements OnItemSelectedListener {
    final /* synthetic */ SqliteRawViewer a;

    az(SqliteRawViewer sqliteRawViewer) {
        this.a = sqliteRawViewer;
    }

    public void onItemSelected(AdapterView adapterView, View view, int i, long j) {
        SqliteRawViewer.a(this.a, i);
    }

    public void onNothingSelected(AdapterView adapterView) {
    }
}