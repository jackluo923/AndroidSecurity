package com.actionbarsherlock.internal.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.Shader.TileMode;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ClipDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RoundRectShape;
import android.graphics.drawable.shapes.Shape;
import android.os.Build.VERSION;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.BaseSavedState;
import android.view.ViewDebug.ExportedProperty;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.animation.AlphaAnimation;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import android.view.animation.Transformation;
import android.widget.RemoteViews.RemoteView;

@RemoteView
public class IcsProgressBar extends View {
    private static final int ANIMATION_RESOLUTION = 200;
    private static final boolean IS_HONEYCOMB;
    private static final int MAX_LEVEL = 10000;
    private static final int[] ProgressBar;
    private static final int ProgressBar_animationResolution = 14;
    private static final int ProgressBar_indeterminate = 5;
    private static final int ProgressBar_indeterminateBehavior = 10;
    private static final int ProgressBar_indeterminateDrawable = 7;
    private static final int ProgressBar_indeterminateDuration = 9;
    private static final int ProgressBar_indeterminateOnly = 6;
    private static final int ProgressBar_interpolator = 13;
    private static final int ProgressBar_max = 2;
    private static final int ProgressBar_maxHeight = 1;
    private static final int ProgressBar_maxWidth = 0;
    private static final int ProgressBar_minHeight = 12;
    private static final int ProgressBar_minWidth = 11;
    private static final int ProgressBar_progress = 3;
    private static final int ProgressBar_progressDrawable = 8;
    private static final int ProgressBar_secondaryProgress = 4;
    private static final int TIMEOUT_SEND_ACCESSIBILITY_EVENT = 200;
    private AccessibilityEventSender mAccessibilityEventSender;
    private AccessibilityManager mAccessibilityManager;
    private AlphaAnimation mAnimation;
    private int mAnimationResolution;
    private int mBehavior;
    private Drawable mCurrentDrawable;
    private int mDuration;
    private boolean mInDrawing;
    private boolean mIndeterminate;
    private Drawable mIndeterminateDrawable;
    private int mIndeterminateRealLeft;
    private int mIndeterminateRealTop;
    private Interpolator mInterpolator;
    private long mLastDrawTime;
    private int mMax;
    int mMaxHeight;
    int mMaxWidth;
    int mMinHeight;
    int mMinWidth;
    private boolean mNoInvalidate;
    private boolean mOnlyIndeterminate;
    private int mProgress;
    private Drawable mProgressDrawable;
    private RefreshProgressRunnable mRefreshProgressRunnable;
    Bitmap mSampleTile;
    private int mSecondaryProgress;
    private boolean mShouldStartAnimationDrawable;
    private Transformation mTransformation;
    private long mUiThreadId;

    class AccessibilityEventSender implements Runnable {
        private AccessibilityEventSender() {
        }

        public void run() {
            IcsProgressBar.this.sendAccessibilityEvent(ProgressBar_secondaryProgress);
        }
    }

    class RefreshProgressRunnable implements Runnable {
        private boolean mFromUser;
        private int mId;
        private int mProgress;

        RefreshProgressRunnable(int i, int i2, boolean z) {
            this.mId = i;
            this.mProgress = i2;
            this.mFromUser = z;
        }

        public void run() {
            IcsProgressBar.this.doRefreshProgress(this.mId, this.mProgress, this.mFromUser, true);
            IcsProgressBar.this.mRefreshProgressRunnable = this;
        }

        public void setup(int i, int i2, boolean z) {
            this.mId = i;
            this.mProgress = i2;
            this.mFromUser = z;
        }
    }

    class SavedState extends BaseSavedState {
        public static final Creator CREATOR;
        int progress;
        int secondaryProgress;

        static {
            CREATOR = new Creator() {
                public final SavedState createFromParcel(Parcel parcel) {
                    return new SavedState(null);
                }

                public final SavedState[] newArray(int i) {
                    return new SavedState[i];
                }
            };
        }

        private SavedState(Parcel parcel) {
            super(parcel);
            this.progress = parcel.readInt();
            this.secondaryProgress = parcel.readInt();
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.progress);
            parcel.writeInt(this.secondaryProgress);
        }
    }

    static {
        IS_HONEYCOMB = VERSION.SDK_INT >= 11 ? true : IS_HONEYCOMB;
        ProgressBar = new int[]{16843039, 16843040, 16843062, 16843063, 16843064, 16843065, 16843066, 16843067, 16843068, 16843069, 16843070, 16843071, 16843072, 16843073, 16843546};
    }

    public IcsProgressBar(Context context) {
        this(context, null);
    }

    public IcsProgressBar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 16842871);
    }

    public IcsProgressBar(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0);
    }

    public IcsProgressBar(Context context, AttributeSet attributeSet, int i, int i2) {
        boolean z = IS_HONEYCOMB;
        super(context, attributeSet, i);
        this.mUiThreadId = Thread.currentThread().getId();
        initProgressBar();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, ProgressBar, i, i2);
        this.mNoInvalidate = true;
        Drawable drawable = obtainStyledAttributes.getDrawable(ProgressBar_progressDrawable);
        if (drawable != null) {
            setProgressDrawable(tileify(drawable, IS_HONEYCOMB));
        }
        this.mDuration = obtainStyledAttributes.getInt(ProgressBar_indeterminateDuration, this.mDuration);
        this.mMinWidth = obtainStyledAttributes.getDimensionPixelSize(ProgressBar_minWidth, this.mMinWidth);
        this.mMaxWidth = obtainStyledAttributes.getDimensionPixelSize(ProgressBar_maxWidth, this.mMaxWidth);
        this.mMinHeight = obtainStyledAttributes.getDimensionPixelSize(ProgressBar_minHeight, this.mMinHeight);
        this.mMaxHeight = obtainStyledAttributes.getDimensionPixelSize(ProgressBar_maxHeight, this.mMaxHeight);
        this.mBehavior = obtainStyledAttributes.getInt(ProgressBar_indeterminateBehavior, this.mBehavior);
        int resourceId = obtainStyledAttributes.getResourceId(ProgressBar_interpolator, 17432587);
        if (resourceId > 0) {
            setInterpolator(context, resourceId);
        }
        setMax(obtainStyledAttributes.getInt(ProgressBar_max, this.mMax));
        setProgress(obtainStyledAttributes.getInt(ProgressBar_progress, this.mProgress));
        setSecondaryProgress(obtainStyledAttributes.getInt(ProgressBar_secondaryProgress, this.mSecondaryProgress));
        drawable = obtainStyledAttributes.getDrawable(ProgressBar_indeterminateDrawable);
        if (drawable != null) {
            setIndeterminateDrawable(tileifyIndeterminate(drawable));
        }
        this.mOnlyIndeterminate = obtainStyledAttributes.getBoolean(ProgressBar_indeterminateOnly, this.mOnlyIndeterminate);
        this.mNoInvalidate = false;
        if (this.mOnlyIndeterminate || obtainStyledAttributes.getBoolean(ProgressBar_indeterminate, this.mIndeterminate)) {
            z = true;
        }
        setIndeterminate(z);
        this.mAnimationResolution = obtainStyledAttributes.getInteger(ProgressBar_animationResolution, TIMEOUT_SEND_ACCESSIBILITY_EVENT);
        obtainStyledAttributes.recycle();
        this.mAccessibilityManager = (AccessibilityManager) context.getSystemService("accessibility");
    }

    private synchronized void doRefreshProgress(int i, int i2, boolean z, boolean z2) {
        float f = this.mMax > 0 ? ((float) i2) / ((float) this.mMax) : 0.0f;
        Drawable drawable = this.mCurrentDrawable;
        if (drawable != null) {
            Drawable drawable2 = null;
            if (drawable instanceof LayerDrawable) {
                drawable2 = ((LayerDrawable) drawable).findDrawableByLayerId(i);
            }
            int i3 = (int) (10000.0f * f);
            if (drawable2 != null) {
                drawable = drawable2;
            }
            drawable.setLevel(i3);
        } else {
            invalidate();
        }
        if (z2 && i == 16908301) {
            onProgressRefresh(f, z);
        }
    }

    private void initProgressBar() {
        this.mMax = 100;
        this.mProgress = 0;
        this.mSecondaryProgress = 0;
        this.mIndeterminate = false;
        this.mOnlyIndeterminate = false;
        this.mDuration = 4000;
        this.mBehavior = 1;
        this.mMinWidth = 24;
        this.mMaxWidth = 48;
        this.mMinHeight = 24;
        this.mMaxHeight = 48;
    }

    private synchronized void refreshProgress(int i, int i2, boolean z) {
        if (this.mUiThreadId == Thread.currentThread().getId()) {
            doRefreshProgress(i, i2, z, true);
        } else {
            Runnable runnable;
            if (this.mRefreshProgressRunnable != null) {
                runnable = this.mRefreshProgressRunnable;
                this.mRefreshProgressRunnable = null;
                runnable.setup(i, i2, z);
            } else {
                runnable = new RefreshProgressRunnable(i, i2, z);
            }
            post(runnable);
        }
    }

    private void scheduleAccessibilityEventSender() {
        if (this.mAccessibilityEventSender == null) {
            this.mAccessibilityEventSender = new AccessibilityEventSender(null);
        } else {
            removeCallbacks(this.mAccessibilityEventSender);
        }
        postDelayed(this.mAccessibilityEventSender, 200);
    }

    private Drawable tileify(Drawable drawable, boolean z) {
        int i = ProgressBar_maxWidth;
        Drawable layerDrawable;
        if (drawable instanceof LayerDrawable) {
            LayerDrawable layerDrawable2 = (LayerDrawable) drawable;
            int numberOfLayers = layerDrawable2.getNumberOfLayers();
            Drawable[] drawableArr = new Drawable[numberOfLayers];
            int i2 = 0;
            while (i2 < numberOfLayers) {
                boolean z2;
                int id = layerDrawable2.getId(i2);
                Drawable drawable2 = layerDrawable2.getDrawable(i2);
                z2 = id == 16908301 || id == 16908303;
                drawableArr[i2] = tileify(drawable2, z2);
                i2++;
            }
            layerDrawable = new LayerDrawable(drawableArr);
            while (i < numberOfLayers) {
                layerDrawable.setId(i, layerDrawable2.getId(i));
                i++;
            }
            return layerDrawable;
        } else if (!(drawable instanceof BitmapDrawable)) {
            return drawable;
        } else {
            Bitmap bitmap = ((BitmapDrawable) drawable).getBitmap();
            if (this.mSampleTile == null) {
                this.mSampleTile = bitmap;
            }
            layerDrawable = new ShapeDrawable(getDrawableShape());
            layerDrawable.getPaint().setShader(new BitmapShader(bitmap, TileMode.REPEAT, TileMode.CLAMP));
            return z ? new ClipDrawable(layerDrawable, 3, 1) : layerDrawable;
        }
    }

    private Drawable tileifyIndeterminate(Drawable drawable) {
        if (!(drawable instanceof AnimationDrawable)) {
            return drawable;
        }
        AnimationDrawable animationDrawable = (AnimationDrawable) drawable;
        int numberOfFrames = animationDrawable.getNumberOfFrames();
        Drawable animationDrawable2 = new AnimationDrawable();
        animationDrawable2.setOneShot(animationDrawable.isOneShot());
        int i = ProgressBar_maxWidth;
        while (i < numberOfFrames) {
            Drawable tileify = tileify(animationDrawable.getFrame(i), true);
            tileify.setLevel(MAX_LEVEL);
            animationDrawable2.addFrame(tileify, animationDrawable.getDuration(i));
            i++;
        }
        animationDrawable2.setLevel(MAX_LEVEL);
        return animationDrawable2;
    }

    private void updateDrawableBounds(int i, int i2) {
        int i3;
        int paddingRight = i - getPaddingRight() - getPaddingLeft();
        int paddingBottom = i2 - getPaddingBottom() - getPaddingTop();
        if (this.mIndeterminateDrawable != null) {
            int i4;
            if (this.mOnlyIndeterminate && !this.mIndeterminateDrawable instanceof AnimationDrawable) {
                float intrinsicWidth = ((float) this.mIndeterminateDrawable.getIntrinsicWidth()) / ((float) this.mIndeterminateDrawable.getIntrinsicHeight());
                float f = ((float) i) / ((float) i2);
                if (intrinsicWidth != f) {
                    if (f > intrinsicWidth) {
                        paddingRight = (int) (intrinsicWidth * ((float) i2));
                        i4 = (i - paddingRight) / 2;
                        i3 = paddingRight + i4;
                        paddingRight = paddingBottom;
                        paddingBottom = 0;
                    } else {
                        paddingBottom = (int) ((1.0f / intrinsicWidth) * ((float) i));
                        i4 = (i2 - paddingBottom) / 2;
                        i3 = paddingRight;
                        paddingRight = paddingBottom + i4;
                        paddingBottom = i4;
                        i4 = 0;
                    }
                    this.mIndeterminateDrawable.setBounds(ProgressBar_maxWidth, ProgressBar_maxWidth, i3 - i4, paddingRight - paddingBottom);
                    this.mIndeterminateRealLeft = i4;
                    this.mIndeterminateRealTop = paddingBottom;
                }
            }
            i4 = 0;
            i3 = paddingRight;
            paddingRight = paddingBottom;
            paddingBottom = 0;
            this.mIndeterminateDrawable.setBounds(ProgressBar_maxWidth, ProgressBar_maxWidth, i3 - i4, paddingRight - paddingBottom);
            this.mIndeterminateRealLeft = i4;
            this.mIndeterminateRealTop = paddingBottom;
        } else {
            i3 = paddingRight;
            paddingRight = paddingBottom;
        }
        if (this.mProgressDrawable != null) {
            this.mProgressDrawable.setBounds(ProgressBar_maxWidth, ProgressBar_maxWidth, i3, paddingRight);
        }
    }

    private void updateDrawableState() {
        int[] drawableState = getDrawableState();
        if (this.mProgressDrawable != null && this.mProgressDrawable.isStateful()) {
            this.mProgressDrawable.setState(drawableState);
        }
        if (this.mIndeterminateDrawable != null && this.mIndeterminateDrawable.isStateful()) {
            this.mIndeterminateDrawable.setState(drawableState);
        }
    }

    protected void drawableStateChanged() {
        super.drawableStateChanged();
        updateDrawableState();
    }

    Drawable getCurrentDrawable() {
        return this.mCurrentDrawable;
    }

    Shape getDrawableShape() {
        return new RoundRectShape(new float[]{5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f}, null, null);
    }

    public Drawable getIndeterminateDrawable() {
        return this.mIndeterminateDrawable;
    }

    public Interpolator getInterpolator() {
        return this.mInterpolator;
    }

    @ExportedProperty(category = "progress")
    public synchronized int getMax() {
        return this.mMax;
    }

    @ExportedProperty(category = "progress")
    public synchronized int getProgress() {
        return this.mIndeterminate ? ProgressBar_maxWidth : this.mProgress;
    }

    public Drawable getProgressDrawable() {
        return this.mProgressDrawable;
    }

    @ExportedProperty(category = "progress")
    public synchronized int getSecondaryProgress() {
        return this.mIndeterminate ? ProgressBar_maxWidth : this.mSecondaryProgress;
    }

    public final synchronized void incrementProgressBy(int i) {
        setProgress(this.mProgress + i);
    }

    public final synchronized void incrementSecondaryProgressBy(int i) {
        setSecondaryProgress(this.mSecondaryProgress + i);
    }

    public void invalidateDrawable(Drawable drawable) {
        if (!this.mInDrawing) {
            if (verifyDrawable(drawable)) {
                Rect bounds = drawable.getBounds();
                int scrollX = getScrollX() + getPaddingLeft();
                int scrollY = getScrollY() + getPaddingTop();
                invalidate(bounds.left + scrollX, bounds.top + scrollY, scrollX + bounds.right, bounds.bottom + scrollY);
            } else {
                super.invalidateDrawable(drawable);
            }
        }
    }

    @ExportedProperty(category = "progress")
    public synchronized boolean isIndeterminate() {
        return this.mIndeterminate;
    }

    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        if (this.mProgressDrawable != null) {
            this.mProgressDrawable.jumpToCurrentState();
        }
        if (this.mIndeterminateDrawable != null) {
            this.mIndeterminateDrawable.jumpToCurrentState();
        }
    }

    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.mIndeterminate) {
            startAnimation();
        }
    }

    protected void onDetachedFromWindow() {
        if (this.mIndeterminate) {
            stopAnimation();
        }
        if (this.mRefreshProgressRunnable != null) {
            removeCallbacks(this.mRefreshProgressRunnable);
        }
        if (this.mAccessibilityEventSender != null) {
            removeCallbacks(this.mAccessibilityEventSender);
        }
        super.onDetachedFromWindow();
    }

    protected synchronized void onDraw(Canvas canvas) {
        try {
            super.onDraw(canvas);
            Drawable drawable = this.mCurrentDrawable;
            if (drawable != null) {
                canvas.save();
                canvas.translate((float) (getPaddingLeft() + this.mIndeterminateRealLeft), (float) (getPaddingTop() + this.mIndeterminateRealTop));
                long drawingTime = getDrawingTime();
                if (this.mAnimation != null) {
                    this.mAnimation.getTransformation(drawingTime, this.mTransformation);
                    float alpha = this.mTransformation.getAlpha();
                    this.mInDrawing = true;
                    drawable.setLevel((int) (alpha * 10000.0f));
                    this.mInDrawing = false;
                    if (SystemClock.uptimeMillis() - this.mLastDrawTime >= ((long) this.mAnimationResolution)) {
                        this.mLastDrawTime = SystemClock.uptimeMillis();
                        postInvalidateDelayed((long) this.mAnimationResolution);
                    }
                }
                drawable.draw(canvas);
                canvas.restore();
                if (this.mShouldStartAnimationDrawable && drawable instanceof Animatable) {
                    ((Animatable) drawable).start();
                    this.mShouldStartAnimationDrawable = false;
                }
            }
        } catch (Throwable th) {
        }
    }

    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setItemCount(this.mMax);
        accessibilityEvent.setCurrentItemIndex(this.mProgress);
    }

    protected synchronized void onMeasure(int i, int i2) {
        int i3 = ProgressBar_maxWidth;
        synchronized (this) {
            int max;
            Drawable drawable = this.mCurrentDrawable;
            if (drawable != null) {
                max = Math.max(this.mMinWidth, Math.min(this.mMaxWidth, drawable.getIntrinsicWidth()));
                i3 = Math.max(this.mMinHeight, Math.min(this.mMaxHeight, drawable.getIntrinsicHeight()));
            } else {
                max = 0;
            }
            updateDrawableState();
            max += getPaddingLeft() + getPaddingRight();
            i3 += getPaddingTop() + getPaddingBottom();
            if (IS_HONEYCOMB) {
                setMeasuredDimension(View.resolveSizeAndState(max, i, ProgressBar_maxWidth), View.resolveSizeAndState(i3, i2, ProgressBar_maxWidth));
            } else {
                setMeasuredDimension(View.resolveSize(max, i), View.resolveSize(i3, i2));
            }
        }
    }

    void onProgressRefresh(float f, boolean z) {
        if (this.mAccessibilityManager.isEnabled()) {
            scheduleAccessibilityEventSender();
        }
    }

    public void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        setProgress(savedState.progress);
        setSecondaryProgress(savedState.secondaryProgress);
    }

    public Parcelable onSaveInstanceState() {
        Parcelable savedState = new SavedState(super.onSaveInstanceState());
        savedState.progress = this.mProgress;
        savedState.secondaryProgress = this.mSecondaryProgress;
        return savedState;
    }

    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        updateDrawableBounds(i, i2);
    }

    protected void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        if (!this.mIndeterminate) {
            return;
        }
        if (i == 8 || i == 4) {
            stopAnimation();
        } else {
            startAnimation();
        }
    }

    public void postInvalidate() {
        if (!this.mNoInvalidate) {
            super.postInvalidate();
        }
    }

    public synchronized void setIndeterminate(boolean z) {
        if (!((this.mOnlyIndeterminate && this.mIndeterminate) || z == this.mIndeterminate)) {
            this.mIndeterminate = z;
            if (z) {
                this.mCurrentDrawable = this.mIndeterminateDrawable;
                startAnimation();
            } else {
                this.mCurrentDrawable = this.mProgressDrawable;
                stopAnimation();
            }
        }
    }

    public void setIndeterminateDrawable(Drawable drawable) {
        if (drawable != null) {
            drawable.setCallback(this);
        }
        this.mIndeterminateDrawable = drawable;
        if (this.mIndeterminate) {
            this.mCurrentDrawable = drawable;
            postInvalidate();
        }
    }

    public void setInterpolator(Context context, int i) {
        setInterpolator(AnimationUtils.loadInterpolator(context, i));
    }

    public void setInterpolator(Interpolator interpolator) {
        this.mInterpolator = interpolator;
    }

    public synchronized void setMax(int i) {
        if (i < 0) {
            i = 0;
        }
        if (i != this.mMax) {
            this.mMax = i;
            postInvalidate();
            if (this.mProgress > i) {
                this.mProgress = i;
            }
            refreshProgress(16908301, this.mProgress, IS_HONEYCOMB);
        }
    }

    public synchronized void setProgress(int i) {
        setProgress(i, IS_HONEYCOMB);
    }

    synchronized void setProgress(int i, boolean z) {
        if (!this.mIndeterminate) {
            int i2;
            i2 = i < 0 ? ProgressBar_maxWidth : i;
            if (i2 > this.mMax) {
                i2 = this.mMax;
            }
            if (i2 != this.mProgress) {
                this.mProgress = i2;
                refreshProgress(16908301, this.mProgress, z);
            }
        }
    }

    public void setProgressDrawable(Drawable drawable) {
        boolean z;
        if (this.mProgressDrawable == null || drawable == this.mProgressDrawable) {
            z = false;
        } else {
            this.mProgressDrawable.setCallback(null);
            z = ProgressBar_maxHeight;
        }
        if (drawable != null) {
            drawable.setCallback(this);
            int minimumHeight = drawable.getMinimumHeight();
            if (this.mMaxHeight < minimumHeight) {
                this.mMaxHeight = minimumHeight;
                requestLayout();
            }
        }
        this.mProgressDrawable = drawable;
        if (!this.mIndeterminate) {
            this.mCurrentDrawable = drawable;
            postInvalidate();
        }
        if (i != 0) {
            updateDrawableBounds(getWidth(), getHeight());
            updateDrawableState();
            doRefreshProgress(16908301, this.mProgress, IS_HONEYCOMB, IS_HONEYCOMB);
            doRefreshProgress(16908303, this.mSecondaryProgress, IS_HONEYCOMB, IS_HONEYCOMB);
        }
    }

    public synchronized void setSecondaryProgress(int i) {
        int i2 = ProgressBar_maxWidth;
        synchronized (this) {
            if (!this.mIndeterminate) {
                if (i >= 0) {
                    i2 = i;
                }
                if (i2 > this.mMax) {
                    i2 = this.mMax;
                }
                if (i2 != this.mSecondaryProgress) {
                    this.mSecondaryProgress = i2;
                    refreshProgress(16908303, this.mSecondaryProgress, IS_HONEYCOMB);
                }
            }
        }
    }

    public void setVisibility(int i) {
        if (getVisibility() != i) {
            super.setVisibility(i);
            if (!this.mIndeterminate) {
                return;
            }
            if (i == 8 || i == 4) {
                stopAnimation();
            } else {
                startAnimation();
            }
        }
    }

    void startAnimation() {
        if (getVisibility() == 0) {
            if (this.mIndeterminateDrawable instanceof Animatable) {
                this.mShouldStartAnimationDrawable = true;
                this.mAnimation = null;
            } else {
                if (this.mInterpolator == null) {
                    this.mInterpolator = new LinearInterpolator();
                }
                this.mTransformation = new Transformation();
                this.mAnimation = new AlphaAnimation(0.0f, 1.0f);
                this.mAnimation.setRepeatMode(this.mBehavior);
                this.mAnimation.setRepeatCount(-1);
                this.mAnimation.setDuration((long) this.mDuration);
                this.mAnimation.setInterpolator(this.mInterpolator);
                this.mAnimation.setStartTime(-1);
            }
            postInvalidate();
        }
    }

    void stopAnimation() {
        this.mAnimation = null;
        this.mTransformation = null;
        if (this.mIndeterminateDrawable instanceof Animatable) {
            ((Animatable) this.mIndeterminateDrawable).stop();
            this.mShouldStartAnimationDrawable = false;
        }
        postInvalidate();
    }

    protected boolean verifyDrawable(Drawable drawable) {
        return (drawable == this.mProgressDrawable || drawable == this.mIndeterminateDrawable || super.verifyDrawable(drawable)) ? true : IS_HONEYCOMB;
    }
}