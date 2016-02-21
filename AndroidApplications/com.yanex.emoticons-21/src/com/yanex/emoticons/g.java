package com.yanex.emoticons;

import android.app.AlertDialog.Builder;
import android.content.Context;
import android.util.TypedValue;
import android.view.View;
import android.widget.EditText;
import android.widget.FrameLayout;

abstract class g {
    private Builder a;
    private EditText b;
    final /* synthetic */ EditorActivity c;

    public g(EditorActivity editorActivity, Context context) {
        this.c = editorActivity;
        this.a = new Builder(context);
        View frameLayout = new FrameLayout(context);
        this.b = new EditText(context);
        frameLayout.addView(this.b);
        int a = ((int) TypedValue.applyDimension(1, 8.0f, editorActivity.getResources().getDisplayMetrics()));
        frameLayout.setPadding(a, a, a, a);
        this.a.setView(frameLayout);
        this.a.setPositiveButton(editorActivity.getString(17039370), new h(this, editorActivity));
        this.a.setNegativeButton(editorActivity.getString(17039360), new i(this, editorActivity));
    }

    public abstract void a(String str);

    public final void a(String str, String str2) {
        this.a.setTitle(str);
        this.b.setText(str2);
        if (str2.length() > 0) {
            this.b.setSelection(0, str2.length());
        }
        this.a.show();
    }
}