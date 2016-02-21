package com.actionbarsherlock.internal.nineoldandroids.animation;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.AndroidRuntimeException;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import com.actionbarsherlock.internal.nineoldandroids.animation.Animator.AnimatorListener;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

public class ValueAnimator extends Animator {
    static final int ANIMATION_FRAME = 1;
    static final int ANIMATION_START = 0;
    private static final long DEFAULT_FRAME_DELAY = 10;
    public static final int INFINITE = -1;
    public static final int RESTART = 1;
    public static final int REVERSE = 2;
    static final int RUNNING = 1;
    static final int SEEKED = 2;
    static final int STOPPED = 0;
    private static ThreadLocal sAnimationHandler;
    private static final ThreadLocal sAnimations;
    private static final Interpolator sDefaultInterpolator;
    private static final ThreadLocal sDelayedAnims;
    private static final ThreadLocal sEndingAnims;
    private static long sFrameDelay;
    private static final ThreadLocal sPendingAnimations;
    private static final ThreadLocal sReadyAnims;
    private float mCurrentFraction;
    private int mCurrentIteration;
    private long mDelayStartTime;
    private long mDuration;
    boolean mInitialized;
    private Interpolator mInterpolator;
    private boolean mPlayingBackwards;
    int mPlayingState;
    private int mRepeatCount;
    private int mRepeatMode;
    private boolean mRunning;
    long mSeekTime;
    private long mStartDelay;
    long mStartTime;
    private boolean mStarted;
    private boolean mStartedDelay;
    private ArrayList mUpdateListeners;
    PropertyValuesHolder[] mValues;
    HashMap mValuesMap;

    class AnimationHandler extends Handler {
        private AnimationHandler() {
        }

        public void handleMessage(Message message) {
            ArrayList arrayList;
            ArrayList arrayList2;
            int i;
            ValueAnimator valueAnimator;
            ArrayList arrayList3 = (ArrayList) sAnimations.get();
            ArrayList arrayList4 = (ArrayList) sDelayedAnims.get();
            boolean z;
            switch (message.what) {
                case ANIMATION_START:
                    arrayList = (ArrayList) sPendingAnimations.get();
                    if (arrayList3.size() > 0 || arrayList4.size() > 0) {
                        int i2 = 0;
                    } else {
                        z = true;
                    }
                    while (arrayList.size() > 0) {
                        arrayList2 = (ArrayList) arrayList.clone();
                        arrayList.clear();
                        int size = arrayList2.size();
                        i = 0;
                        while (i < size) {
                            valueAnimator = (ValueAnimator) arrayList2.get(i);
                            if (valueAnimator.mStartDelay == 0) {
                                valueAnimator.startAnimation();
                            } else {
                                arrayList4.add(valueAnimator);
                            }
                            i++;
                        }
                    }
                    break;
                case RUNNING:
                    z = true;
                    break;
                default:
                    return;
            }
            long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            arrayList = (ArrayList) sReadyAnims.get();
            arrayList2 = (ArrayList) sEndingAnims.get();
            int size2 = arrayList4.size();
            i = 0;
            while (i < size2) {
                valueAnimator = (ValueAnimator) arrayList4.get(i);
                if (valueAnimator.delayedAnimationFrame(currentAnimationTimeMillis)) {
                    arrayList.add(valueAnimator);
                }
                i++;
            }
            size2 = arrayList.size();
            if (size2 > 0) {
                i = 0;
                while (i < size2) {
                    valueAnimator = (ValueAnimator) arrayList.get(i);
                    valueAnimator.startAnimation();
                    valueAnimator.mRunning = true;
                    arrayList4.remove(valueAnimator);
                    i++;
                }
                arrayList.clear();
            }
            i = 0;
            int i3 = arrayList3.size();
            while (i < i3) {
                ValueAnimator valueAnimator2 = (ValueAnimator) arrayList3.get(i);
                if (valueAnimator2.animationFrame(currentAnimationTimeMillis)) {
                    arrayList2.add(valueAnimator2);
                }
                if (arrayList3.size() == i3) {
                    i++;
                } else {
                    i3--;
                    arrayList2.remove(valueAnimator2);
                }
            }
            if (arrayList2.size() > 0) {
                i3 = 0;
                while (i3 < arrayList2.size()) {
                    ((ValueAnimator) arrayList2.get(i3)).endAnimation();
                    i3++;
                }
                arrayList2.clear();
            }
            if (i2 == 0) {
                return;
            }
            if (!arrayList3.isEmpty() || !arrayList4.isEmpty()) {
                sendEmptyMessageDelayed(RUNNING, Math.max(0, sFrameDelay - AnimationUtils.currentAnimationTimeMillis() - currentAnimationTimeMillis));
            }
        }
    }

    public interface AnimatorUpdateListener {
        void onAnimationUpdate(ValueAnimator valueAnimator);
    }

    static {
        sAnimationHandler = new ThreadLocal();
        sAnimations = new ThreadLocal() {
            protected final ArrayList initialValue() {
                return new ArrayList();
            }
        };
        sPendingAnimations = new ThreadLocal() {
            protected final ArrayList initialValue() {
                return new ArrayList();
            }
        };
        sDelayedAnims = new ThreadLocal() {
            protected final ArrayList initialValue() {
                return new ArrayList();
            }
        };
        sEndingAnims = new ThreadLocal() {
            protected final ArrayList initialValue() {
                return new ArrayList();
            }
        };
        sReadyAnims = new ThreadLocal() {
            protected final ArrayList initialValue() {
                return new ArrayList();
            }
        };
        sDefaultInterpolator = new AccelerateDecelerateInterpolator();
        sFrameDelay = 10;
    }

    public ValueAnimator() {
        this.mSeekTime = -1;
        this.mPlayingBackwards = false;
        this.mCurrentIteration = 0;
        this.mCurrentFraction = 0.0f;
        this.mStartedDelay = false;
        this.mPlayingState = 0;
        this.mRunning = false;
        this.mStarted = false;
        this.mInitialized = false;
        this.mDuration = 300;
        this.mStartDelay = 0;
        this.mRepeatCount = 0;
        this.mRepeatMode = 1;
        this.mInterpolator = sDefaultInterpolator;
        this.mUpdateListeners = null;
    }

    public static void clearAllAnimations() {
        ((ArrayList) sAnimations.get()).clear();
        ((ArrayList) sPendingAnimations.get()).clear();
        ((ArrayList) sDelayedAnims.get()).clear();
    }

    private boolean delayedAnimationFrame(long j) {
        if (this.mStartedDelay) {
            long j2 = j - this.mDelayStartTime;
            if (j2 > this.mStartDelay) {
                this.mStartTime = j - j2 - this.mStartDelay;
                this.mPlayingState = 1;
                return true;
            }
        } else {
            this.mStartedDelay = true;
            this.mDelayStartTime = j;
        }
        return false;
    }

    private void endAnimation() {
        ((ArrayList) sAnimations.get()).remove(this);
        ((ArrayList) sPendingAnimations.get()).remove(this);
        ((ArrayList) sDelayedAnims.get()).remove(this);
        this.mPlayingState = 0;
        if (this.mRunning && this.mListeners != null) {
            ArrayList arrayList = (ArrayList) this.mListeners.clone();
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                ((AnimatorListener) arrayList.get(i)).onAnimationEnd(this);
                i++;
            }
        }
        this.mRunning = false;
        this.mStarted = false;
    }

    public static int getCurrentAnimationsCount() {
        return ((ArrayList) sAnimations.get()).size();
    }

    public static long getFrameDelay() {
        return sFrameDelay;
    }

    public static ValueAnimator ofFloat(float... fArr) {
        ValueAnimator valueAnimator = new ValueAnimator();
        valueAnimator.setFloatValues(fArr);
        return valueAnimator;
    }

    public static ValueAnimator ofInt(int... iArr) {
        ValueAnimator valueAnimator = new ValueAnimator();
        valueAnimator.setIntValues(iArr);
        return valueAnimator;
    }

    public static ValueAnimator ofObject(TypeEvaluator typeEvaluator, Object... objArr) {
        ValueAnimator valueAnimator = new ValueAnimator();
        valueAnimator.setObjectValues(objArr);
        valueAnimator.setEvaluator(typeEvaluator);
        return valueAnimator;
    }

    public static ValueAnimator ofPropertyValuesHolder(PropertyValuesHolder... propertyValuesHolderArr) {
        ValueAnimator valueAnimator = new ValueAnimator();
        valueAnimator.setValues(propertyValuesHolderArr);
        return valueAnimator;
    }

    public static void setFrameDelay(long j) {
        sFrameDelay = j;
    }

    private void start(boolean z) {
        if (Looper.myLooper() == null) {
            throw new AndroidRuntimeException("Animators may only be run on Looper threads");
        }
        this.mPlayingBackwards = z;
        this.mCurrentIteration = 0;
        this.mPlayingState = 0;
        this.mStarted = true;
        this.mStartedDelay = false;
        ((ArrayList) sPendingAnimations.get()).add(this);
        if (this.mStartDelay == 0) {
            setCurrentPlayTime(getCurrentPlayTime());
            this.mPlayingState = 0;
            this.mRunning = true;
            if (this.mListeners != null) {
                ArrayList arrayList = (ArrayList) this.mListeners.clone();
                int size = arrayList.size();
                int i = 0;
                while (i < size) {
                    ((AnimatorListener) arrayList.get(i)).onAnimationStart(this);
                    i++;
                }
            }
        }
        AnimationHandler animationHandler = (AnimationHandler) sAnimationHandler.get();
        if (animationHandler == null) {
            animationHandler = new AnimationHandler();
            sAnimationHandler.set(animationHandler);
        }
        animationHandler.sendEmptyMessage(ANIMATION_START);
    }

    private void startAnimation() {
        initAnimation();
        ((ArrayList) sAnimations.get()).add(this);
        if (this.mStartDelay > 0 && this.mListeners != null) {
            ArrayList arrayList = (ArrayList) this.mListeners.clone();
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                ((AnimatorListener) arrayList.get(i)).onAnimationStart(this);
                i++;
            }
        }
    }

    public void addUpdateListener(AnimatorUpdateListener animatorUpdateListener) {
        if (this.mUpdateListeners == null) {
            this.mUpdateListeners = new ArrayList();
        }
        this.mUpdateListeners.add(animatorUpdateListener);
    }

    void animateValue(float f) {
        float interpolation = this.mInterpolator.getInterpolation(f);
        this.mCurrentFraction = interpolation;
        int length = this.mValues.length;
        int i = 0;
        while (i < length) {
            this.mValues[i].calculateValue(interpolation);
            i++;
        }
        if (this.mUpdateListeners != null) {
            int size = this.mUpdateListeners.size();
            i = 0;
            while (i < size) {
                ((AnimatorUpdateListener) this.mUpdateListeners.get(i)).onAnimationUpdate(this);
                i++;
            }
        }
    }

    boolean animationFrame(long j) {
        boolean z = false;
        if (this.mPlayingState == 0) {
            this.mPlayingState = 1;
            if (this.mSeekTime < 0) {
                this.mStartTime = j;
            } else {
                this.mStartTime = j - this.mSeekTime;
                this.mSeekTime = -1;
            }
        }
        switch (this.mPlayingState) {
            case RUNNING:
            case SEEKED:
                float f;
                float f2;
                f = this.mDuration > 0 ? ((float) (j - this.mStartTime)) / ((float) this.mDuration) : 1.0f;
                if (f < 1.0f) {
                    f2 = f;
                } else if (this.mCurrentIteration < this.mRepeatCount || this.mRepeatCount == -1) {
                    if (this.mListeners != null) {
                        int size = this.mListeners.size();
                        int i = 0;
                        while (i < size) {
                            ((AnimatorListener) this.mListeners.get(i)).onAnimationRepeat(this);
                            i++;
                        }
                    }
                    if (this.mRepeatMode == 2) {
                        this.mPlayingBackwards = !this.mPlayingBackwards;
                    }
                    this.mCurrentIteration += (int) f;
                    f2 = f % 1.0f;
                    this.mStartTime += this.mDuration;
                } else {
                    f2 = Math.min(f, 1.0f);
                    z = true;
                }
                if (this.mPlayingBackwards) {
                    f2 = 1.0f - f2;
                }
                animateValue(f2);
                break;
        }
        return z;
    }

    public void cancel() {
        if (this.mPlayingState != 0 || ((ArrayList) sPendingAnimations.get()).contains(this) || ((ArrayList) sDelayedAnims.get()).contains(this)) {
            if (this.mRunning && this.mListeners != null) {
                Iterator it = ((ArrayList) this.mListeners.clone()).iterator();
                while (it.hasNext()) {
                    ((AnimatorListener) it.next()).onAnimationCancel(this);
                }
            }
            endAnimation();
        }
    }

    public ValueAnimator clone() {
        int i = ANIMATION_START;
        ValueAnimator valueAnimator = (ValueAnimator) super.clone();
        if (this.mUpdateListeners != null) {
            ArrayList arrayList = this.mUpdateListeners;
            valueAnimator.mUpdateListeners = new ArrayList();
            int size = arrayList.size();
            int i2 = 0;
            while (i2 < size) {
                valueAnimator.mUpdateListeners.add(arrayList.get(i2));
                i2++;
            }
        }
        valueAnimator.mSeekTime = -1;
        valueAnimator.mPlayingBackwards = false;
        valueAnimator.mCurrentIteration = 0;
        valueAnimator.mInitialized = false;
        valueAnimator.mPlayingState = 0;
        valueAnimator.mStartedDelay = false;
        PropertyValuesHolder[] propertyValuesHolderArr = this.mValues;
        if (propertyValuesHolderArr != null) {
            int length = propertyValuesHolderArr.length;
            valueAnimator.mValues = new PropertyValuesHolder[length];
            valueAnimator.mValuesMap = new HashMap(length);
            while (i < length) {
                PropertyValuesHolder clone = propertyValuesHolderArr[i].clone();
                valueAnimator.mValues[i] = clone;
                valueAnimator.mValuesMap.put(clone.getPropertyName(), clone);
                i++;
            }
        }
        return valueAnimator;
    }

    public void end() {
        if (!((ArrayList) sAnimations.get()).contains(this) && !((ArrayList) sPendingAnimations.get()).contains(this)) {
            this.mStartedDelay = false;
            startAnimation();
        } else if (!this.mInitialized) {
            initAnimation();
        }
        if (this.mRepeatCount <= 0 || (this.mRepeatCount & 1) != 1) {
            animateValue(1.0f);
        } else {
            animateValue(0.0f);
        }
        endAnimation();
    }

    public float getAnimatedFraction() {
        return this.mCurrentFraction;
    }

    public Object getAnimatedValue() {
        return (this.mValues == null || this.mValues.length <= 0) ? null : this.mValues[0].getAnimatedValue();
    }

    public Object getAnimatedValue(String str) {
        PropertyValuesHolder propertyValuesHolder = (PropertyValuesHolder) this.mValuesMap.get(str);
        return propertyValuesHolder != null ? propertyValuesHolder.getAnimatedValue() : null;
    }

    public long getCurrentPlayTime() {
        return (!this.mInitialized || this.mPlayingState == 0) ? 0 : AnimationUtils.currentAnimationTimeMillis() - this.mStartTime;
    }

    public long getDuration() {
        return this.mDuration;
    }

    public Interpolator getInterpolator() {
        return this.mInterpolator;
    }

    public int getRepeatCount() {
        return this.mRepeatCount;
    }

    public int getRepeatMode() {
        return this.mRepeatMode;
    }

    public long getStartDelay() {
        return this.mStartDelay;
    }

    public PropertyValuesHolder[] getValues() {
        return this.mValues;
    }

    void initAnimation() {
        if (!this.mInitialized) {
            int length = this.mValues.length;
            int i = ANIMATION_START;
            while (i < length) {
                this.mValues[i].init();
                i++;
            }
            this.mInitialized = true;
        }
    }

    public boolean isRunning() {
        return this.mPlayingState == 1 || this.mRunning;
    }

    public boolean isStarted() {
        return this.mStarted;
    }

    public void removeAllUpdateListeners() {
        if (this.mUpdateListeners != null) {
            this.mUpdateListeners.clear();
            this.mUpdateListeners = null;
        }
    }

    public void removeUpdateListener(AnimatorUpdateListener animatorUpdateListener) {
        if (this.mUpdateListeners != null) {
            this.mUpdateListeners.remove(animatorUpdateListener);
            if (this.mUpdateListeners.size() == 0) {
                this.mUpdateListeners = null;
            }
        }
    }

    public void reverse() {
        this.mPlayingBackwards = !this.mPlayingBackwards;
        if (this.mPlayingState == 1) {
            long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            this.mStartTime = currentAnimationTimeMillis - this.mDuration - currentAnimationTimeMillis - this.mStartTime;
        } else {
            start(true);
        }
    }

    public void setCurrentPlayTime(long j) {
        initAnimation();
        long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
        if (this.mPlayingState != 1) {
            this.mSeekTime = j;
            this.mPlayingState = 2;
        }
        this.mStartTime = currentAnimationTimeMillis - j;
        animationFrame(currentAnimationTimeMillis);
    }

    public ValueAnimator setDuration(long j) {
        if (j < 0) {
            throw new IllegalArgumentException(new StringBuilder("Animators cannot have negative duration: ").append(j).toString());
        }
        this.mDuration = j;
        return this;
    }

    public void setEvaluator(TypeEvaluator typeEvaluator) {
        if (typeEvaluator != null && this.mValues != null && this.mValues.length > 0) {
            this.mValues[0].setEvaluator(typeEvaluator);
        }
    }

    public void setFloatValues(float... fArr) {
        if (fArr != null && fArr.length != 0) {
            if (this.mValues == null || this.mValues.length == 0) {
                setValues(new PropertyValuesHolder[]{PropertyValuesHolder.ofFloat("", fArr)});
            } else {
                this.mValues[0].setFloatValues(fArr);
            }
            this.mInitialized = false;
        }
    }

    public void setIntValues(int... iArr) {
        if (iArr != null && iArr.length != 0) {
            if (this.mValues == null || this.mValues.length == 0) {
                setValues(new PropertyValuesHolder[]{PropertyValuesHolder.ofInt("", iArr)});
            } else {
                this.mValues[0].setIntValues(iArr);
            }
            this.mInitialized = false;
        }
    }

    public void setInterpolator(Interpolator interpolator) {
        if (interpolator != null) {
            this.mInterpolator = interpolator;
        } else {
            this.mInterpolator = new LinearInterpolator();
        }
    }

    public void setObjectValues(Object... objArr) {
        if (objArr != null && objArr.length != 0) {
            if (this.mValues == null || this.mValues.length == 0) {
                setValues(new PropertyValuesHolder[]{PropertyValuesHolder.ofObject("", null, objArr)});
            } else {
                this.mValues[0].setObjectValues(objArr);
            }
            this.mInitialized = false;
        }
    }

    public void setRepeatCount(int i) {
        this.mRepeatCount = i;
    }

    public void setRepeatMode(int i) {
        this.mRepeatMode = i;
    }

    public void setStartDelay(long j) {
        this.mStartDelay = j;
    }

    public void setValues(PropertyValuesHolder... propertyValuesHolderArr) {
        int length = propertyValuesHolderArr.length;
        this.mValues = propertyValuesHolderArr;
        this.mValuesMap = new HashMap(length);
        int i = 0;
        while (i < length) {
            PropertyValuesHolder propertyValuesHolder = propertyValuesHolderArr[i];
            this.mValuesMap.put(propertyValuesHolder.getPropertyName(), propertyValuesHolder);
            i++;
        }
        this.mInitialized = false;
    }

    public void start() {
        start(false);
    }

    public String toString() {
        String toString = new StringBuilder("ValueAnimator@").append(Integer.toHexString(hashCode())).toString();
        if (this.mValues != null) {
            int i = ANIMATION_START;
            while (i < this.mValues.length) {
                toString = toString + "\n    " + this.mValues[i].toString();
                i++;
            }
        }
        return toString;
    }
}