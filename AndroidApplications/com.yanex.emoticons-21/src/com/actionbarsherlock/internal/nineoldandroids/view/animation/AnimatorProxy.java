package com.actionbarsherlock.internal.nineoldandroids.view.animation;

import android.graphics.Matrix;
import android.graphics.RectF;
import android.os.Build.VERSION;
import android.util.FloatMath;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Transformation;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;

public final class AnimatorProxy extends Animation {
    public static final boolean NEEDS_PROXY;
    private static final WeakHashMap PROXIES;
    private final RectF mAfter;
    private float mAlpha;
    private final RectF mBefore;
    private float mScaleX;
    private float mScaleY;
    private final Matrix mTempMatrix;
    private float mTranslationX;
    private float mTranslationY;
    private final WeakReference mView;

    static {
        NEEDS_PROXY = VERSION.SDK_INT < 11;
        PROXIES = new WeakHashMap();
    }

    private AnimatorProxy(View view) {
        this.mAlpha = 1.0f;
        this.mScaleX = 1.0f;
        this.mScaleY = 1.0f;
        this.mBefore = new RectF();
        this.mAfter = new RectF();
        this.mTempMatrix = new Matrix();
        setDuration(0);
        setFillAfter(true);
        view.setAnimation(this);
        this.mView = new WeakReference(view);
    }

    private void computeRect(RectF rectF, View view) {
        rectF.set(0.0f, 0.0f, (float) view.getWidth(), (float) view.getHeight());
        Matrix matrix = this.mTempMatrix;
        matrix.reset();
        transformMatrix(matrix, view);
        this.mTempMatrix.mapRect(rectF);
        rectF.offset((float) view.getLeft(), (float) view.getTop());
        if (rectF.right < rectF.left) {
            float f = rectF.right;
            rectF.right = rectF.left;
            rectF.left = f;
        }
        if (rectF.bottom < rectF.top) {
            f = rectF.top;
            rectF.top = rectF.bottom;
            rectF.bottom = f;
        }
    }

    private void invalidateAfterUpdate() {
        View view = (View) this.mView.get();
        if (view != null) {
            View view2 = (View) view.getParent();
            if (view2 != null) {
                view.setAnimation(this);
                RectF rectF = this.mAfter;
                computeRect(rectF, view);
                rectF.union(this.mBefore);
                view2.invalidate((int) FloatMath.floor(rectF.left), (int) FloatMath.floor(rectF.top), (int) FloatMath.ceil(rectF.right), (int) FloatMath.ceil(rectF.bottom));
            }
        }
    }

    private void prepareForUpdate() {
        View view = (View) this.mView.get();
        if (view != null) {
            computeRect(this.mBefore, view);
        }
    }

    private void transformMatrix(Matrix matrix, View view) {
        float width = (float) view.getWidth();
        float height = (float) view.getHeight();
        float f = this.mScaleX;
        float f2 = this.mScaleY;
        if (!(f == 1.0f && f2 == 1.0f)) {
            width = ((f * width) - width) / 2.0f;
            height = ((f2 * height) - height) / 2.0f;
            matrix.postScale(f, f2);
            matrix.postTranslate(-width, -height);
        }
        matrix.postTranslate(this.mTranslationX, this.mTranslationY);
    }

    public static AnimatorProxy wrap(View view) {
        AnimatorProxy animatorProxy = (AnimatorProxy) PROXIES.get(view);
        if (animatorProxy != null) {
            return animatorProxy;
        }
        animatorProxy = new AnimatorProxy(view);
        PROXIES.put(view, animatorProxy);
        return animatorProxy;
    }

    protected final void applyTransformation(float f, Transformation transformation) {
        View view = (View) this.mView.get();
        if (view != null) {
            transformation.setAlpha(this.mAlpha);
            transformMatrix(transformation.getMatrix(), view);
        }
    }

    public final float getAlpha() {
        return this.mAlpha;
    }

    public final float getScaleX() {
        return this.mScaleX;
    }

    public final float getScaleY() {
        return this.mScaleY;
    }

    public final int getScrollX() {
        View view = (View) this.mView.get();
        return view == null ? 0 : view.getScrollX();
    }

    public final int getScrollY() {
        View view = (View) this.mView.get();
        return view == null ? 0 : view.getScrollY();
    }

    public final float getTranslationX() {
        return this.mTranslationX;
    }

    public final float getTranslationY() {
        return this.mTranslationY;
    }

    public final void reset() {
    }

    public final void setAlpha(float f) {
        if (this.mAlpha != f) {
            this.mAlpha = f;
            View view = (View) this.mView.get();
            if (view != null) {
                view.invalidate();
            }
        }
    }

    public final void setScaleX(float f) {
        if (this.mScaleX != f) {
            prepareForUpdate();
            this.mScaleX = f;
            invalidateAfterUpdate();
        }
    }

    public final void setScaleY(float f) {
        if (this.mScaleY != f) {
            prepareForUpdate();
            this.mScaleY = f;
            invalidateAfterUpdate();
        }
    }

    public final void setScrollX(int i) {
        View view = (View) this.mView.get();
        if (view != null) {
            view.scrollTo(i, view.getScrollY());
        }
    }

    public final void setScrollY(int i) {
        View view = (View) this.mView.get();
        if (view != null) {
            view.scrollTo(view.getScrollY(), i);
        }
    }

    public final void setTranslationX(float f) {
        if (this.mTranslationX != f) {
            prepareForUpdate();
            this.mTranslationX = f;
            invalidateAfterUpdate();
        }
    }

    public final void setTranslationY(float f) {
        if (this.mTranslationY != f) {
            prepareForUpdate();
            this.mTranslationY = f;
            invalidateAfterUpdate();
        }
    }
}