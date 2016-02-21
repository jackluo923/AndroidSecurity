package com.wopnersoft.unitconverter.plus.d;

import android.content.SharedPreferences;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import com.actionbarsherlock.R;
import com.actionbarsherlock.view.Menu;
import com.wopnersoft.unitconverter.plus.b.x;
import java.text.DecimalFormat;

// compiled from: ProGuard
public class e {
    public static Boolean a;
    public static Boolean b;
    public static Boolean c;
    public static Boolean d;
    public static Boolean e;
    public static Boolean f;
    public static Boolean g;
    public static Boolean h;
    public static Boolean i;
    public static Boolean j;
    public static Boolean k;
    public static Boolean l;
    public static Boolean m;
    public static Boolean n;
    public static Boolean o;
    public static Boolean p;
    public static Boolean q;
    public static Boolean r;
    public static int s;
    public static DecimalFormat t;
    public static DecimalFormat u;
    public static String v;
    public static String w;
    public static String x;
    public static Boolean y;

    static {
        y = Boolean.valueOf(false);
    }

    public static float a() {
        if ("0".equals(v)) {
            return 12.0f;
        }
        if ("2".equals(v)) {
            return 22.0f;
        }
        return "3".equals(v) ? 28.0f : 18.0f;
    }

    public static float a(String str) {
        if ("0".equals(str)) {
            return 10.0f;
        }
        if ("2".equals(str)) {
            return 18.0f;
        }
        return "3".equals(str) ? 24.0f : 15.0f;
    }

    public static String a(x xVar, String str) {
        return xVar.h().getString(str, "");
    }

    public static void a(SharedPreferences sharedPreferences) {
        int parseInt = Integer.parseInt(sharedPreferences.getString("decimalPlaces", "4"));
        StringBuilder stringBuilder = new StringBuilder();
        StringBuilder stringBuilder2 = new StringBuilder();
        stringBuilder.append("0.");
        stringBuilder2.append("0.0");
        int i = 0;
        while (i < parseInt) {
            stringBuilder.append("0");
            stringBuilder2.append("#");
            i++;
        }
        t = new DecimalFormat(stringBuilder.toString());
        u = new DecimalFormat(new StringBuilder(String.valueOf(stringBuilder2.toString())).append("E0").toString());
        a = Boolean.valueOf(sharedPreferences.getBoolean("vibrateResult", false));
        s = Integer.valueOf(sharedPreferences.getString("appStyle", String.valueOf(0))).intValue();
        b = Boolean.valueOf(sharedPreferences.getBoolean("trimZeros", true));
        c = Boolean.valueOf(sharedPreferences.getBoolean("currencyAutoUpdate", true));
        d = Boolean.valueOf(sharedPreferences.getBoolean("revertKeyLayout", false));
        v = sharedPreferences.getString("fontSize", "1");
        e = Boolean.valueOf(sharedPreferences.getBoolean("resultDescription", true));
        f = Boolean.valueOf(sharedPreferences.getBoolean("smartFormatImpUnits", true));
        g = Boolean.valueOf(sharedPreferences.getBoolean("quickListButton", true));
        h = Boolean.valueOf(sharedPreferences.getBoolean("customKeypad", true));
        n = Boolean.valueOf(sharedPreferences.getBoolean("quickLaunch", true));
        o = Boolean.valueOf(sharedPreferences.getBoolean("skinKeypad", true));
        p = Boolean.valueOf(sharedPreferences.getBoolean("keypadBottom", false));
        i = Boolean.valueOf(sharedPreferences.getBoolean("scientificNotation", false));
        j = Boolean.valueOf(false);
        k = Boolean.valueOf(false);
        l = Boolean.valueOf(sharedPreferences.getBoolean("groupDigits", false));
        m = Boolean.valueOf(sharedPreferences.getBoolean("vibrateCalculator", false));
        q = Boolean.valueOf(sharedPreferences.getBoolean("sortAlpha", true));
        r = Boolean.valueOf(sharedPreferences.getBoolean("forceEnLocale", false));
        w = sharedPreferences.getString("calcColorScheme", "0");
        x = sharedPreferences.getString("calcGroupingSymbol", "0");
        y = Boolean.valueOf(true);
    }

    public static void a(Button button) {
        button.setTextSize(a());
        if ("3".equals(v)) {
            button.setPadding(R.styleable.SherlockTheme_actionBarItemBackground, R.styleable.SherlockTheme_actionBarItemBackground, R.styleable.SherlockTheme_actionBarItemBackground, R.styleable.SherlockTheme_actionBarItemBackground);
        } else if ("4".equals(v)) {
            button.setPadding(Menu.CATEGORY_SHIFT, Menu.CATEGORY_SHIFT, Menu.CATEGORY_SHIFT, Menu.CATEGORY_SHIFT);
        }
    }

    public static void a(TextView textView) {
        textView.setTextSize(a());
    }

    public static void a(x xVar, String str, long j) {
        xVar.h().edit().putLong(str, j).commit();
    }

    public static void a(x xVar, String str, String str2) {
        xVar.h().edit().putString(str, str2).commit();
    }

    public static float b() {
        if ("0".equals(v)) {
            return 10.0f;
        }
        if ("2".equals(v)) {
            return 18.0f;
        }
        return "3".equals(v) ? 24.0f : 15.0f;
    }

    public static final void b(TextView textView) {
        textView.setTextSize(b());
    }

    public static void c(View view) {
        view.setTextSize(a());
        f.a().a(view, "THEME_ICON_RESULT_TXT_BORDER_NEW");
    }
}