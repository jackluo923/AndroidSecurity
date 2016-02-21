package android.support.v4.app;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import com.andymstone.compasslib.v;
import com.andymstone.core.o;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;

public class i extends Activity {
    final Handler a;
    final q b;
    final n c;
    boolean d;
    boolean e;
    boolean f;
    boolean g;
    boolean h;
    boolean i;
    boolean j;
    boolean k;
    HashMap l;
    ac m;

    public i() {
        this.a = new j(this);
        this.b = new q();
        this.c = new k(this);
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static java.lang.String a(android.view.View r7) {
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.app.i.a(android.view.View):java.lang.String");
        /*
        r3 = 86;
        r1 = 70;
        r6 = 44;
        r5 = 32;
        r2 = 46;
        r4 = new java.lang.StringBuilder;
        r0 = 128; // 0x80 float:1.794E-43 double:6.32E-322;
        r4.<init>(r0);
        r0 = r7.getClass();
        r0 = r0.getName();
        r4.append(r0);
        r0 = 123; // 0x7b float:1.72E-43 double:6.1E-322;
        r4.append(r0);
        r0 = java.lang.System.identityHashCode(r7);
        r0 = java.lang.Integer.toHexString(r0);
        r4.append(r0);
        r4.append(r5);
        r0 = r7.getVisibility();
        switch(r0) {
            case 0: goto L_0x011e;
            case 4: goto L_0x0123;
            case 8: goto L_0x012a;
            default: goto L_0x0036;
        };
    L_0x0036:
        r4.append(r2);
    L_0x0039:
        r0 = r7.isFocusable();
        if (r0 == 0) goto L_0x0131;
    L_0x003f:
        r0 = r1;
    L_0x0040:
        r4.append(r0);
        r0 = r7.isEnabled();
        if (r0 == 0) goto L_0x0134;
    L_0x0049:
        r0 = 69;
    L_0x004b:
        r4.append(r0);
        r0 = r7.willNotDraw();
        if (r0 == 0) goto L_0x0137;
    L_0x0054:
        r0 = r2;
    L_0x0055:
        r4.append(r0);
        r0 = r7.isHorizontalScrollBarEnabled();
        if (r0 == 0) goto L_0x013b;
    L_0x005e:
        r0 = 72;
    L_0x0060:
        r4.append(r0);
        r0 = r7.isVerticalScrollBarEnabled();
        if (r0 == 0) goto L_0x013e;
    L_0x0069:
        r0 = r3;
    L_0x006a:
        r4.append(r0);
        r0 = r7.isClickable();
        if (r0 == 0) goto L_0x0141;
    L_0x0073:
        r0 = 67;
    L_0x0075:
        r4.append(r0);
        r0 = r7.isLongClickable();
        if (r0 == 0) goto L_0x0144;
    L_0x007e:
        r0 = 76;
    L_0x0080:
        r4.append(r0);
        r4.append(r5);
        r0 = r7.isFocused();
        if (r0 == 0) goto L_0x0147;
    L_0x008c:
        r4.append(r1);
        r0 = r7.isSelected();
        if (r0 == 0) goto L_0x014a;
    L_0x0095:
        r0 = 83;
    L_0x0097:
        r4.append(r0);
        r0 = r7.isPressed();
        if (r0 == 0) goto L_0x00a2;
    L_0x00a0:
        r2 = 80;
    L_0x00a2:
        r4.append(r2);
        r4.append(r5);
        r0 = r7.getLeft();
        r4.append(r0);
        r4.append(r6);
        r0 = r7.getTop();
        r4.append(r0);
        r0 = 45;
        r4.append(r0);
        r0 = r7.getRight();
        r4.append(r0);
        r4.append(r6);
        r0 = r7.getBottom();
        r4.append(r0);
        r1 = r7.getId();
        r0 = -1;
        if (r1 == r0) goto L_0x0114;
    L_0x00d6:
        r0 = " #";
        r4.append(r0);
        r0 = java.lang.Integer.toHexString(r1);
        r4.append(r0);
        r2 = r7.getResources();
        if (r1 == 0) goto L_0x0114;
    L_0x00e8:
        if (r2 == 0) goto L_0x0114;
    L_0x00ea:
        r0 = -16777216; // 0xffffffffff000000 float:-1.7014118E38 double:NaN;
        r0 = r0 & r1;
        switch(r0) {
            case 16777216: goto L_0x0150;
            case 2130706432: goto L_0x014d;
            default: goto L_0x00f0;
        };
    L_0x00f0:
        r0 = r2.getResourcePackageName(r1);	 Catch:{ NotFoundException -> 0x0153 }
    L_0x00f4:
        r3 = r2.getResourceTypeName(r1);	 Catch:{ NotFoundException -> 0x0153 }
        r1 = r2.getResourceEntryName(r1);	 Catch:{ NotFoundException -> 0x0153 }
        r2 = " ";
        r4.append(r2);	 Catch:{ NotFoundException -> 0x0153 }
        r4.append(r0);	 Catch:{ NotFoundException -> 0x0153 }
        r0 = ":";
        r4.append(r0);	 Catch:{ NotFoundException -> 0x0153 }
        r4.append(r3);	 Catch:{ NotFoundException -> 0x0153 }
        r0 = "/";
        r4.append(r0);	 Catch:{ NotFoundException -> 0x0153 }
        r4.append(r1);	 Catch:{ NotFoundException -> 0x0153 }
    L_0x0114:
        r0 = "}";
        r4.append(r0);
        r0 = r4.toString();
        return r0;
    L_0x011e:
        r4.append(r3);
        goto L_0x0039;
    L_0x0123:
        r0 = 73;
        r4.append(r0);
        goto L_0x0039;
    L_0x012a:
        r0 = 71;
        r4.append(r0);
        goto L_0x0039;
    L_0x0131:
        r0 = r2;
        goto L_0x0040;
    L_0x0134:
        r0 = r2;
        goto L_0x004b;
    L_0x0137:
        r0 = 68;
        goto L_0x0055;
    L_0x013b:
        r0 = r2;
        goto L_0x0060;
    L_0x013e:
        r0 = r2;
        goto L_0x006a;
    L_0x0141:
        r0 = r2;
        goto L_0x0075;
    L_0x0144:
        r0 = r2;
        goto L_0x0080;
    L_0x0147:
        r1 = r2;
        goto L_0x008c;
    L_0x014a:
        r0 = r2;
        goto L_0x0097;
    L_0x014d:
        r0 = "app";
        goto L_0x00f4;
    L_0x0150:
        r0 = "android";
        goto L_0x00f4;
    L_0x0153:
        r0 = move-exception;
        goto L_0x0114;
        */
    }

    private void a(String str, PrintWriter printWriter, View view) {
        printWriter.print(str);
        if (view == null) {
            printWriter.println("null");
        } else {
            printWriter.println(a(view));
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                int childCount = viewGroup.getChildCount();
                if (childCount > 0) {
                    String str2 = str + "  ";
                    int i = 0;
                    while (i < childCount) {
                        a(str2, printWriter, viewGroup.getChildAt(i));
                        i++;
                    }
                }
            }
        }
    }

    ac a(String str, boolean z, boolean z2) {
        if (this.l == null) {
            this.l = new HashMap();
        }
        ac acVar = (ac) this.l.get(str);
        if (acVar != null) {
            acVar.a(this);
            return acVar;
        } else if (!z2) {
            return acVar;
        } else {
            acVar = new ac(str, this, z);
            this.l.put(str, acVar);
            return acVar;
        }
    }

    protected void a() {
        this.b.m();
    }

    public void a(Fragment fragment) {
    }

    void a(String str) {
        if (this.l != null) {
            ac acVar = (ac) this.l.get(str);
            if (acVar != null && !acVar.g) {
                acVar.h();
                this.l.remove(str);
            }
        }
    }

    void a(boolean z) {
        if (!this.g) {
            this.g = true;
            this.h = z;
            this.a.removeMessages(1);
            d();
        }
    }

    public Object b() {
        return null;
    }

    public void c() {
        if (VERSION.SDK_INT >= 11) {
            a.a(this);
        } else {
            this.i = true;
        }
    }

    void d() {
        if (this.k) {
            this.k = false;
            if (this.m != null) {
                if (this.h) {
                    this.m.d();
                } else {
                    this.m.c();
                }
            }
        }
        this.b.p();
    }

    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        String str2;
        if (VERSION.SDK_INT >= 11) {
            printWriter.print(str);
            printWriter.print("Local FragmentActivity ");
            printWriter.print(Integer.toHexString(System.identityHashCode(this)));
            printWriter.println(" State:");
            str2 = str + "  ";
            printWriter.print(str2);
            printWriter.print("mCreated=");
            printWriter.print(this.d);
            printWriter.print("mResumed=");
            printWriter.print(this.e);
            printWriter.print(" mStopped=");
            printWriter.print(this.f);
            printWriter.print(" mReallyStopped=");
            printWriter.println(this.g);
            printWriter.print(str2);
            printWriter.print("mLoadersStarted=");
            printWriter.println(this.k);
        } else {
            printWriter.print(str);
            printWriter.print("Local FragmentActivity ");
            printWriter.print(Integer.toHexString(System.identityHashCode(this)));
            printWriter.println(" State:");
            str2 = str + "  ";
            printWriter.print(str2);
            printWriter.print("mCreated=");
            printWriter.print(this.d);
            printWriter.print("mResumed=");
            printWriter.print(this.e);
            printWriter.print(" mStopped=");
            printWriter.print(this.f);
            printWriter.print(" mReallyStopped=");
            printWriter.println(this.g);
            printWriter.print(str2);
            printWriter.print("mLoadersStarted=");
            printWriter.println(this.k);
        }
        if (this.m != null) {
            printWriter.print(str);
            printWriter.print("Loader Manager ");
            printWriter.print(Integer.toHexString(System.identityHashCode(this.m)));
            printWriter.println(":");
            this.m.a(str + "  ", fileDescriptor, printWriter, strArr);
        }
        this.b.a(str, fileDescriptor, printWriter, strArr);
        printWriter.print(str);
        printWriter.println("View Hierarchy:");
        a(str + "  ", printWriter, getWindow().getDecorView());
    }

    public o e() {
        return this.b;
    }

    protected void onActivityResult(int i, int i2, Intent intent) {
        this.b.i();
        int i3 = i >> 16;
        if (i3 != 0) {
            i3--;
            if (this.b.f == null || i3 < 0 || i3 >= this.b.f.size()) {
                Log.w("FragmentActivity", "Activity result fragment index out of range: 0x" + Integer.toHexString(i));
            } else {
                Fragment fragment = (Fragment) this.b.f.get(i3);
                if (fragment == null) {
                    Log.w("FragmentActivity", "Activity result no fragment exists for index: 0x" + Integer.toHexString(i));
                } else {
                    fragment.a(65535 & i, i2, intent);
                }
            }
        } else {
            super.onActivityResult(i, i2, intent);
        }
    }

    public void onBackPressed() {
        if (!this.b.c()) {
            finish();
        }
    }

    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.b.a(configuration);
    }

    protected void onCreate(Bundle bundle) {
        this.b.a(this, this.c, null);
        if (getLayoutInflater().getFactory() == null) {
            getLayoutInflater().setFactory(this);
        }
        super.onCreate(bundle);
        m mVar = (m) getLastNonConfigurationInstance();
        if (mVar != null) {
            this.l = mVar.e;
        }
        if (bundle != null) {
            this.b.a(bundle.getParcelable("android:support:fragments"), mVar != null ? mVar.d : null);
        }
        this.b.j();
    }

    public boolean onCreatePanelMenu(int i, Menu menu) {
        if (i != 0) {
            return super.onCreatePanelMenu(i, menu);
        }
        return VERSION.SDK_INT >= 11 ? super.onCreatePanelMenu(i, menu) | this.b.a(menu, getMenuInflater()) : true;
    }

    public View onCreateView(String str, Context context, AttributeSet attributeSet) {
        int i = 0;
        Fragment fragment = null;
        if (!"fragment".equals(str)) {
            return super.onCreateView(str, context, attributeSet);
        }
        String attributeValue = attributeSet.getAttributeValue(null, "class");
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, l.a);
        if (attributeValue == null) {
            attributeValue = obtainStyledAttributes.getString(0);
        }
        int resourceId = obtainStyledAttributes.getResourceId(1, -1);
        String string = obtainStyledAttributes.getString(o.MyAlertDialog_myAlertDialogButtonDrawable);
        obtainStyledAttributes.recycle();
        if (0 != 0) {
            i = null.getId();
        }
        if (i == -1 && resourceId == -1 && string == null) {
            throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Must specify unique android:id, android:tag, or have a parent with an id for " + attributeValue);
        }
        if (resourceId != -1) {
            fragment = this.b.a(resourceId);
        }
        if (fragment == null && string != null) {
            fragment = this.b.a(string);
        }
        if (fragment == null && i != -1) {
            fragment = this.b.a(i);
        }
        if (q.a) {
            Log.v("FragmentActivity", "onCreateView: id=0x" + Integer.toHexString(resourceId) + " fname=" + attributeValue + " existing=" + fragment);
        }
        if (fragment == null) {
            Fragment a = Fragment.a((Context)this, attributeValue);
            a.x = true;
            a.F = resourceId != 0 ? resourceId : i;
            a.G = i;
            a.H = string;
            a.y = true;
            a.B = this.b;
            a.a(this, attributeSet, a.m);
            this.b.a(a, true);
            fragment = a;
        } else if (fragment.y) {
            throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Duplicate id 0x" + Integer.toHexString(resourceId) + ", tag " + string + ", or parent id 0x" + Integer.toHexString(i) + " with another fragment for " + attributeValue);
        } else {
            fragment.y = true;
            if (!fragment.L) {
                fragment.a(this, attributeSet, fragment.m);
            }
            this.b.b(fragment);
        }
        if (fragment.R == null) {
            throw new IllegalStateException("Fragment " + attributeValue + " did not create a view.");
        }
        if (resourceId != 0) {
            fragment.R.setId(resourceId);
        }
        if (fragment.R.getTag() == null) {
            fragment.R.setTag(string);
        }
        return fragment.R;
    }

    protected void onDestroy() {
        super.onDestroy();
        a(false);
        this.b.r();
        if (this.m != null) {
            this.m.h();
        }
    }

    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (VERSION.SDK_INT >= 5 || i != 4 || keyEvent.getRepeatCount() != 0) {
            return super.onKeyDown(i, keyEvent);
        }
        onBackPressed();
        return true;
    }

    public void onLowMemory() {
        super.onLowMemory();
        this.b.s();
    }

    public boolean onMenuItemSelected(int i, MenuItem menuItem) {
        if (super.onMenuItemSelected(i, menuItem)) {
            return true;
        }
        switch (i) {
            case v.DropShadowView_cornerRadius:
                return this.b.a(menuItem);
            case o.MyAlertDialog_MAD_divider:
                return this.b.b(menuItem);
            default:
                return false;
        }
    }

    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        this.b.i();
    }

    public void onPanelClosed(int i, Menu menu) {
        switch (i) {
            case v.DropShadowView_cornerRadius:
                this.b.b(menu);
                break;
        }
        super.onPanelClosed(i, menu);
    }

    protected void onPause() {
        super.onPause();
        this.e = false;
        if (this.a.hasMessages(o.MyAlertDialog_myAlertDialogButtonDrawable)) {
            this.a.removeMessages(o.MyAlertDialog_myAlertDialogButtonDrawable);
            a();
        }
        this.b.n();
    }

    protected void onPostResume() {
        super.onPostResume();
        this.a.removeMessages(o.MyAlertDialog_myAlertDialogButtonDrawable);
        a();
        this.b.e();
    }

    public boolean onPreparePanel(int i, View view, Menu menu) {
        if (i != 0 || menu == null) {
            return super.onPreparePanel(i, view, menu);
        }
        if (this.i) {
            this.i = false;
            menu.clear();
            onCreatePanelMenu(i, menu);
        }
        return super.onPreparePanel(i, view, menu) | this.b.a(menu);
    }

    protected void onResume() {
        super.onResume();
        this.a.sendEmptyMessage(o.MyAlertDialog_myAlertDialogButtonDrawable);
        this.e = true;
        this.b.e();
    }

    public final Object onRetainNonConfigurationInstance() {
        int i = 0;
        if (this.f) {
            a(true);
        }
        Object b = b();
        ArrayList g = this.b.g();
        if (this.l != null) {
            ac[] acVarArr = new ac[this.l.size()];
            this.l.values().toArray(acVarArr);
            if (acVarArr != null) {
                boolean z = false;
                while (i < acVarArr.length) {
                    ac acVar = acVarArr[i];
                    if (acVar.g) {
                        z = true;
                    } else {
                        acVar.h();
                        this.l.remove(acVar.d);
                    }
                    i++;
                }
                i = i;
            }
        }
        if (g == null && i == 0 && b == null) {
            return null;
        }
        Object mVar = new m();
        mVar.a = null;
        mVar.b = b;
        mVar.c = null;
        mVar.d = g;
        mVar.e = this.l;
        return mVar;
    }

    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        Parcelable h = this.b.h();
        if (h != null) {
            bundle.putParcelable("android:support:fragments", h);
        }
    }

    protected void onStart() {
        int i = 0;
        super.onStart();
        this.f = false;
        this.g = false;
        this.a.removeMessages(1);
        if (!this.d) {
            this.d = true;
            this.b.k();
        }
        this.b.i();
        this.b.e();
        if (!this.k) {
            this.k = true;
            if (this.m != null) {
                this.m.b();
            } else if (!this.j) {
                this.m = a(null, this.k, false);
                if (!(this.m == null || this.m.f)) {
                    this.m.b();
                }
            }
            this.j = true;
        }
        this.b.l();
        if (this.l != null) {
            ac[] acVarArr = new ac[this.l.size()];
            this.l.values().toArray(acVarArr);
            if (acVarArr != null) {
                while (i < acVarArr.length) {
                    ac acVar = acVarArr[i];
                    acVar.e();
                    acVar.g();
                    i++;
                }
            }
        }
    }

    protected void onStop() {
        super.onStop();
        this.f = true;
        this.a.sendEmptyMessage(1);
        this.b.o();
    }

    public void startActivityForResult(Intent intent, int i) {
        if (i == -1 || (-65536 & i) == 0) {
            super.startActivityForResult(intent, i);
        } else {
            throw new IllegalArgumentException("Can only use lower 16 bits for requestCode");
        }
    }
}