package com.wopnersoft.unitconverter.plus.util;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;

// compiled from: ProGuard
public class aw implements OnItemSelectedListener {
    private final Spinner a;
    private int b;
    private OnItemSelectedListener c;

    public aw(Object obj) {
        this.b = -1;
        this.c = null;
        if (obj != null) {
            Spinner spinner = (Spinner) obj;
        } else {
            obj = null;
        }
        this.a = obj;
    }

    public Spinner a() {
        return this.a;
    }

    public void a(int i) {
        this.b = Math.max(-1, i);
        this.a.setSelection(i);
    }

    public void a(OnItemSelectedListener onItemSelectedListener) {
        this.c = onItemSelectedListener;
        Spinner spinner = this.a;
        if (onItemSelectedListener == null) {
            this = null;
        }
        spinner.setOnItemSelectedListener(this);
    }

    public void a(SpinnerAdapter spinnerAdapter) {
        if (spinnerAdapter.getCount() > 0) {
            this.b = 0;
        }
        this.a.setAdapter(spinnerAdapter);
    }

    public void onItemSelected(AdapterView adapterView, View view, int i, long j) {
        if (i != this.b) {
            this.b = i;
            if (this.c != null) {
                this.c.onItemSelected(adapterView, view, i, j);
            }
        }
    }

    public void onNothingSelected(AdapterView adapterView) {
        if (-1 != this.b) {
            this.b = -1;
            if (this.c != null) {
                this.c.onNothingSelected(adapterView);
            }
        }
    }
}