package com.google.ads;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources.NotFoundException;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.webkit.WebView;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.actionbarsherlock.internal.widget.IcsAdapterView;
import com.actionbarsherlock.view.Menu;
import com.actionbarsherlock.view.MenuItem;
import com.google.ads.b.ac;
import com.google.ads.b.ag;
import com.google.ads.b.e;
import com.google.ads.b.h;
import com.google.ads.b.m;
import com.google.ads.b.w;
import com.google.ads.util.AdUtil;
import com.google.ads.util.g;
import java.util.HashSet;
import java.util.Set;

public class AdView extends RelativeLayout implements a {
    private static final h b;
    protected w a;

    static {
        b = (h) h.a.a();
    }

    public AdView(Context context, g gVar, String str) {
        AttributeSet attributeSet = null;
        super(context.getApplicationContext());
        try {
            a(context, gVar, null);
            b(context, gVar, null);
            a((Activity)context, gVar, str);
        } catch (m e) {
            m mVar = e;
            a(context, mVar.c("Could not initialize AdView"), gVar, attributeSet);
            mVar.a("Could not initialize AdView");
        }
    }

    protected AdView(Activity activity, g[] gVarArr, String str) {
        this(activity, new g(0, 0), str);
        a(gVarArr);
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public AdView(android.content.Context r11, android.util.AttributeSet r12) {
        throw new UnsupportedOperationException("Method not decompiled: com.google.ads.AdView.<init>(android.content.Context, android.util.AttributeSet):void");
        /*
        r10 = this;
        r3 = 1;
        r8 = 0;
        r10.<init>(r11, r12);
        if (r12 == 0) goto L_0x0050;
    L_0x0007:
        r2 = 0;
        r1 = "adSize";
        r4 = 1;
        r1 = r10.a(r1, r11, r12, r4);	 Catch:{ m -> 0x010a }
        r7 = a(r1);	 Catch:{ m -> 0x010a }
        if (r7 == 0) goto L_0x0018;
    L_0x0015:
        r2 = r7.length;	 Catch:{ m -> 0x002d }
        if (r2 != 0) goto L_0x0051;
    L_0x0018:
        r2 = new com.google.ads.b.m;	 Catch:{ m -> 0x002d }
        r3 = new java.lang.StringBuilder;	 Catch:{ m -> 0x002d }
        r4 = "Attribute \"adSize\" invalid: ";
        r3.<init>(r4);	 Catch:{ m -> 0x002d }
        r1 = r3.append(r1);	 Catch:{ m -> 0x002d }
        r1 = r1.toString();	 Catch:{ m -> 0x002d }
        r2.<init>(r1);	 Catch:{ m -> 0x002d }
        throw r2;	 Catch:{ m -> 0x002d }
    L_0x002d:
        r1 = move-exception;
        r2 = r1;
        r1 = r7;
    L_0x0030:
        r3 = "Could not initialize AdView";
        r3 = r2.c(r3);
        if (r1 == 0) goto L_0x0106;
    L_0x0038:
        r4 = r1.length;
        if (r4 <= 0) goto L_0x0106;
    L_0x003b:
        r1 = r1[r8];
    L_0x003d:
        r10.a(r11, r3, r1, r12);
        r1 = "Could not initialize AdView";
        r2.a(r1);
        r1 = r10.isInEditMode();
        if (r1 != 0) goto L_0x0050;
    L_0x004b:
        r1 = "Could not initialize AdView";
        r2.b(r1);
    L_0x0050:
        return;
    L_0x0051:
        r1 = "adUnitId";
        r2 = "http://schemas.android.com/apk/lib/com.google.ads";
        r1 = r12.getAttributeValue(r2, r1);	 Catch:{ m -> 0x002d }
        if (r1 == 0) goto L_0x0066;
    L_0x005b:
        r1 = r3;
    L_0x005c:
        if (r1 != 0) goto L_0x0068;
    L_0x005e:
        r1 = new com.google.ads.b.m;	 Catch:{ m -> 0x002d }
        r2 = "Required XML attribute \"adUnitId\" missing";
        r1.<init>(r2);	 Catch:{ m -> 0x002d }
        throw r1;	 Catch:{ m -> 0x002d }
    L_0x0066:
        r1 = r8;
        goto L_0x005c;
    L_0x0068:
        r1 = r10.isInEditMode();	 Catch:{ m -> 0x002d }
        if (r1 == 0) goto L_0x007b;
    L_0x006e:
        r3 = "Ads by Google";
        r4 = -1;
        r1 = 0;
        r5 = r7[r1];	 Catch:{ m -> 0x002d }
        r1 = r10;
        r2 = r11;
        r6 = r12;
        r1.a(r2, r3, r4, r5, r6);	 Catch:{ m -> 0x002d }
        goto L_0x0050;
    L_0x007b:
        r1 = "adUnitId";
        r2 = 1;
        r2 = r10.a(r1, r11, r12, r2);	 Catch:{ m -> 0x002d }
        r1 = "loadAdOnCreate";
        r4 = r10.a(r1, r11, r12);	 Catch:{ m -> 0x002d }
        r1 = r11 instanceof android.app.Activity;	 Catch:{ m -> 0x002d }
        if (r1 == 0) goto L_0x00fe;
    L_0x008c:
        r0 = r11;
        r0 = (android.app.Activity) r0;	 Catch:{ m -> 0x002d }
        r1 = r0;
        r5 = 0;
        r5 = r7[r5];	 Catch:{ m -> 0x002d }
        r10.a(r1, r5, r12);	 Catch:{ m -> 0x002d }
        r5 = 0;
        r5 = r7[r5];	 Catch:{ m -> 0x002d }
        r10.b(r1, r5, r12);	 Catch:{ m -> 0x002d }
        r5 = r7.length;	 Catch:{ m -> 0x002d }
        if (r5 != r3) goto L_0x00e9;
    L_0x009f:
        r3 = 0;
        r3 = r7[r3];	 Catch:{ m -> 0x002d }
        r10.a(r1, r3, r2);	 Catch:{ m -> 0x002d }
    L_0x00a5:
        if (r4 == 0) goto L_0x0050;
    L_0x00a7:
        r1 = "testDevices";
        r1 = r10.b(r1, r11, r12);	 Catch:{ m -> 0x002d }
        r2 = "TEST_EMULATOR";
        r2 = r1.contains(r2);	 Catch:{ m -> 0x002d }
        if (r2 == 0) goto L_0x00bf;
    L_0x00b5:
        r2 = "TEST_EMULATOR";
        r1.remove(r2);	 Catch:{ m -> 0x002d }
        r2 = com.google.ads.d.a;	 Catch:{ m -> 0x002d }
        r1.add(r2);	 Catch:{ m -> 0x002d }
    L_0x00bf:
        r2 = new com.google.ads.d;	 Catch:{ m -> 0x002d }
        r2.<init>();	 Catch:{ m -> 0x002d }
        r1 = r2.b(r1);	 Catch:{ m -> 0x002d }
        r2 = "keywords";
        r2 = r10.b(r2, r11, r12);	 Catch:{ m -> 0x002d }
        r2 = r1.a(r2);	 Catch:{ m -> 0x002d }
        r1 = r10.a;	 Catch:{ m -> 0x002d }
        if (r1 == 0) goto L_0x0050;
    L_0x00d6:
        r1 = r10.a;	 Catch:{ m -> 0x002d }
        if (r1 != 0) goto L_0x00f7;
    L_0x00da:
        r1 = r8;
    L_0x00db:
        if (r1 == 0) goto L_0x00e2;
    L_0x00dd:
        r1 = r10.a;	 Catch:{ m -> 0x002d }
        r1.e();	 Catch:{ m -> 0x002d }
    L_0x00e2:
        r1 = r10.a;	 Catch:{ m -> 0x002d }
        r1.a(r2);	 Catch:{ m -> 0x002d }
        goto L_0x0050;
    L_0x00e9:
        r3 = new com.google.ads.g;	 Catch:{ m -> 0x002d }
        r5 = 0;
        r6 = 0;
        r3.<init>(r5, r6);	 Catch:{ m -> 0x002d }
        r10.a(r1, r3, r2);	 Catch:{ m -> 0x002d }
        r10.a(r7);	 Catch:{ m -> 0x002d }
        goto L_0x00a5;
    L_0x00f7:
        r1 = r10.a;	 Catch:{ m -> 0x002d }
        r1 = r1.p();	 Catch:{ m -> 0x002d }
        goto L_0x00db;
    L_0x00fe:
        r1 = new com.google.ads.b.m;	 Catch:{ m -> 0x002d }
        r2 = "AdView was initialized with a Context that wasn't an Activity.";
        r1.<init>(r2);	 Catch:{ m -> 0x002d }
        throw r1;	 Catch:{ m -> 0x002d }
    L_0x0106:
        r1 = com.google.ads.g.b;
        goto L_0x003d;
    L_0x010a:
        r1 = move-exception;
        r9 = r1;
        r1 = r2;
        r2 = r9;
        goto L_0x0030;
        */
    }

    public AdView(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet);
    }

    private String a(String str, Context context, AttributeSet attributeSet, boolean z) {
        String attributeValue = attributeSet.getAttributeValue("http://schemas.android.com/apk/lib/com.google.ads", str);
        if (attributeValue != null) {
            String packageName = context.getPackageName();
            if (attributeValue.matches("^@([^:]+)\\:(.*)$")) {
                packageName = attributeValue.replaceFirst("^@([^:]+)\\:(.*)$", "$1");
                attributeValue = attributeValue.replaceFirst("^@([^:]+)\\:(.*)$", "@$2");
            }
            if (attributeValue.startsWith("@string/")) {
                String substring = attributeValue.substring(MenuItem.SHOW_AS_ACTION_COLLAPSE_ACTION_VIEW);
                TypedValue typedValue = new TypedValue();
                try {
                    getResources().getValue(packageName + ":string/" + substring, typedValue, true);
                    if (typedValue.string != null) {
                        attributeValue = typedValue.string.toString();
                    } else {
                        throw new m(new StringBuilder("Resource ").append(str).append(" was not a string: ").append(typedValue).toString());
                    }
                } catch (NotFoundException e) {
                    throw new m(new StringBuilder("Could not find resource for ").append(str).append(": ").append(attributeValue).toString(), e);
                }
            }
        }
        if (!z || attributeValue != null) {
            return attributeValue;
        }
        throw new m(new StringBuilder("Required XML attribute \"").append(str).append("\" missing").toString());
    }

    private void a(Activity activity, g gVar, String str) {
        int i = IcsAdapterView.ITEM_VIEW_TYPE_HEADER_OR_FOOTER;
        View frameLayout = new FrameLayout(activity);
        frameLayout.setFocusable(false);
        this.a = new w(this, activity, gVar, str, frameLayout);
        setGravity(17);
        try {
            View a = ag.a(activity, this.a);
            if (a != null) {
                a.addView(frameLayout, IcsAdapterView.ITEM_VIEW_TYPE_HEADER_OR_FOOTER, IcsAdapterView.ITEM_VIEW_TYPE_HEADER_OR_FOOTER);
                addView(a, IcsAdapterView.ITEM_VIEW_TYPE_HEADER_OR_FOOTER, IcsAdapterView.ITEM_VIEW_TYPE_HEADER_OR_FOOTER);
            } else {
                addView(frameLayout, IcsAdapterView.ITEM_VIEW_TYPE_HEADER_OR_FOOTER, IcsAdapterView.ITEM_VIEW_TYPE_HEADER_OR_FOOTER);
            }
        } catch (VerifyError e) {
            g.a("Gestures disabled: Not supported on this version of Android.", e);
            addView(frameLayout, i, i);
        }
    }

    private void a(Context context, String str, int i, g gVar, AttributeSet attributeSet) {
        if (gVar == null) {
            gVar = g.b;
        }
        g a = g.a(gVar, context.getApplicationContext());
        if (getChildCount() == 0) {
            View textView;
            View linearLayout;
            View linearLayout2;
            textView = attributeSet == null ? new TextView(context) : new TextView(context, attributeSet);
            textView.setGravity(17);
            textView.setText(str);
            textView.setTextColor(i);
            textView.setBackgroundColor(-16777216);
            linearLayout = attributeSet == null ? new LinearLayout(context) : new LinearLayout(context, attributeSet);
            linearLayout.setGravity(17);
            linearLayout2 = attributeSet == null ? new LinearLayout(context) : new LinearLayout(context, attributeSet);
            linearLayout2.setGravity(17);
            linearLayout2.setBackgroundColor(i);
            int a2 = AdUtil.a(context, a.a());
            int a3 = AdUtil.a(context, a.b());
            linearLayout.addView(textView, a2 - 2, a3 - 2);
            linearLayout2.addView(linearLayout);
            addView(linearLayout2, a2, a3);
        }
    }

    private void a(Context context, String str, g gVar, AttributeSet attributeSet) {
        g.b(str);
        a(context, str, Menu.CATEGORY_MASK, gVar, attributeSet);
    }

    private void a(g... gVarArr) {
        Object obj = new Object[gVarArr.length];
        int i = 0;
        while (i < gVarArr.length) {
            obj[i] = g.a(gVarArr[i], getContext());
            i++;
        }
        this.a.g().n.a(obj);
    }

    private boolean a(Context context, g gVar, AttributeSet attributeSet) {
        if (AdUtil.c(context)) {
            return true;
        }
        a(context, "You must have AdActivity declared in AndroidManifest.xml with configChanges.", gVar, attributeSet);
        return false;
    }

    private boolean a(String str, Context context, AttributeSet attributeSet) {
        String attributeValue = attributeSet.getAttributeValue("http://schemas.android.com/apk/lib/com.google.ads", str);
        boolean attributeBooleanValue = attributeSet.getAttributeBooleanValue("http://schemas.android.com/apk/lib/com.google.ads", str, false);
        if (attributeValue != null) {
            String packageName = context.getPackageName();
            if (attributeValue.matches("^@([^:]+)\\:(.*)$")) {
                packageName = attributeValue.replaceFirst("^@([^:]+)\\:(.*)$", "$1");
                attributeValue = attributeValue.replaceFirst("^@([^:]+)\\:(.*)$", "@$2");
            }
            if (attributeValue.startsWith("@bool/")) {
                String substring = attributeValue.substring(FragmentManagerImpl.ANIM_STYLE_FADE_EXIT);
                TypedValue typedValue = new TypedValue();
                try {
                    getResources().getValue(packageName + ":bool/" + substring, typedValue, true);
                    if (typedValue.type != 18) {
                        throw new m(new StringBuilder("Resource ").append(str).append(" was not a boolean: ").append(typedValue).toString());
                    } else if (typedValue.data != 0) {
                        return true;
                    } else {
                        return false;
                    }
                } catch (NotFoundException e) {
                    throw new m(new StringBuilder("Could not find resource for ").append(str).append(": ").append(attributeValue).toString(), e);
                }
            }
        }
        return attributeBooleanValue;
    }

    private static g[] a(String str) {
        String[] split = str.split(",");
        g[] gVarArr = new g[split.length];
        int i = 0;
        while (i < split.length) {
            g gVar;
            String trim = split[i].trim();
            if (trim.matches("^(\\d+|FULL_WIDTH)\\s*[xX]\\s*(\\d+|AUTO_HEIGHT)$")) {
                String[] split2 = trim.split("[xX]");
                split2[0] = split2[0].trim();
                split2[1] = split2[1].trim();
                try {
                    gVar = new g("FULL_WIDTH".equals(split2[0]) ? -1 : Integer.parseInt(split2[0]), "AUTO_HEIGHT".equals(split2[1]) ? IcsAdapterView.ITEM_VIEW_TYPE_HEADER_OR_FOOTER : Integer.parseInt(split2[1]));
                } catch (NumberFormatException e) {
                    return null;
                }
            } else if ("BANNER".equals(trim)) {
                gVar = g.b;
            } else if ("SMART_BANNER".equals(trim)) {
                gVar = g.a;
            } else if ("IAB_MRECT".equals(trim)) {
                gVar = g.c;
            } else if ("IAB_BANNER".equals(trim)) {
                gVar = g.d;
            } else if ("IAB_LEADERBOARD".equals(trim)) {
                gVar = g.e;
            } else if ("IAB_WIDE_SKYSCRAPER".equals(trim)) {
                gVar = g.f;
            } else {
                gVar = null;
            }
            if (gVar == null) {
                return null;
            }
            gVarArr[i] = gVar;
            i++;
        }
        return gVarArr;
    }

    private Set b(String str, Context context, AttributeSet attributeSet) {
        int i = 0;
        String a = a(str, context, attributeSet, false);
        Set hashSet = new HashSet();
        if (a != null) {
            String[] split = a.split(",");
            int length = split.length;
            while (i < length) {
                String trim = split[i].trim();
                if (trim.length() != 0) {
                    hashSet.add(trim);
                }
                i++;
            }
        }
        return hashSet;
    }

    private boolean b(Context context, g gVar, AttributeSet attributeSet) {
        if (AdUtil.b(context)) {
            return true;
        }
        a(context, "You must have INTERNET and ACCESS_NETWORK_STATE permissions in AndroidManifest.xml.", gVar, attributeSet);
        return false;
    }

    protected void onMeasure(int i, int i2) {
        if (!isInEditMode()) {
            e j = this.a.j();
            if (j != null) {
                j.setVisibility(0);
            }
        }
        super.onMeasure(i, i2);
    }

    protected void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
        if (!isInEditMode() && ((ac) this.a.g().g.a()).b() && i != 0 && this.a.g().l.a() != null && this.a.g().e.a() != null) {
            h hVar;
            if (!AdActivity.b() || AdActivity.c()) {
                hVar = b;
                h.a((WebView) this.a.g().e.a(), "onleaveapp", null);
            } else {
                hVar = b;
                h.a((WebView) this.a.g().e.a(), "onopeninapp", null);
            }
        }
    }
}