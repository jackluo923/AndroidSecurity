package com.actionbarsherlock;

import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import com.actionbarsherlock.app.ActionBar;
import com.actionbarsherlock.internal.ActionBarSherlockCompat;
import com.actionbarsherlock.internal.ActionBarSherlockNative;
import com.actionbarsherlock.view.ActionMode;
import com.actionbarsherlock.view.ActionMode.Callback;
import com.actionbarsherlock.view.Menu;
import com.actionbarsherlock.view.MenuInflater;
import com.actionbarsherlock.view.MenuItem;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.lang.reflect.InvocationTargetException;
import java.util.HashMap;
import java.util.Iterator;

// compiled from: ProGuard
public abstract class ActionBarSherlock {
    private static final Class[] CONSTRUCTOR_ARGS;
    public static final boolean DEBUG = false;
    public static final int FLAG_DELEGATE = 1;
    private static final HashMap IMPLEMENTATIONS;
    protected static final String TAG = "ActionBarSherlock";
    protected final Activity mActivity;
    protected final boolean mIsDelegate;
    protected MenuInflater mMenuInflater;

    // compiled from: ProGuard
    public interface OnCreatePanelMenuListener {
        boolean onCreatePanelMenu(int i, Menu menu);
    }

    // compiled from: ProGuard
    public interface OnMenuItemSelectedListener {
        boolean onMenuItemSelected(int i, MenuItem menuItem);
    }

    // compiled from: ProGuard
    public interface OnPreparePanelListener {
        boolean onPreparePanel(int i, View view, Menu menu);
    }

    @Target({ElementType.TYPE})
    @Retention(RetentionPolicy.RUNTIME)
    // compiled from: ProGuard
    public @interface Implementation {
        public static final int DEFAULT_API = -1;
        public static final int DEFAULT_DPI = -1;

        int api() default -1;

        int dpi() default -1;
    }

    // compiled from: ProGuard
    public interface OnActionModeFinishedListener {
        void onActionModeFinished(ActionMode actionMode);
    }

    // compiled from: ProGuard
    public interface OnActionModeStartedListener {
        void onActionModeStarted(ActionMode actionMode);
    }

    // compiled from: ProGuard
    public interface OnCreateOptionsMenuListener {
        boolean onCreateOptionsMenu(Menu menu);
    }

    // compiled from: ProGuard
    public interface OnOptionsItemSelectedListener {
        boolean onOptionsItemSelected(MenuItem menuItem);
    }

    // compiled from: ProGuard
    public interface OnPrepareOptionsMenuListener {
        boolean onPrepareOptionsMenu(Menu menu);
    }

    static {
        CONSTRUCTOR_ARGS = new Class[]{Activity.class, Integer.TYPE};
        IMPLEMENTATIONS = new HashMap();
        registerImplementation(ActionBarSherlockCompat.class);
        registerImplementation(ActionBarSherlockNative.class);
    }

    protected ActionBarSherlock(Activity activity, int i) {
        this.mActivity = activity;
        this.mIsDelegate = (i & 1) != 0 ? true : DEBUG;
    }

    public static void registerImplementation(Class cls) {
        if (!cls.isAnnotationPresent(Implementation.class)) {
            throw new IllegalArgumentException(new StringBuilder("Class ").append(cls.getSimpleName()).append(" is not annotated with @Implementation").toString());
        } else if (!IMPLEMENTATIONS.containsValue(cls)) {
            IMPLEMENTATIONS.put((Implementation) cls.getAnnotation(Implementation.class), cls);
        }
    }

    public static boolean unregisterImplementation(Class cls) {
        return IMPLEMENTATIONS.values().remove(cls);
    }

    public static ActionBarSherlock wrap(Activity activity) {
        return wrap(activity, 0);
    }

    public static ActionBarSherlock wrap(Activity activity, int i) {
        boolean z;
        int dpi;
        int i2;
        Iterator it;
        boolean z2 = 0;
        HashMap hashMap = new HashMap(IMPLEMENTATIONS);
        Iterator it2 = hashMap.keySet().iterator();
        while (it2.hasNext()) {
            if (((Implementation) it2.next()).dpi() == 213) {
                z = true;
                break;
            }
        }
        z = false;
        if (dpi != 0) {
            i2 = activity.getResources().getDisplayMetrics().densityDpi == 213;
            it = hashMap.keySet().iterator();
            while (it.hasNext()) {
                dpi = ((Implementation) it.next()).dpi();
                if (!(i2 == 0 || dpi == 213) || (i2 == 0 && dpi == 213)) {
                    it.remove();
                }
            }
        }
        it2 = hashMap.keySet().iterator();
        while (it2.hasNext()) {
            if (((Implementation) it2.next()).api() != -1) {
                z = true;
                break;
            }
        }
        z = false;
        if (dpi != 0) {
            int i3;
            i2 = VERSION.SDK_INT;
            it = hashMap.keySet().iterator();
            while (it.hasNext()) {
                dpi = ((Implementation) it.next()).api();
                if (dpi > i2) {
                    it.remove();
                } else if (dpi > i3) {
                    i3 = dpi;
                }
            }
            it2 = hashMap.keySet().iterator();
            while (it2.hasNext()) {
                if (((Implementation) it2.next()).api() != i3) {
                    it2.remove();
                }
            }
        }
        if (hashMap.size() > 1) {
            throw new IllegalStateException("More than one implementation matches configuration.");
        } else if (hashMap.isEmpty()) {
            throw new IllegalStateException("No implementations match configuration.");
        } else {
            try {
                return (ActionBarSherlock) ((Class) hashMap.values().iterator().next()).getConstructor(CONSTRUCTOR_ARGS).newInstance(new Object[]{activity, Integer.valueOf(i)});
            } catch (NoSuchMethodException e) {
                throw new RuntimeException(e);
            } catch (IllegalArgumentException e2) {
                throw new RuntimeException(e2);
            } catch (InstantiationException e3) {
                throw new RuntimeException(e3);
            } catch (IllegalAccessException e4) {
                throw new RuntimeException(e4);
            } catch (InvocationTargetException e5) {
                throw new RuntimeException(e5);
            }
        }
    }

    public abstract void addContentView(View view, LayoutParams layoutParams);

    protected final boolean callbackCreateOptionsMenu(Menu menu) {
        if (this.mActivity instanceof OnCreatePanelMenuListener) {
            return ((OnCreatePanelMenuListener) this.mActivity).onCreatePanelMenu(0, menu);
        }
        return this.mActivity instanceof OnCreateOptionsMenuListener ? ((OnCreateOptionsMenuListener) this.mActivity).onCreateOptionsMenu(menu) : true;
    }

    protected final boolean callbackOptionsItemSelected(MenuItem menuItem) {
        if (this.mActivity instanceof OnMenuItemSelectedListener) {
            return ((OnMenuItemSelectedListener) this.mActivity).onMenuItemSelected(0, menuItem);
        }
        return this.mActivity instanceof OnOptionsItemSelectedListener ? ((OnOptionsItemSelectedListener) this.mActivity).onOptionsItemSelected(menuItem) : false;
    }

    protected final boolean callbackPrepareOptionsMenu(Menu menu) {
        if (this.mActivity instanceof OnPreparePanelListener) {
            return ((OnPreparePanelListener) this.mActivity).onPreparePanel(0, null, menu);
        }
        return this.mActivity instanceof OnPrepareOptionsMenuListener ? ((OnPrepareOptionsMenuListener) this.mActivity).onPrepareOptionsMenu(menu) : true;
    }

    public boolean dispatchCloseOptionsMenu() {
        return DEBUG;
    }

    public void dispatchConfigurationChanged(Configuration configuration) {
    }

    public abstract boolean dispatchCreateOptionsMenu(android.view.Menu menu);

    public void dispatchDestroy() {
    }

    public abstract void dispatchInvalidateOptionsMenu();

    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return DEBUG;
    }

    public boolean dispatchMenuOpened(int i, android.view.Menu menu) {
        return DEBUG;
    }

    public boolean dispatchOpenOptionsMenu() {
        return DEBUG;
    }

    public abstract boolean dispatchOptionsItemSelected(android.view.MenuItem menuItem);

    public void dispatchPanelClosed(int i, android.view.Menu menu) {
    }

    public void dispatchPause() {
    }

    public void dispatchPostCreate(Bundle bundle) {
    }

    public void dispatchPostResume() {
    }

    public abstract boolean dispatchPrepareOptionsMenu(android.view.Menu menu);

    public void dispatchRestoreInstanceState(Bundle bundle) {
    }

    public void dispatchSaveInstanceState(Bundle bundle) {
    }

    public void dispatchStop() {
    }

    public void dispatchTitleChanged(CharSequence charSequence, int i) {
    }

    public void ensureActionBar() {
    }

    public abstract ActionBar getActionBar();

    public MenuInflater getMenuInflater() {
        if (this.mMenuInflater == null) {
            if (getActionBar() != null) {
                this.mMenuInflater = new MenuInflater(getThemedContext(), this.mActivity);
            } else {
                this.mMenuInflater = new MenuInflater(this.mActivity);
            }
        }
        return this.mMenuInflater;
    }

    protected abstract Context getThemedContext();

    public abstract boolean hasFeature(int i);

    public abstract boolean requestFeature(int i);

    public abstract void setContentView(int i);

    public void setContentView(View view) {
        setContentView(view, new LayoutParams(-1, -1));
    }

    public abstract void setContentView(View view, LayoutParams layoutParams);

    public abstract void setProgress(int i);

    public abstract void setProgressBarIndeterminate(boolean z);

    public abstract void setProgressBarIndeterminateVisibility(boolean z);

    public abstract void setProgressBarVisibility(boolean z);

    public abstract void setSecondaryProgress(int i);

    public void setTitle(int i) {
        setTitle(this.mActivity.getString(i));
    }

    public abstract void setTitle(CharSequence charSequence);

    public abstract void setUiOptions(int i);

    public abstract void setUiOptions(int i, int i2);

    public abstract ActionMode startActionMode(Callback callback);
}