package com.yanex.emoticons;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageManager.NameNotFoundException;
import android.graphics.Paint;
import android.graphics.Rect;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.support.v4.view.ViewPager;
import android.text.ClipboardManager;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.Menu;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnLongClickListener;
import android.view.ViewConfiguration;
import android.view.ViewGroup.LayoutParams;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.Toast;
import com.actionbarsherlock.internal.widget.IcsLinearLayout;
import com.actionbarsherlock.internal.widget.IcsToast;
import com.actionbarsherlock.view.MenuItem;
import com.yanex.emoticons.gui.a;
import com.yanex.emoticons.gui.b;
import com.yanex.emoticons.gui.e;
import com.yanex.emoticons.gui.f;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

public class MainActivity extends Activity implements OnClickListener, OnLongClickListener, e {
    private static MainActivity w;
    private static Paint x;
    Builder a;
    public final String b;
    private Map c;
    private final int d;
    private NotificationManager e;
    private b f;
    private ViewPager g;
    private LinearLayout[] h;
    private LinearLayout[] i;
    private View[] j;
    private boolean k;
    private int l;
    private boolean m;
    private boolean n;
    private boolean o;
    private boolean p;
    private int q;
    private boolean r;
    private boolean s;
    private int t;
    private int u;
    private boolean v;

    public MainActivity() {
        this.c = new HashMap();
        this.d = 0;
        this.h = new LinearLayout[5];
        this.i = new LinearLayout[5];
        this.j = new View[5];
        this.k = false;
        this.l = 0;
        this.m = true;
        this.n = true;
        this.o = false;
        this.p = false;
        this.q = 0;
        this.r = false;
        this.s = true;
        this.t = 0;
        this.u = 0;
        this.v = false;
        this.b = "com.yanex.emoticons";
    }

    private int a(String str) {
        if (x == null) {
            float f = getResources().getDisplayMetrics().density * 15.0f;
            Paint paint = new Paint();
            x = paint;
            paint.setTextSize(f);
        }
        int[] iArr = new int[]{2, 3};
        int[] iArr2 = new int[]{2, 4, 6};
        if (!d()) {
            ?[int, float][] Aint__floatArr = iArr;
        }
        int measureText = (int) x.measureText(str, 0, str.length());
        x.getTextBounds(str, 0, str.length(), new Rect());
        DisplayMetrics displayMetrics = new DisplayMetrics();
        getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        int i = displayMetrics.widthPixels - 10;
        int length = Arr.length - 1;
        while (length >= 0) {
            if (i / Arr[length] - 10 >= measureText) {
                return Arr[length];
            }
            length--;
        }
        return 1;
    }

    public static MainActivity a() {
        return w;
    }

    static /* synthetic */ void a(MainActivity mainActivity) {
        Map hashMap = new HashMap();
        Iterator it = mainActivity.c.entrySet().iterator();
        while (it.hasNext()) {
            Entry entry = (Entry) it.next();
            hashMap.put(entry.getKey(), Boolean.valueOf(((View) entry.getValue()).getVisibility() == 0));
        }
        new u(mainActivity).a(hashMap);
    }

    private void a(o[] oVarArr) {
        View view;
        Map a = new u(this).a();
        int i = 0;
        while (i < oVarArr.length) {
            View linearLayout = new LinearLayout(this);
            linearLayout.setOrientation(1);
            int i2 = 0;
            while (i2 < oVarArr[i].size()) {
                View linearLayout2;
                p pVar = (p) oVarArr[i].get(i2);
                if (!this.s || pVar.a() == null || pVar.b() == null) {
                    view = linearLayout;
                } else {
                    linearLayout2 = new LinearLayout(this);
                    linearLayout2.setOrientation(1);
                    view = new TextView(this);
                    CharSequence charSequence = pVar.b() + " (" + pVar.a() + ")";
                    this.c.put(charSequence, linearLayout2);
                    view.setText(charSequence);
                    view.setTextColor(this.u);
                    view.setBackgroundResource(this.t);
                    view.setOnClickListener(new m(this, linearLayout2));
                    LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
                    Boolean bool = (Boolean) a.get(charSequence);
                    if (!(bool == null || bool.booleanValue())) {
                        linearLayout2.setVisibility(MenuItem.SHOW_AS_ACTION_COLLAPSE_ACTION_VIEW);
                    }
                    linearLayout.addView(view, layoutParams);
                    linearLayout.addView(linearLayout2);
                    view = linearLayout2;
                }
                int i3 = pVar.size() - 1;
                while (i3 > 0) {
                    List list = (List) pVar.get(i3);
                    if (list.size() % i3 != 0) {
                        int size = i3 - list.size() % i3 - 1;
                        while (size >= 0) {
                            list.add("");
                            size--;
                        }
                    }
                    int i4 = 0;
                    while (i4 < list.size()) {
                        if (i3 == 1) {
                            View button = new Button(this);
                            button.setOnClickListener(this);
                            button.setOnLongClickListener(this);
                            button.setTextSize(15.0f);
                            button.setText((CharSequence) list.get(i4));
                            linearLayout.addView(button);
                        } else {
                            View linearLayout3 = new LinearLayout(this);
                            linearLayout3.setOrientation(0);
                            int i5 = i4;
                            while (i5 < i4 + i3) {
                                View button2 = new Button(this);
                                button2.setOnClickListener(this);
                                button2.setOnLongClickListener(this);
                                button2.setTextSize(15.0f);
                                button2.setText((CharSequence) list.get(i5));
                                linearLayout3.addView(button2, new LinearLayout.LayoutParams(-1, -2, 1.0f));
                                i5++;
                            }
                            i4 = i5 - 1;
                            linearLayout.addView(linearLayout3, new LinearLayout.LayoutParams(-1, -2));
                        }
                        i4++;
                    }
                    i3--;
                }
                boolean d = d();
                if (!this.s && i2 < oVarArr[i].size() - 1) {
                    linearLayout2 = new TextView(this);
                    if (d) {
                        linearLayout2.setBackgroundColor(1726013664);
                    } else {
                        linearLayout2.setBackgroundColor(-2039584);
                    }
                    linearLayout2.setText(" ");
                    linearLayout2.setHeight(1);
                    linearLayout2.setTextSize(6.0f);
                    linearLayout.addView(linearLayout2);
                    LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) linearLayout2.getLayoutParams();
                    if (d) {
                        layoutParams2.setMargins(0, FragmentManagerImpl.ANIM_STYLE_CLOSE_ENTER, 0, FragmentManagerImpl.ANIM_STYLE_CLOSE_ENTER);
                    } else {
                        layoutParams2.setMargins(0, FragmentManagerImpl.ANIM_STYLE_FADE_ENTER, 0, FragmentManagerImpl.ANIM_STYLE_FADE_ENTER);
                    }
                    linearLayout2.setLayoutParams(layoutParams2);
                }
                i2++;
            }
            b(i + 1);
            this.h[i].addView(linearLayout, new LinearLayout.LayoutParams(-1, -1));
            i++;
        }
        int i6 = 0;
        while (i6 < a.b.length) {
            String str = a.b[i6][0];
            String str2 = a.b[i6][1];
            View linearLayout4 = new LinearLayout(this);
            linearLayout4.setOrientation(1);
            View linearLayout5 = new LinearLayout(this);
            linearLayout5.setOrientation(1);
            linearLayout5.setVisibility(MenuItem.SHOW_AS_ACTION_COLLAPSE_ACTION_VIEW);
            view = new TextView(this);
            view.setText(str + " (" + str2 + ")");
            view.setTextColor(this.u);
            view.setBackgroundResource(this.t);
            view.setOnClickListener(new n(this, linearLayout5));
            int i7 = IcsLinearLayout.SHOW_DIVIDER_MIDDLE;
            while (i7 < a.b[i6].length) {
                linearLayout2 = new Button(this);
                linearLayout2.setOnClickListener(this);
                linearLayout2.setOnLongClickListener(this);
                linearLayout2.setText(a.b[i6][i7]);
                linearLayout5.addView(linearLayout2);
                i7++;
            }
            linearLayout4.addView(view);
            linearLayout4.addView(linearLayout5);
            this.h[3].addView(linearLayout4);
            i6++;
        }
    }

    private o[] a(String[][][] strArr, boolean z) {
        o[] oVarArr = new o[strArr.length];
        int i = 0;
        while (i < oVarArr.length) {
            oVarArr[i] = new o((byte) 0);
            i++;
        }
        int i2 = 0;
        while (i2 < strArr.length) {
            ?[] Arr = strArr[i2];
            int i3 = 0;
            while (i3 < Arr.length) {
                String str;
                String str2;
                int i4;
                ?[] Arr2 = Arr[i3];
                q qVar = new q((byte) 0);
                i = 0;
                while (i < 10) {
                    qVar.add(new ArrayList());
                    i++;
                }
                if (z) {
                    str = Arr2[1];
                    str2 = Arr2[0];
                    i4 = 2;
                } else {
                    str = null;
                    str2 = null;
                    i4 = 0;
                }
                while (i4 < Arr2.length) {
                    ((List) qVar.get(a(Arr2[i4]))).add(Arr2[i4]);
                    i4++;
                }
                if (((List) qVar.get(FragmentManagerImpl.ANIM_STYLE_FADE_EXIT)).size() >= 7 && ((List) qVar.get(FragmentManagerImpl.ANIM_STYLE_FADE_EXIT)).size() % 6 <= 2) {
                    if (((List) qVar.get(ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_DEFAULT)).size() == 0 || ((List) qVar.get(ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_DEFAULT)).size() % 4 == 0) {
                        int size = ((List) qVar.get(FragmentManagerImpl.ANIM_STYLE_FADE_EXIT)).size() - ((List) qVar.get(FragmentManagerImpl.ANIM_STYLE_FADE_EXIT)).size() % 6 - 6;
                        Collection arrayList = new ArrayList();
                        i4 = ((List) qVar.get(FragmentManagerImpl.ANIM_STYLE_FADE_EXIT)).size() - 1;
                        while (i4 >= size) {
                            arrayList.add(0, ((List) qVar.get(FragmentManagerImpl.ANIM_STYLE_FADE_EXIT)).get(i4));
                            ((List) qVar.get(FragmentManagerImpl.ANIM_STYLE_FADE_EXIT)).remove(i4);
                            i4--;
                        }
                        ((List) qVar.get(ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_DEFAULT)).addAll(arrayList);
                    }
                }
                if (((List) qVar.get(ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_DEFAULT)).size() % 4 == 2) {
                    ((List) qVar.get(IcsLinearLayout.SHOW_DIVIDER_MIDDLE)).add(((List) qVar.get(ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_DEFAULT)).get(((List) qVar.get(ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_DEFAULT)).size() - 2));
                    ((List) qVar.get(IcsLinearLayout.SHOW_DIVIDER_MIDDLE)).add(((List) qVar.get(ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_DEFAULT)).get(((List) qVar.get(ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_DEFAULT)).size() - 1));
                    ((List) qVar.get(ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_DEFAULT)).remove(((List) qVar.get(ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_DEFAULT)).size() - 1);
                    ((List) qVar.get(ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_DEFAULT)).remove(((List) qVar.get(ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_DEFAULT)).size() - 1);
                }
                if (((List) qVar.get(FragmentManagerImpl.ANIM_STYLE_FADE_EXIT)).size() % 6 == 3 && ((List) qVar.get(ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_DEFAULT)).size() % 4 == 0) {
                    ((List) qVar.get(ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_DEFAULT)).add(((List) qVar.get(FragmentManagerImpl.ANIM_STYLE_FADE_EXIT)).get(((List) qVar.get(FragmentManagerImpl.ANIM_STYLE_FADE_EXIT)).size() - 3));
                    ((List) qVar.get(ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_DEFAULT)).add(((List) qVar.get(FragmentManagerImpl.ANIM_STYLE_FADE_EXIT)).get(((List) qVar.get(FragmentManagerImpl.ANIM_STYLE_FADE_EXIT)).size() - 2));
                    ((List) qVar.get(ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_DEFAULT)).add(((List) qVar.get(FragmentManagerImpl.ANIM_STYLE_FADE_EXIT)).get(((List) qVar.get(FragmentManagerImpl.ANIM_STYLE_FADE_EXIT)).size() - 1));
                    ((List) qVar.get(FragmentManagerImpl.ANIM_STYLE_FADE_EXIT)).remove(((List) qVar.get(FragmentManagerImpl.ANIM_STYLE_FADE_EXIT)).size() - 1);
                    ((List) qVar.get(FragmentManagerImpl.ANIM_STYLE_FADE_EXIT)).remove(((List) qVar.get(FragmentManagerImpl.ANIM_STYLE_FADE_EXIT)).size() - 1);
                    ((List) qVar.get(FragmentManagerImpl.ANIM_STYLE_FADE_EXIT)).remove(((List) qVar.get(FragmentManagerImpl.ANIM_STYLE_FADE_EXIT)).size() - 1);
                }
                if (((List) qVar.get(FragmentManagerImpl.ANIM_STYLE_FADE_EXIT)).size() % 6 == 4 && ((List) qVar.get(ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_DEFAULT)).size() % 4 == 0) {
                    ((List) qVar.get(ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_DEFAULT)).add(((List) qVar.get(FragmentManagerImpl.ANIM_STYLE_FADE_EXIT)).get(((List) qVar.get(FragmentManagerImpl.ANIM_STYLE_FADE_EXIT)).size() - 4));
                    ((List) qVar.get(ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_DEFAULT)).add(((List) qVar.get(FragmentManagerImpl.ANIM_STYLE_FADE_EXIT)).get(((List) qVar.get(FragmentManagerImpl.ANIM_STYLE_FADE_EXIT)).size() - 3));
                    ((List) qVar.get(ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_DEFAULT)).add(((List) qVar.get(FragmentManagerImpl.ANIM_STYLE_FADE_EXIT)).get(((List) qVar.get(FragmentManagerImpl.ANIM_STYLE_FADE_EXIT)).size() - 2));
                    ((List) qVar.get(ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_DEFAULT)).add(((List) qVar.get(FragmentManagerImpl.ANIM_STYLE_FADE_EXIT)).get(((List) qVar.get(FragmentManagerImpl.ANIM_STYLE_FADE_EXIT)).size() - 1));
                    ((List) qVar.get(FragmentManagerImpl.ANIM_STYLE_FADE_EXIT)).remove(((List) qVar.get(FragmentManagerImpl.ANIM_STYLE_FADE_EXIT)).size() - 1);
                    ((List) qVar.get(FragmentManagerImpl.ANIM_STYLE_FADE_EXIT)).remove(((List) qVar.get(FragmentManagerImpl.ANIM_STYLE_FADE_EXIT)).size() - 1);
                    ((List) qVar.get(FragmentManagerImpl.ANIM_STYLE_FADE_EXIT)).remove(((List) qVar.get(FragmentManagerImpl.ANIM_STYLE_FADE_EXIT)).size() - 1);
                    ((List) qVar.get(FragmentManagerImpl.ANIM_STYLE_FADE_EXIT)).remove(((List) qVar.get(FragmentManagerImpl.ANIM_STYLE_FADE_EXIT)).size() - 1);
                }
                if (((List) qVar.get(FragmentManagerImpl.ANIM_STYLE_FADE_EXIT)).size() % 6 == 5 && ((List) qVar.get(FragmentManagerImpl.ANIM_STYLE_FADE_ENTER)).size() % 5 == 0) {
                    ((List) qVar.get(FragmentManagerImpl.ANIM_STYLE_FADE_ENTER)).add(((List) qVar.get(FragmentManagerImpl.ANIM_STYLE_FADE_EXIT)).get(((List) qVar.get(FragmentManagerImpl.ANIM_STYLE_FADE_EXIT)).size() - 5));
                    ((List) qVar.get(FragmentManagerImpl.ANIM_STYLE_FADE_ENTER)).add(((List) qVar.get(FragmentManagerImpl.ANIM_STYLE_FADE_EXIT)).get(((List) qVar.get(FragmentManagerImpl.ANIM_STYLE_FADE_EXIT)).size() - 4));
                    ((List) qVar.get(FragmentManagerImpl.ANIM_STYLE_FADE_ENTER)).add(((List) qVar.get(FragmentManagerImpl.ANIM_STYLE_FADE_EXIT)).get(((List) qVar.get(FragmentManagerImpl.ANIM_STYLE_FADE_EXIT)).size() - 3));
                    ((List) qVar.get(FragmentManagerImpl.ANIM_STYLE_FADE_ENTER)).add(((List) qVar.get(FragmentManagerImpl.ANIM_STYLE_FADE_EXIT)).get(((List) qVar.get(FragmentManagerImpl.ANIM_STYLE_FADE_EXIT)).size() - 2));
                    ((List) qVar.get(FragmentManagerImpl.ANIM_STYLE_FADE_ENTER)).add(((List) qVar.get(FragmentManagerImpl.ANIM_STYLE_FADE_EXIT)).get(((List) qVar.get(FragmentManagerImpl.ANIM_STYLE_FADE_EXIT)).size() - 1));
                    ((List) qVar.get(FragmentManagerImpl.ANIM_STYLE_FADE_EXIT)).remove(((List) qVar.get(FragmentManagerImpl.ANIM_STYLE_FADE_EXIT)).size() - 1);
                    ((List) qVar.get(FragmentManagerImpl.ANIM_STYLE_FADE_EXIT)).remove(((List) qVar.get(FragmentManagerImpl.ANIM_STYLE_FADE_EXIT)).size() - 1);
                    ((List) qVar.get(FragmentManagerImpl.ANIM_STYLE_FADE_EXIT)).remove(((List) qVar.get(FragmentManagerImpl.ANIM_STYLE_FADE_EXIT)).size() - 1);
                    ((List) qVar.get(FragmentManagerImpl.ANIM_STYLE_FADE_EXIT)).remove(((List) qVar.get(FragmentManagerImpl.ANIM_STYLE_FADE_EXIT)).size() - 1);
                    ((List) qVar.get(FragmentManagerImpl.ANIM_STYLE_FADE_EXIT)).remove(((List) qVar.get(FragmentManagerImpl.ANIM_STYLE_FADE_EXIT)).size() - 1);
                }
                if (((List) qVar.get(ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_DEFAULT)).size() % 4 == 3 && ((List) qVar.get(FragmentManagerImpl.ANIM_STYLE_CLOSE_ENTER)).size() % 3 == 0) {
                    ((List) qVar.get(FragmentManagerImpl.ANIM_STYLE_CLOSE_ENTER)).add(((List) qVar.get(ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_DEFAULT)).get(((List) qVar.get(ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_DEFAULT)).size() - 3));
                    ((List) qVar.get(FragmentManagerImpl.ANIM_STYLE_CLOSE_ENTER)).add(((List) qVar.get(ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_DEFAULT)).get(((List) qVar.get(ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_DEFAULT)).size() - 2));
                    ((List) qVar.get(FragmentManagerImpl.ANIM_STYLE_CLOSE_ENTER)).add(((List) qVar.get(ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_DEFAULT)).get(((List) qVar.get(ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_DEFAULT)).size() - 1));
                    ((List) qVar.get(ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_DEFAULT)).remove(((List) qVar.get(ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_DEFAULT)).size() - 1);
                    ((List) qVar.get(ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_DEFAULT)).remove(((List) qVar.get(ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_DEFAULT)).size() - 1);
                    ((List) qVar.get(ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_DEFAULT)).remove(((List) qVar.get(ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_DEFAULT)).size() - 1);
                }
                if (((List) qVar.get(FragmentManagerImpl.ANIM_STYLE_CLOSE_ENTER)).size() % 3 == 2) {
                    ((List) qVar.get(IcsLinearLayout.SHOW_DIVIDER_MIDDLE)).add(((List) qVar.get(FragmentManagerImpl.ANIM_STYLE_CLOSE_ENTER)).get(((List) qVar.get(FragmentManagerImpl.ANIM_STYLE_CLOSE_ENTER)).size() - 2));
                    ((List) qVar.get(IcsLinearLayout.SHOW_DIVIDER_MIDDLE)).add(((List) qVar.get(FragmentManagerImpl.ANIM_STYLE_CLOSE_ENTER)).get(((List) qVar.get(FragmentManagerImpl.ANIM_STYLE_CLOSE_ENTER)).size() - 1));
                    ((List) qVar.get(FragmentManagerImpl.ANIM_STYLE_CLOSE_ENTER)).remove(((List) qVar.get(FragmentManagerImpl.ANIM_STYLE_CLOSE_ENTER)).size() - 1);
                    ((List) qVar.get(FragmentManagerImpl.ANIM_STYLE_CLOSE_ENTER)).remove(((List) qVar.get(FragmentManagerImpl.ANIM_STYLE_CLOSE_ENTER)).size() - 1);
                }
                if (((List) qVar.get(FragmentManagerImpl.ANIM_STYLE_CLOSE_ENTER)).size() % 3 == 1 && ((List) qVar.get(FragmentManagerImpl.ANIM_STYLE_CLOSE_ENTER)).size() >= 4) {
                    ((List) qVar.get(IcsLinearLayout.SHOW_DIVIDER_MIDDLE)).add(((List) qVar.get(FragmentManagerImpl.ANIM_STYLE_CLOSE_ENTER)).get(((List) qVar.get(FragmentManagerImpl.ANIM_STYLE_CLOSE_ENTER)).size() - 4));
                    ((List) qVar.get(IcsLinearLayout.SHOW_DIVIDER_MIDDLE)).add(((List) qVar.get(FragmentManagerImpl.ANIM_STYLE_CLOSE_ENTER)).get(((List) qVar.get(FragmentManagerImpl.ANIM_STYLE_CLOSE_ENTER)).size() - 3));
                    ((List) qVar.get(IcsLinearLayout.SHOW_DIVIDER_MIDDLE)).add(((List) qVar.get(FragmentManagerImpl.ANIM_STYLE_CLOSE_ENTER)).get(((List) qVar.get(FragmentManagerImpl.ANIM_STYLE_CLOSE_ENTER)).size() - 2));
                    ((List) qVar.get(IcsLinearLayout.SHOW_DIVIDER_MIDDLE)).add(((List) qVar.get(FragmentManagerImpl.ANIM_STYLE_CLOSE_ENTER)).get(((List) qVar.get(FragmentManagerImpl.ANIM_STYLE_CLOSE_ENTER)).size() - 1));
                    ((List) qVar.get(FragmentManagerImpl.ANIM_STYLE_CLOSE_ENTER)).remove(((List) qVar.get(FragmentManagerImpl.ANIM_STYLE_CLOSE_ENTER)).size() - 1);
                    ((List) qVar.get(FragmentManagerImpl.ANIM_STYLE_CLOSE_ENTER)).remove(((List) qVar.get(FragmentManagerImpl.ANIM_STYLE_CLOSE_ENTER)).size() - 1);
                    ((List) qVar.get(FragmentManagerImpl.ANIM_STYLE_CLOSE_ENTER)).remove(((List) qVar.get(FragmentManagerImpl.ANIM_STYLE_CLOSE_ENTER)).size() - 1);
                    ((List) qVar.get(FragmentManagerImpl.ANIM_STYLE_CLOSE_ENTER)).remove(((List) qVar.get(FragmentManagerImpl.ANIM_STYLE_CLOSE_ENTER)).size() - 1);
                }
                if (((List) qVar.get(IcsLinearLayout.SHOW_DIVIDER_MIDDLE)).size() % 2 == 1 && ((List) qVar.get(FragmentManagerImpl.ANIM_STYLE_CLOSE_ENTER)).size() % 3 == 1) {
                    ((List) qVar.get(IcsLinearLayout.SHOW_DIVIDER_MIDDLE)).add(((List) qVar.get(FragmentManagerImpl.ANIM_STYLE_CLOSE_ENTER)).get(((List) qVar.get(FragmentManagerImpl.ANIM_STYLE_CLOSE_ENTER)).size() - 1));
                    ((List) qVar.get(FragmentManagerImpl.ANIM_STYLE_CLOSE_ENTER)).remove(((List) qVar.get(FragmentManagerImpl.ANIM_STYLE_CLOSE_ENTER)).size() - 1);
                }
                if (((List) qVar.get(IcsLinearLayout.SHOW_DIVIDER_MIDDLE)).size() % 2 == 1) {
                    ((List) qVar.get(1)).add(((List) qVar.get(IcsLinearLayout.SHOW_DIVIDER_MIDDLE)).get(((List) qVar.get(IcsLinearLayout.SHOW_DIVIDER_MIDDLE)).size() - 1));
                    ((List) qVar.get(IcsLinearLayout.SHOW_DIVIDER_MIDDLE)).remove(((List) qVar.get(IcsLinearLayout.SHOW_DIVIDER_MIDDLE)).size() - 1);
                }
                oVarArr[i2].add(new p(qVar, str, str2));
                i3++;
            }
            i2++;
        }
        return oVarArr;
    }

    private void b(int i) {
        String toString = Integer.toString(i);
        b bVar = new b(this);
        List a = j.a(bVar.a(new StringBuilder("useremotes").append(toString).toString()));
        bVar.a();
        String[] strArr = new String[a.size()];
        a.toArray(strArr);
        String[][][] strArr2 = new String[][][]{new String[1][]};
        strArr2[0][0] = strArr;
        p pVar = (p) a(strArr2, false)[0].get(0);
        LinearLayout linearLayout = this.i[i - 1];
        View view = this.j[i - 1];
        if (linearLayout.getChildCount() > 0) {
            linearLayout.removeAllViewsInLayout();
        }
        boolean z = 1;
        int i2 = pVar.size() - 1;
        while (i2 > 0) {
            boolean z2;
            int size;
            List list = (List) pVar.get(i2);
            z2 = list.size() > 0 ? 0 : size;
            if (list.size() % i2 != 0) {
                size = i2 - list.size() % i2 - 1;
                while (size >= 0) {
                    list.add("");
                    size--;
                }
            }
            int i3 = 0;
            while (i3 < list.size()) {
                if (i2 == 1) {
                    View button = new Button(this);
                    button.setOnClickListener(this);
                    button.setOnLongClickListener(this);
                    button.setTextSize(15.0f);
                    button.setText((CharSequence) list.get(i3));
                    linearLayout.addView(button);
                } else {
                    View linearLayout2 = new LinearLayout(this);
                    linearLayout2.setOrientation(0);
                    int i4 = i3;
                    while (i4 < i3 + i2) {
                        View button2 = new Button(this);
                        button2.setOnClickListener(this);
                        button2.setOnLongClickListener(this);
                        button2.setTextSize(15.0f);
                        button2.setText((CharSequence) list.get(i4));
                        linearLayout2.addView(button2, new LinearLayout.LayoutParams(-1, -2, 1.0f));
                        i4++;
                    }
                    i3 = i4 - 1;
                    linearLayout.addView(linearLayout2, new LinearLayout.LayoutParams(-1, -2));
                }
                i3++;
            }
            i2--;
            z = z2;
        }
        if (size != 0) {
            linearLayout.setVisibility(MenuItem.SHOW_AS_ACTION_COLLAPSE_ACTION_VIEW);
            view.setVisibility(MenuItem.SHOW_AS_ACTION_COLLAPSE_ACTION_VIEW);
        } else {
            linearLayout.setVisibility(0);
            view.setVisibility(0);
        }
    }

    private boolean d() {
        int i = getResources().getConfiguration().screenLayout & 15;
        return i == 3 || i == 4;
    }

    private void e() {
        int i = -2039584;
        switch (this.q) {
            case IcsToast.LENGTH_SHORT:
                this.g.setBackgroundColor(-526345);
                findViewById(2131099702).setBackgroundColor(-8947849);
                this.t = 2130837638;
                this.u = -10066330;
                break;
            case IcsToast.LENGTH_LONG:
                this.g.setBackgroundColor(-7303024);
                findViewById(2131099702).setBackgroundColor(-12303292);
                this.t = 2130837635;
                this.u = -1710619;
                break;
            case IcsLinearLayout.SHOW_DIVIDER_MIDDLE:
                this.g.setBackgroundColor(-9165);
                this.f.b(-6723569);
                findViewById(2131099702).setBackgroundColor(-3503852);
                this.t = 2130837641;
                this.u = -13487309;
                i = -6421;
                break;
            case FragmentManagerImpl.ANIM_STYLE_CLOSE_ENTER:
                this.g.setBackgroundColor(-147751);
                this.f.b(-5559968);
                findViewById(2131099702).setBackgroundColor(-1229176);
                this.t = 2130837644;
                this.u = -855310;
                i = -6421;
                break;
            default:
                i = 0;
                break;
        }
        int i2 = 1;
        while (i2 <= 5) {
            this.j[i2 - 1].setBackgroundColor(i);
            i2++;
        }
    }

    private void f() {
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(getBaseContext());
        this.m = defaultSharedPreferences.getBoolean("hide_after", true);
        this.s = defaultSharedPreferences.getBoolean("show_tabs", true);
        this.n = defaultSharedPreferences.getBoolean("toast_after", true);
        this.p = false;
        this.k = defaultSharedPreferences.getBoolean("add_spaces", false);
        this.q = 0;
        try {
            this.q = Integer.parseInt(defaultSharedPreferences.getString("theme", "0"));
        } catch (Exception e) {
        }
        this.l = 0;
        try {
            this.l = Integer.parseInt(defaultSharedPreferences.getString("long_action", "0"));
        } catch (Exception e2) {
        }
        if (defaultSharedPreferences.getBoolean("notification", true)) {
            if (!this.v) {
                g();
                this.v = true;
            } else if (this.r != defaultSharedPreferences.getBoolean("old_icon", false)) {
                this.e.cancelAll();
                g();
            }
        } else if (this.v) {
            this.e.cancelAll();
            this.v = false;
        }
        this.r = defaultSharedPreferences.getBoolean("old_icon", false);
    }

    private void g() {
        Notification notification = new Notification(PreferenceManager.getDefaultSharedPreferences(this).getBoolean("old_icon", false) ? 2130837660 : 2130837661, getString(2131427341), 0);
        Context applicationContext = getApplicationContext();
        CharSequence string = getString(2131427341);
        CharSequence string2 = getString(2131427342);
        PendingIntent activity = PendingIntent.getActivity(this, 0, new Intent(this, MainActivity.class), 0);
        notification.flags |= 32;
        notification.setLatestEventInfo(applicationContext, string, string2, activity);
        this.e.notify(1, notification);
    }

    public final void a(int i) {
        this.f.a(i);
    }

    public final void a(a aVar) {
        switch (aVar.a) {
            case 2130837651:
                this.g.a(0, false);
            case 2130837654:
                this.f.a(this.g.a());
                openOptionsMenu();
            case 2130837662:
                this.g.a((int)FragmentManagerImpl.ANIM_STYLE_CLOSE_ENTER, false);
            case 2130837665:
                this.g.a((int)IcsLinearLayout.SHOW_DIVIDER_MIDDLE, false);
            case 2130837666:
                this.g.a(1, false);
            case 2130837667:
                this.g.a((int)ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_DEFAULT, false);
            default:
                break;
        }
    }

    public final void b() {
        int i = 0;
        while (i < 5) {
            b(i + 1);
            i++;
        }
    }

    public final void c() {
        b(this.g.a() + 1);
    }

    public void onClick(View view) {
        if (this.o) {
            String toString = ((Button) view).getText().toString();
            Intent intent = new Intent();
            intent.putExtra("replace_key", toString);
            setResult(-1, intent);
            finish();
        } else {
            Object toString2 = ((Button) view).getText().toString();
            ClipboardManager clipboardManager = (ClipboardManager) getSystemService("clipboard");
            if (this.k) {
                clipboardManager.setText(new StringBuilder(" ").append(toString2).append(" ").toString());
            } else {
                clipboardManager.setText(toString2);
            }
            if (this.n && !this.o) {
                Toast.makeText(this, getResources().getString(2131427343), 1).show();
            }
            if (this.m) {
                moveTaskToBack(true);
            }
        }
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.e = (NotificationManager) getSystemService("notification");
        f();
        w = this;
        switch (this.q) {
            case IcsToast.LENGTH_SHORT:
                setTheme(2131492957);
                break;
            case IcsToast.LENGTH_LONG:
                setTheme(2131492958);
                break;
            case IcsLinearLayout.SHOW_DIVIDER_MIDDLE:
                setTheme(2131492959);
                break;
            case FragmentManagerImpl.ANIM_STYLE_CLOSE_ENTER:
                setTheme(2131492960);
                break;
            default:
                setTheme(2131492957);
                break;
        }
        setContentView(2130903063);
        this.g = (ViewPager) findViewById(2131099700);
        this.g.a(new k(this));
        this.f = new b((LinearLayout) findViewById(2131099702));
        List arrayList = new ArrayList();
        int i = 0;
        while (i < 5) {
            ScrollView scrollView = new ScrollView(this);
            View linearLayout = new LinearLayout(this);
            linearLayout.setBackgroundColor(16777215);
            int applyDimension = (int) TypedValue.applyDimension(1, 4.0f, getResources().getDisplayMetrics());
            linearLayout.setPadding(applyDimension, applyDimension, applyDimension, applyDimension);
            linearLayout.setOrientation(1);
            View linearLayout2 = new LinearLayout(this);
            linearLayout2.setOrientation(1);
            View view = new View(this);
            view.setBackgroundColor(-2039584);
            view.setVisibility(MenuItem.SHOW_AS_ACTION_COLLAPSE_ACTION_VIEW);
            linearLayout.addView(linearLayout2);
            LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, 1);
            if (d()) {
                layoutParams.setMargins(0, FragmentManagerImpl.ANIM_STYLE_CLOSE_ENTER, 0, FragmentManagerImpl.ANIM_STYLE_CLOSE_ENTER);
            } else {
                layoutParams.setMargins(0, FragmentManagerImpl.ANIM_STYLE_FADE_ENTER, 0, FragmentManagerImpl.ANIM_STYLE_FADE_ENTER);
            }
            linearLayout.addView(view, layoutParams);
            scrollView.addView(linearLayout);
            this.h[i] = linearLayout;
            this.i[i] = linearLayout2;
            this.j[i] = view;
            arrayList.add(scrollView);
            i++;
        }
        this.g.a(new f(arrayList));
        e();
        String action = getIntent().getAction();
        if (action == null || !"com.adamrocker.android.simeji.ACTION_INTERCEPT".equals(action)) {
            this.o = false;
        } else {
            this.o = true;
        }
        a(a(a.a, true));
        List arrayList2 = new ArrayList();
        arrayList2.add(new a(2130837651, "", this));
        arrayList2.add(new a(2130837666, "", this));
        arrayList2.add(new a(2130837665, "", this));
        arrayList2.add(new a(2130837662, "", this));
        arrayList2.add(new a(2130837667, "", this));
        if (VERSION.SDK_INT >= 14 && !ViewConfiguration.get(this).hasPermanentMenuKey()) {
            arrayList2.add(new a(2130837654, "", this));
        }
        this.f.a(arrayList2);
        this.a = new Builder(this);
        action = "";
        try {
            action = new StringBuilder(" ").append(getPackageManager().getPackageInfo(getPackageName(), 0).versionName).toString();
        } catch (NameNotFoundException e) {
        }
        this.a.setMessage(getString(2131427341) + action + "\n\nCreator: yanex\nE-mail: me@yanex.org\nWeb: yanex.org\nTwitter: @yanex_ru");
        this.a.setPositiveButton(getString(2131427346), new l(this));
        b bVar = new b(this);
        action = bVar.a("firstLaunch");
        boolean z;
        if (action == null || action.length() == 0) {
            bVar.a("firstLaunch", "true");
            z = true;
        } else {
            z = false;
        }
        bVar.a();
        if (i != 0) {
            startActivity(new Intent(getBaseContext(), TutorialActivity.class));
        }
    }

    protected Dialog onCreateDialog(int i) {
        switch (i) {
            case IcsToast.LENGTH_SHORT:
                return this.a.create();
            default:
                return null;
        }
    }

    public boolean onCreateOptionsMenu(Menu menu) {
        menu.add(0, 103, 0, getResources().getString(2131427345)).setAlphabeticShortcut('a').setIcon(17301566);
        menu.add(0, 104, 0, getResources().getString(2131427392)).setAlphabeticShortcut('c').setIcon(17301560);
        menu.add(0, 101, 0, getResources().getString(2131427347)).setAlphabeticShortcut('s').setIcon(17301577);
        menu.add(0, 102, 0, getResources().getString(2131427348)).setAlphabeticShortcut('a').setIcon(17301569);
        return super.onCreateOptionsMenu(menu);
    }

    public boolean onLongClick(View view) {
        int i = 0;
        if (this.l == 0) {
            b bVar = new b(this);
            String toString = new StringBuilder("useremotes").append(Integer.toString(this.g.a() + 1)).toString();
            List a = j.a(bVar.a(toString));
            String toString2 = ((Button) view).getText().toString();
            int i2 = 0;
            while (i2 < a.size()) {
                if (((String) a.get(i2)).equals(toString2)) {
                    a.remove(i2);
                    i = 1;
                    break;
                } else {
                    i2++;
                }
            }
            if (i == 0) {
                a.add(toString2);
            }
            bVar.a(toString, j.a(a));
            bVar.a();
            c();
        } else {
            String toString3 = ((Button) view).getText().toString();
            ClipboardManager clipboardManager = (ClipboardManager) getSystemService("clipboard");
            if (this.k) {
                clipboardManager.setText(clipboardManager.getText() + " " + toString3 + " ");
            } else {
                clipboardManager.setText(clipboardManager.getText() + toString3);
            }
            if (this.n) {
                Toast.makeText(this, getResources().getString(2131427344), 0).show();
            }
        }
        return true;
    }

    public boolean onOptionsItemSelected(android.view.MenuItem menuItem) {
        switch (menuItem.getItemId()) {
            case 101:
                startActivity(new Intent(getBaseContext(), Preferences.class));
                break;
            case 102:
                showDialog(0);
                break;
            case 103:
                Intent intent = new Intent(getBaseContext(), EditorActivity.class);
                intent.putExtra("page", Integer.toString(this.g.a() + 1));
                intent.putExtra("theme", this.q);
                startActivity(intent);
                break;
            case 104:
                ((ClipboardManager) getSystemService("clipboard")).setText("");
                break;
            default:
                return false;
        }
        return true;
    }

    public void onRestart() {
        super.onRestart();
        f();
    }
}