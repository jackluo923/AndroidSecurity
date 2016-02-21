package com.actionbarsherlock.internal;

import android.content.Context;
import android.os.Build.VERSION;
import android.util.DisplayMetrics;
import com.actionbarsherlock.R;
import com.actionbarsherlock.internal.widget.IcsLinearLayout;

// compiled from: ProGuard
public final class ResourcesCompat {
    private static final String TAG = "ResourcesCompat";

    private ResourcesCompat() {
    }

    public static boolean getResources_getBoolean(Context context, int i) {
        if (VERSION.SDK_INT >= 14) {
            return context.getResources().getBoolean(i);
        }
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        float f = ((float) displayMetrics.widthPixels) / displayMetrics.density;
        float f2 = ((float) displayMetrics.heightPixels) / displayMetrics.density;
        if (f < f2) {
            f2 = f;
        }
        if (i == R.bool.abs__action_bar_embed_tabs) {
            return f >= 480.0f;
        } else if (i == R.bool.abs__split_action_bar_is_narrow) {
            return f < 480.0f;
        } else if (i == R.bool.abs__action_bar_expanded_action_views_exclusive) {
            return f < 600.0f;
        } else if (i != R.bool.abs__config_allowActionMenuItemTextWithIcon) {
            throw new IllegalArgumentException(new StringBuilder("Unknown boolean resource ID ").append(i).toString());
        } else if (f >= 480.0f) {
            return true;
        } else {
            return false;
        }
    }

    public static int getResources_getInteger(Context context, int i) {
        if (VERSION.SDK_INT >= 13) {
            return context.getResources().getInteger(i);
        }
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        float f = ((float) displayMetrics.widthPixels) / displayMetrics.density;
        if (i != R.integer.abs__max_action_buttons) {
            throw new IllegalArgumentException(new StringBuilder("Unknown integer resource ID ").append(i).toString());
        } else if (f >= 600.0f) {
            return R.styleable.SherlockTheme_actionBarStyle;
        } else {
            if (f >= 500.0f) {
                return ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_DEFAULT;
            }
            return f >= 360.0f ? R.styleable.SherlockTheme_actionBarTabTextStyle : IcsLinearLayout.SHOW_DIVIDER_MIDDLE;
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static int loadLogoFromManifest(android.app.Activity r14) {
        throw new UnsupportedOperationException("Method not decompiled: com.actionbarsherlock.internal.ResourcesCompat.loadLogoFromManifest(android.app.Activity):int");
        /*
        r5 = 0;
        r7 = 1;
        r2 = 0;
        r0 = r14.getClass();	 Catch:{ Exception -> 0x00ae }
        r8 = r0.getName();	 Catch:{ Exception -> 0x00ae }
        r0 = r14.getApplicationInfo();	 Catch:{ Exception -> 0x00ae }
        r9 = r0.packageName;	 Catch:{ Exception -> 0x00ae }
        r0 = 0;
        r0 = r14.createPackageContext(r9, r0);	 Catch:{ Exception -> 0x00ae }
        r0 = r0.getAssets();	 Catch:{ Exception -> 0x00ae }
        r1 = "AndroidManifest.xml";
        r10 = r0.openXmlResourceParser(r1);	 Catch:{ Exception -> 0x00ae }
        r0 = r10.getEventType();	 Catch:{ Exception -> 0x00ae }
        r1 = r0;
        r0 = r2;
    L_0x0026:
        if (r1 != r7) goto L_0x0029;
    L_0x0028:
        return r0;
    L_0x0029:
        r3 = 2;
        if (r1 != r3) goto L_0x0074;
    L_0x002c:
        r1 = r10.getName();	 Catch:{ Exception -> 0x00b6 }
        r3 = "application";
        r3 = r3.equals(r1);	 Catch:{ Exception -> 0x00b6 }
        if (r3 == 0) goto L_0x005f;
    L_0x0038:
        r1 = r10.getAttributeCount();	 Catch:{ Exception -> 0x00b6 }
        r1 = r1 + -1;
    L_0x003e:
        if (r1 >= 0) goto L_0x0049;
    L_0x0040:
        r1 = r0;
    L_0x0041:
        r0 = r10.nextToken();	 Catch:{ Exception -> 0x00b8 }
        r13 = r0;
        r0 = r1;
        r1 = r13;
        goto L_0x0026;
    L_0x0049:
        r3 = "logo";
        r4 = r10.getAttributeName(r1);	 Catch:{ Exception -> 0x00b6 }
        r3 = r3.equals(r4);	 Catch:{ Exception -> 0x00b6 }
        if (r3 == 0) goto L_0x005c;
    L_0x0055:
        r3 = 0;
        r0 = r10.getAttributeResourceValue(r1, r3);	 Catch:{ Exception -> 0x00b6 }
        r1 = r0;
        goto L_0x0041;
    L_0x005c:
        r1 = r1 + -1;
        goto L_0x003e;
    L_0x005f:
        r3 = "activity";
        r1 = r3.equals(r1);	 Catch:{ Exception -> 0x00b6 }
        if (r1 == 0) goto L_0x0074;
    L_0x0067:
        r1 = r10.getAttributeCount();	 Catch:{ Exception -> 0x00b6 }
        r1 = r1 + -1;
        r3 = r2;
        r4 = r5;
        r6 = r5;
    L_0x0070:
        if (r1 >= 0) goto L_0x0076;
    L_0x0072:
        if (r3 != 0) goto L_0x0028;
    L_0x0074:
        r1 = r0;
        goto L_0x0041;
    L_0x0076:
        r11 = r10.getAttributeName(r1);	 Catch:{ Exception -> 0x00b6 }
        r12 = "logo";
        r12 = r12.equals(r11);	 Catch:{ Exception -> 0x00b6 }
        if (r12 == 0) goto L_0x0096;
    L_0x0082:
        r6 = 0;
        r6 = r10.getAttributeResourceValue(r1, r6);	 Catch:{ Exception -> 0x00b6 }
        r6 = java.lang.Integer.valueOf(r6);	 Catch:{ Exception -> 0x00b6 }
    L_0x008b:
        if (r6 == 0) goto L_0x0093;
    L_0x008d:
        if (r4 == 0) goto L_0x0093;
    L_0x008f:
        r0 = r6.intValue();	 Catch:{ Exception -> 0x00b6 }
    L_0x0093:
        r1 = r1 + -1;
        goto L_0x0070;
    L_0x0096:
        r12 = "name";
        r11 = r12.equals(r11);	 Catch:{ Exception -> 0x00b6 }
        if (r11 == 0) goto L_0x008b;
    L_0x009e:
        r4 = r10.getAttributeValue(r1);	 Catch:{ Exception -> 0x00b6 }
        r4 = com.actionbarsherlock.internal.ActionBarSherlockCompat.cleanActivityName(r9, r4);	 Catch:{ Exception -> 0x00b6 }
        r11 = r8.equals(r4);	 Catch:{ Exception -> 0x00b6 }
        if (r11 == 0) goto L_0x0072;
    L_0x00ac:
        r3 = r7;
        goto L_0x008b;
    L_0x00ae:
        r0 = move-exception;
        r1 = r0;
        r0 = r2;
    L_0x00b1:
        r1.printStackTrace();
        goto L_0x0028;
    L_0x00b6:
        r1 = move-exception;
        goto L_0x00b1;
    L_0x00b8:
        r0 = move-exception;
        r13 = r0;
        r0 = r1;
        r1 = r13;
        goto L_0x00b1;
        */
    }
}