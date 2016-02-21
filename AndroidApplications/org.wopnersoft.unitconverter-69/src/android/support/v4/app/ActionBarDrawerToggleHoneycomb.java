package android.support.v4.app;

import android.app.ActionBar;
import android.app.Activity;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import java.lang.reflect.Method;

// compiled from: ProGuard
class ActionBarDrawerToggleHoneycomb {
    private static final String TAG = "ActionBarDrawerToggleHoneycomb";
    private static final int[] THEME_ATTRS;

    // compiled from: ProGuard
    class SetIndicatorInfo {
        public Method setHomeActionContentDescription;
        public Method setHomeAsUpIndicator;
        public ImageView upIndicatorView;

        SetIndicatorInfo(Activity activity) {
            View findViewById;
            int i = 16908332;
            int i2 = 1;
            int i3 = 0;
            try {
                this.setHomeAsUpIndicator = ActionBar.class.getDeclaredMethod("setHomeAsUpIndicator", new Class[]{Drawable.class});
                this.setHomeActionContentDescription = ActionBar.class.getDeclaredMethod("setHomeActionContentDescription", new Class[]{Integer.TYPE});
            } catch (NoSuchMethodException e) {
                findViewById = activity.findViewById(i);
                if (findViewById != null) {
                    ViewGroup viewGroup = (ViewGroup) findViewById.getParent();
                    if (viewGroup.getChildCount() == 2) {
                        View childAt = viewGroup.getChildAt(i3);
                        findViewById = viewGroup.getChildAt(i2);
                        if (childAt.getId() != i) {
                            findViewById = childAt;
                        }
                        if (findViewById instanceof ImageView) {
                            this.upIndicatorView = (ImageView) findViewById;
                        }
                    }
                }
            }
        }
    }

    static {
        THEME_ATTRS = new int[]{16843531};
    }

    ActionBarDrawerToggleHoneycomb() {
    }

    public static Drawable getThemeUpIndicator(Activity activity) {
        TypedArray obtainStyledAttributes = activity.obtainStyledAttributes(THEME_ATTRS);
        Drawable drawable = obtainStyledAttributes.getDrawable(0);
        obtainStyledAttributes.recycle();
        return drawable;
    }

    public static Object setActionBarDescription(Object obj, Activity activity, int i) {
        Object setIndicatorInfo;
        setIndicatorInfo = obj == null ? new SetIndicatorInfo(activity) : obj;
        SetIndicatorInfo setIndicatorInfo2 = (SetIndicatorInfo) setIndicatorInfo;
        if (setIndicatorInfo2.setHomeAsUpIndicator != null) {
            try {
                ActionBar actionBar = activity.getActionBar();
                setIndicatorInfo2.setHomeActionContentDescription.invoke(actionBar, new Object[]{Integer.valueOf(i)});
                if (VERSION.SDK_INT <= 19) {
                    actionBar.setSubtitle(actionBar.getSubtitle());
                }
            } catch (Exception e) {
                Log.w(TAG, "Couldn't set content description via JB-MR2 API", e);
            }
        }
        return setIndicatorInfo;
    }

    public static Object setActionBarUpIndicator(Object obj, Activity activity, Drawable drawable, int i) {
        Object setIndicatorInfo;
        setIndicatorInfo = obj == null ? new SetIndicatorInfo(activity) : obj;
        SetIndicatorInfo setIndicatorInfo2 = (SetIndicatorInfo) setIndicatorInfo;
        if (setIndicatorInfo2.setHomeAsUpIndicator != null) {
            try {
                ActionBar actionBar = activity.getActionBar();
                setIndicatorInfo2.setHomeAsUpIndicator.invoke(actionBar, new Object[]{drawable});
                setIndicatorInfo2.setHomeActionContentDescription.invoke(actionBar, new Object[]{Integer.valueOf(i)});
            } catch (Exception e) {
                Log.w(TAG, "Couldn't set home-as-up indicator via JB-MR2 API", e);
            }
        } else if (setIndicatorInfo2.upIndicatorView != null) {
            setIndicatorInfo2.upIndicatorView.setImageDrawable(drawable);
        } else {
            Log.w(TAG, "Couldn't set home-as-up indicator");
        }
        return setIndicatorInfo;
    }
}