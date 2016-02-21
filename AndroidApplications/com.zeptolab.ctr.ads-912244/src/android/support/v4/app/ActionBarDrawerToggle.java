package android.support.v4.app;

import android.app.Activity;
import android.content.res.Configuration;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff.Mode;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.Callback;
import android.graphics.drawable.Drawable.ConstantState;
import android.os.Build.VERSION;
import android.support.v4.view.GravityCompat;
import android.support.v4.widget.DrawerLayout;
import android.support.v4.widget.DrawerLayout.DrawerListener;
import android.view.MenuItem;
import android.view.View;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;

public class ActionBarDrawerToggle implements DrawerListener {
    private static final int ID_HOME = 16908332;
    private static final ActionBarDrawerToggleImpl IMPL;
    private final Activity mActivity;
    private final Delegate mActivityImpl;
    private final int mCloseDrawerContentDescRes;
    private Drawable mDrawerImage;
    private final int mDrawerImageResource;
    private boolean mDrawerIndicatorEnabled;
    private final DrawerLayout mDrawerLayout;
    private final int mOpenDrawerContentDescRes;
    private Object mSetIndicatorInfo;
    private SlideDrawable mSlider;
    private Drawable mThemeImage;

    private static interface ActionBarDrawerToggleImpl {
        Drawable getThemeUpIndicator(Activity activity);

        Object setActionBarDescription(Object obj, Activity activity, int i);

        Object setActionBarUpIndicator(Object obj, Activity activity, Drawable drawable, int i);
    }

    private static class ActionBarDrawerToggleImplBase implements ActionBarDrawerToggleImpl {
        private ActionBarDrawerToggleImplBase() {
        }

        public Drawable getThemeUpIndicator(Activity activity) {
            return null;
        }

        public Object setActionBarDescription(Object obj, Activity activity, int i) {
            return obj;
        }

        public Object setActionBarUpIndicator(Object obj, Activity activity, Drawable drawable, int i) {
            return obj;
        }
    }

    private static class ActionBarDrawerToggleImplHC implements ActionBarDrawerToggleImpl {
        private ActionBarDrawerToggleImplHC() {
        }

        public Drawable getThemeUpIndicator(Activity activity) {
            return ActionBarDrawerToggleHoneycomb.getThemeUpIndicator(activity);
        }

        public Object setActionBarDescription(Object obj, Activity activity, int i) {
            return ActionBarDrawerToggleHoneycomb.setActionBarDescription(obj, activity, i);
        }

        public Object setActionBarUpIndicator(Object obj, Activity activity, Drawable drawable, int i) {
            return ActionBarDrawerToggleHoneycomb.setActionBarUpIndicator(obj, activity, drawable, i);
        }
    }

    public static interface Delegate {
        Drawable getThemeUpIndicator();

        void setActionBarDescription(int i);

        void setActionBarUpIndicator(Drawable drawable, int i);
    }

    public static interface DelegateProvider {
        android.support.v4.app.ActionBarDrawerToggle.Delegate getDrawerToggleDelegate();
    }

    private static class SlideDrawable extends Drawable implements Callback {
        private float mOffset;
        private float mOffsetBy;
        private final Rect mTmpRect;
        private Drawable mWrapped;

        public SlideDrawable(Drawable drawable) {
            this.mTmpRect = new Rect();
            this.mWrapped = drawable;
        }

        public void clearColorFilter() {
            this.mWrapped.clearColorFilter();
        }

        public void draw(Canvas canvas) {
            this.mWrapped.copyBounds(this.mTmpRect);
            canvas.save();
            canvas.translate((this.mOffsetBy * ((float) this.mTmpRect.width())) * (-this.mOffset), BitmapDescriptorFactory.HUE_RED);
            this.mWrapped.draw(canvas);
            canvas.restore();
        }

        public int getChangingConfigurations() {
            return this.mWrapped.getChangingConfigurations();
        }

        public ConstantState getConstantState() {
            return super.getConstantState();
        }

        public Drawable getCurrent() {
            return this.mWrapped.getCurrent();
        }

        public int getIntrinsicHeight() {
            return this.mWrapped.getIntrinsicHeight();
        }

        public int getIntrinsicWidth() {
            return this.mWrapped.getIntrinsicWidth();
        }

        public int getMinimumHeight() {
            return this.mWrapped.getMinimumHeight();
        }

        public int getMinimumWidth() {
            return this.mWrapped.getMinimumWidth();
        }

        public float getOffset() {
            return this.mOffset;
        }

        public int getOpacity() {
            return this.mWrapped.getOpacity();
        }

        public boolean getPadding(Rect rect) {
            return this.mWrapped.getPadding(rect);
        }

        public int[] getState() {
            return this.mWrapped.getState();
        }

        public Region getTransparentRegion() {
            return this.mWrapped.getTransparentRegion();
        }

        public void invalidateDrawable(Drawable drawable) {
            if (drawable == this.mWrapped) {
                invalidateSelf();
            }
        }

        public boolean isStateful() {
            return this.mWrapped.isStateful();
        }

        protected void onBoundsChange(Rect rect) {
            super.onBoundsChange(rect);
            this.mWrapped.setBounds(rect);
        }

        protected boolean onStateChange(int[] iArr) {
            this.mWrapped.setState(iArr);
            return super.onStateChange(iArr);
        }

        public void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
            if (drawable == this.mWrapped) {
                scheduleSelf(runnable, j);
            }
        }

        public void setAlpha(int i) {
            this.mWrapped.setAlpha(i);
        }

        public void setChangingConfigurations(int i) {
            this.mWrapped.setChangingConfigurations(i);
        }

        public void setColorFilter(int i, Mode mode) {
            this.mWrapped.setColorFilter(i, mode);
        }

        public void setColorFilter(ColorFilter colorFilter) {
            this.mWrapped.setColorFilter(colorFilter);
        }

        public void setDither(boolean z) {
            this.mWrapped.setDither(z);
        }

        public void setFilterBitmap(boolean z) {
            this.mWrapped.setFilterBitmap(z);
        }

        public void setOffset(float f) {
            this.mOffset = f;
            invalidateSelf();
        }

        public void setOffsetBy(float f) {
            this.mOffsetBy = f;
            invalidateSelf();
        }

        public boolean setState(int[] iArr) {
            return this.mWrapped.setState(iArr);
        }

        public boolean setVisible(boolean z, boolean z2) {
            return super.setVisible(z, z2);
        }

        public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
            if (drawable == this.mWrapped) {
                unscheduleSelf(runnable);
            }
        }
    }

    static {
        if (VERSION.SDK_INT >= 11) {
            IMPL = new ActionBarDrawerToggleImplHC();
        } else {
            IMPL = new ActionBarDrawerToggleImplBase();
        }
    }

    public ActionBarDrawerToggle(Activity activity, DrawerLayout drawerLayout, int i, int i2, int i3) {
        this.mDrawerIndicatorEnabled = true;
        this.mActivity = activity;
        this.mDrawerLayout = drawerLayout;
        this.mDrawerImageResource = i;
        this.mOpenDrawerContentDescRes = i2;
        this.mCloseDrawerContentDescRes = i3;
        this.mThemeImage = getThemeUpIndicator();
        this.mDrawerImage = activity.getResources().getDrawable(i);
        this.mSlider = new SlideDrawable(this.mDrawerImage);
        this.mSlider.setOffsetBy(0.33333334f);
        if (activity instanceof DelegateProvider) {
            this.mActivityImpl = ((DelegateProvider) activity).getDrawerToggleDelegate();
        } else {
            this.mActivityImpl = null;
        }
    }

    Drawable getThemeUpIndicator() {
        return this.mActivityImpl != null ? this.mActivityImpl.getThemeUpIndicator() : IMPL.getThemeUpIndicator(this.mActivity);
    }

    public boolean isDrawerIndicatorEnabled() {
        return this.mDrawerIndicatorEnabled;
    }

    public void onConfigurationChanged(Configuration configuration) {
        this.mThemeImage = getThemeUpIndicator();
        this.mDrawerImage = this.mActivity.getResources().getDrawable(this.mDrawerImageResource);
        syncState();
    }

    public void onDrawerClosed(View view) {
        this.mSlider.setOffset(BitmapDescriptorFactory.HUE_RED);
        if (this.mDrawerIndicatorEnabled) {
            setActionBarDescription(this.mCloseDrawerContentDescRes);
        }
    }

    public void onDrawerOpened(View view) {
        this.mSlider.setOffset(1.0f);
        if (this.mDrawerIndicatorEnabled) {
            setActionBarDescription(this.mOpenDrawerContentDescRes);
        }
    }

    public void onDrawerSlide(View view, float f) {
        float offset = this.mSlider.getOffset();
        this.mSlider.setOffset(f > 0.5f ? Math.max(offset, Math.max(BitmapDescriptorFactory.HUE_RED, f - 0.5f) * 2.0f) : Math.min(offset, f * 2.0f));
    }

    public void onDrawerStateChanged(int i) {
    }

    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem == null || menuItem.getItemId() != 16908332 || !this.mDrawerIndicatorEnabled) {
            return false;
        }
        if (this.mDrawerLayout.isDrawerVisible((int)GravityCompat.START)) {
            this.mDrawerLayout.closeDrawer((int)GravityCompat.START);
        } else {
            this.mDrawerLayout.openDrawer((int)GravityCompat.START);
        }
        return true;
    }

    void setActionBarDescription(int i) {
        if (this.mActivityImpl != null) {
            this.mActivityImpl.setActionBarDescription(i);
        } else {
            this.mSetIndicatorInfo = IMPL.setActionBarDescription(this.mSetIndicatorInfo, this.mActivity, i);
        }
    }

    void setActionBarUpIndicator(Drawable drawable, int i) {
        if (this.mActivityImpl != null) {
            this.mActivityImpl.setActionBarUpIndicator(drawable, i);
        } else {
            this.mSetIndicatorInfo = IMPL.setActionBarUpIndicator(this.mSetIndicatorInfo, this.mActivity, drawable, i);
        }
    }

    public void setDrawerIndicatorEnabled(boolean z) {
        if (z != this.mDrawerIndicatorEnabled) {
            if (z) {
                setActionBarUpIndicator(this.mSlider, this.mDrawerLayout.isDrawerOpen((int)GravityCompat.START) ? this.mOpenDrawerContentDescRes : this.mCloseDrawerContentDescRes);
            } else {
                setActionBarUpIndicator(this.mThemeImage, 0);
            }
            this.mDrawerIndicatorEnabled = z;
        }
    }

    public void syncState() {
        if (this.mDrawerLayout.isDrawerOpen((int)GravityCompat.START)) {
            this.mSlider.setOffset(1.0f);
        } else {
            this.mSlider.setOffset(BitmapDescriptorFactory.HUE_RED);
        }
        if (this.mDrawerIndicatorEnabled) {
            setActionBarUpIndicator(this.mSlider, this.mDrawerLayout.isDrawerOpen((int)GravityCompat.START) ? this.mOpenDrawerContentDescRes : this.mCloseDrawerContentDescRes);
        }
    }
}