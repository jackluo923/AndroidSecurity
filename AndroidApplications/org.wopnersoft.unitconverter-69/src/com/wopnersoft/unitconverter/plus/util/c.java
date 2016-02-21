package com.wopnersoft.unitconverter.plus.util;

import android.app.Dialog;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.widget.Button;
import android.widget.TextView;
import com.wopnersoft.unitconverter.plus.d.f;

// compiled from: ProGuard
public class c {
    public static void a(Context context) {
        SharedPreferences sharedPreferences = context.getSharedPreferences("apprater", 0);
        if (!sharedPreferences.getBoolean("dontshowagain", false)) {
            Editor edit = sharedPreferences.edit();
            long j = sharedPreferences.getLong("launch_count", 0) + 1;
            edit.putLong("launch_count", j);
            Long valueOf = Long.valueOf(sharedPreferences.getLong("date_firstlaunch", 0));
            if (valueOf.longValue() == 0) {
                valueOf = Long.valueOf(System.currentTimeMillis());
                edit.putLong("date_firstlaunch", valueOf.longValue());
            }
            if (j >= 10 && System.currentTimeMillis() >= l.longValue() + 864000000) {
                a(context, edit);
            }
            edit.commit();
        }
    }

    public static void a(Context context, Editor editor) {
        b(context, editor).show();
    }

    public static Dialog b(Context context, Editor editor) {
        Dialog dialog = new Dialog(context);
        dialog.setTitle("Rate Unit Converter");
        dialog.setContentView(2130903091);
        ((TextView) dialog.findViewById(2131034317)).setText("If you enjoy using Unit Converter, please take a moment to rate it. Thanks for your support!");
        Button button = (Button) dialog.findViewById(2131034318);
        button.setTextColor(f.a().e());
        button.setOnClickListener(new d(context, dialog));
        button = (Button) dialog.findViewById(2131034319);
        button.setTextColor(f.a().e());
        button.setOnClickListener(new e(editor, dialog));
        button = (Button) dialog.findViewById(2131034320);
        button.setTextColor(f.a().e());
        button.setOnClickListener(new f(editor, dialog));
        return dialog;
    }
}