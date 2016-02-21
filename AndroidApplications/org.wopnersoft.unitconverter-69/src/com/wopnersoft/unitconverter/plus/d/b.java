package com.wopnersoft.unitconverter.plus.d;

import android.app.Activity;
import android.app.AlarmManager;
import android.app.PendingIntent;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.view.View;
import android.view.Window;
import android.view.WindowManager.LayoutParams;
import android.widget.ArrayAdapter;
import android.widget.Spinner;
import android.widget.TextView;
import com.actionbarsherlock.R;
import com.wopnersoft.unitconverter.plus.UnitConverterConvertMenu;
import com.wopnersoft.unitconverter.plus.a.a;
import com.wopnersoft.unitconverter.plus.util.ag;
import java.util.Locale;
import junit.framework.Assert;

// compiled from: ProGuard
public final class b {
    public static int a(Context context, String str) {
        Assert.assertNotNull(context);
        Assert.assertNotNull(str);
        return context.getResources().getIdentifier(str, "drawable", context.getPackageName());
    }

    public static ProgressDialog a(Activity activity, int i, int i2) {
        ProgressDialog progressDialog = new ProgressDialog(activity);
        progressDialog.setTitle(i);
        progressDialog.setMessage(activity.getString(i2));
        progressDialog.setIndeterminate(true);
        progressDialog.setOnKeyListener(new c(activity));
        return progressDialog;
    }

    public static ArrayAdapter a(Context context, String[] strArr) {
        return a(context, strArr, Boolean.valueOf(false));
    }

    public static ArrayAdapter a(Context context, String[] strArr, Boolean bool) {
        ArrayAdapter dVar = new d(context, 17367048, strArr, e.a(), bool, null);
        dVar.setDropDownViewResource(17367049);
        return dVar;
    }

    public static ag a(ag agVar) {
        if (e.p.booleanValue()) {
            Window window = agVar.getWindow();
            LayoutParams attributes = window.getAttributes();
            attributes.gravity = 80;
            attributes.flags &= -3;
            window.setAttributes(attributes);
        }
        return agVar;
    }

    public static Boolean a() {
        return Boolean.valueOf("en".equalsIgnoreCase(Locale.getDefault().getLanguage()));
    }

    public static String a(Spinner spinner) {
        Object selectedItem = spinner.getSelectedItem();
        return selectedItem == null ? "" : selectedItem.toString();
    }

    public static String a(String str) {
        if (str == null || str.length() == 0) {
            return "";
        }
        int length = str.length() - 1;
        while (length > -1) {
            char charAt = str.charAt(length);
            if (charAt == '0') {
                length--;
            } else if (charAt == '.') {
                return new StringBuilder(String.valueOf(str.substring(0, length))).append(".0").toString();
            } else {
                return charAt == ',' ? new StringBuilder(String.valueOf(str.substring(0, length))).append(",0").toString() : str.substring(0, Math.min(str.length(), length + 1));
            }
        }
        return str;
    }

    public static String a(String str, String str2) {
        if (str == null || str.length() == 0) {
            return "";
        }
        try {
            int length;
            int indexOf = str.indexOf(R.styleable.SherlockTheme_listPreferredItemPaddingLeft);
            if (indexOf < 0) {
                indexOf = str.indexOf(R.styleable.SherlockTheme_textAppearanceSearchResultSubtitle);
            }
            length = indexOf < 0 ? str.length() : indexOf;
            indexOf = length - 1;
            int i = 0;
            StringBuilder stringBuilder = new StringBuilder(indexOf + 2);
            while (indexOf > -1) {
                i++;
                stringBuilder.append(str.charAt(indexOf));
                if (i % 3 == 0 && indexOf - 1 > -1) {
                    stringBuilder.append(str2);
                }
                indexOf--;
            }
            return stringBuilder.reverse().append(str.substring(length)).toString();
        } catch (Exception e) {
            Log.e("UnitConverterApplication.groupDigits", "Error grouping digits", e);
            return str;
        }
    }

    public static void a(Context context) {
        ((AlarmManager) context.getSystemService("alarm")).set(1, System.currentTimeMillis() + 1000, PendingIntent.getActivity(context, 0, new Intent(context, UnitConverterConvertMenu.class), 603979776));
        System.exit(0);
    }

    public static void a(Context context, String str, TextView textView, Boolean bool) {
        textView.setCompoundDrawablesWithIntrinsicBounds(a(context, new StringBuilder("zzz_").append(str.toLowerCase(Locale.getDefault()).substring(0, R.styleable.SherlockTheme_actionBarTabTextStyle)).toString()), 0, 0, 0);
        if (bool.booleanValue()) {
            textView.setCompoundDrawablePadding(R.styleable.SherlockTheme_actionBarSplitStyle);
        }
    }

    public static void a(View view) {
        if (view != null) {
            Drawable background = view.getBackground();
            if (background != null) {
                background.setCallback(null);
            }
        }
    }

    public static void a(TextView textView) {
        textView.setCompoundDrawablesWithIntrinsicBounds(0, 0, 0, 0);
    }

    public static String b_(String str) {
        try {
            return new String(a.a(str), "UTF-8");
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }
}