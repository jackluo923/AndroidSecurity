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
import android.support.v4.widget.DrawerLayout;
import android.support.v4.widget.f;
import android.view.MenuItem;
import android.view.View;

public class ActionBarDrawerToggle implements f {
    private static final int ID_HOME = 16908332;
    private static final ActionBarDrawerToggleImpl IMPL;
    private final Activity mActivity;
    private final int mCloseDrawerContentDescRes;
    private Drawable mDrawerImage;
    private final int mDrawerImageResource;
    private boolean mDrawerIndicatorEnabled;
    private final DrawerLayout mDrawerLayout;
    private final int mOpenDrawerContentDescRes;
    private Object mSetIndicatorInfo;
    private SlideDrawable mSlider;
    private Drawable mThemeImage;

    interface ActionBarDrawerToggleImpl {
        Drawable getThemeUpIndicator(Activity activity);

        Object setActionBarDescription(Object obj, Activity activity, int i);

        Object setActionBarUpIndicator(Object obj, Activity activity, Drawable drawable, int i);
    }

    class ActionBarDrawerToggleImplBase implements ActionBarDrawerToggleImpl {
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

    class ActionBarDrawerToggleImplHC implements ActionBarDrawerToggleImpl {
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

    class SlideDrawable extends Drawable implements Callback {
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
            canvas.translate((this.mOffsetBy * ((float) this.mTmpRect.width())) * (-this.mOffset), 0.0f);
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
        this.mThemeImage = IMPL.getThemeUpIndicator(activity);
        this.mDrawerImage = activity.getResources().getDrawable(i);
        this.mSlider = new SlideDrawable(this.mDrawerImage);
        this.mSlider.setOffsetBy(0.33333334f);
    }

    public boolean isDrawerIndicatorEnabled() {
        return this.mDrawerIndicatorEnabled;
    }

    public void onConfigurationChanged(Configuration configuration) {
        this.mThemeImage = IMPL.getThemeUpIndicator(this.mActivity);
        this.mDrawerImage = this.mActivity.getResources().getDrawable(this.mDrawerImageResource);
        syncState();
    }

    public void onDrawerClosed(View view) {
        this.mSlider.setOffset(0.0f);
        if (this.mDrawerIndicatorEnabled) {
            this.mSetIndicatorInfo = IMPL.setActionBarDescription(this.mSetIndicatorInfo, this.mActivity, this.mCloseDrawerContentDescRes);
        }
    }

    public void onDrawerOpened(View view) {
        this.mSlider.setOffset(1.0f);
        if (this.mDrawerIndicatorEnabled) {
            this.mSetIndicatorInfo = IMPL.setActionBarDescription(this.mSetIndicatorInfo, this.mActivity, this.mOpenDrawerContentDescRes);
        }
    }

    public void onDrawerSlide(View view, float f) {
        float offset = this.mSlider.getOffset();
        this.mSlider.setOffset(f > 0.5f ? Math.max(offset, Math.max(0.0f, f - 0.5f) * 2.0f) : Math.min(offset, f * 2.0f));
    }

    public void onDrawerStateChanged(int i) {
    }

    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem != null && menuItem.getItemId() == 16908332 && this.mDrawerIndicatorEnabled) {
            if (this.mDrawerLayout.d()) {
                this.mDrawerLayout.b();
            } else {
                this.mDrawerLayout.a();
            }
        }
        return false;
    }

    public void setDrawerIndicatorEnabled(boolean z) {
        if (z != this.mDrawerIndicatorEnabled) {
            if (z) {
                this.mSetIndicatorInfo = IMPL.setActionBarUpIndicator(this.mSetIndicatorInfo, this.mActivity, this.mSlider, this.mDrawerLayout.c() ? this.mOpenDrawerContentDescRes : this.mCloseDrawerContentDescRes);
            } else {
                this.mSetIndicatorInfo = IMPL.setActionBarUpIndicator(this.mSetIndicatorInfo, this.mActivity, this.mThemeImage, 0);
            }
            this.mDrawerIndicatorEnabled = z;
        }
    }

    public void syncState() {
        if (this.mDrawerLayout.c()) {
            this.mSlider.setOffset(1.0f);
        } else {
            this.mSlider.setOffset(0.0f);
        }
        if (this.mDrawerIndicatorEnabled) {
            this.mSetIndicatorInfo = IMPL.setActionBarUpIndicator(this.mSetIndicatorInfo, this.mActivity, this.mSlider, this.mDrawerLayout.c() ? this.mOpenDrawerContentDescRes : this.mCloseDrawerContentDescRes);
        }
    }
}