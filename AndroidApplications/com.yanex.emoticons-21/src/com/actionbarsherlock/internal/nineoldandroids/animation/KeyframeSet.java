package com.actionbarsherlock.internal.nineoldandroids.animation;

import android.view.animation.Interpolator;
import com.actionbarsherlock.internal.widget.IcsLinearLayout;
import java.util.ArrayList;
import java.util.Arrays;

class KeyframeSet {
    TypeEvaluator mEvaluator;
    Keyframe mFirstKeyframe;
    Interpolator mInterpolator;
    ArrayList mKeyframes;
    Keyframe mLastKeyframe;
    int mNumKeyframes;

    public KeyframeSet(Keyframe... keyframeArr) {
        this.mNumKeyframes = keyframeArr.length;
        this.mKeyframes = new ArrayList();
        this.mKeyframes.addAll(Arrays.asList(keyframeArr));
        this.mFirstKeyframe = (Keyframe) this.mKeyframes.get(0);
        this.mLastKeyframe = (Keyframe) this.mKeyframes.get(this.mNumKeyframes - 1);
        this.mInterpolator = this.mLastKeyframe.getInterpolator();
    }

    public static KeyframeSet ofFloat(float... fArr) {
        int i = 1;
        int length = fArr.length;
        FloatKeyframe[] floatKeyframeArr = new FloatKeyframe[Math.max(length, IcsLinearLayout.SHOW_DIVIDER_MIDDLE)];
        if (length == 1) {
            floatKeyframeArr[0] = (FloatKeyframe) Keyframe.ofFloat(0.0f);
            floatKeyframeArr[1] = (FloatKeyframe) Keyframe.ofFloat(1.0f, fArr[0]);
        } else {
            floatKeyframeArr[0] = (FloatKeyframe) Keyframe.ofFloat(0.0f, fArr[0]);
            while (i < length) {
                floatKeyframeArr[i] = (FloatKeyframe) Keyframe.ofFloat(((float) i) / ((float) (length - 1)), fArr[i]);
                i++;
            }
        }
        return new FloatKeyframeSet(floatKeyframeArr);
    }

    public static KeyframeSet ofInt(int... iArr) {
        int i = 1;
        int length = iArr.length;
        IntKeyframe[] intKeyframeArr = new IntKeyframe[Math.max(length, IcsLinearLayout.SHOW_DIVIDER_MIDDLE)];
        if (length == 1) {
            intKeyframeArr[0] = (IntKeyframe) Keyframe.ofInt(0.0f);
            intKeyframeArr[1] = (IntKeyframe) Keyframe.ofInt(1.0f, iArr[0]);
        } else {
            intKeyframeArr[0] = (IntKeyframe) Keyframe.ofInt(0.0f, iArr[0]);
            while (i < length) {
                intKeyframeArr[i] = (IntKeyframe) Keyframe.ofInt(((float) i) / ((float) (length - 1)), iArr[i]);
                i++;
            }
        }
        return new IntKeyframeSet(intKeyframeArr);
    }

    public static KeyframeSet ofKeyframe(Keyframe... keyframeArr) {
        int i = 0;
        int length = keyframeArr.length;
        int i2 = 0;
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        while (i2 < length) {
            if (keyframeArr[i2] instanceof FloatKeyframe) {
                z3 = true;
            } else if (keyframeArr[i2] instanceof IntKeyframe) {
                z2 = true;
            } else {
                z = true;
            }
            i2++;
        }
        if (i != 0 && i == 0 && i == 0) {
            FloatKeyframe[] floatKeyframeArr = new FloatKeyframe[length];
            while (i < length) {
                floatKeyframeArr[i] = (FloatKeyframe) keyframeArr[i];
                i++;
            }
            return new FloatKeyframeSet(floatKeyframeArr);
        } else if (i == 0 || i != 0 || i != 0) {
            return new KeyframeSet(keyframeArr);
        } else {
            IntKeyframe[] intKeyframeArr = new IntKeyframe[length];
            int i3 = 0;
            while (i3 < length) {
                intKeyframeArr[i3] = (IntKeyframe) keyframeArr[i3];
                i3++;
            }
            return new IntKeyframeSet(intKeyframeArr);
        }
    }

    public static KeyframeSet ofObject(Object... objArr) {
        int i = 1;
        int length = objArr.length;
        Keyframe[] keyframeArr = new Keyframe[Math.max(length, IcsLinearLayout.SHOW_DIVIDER_MIDDLE)];
        if (length == 1) {
            keyframeArr[0] = (ObjectKeyframe) Keyframe.ofObject(0.0f);
            keyframeArr[1] = (ObjectKeyframe) Keyframe.ofObject(1.0f, objArr[0]);
        } else {
            keyframeArr[0] = (ObjectKeyframe) Keyframe.ofObject(0.0f, objArr[0]);
            while (i < length) {
                keyframeArr[i] = (ObjectKeyframe) Keyframe.ofObject(((float) i) / ((float) (length - 1)), objArr[i]);
                i++;
            }
        }
        return new KeyframeSet(keyframeArr);
    }

    public KeyframeSet clone() {
        ArrayList arrayList = this.mKeyframes;
        int size = this.mKeyframes.size();
        Keyframe[] keyframeArr = new Keyframe[size];
        int i = 0;
        while (i < size) {
            keyframeArr[i] = ((Keyframe) arrayList.get(i)).clone();
            i++;
        }
        return new KeyframeSet(keyframeArr);
    }

    public Object getValue(float f) {
        if (this.mNumKeyframes == 2) {
            if (this.mInterpolator != null) {
                f = this.mInterpolator.getInterpolation(f);
            }
            return this.mEvaluator.evaluate(f, this.mFirstKeyframe.getValue(), this.mLastKeyframe.getValue());
        } else if (f <= 0.0f) {
            keyframe = (Keyframe) this.mKeyframes.get(1);
            interpolator = keyframe.getInterpolator();
            if (interpolator != null) {
                f = interpolator.getInterpolation(f);
            }
            fraction = this.mFirstKeyframe.getFraction();
            return this.mEvaluator.evaluate((f - fraction) / (keyframe.getFraction() - fraction), this.mFirstKeyframe.getValue(), keyframe.getValue());
        } else if (f >= 1.0f) {
            keyframe = (Keyframe) this.mKeyframes.get(this.mNumKeyframes - 2);
            interpolator = this.mLastKeyframe.getInterpolator();
            if (interpolator != null) {
                f = interpolator.getInterpolation(f);
            }
            fraction = keyframe.getFraction();
            return this.mEvaluator.evaluate((f - fraction) / (this.mLastKeyframe.getFraction() - fraction), keyframe.getValue(), this.mLastKeyframe.getValue());
        } else {
            Keyframe keyframe2 = this.mFirstKeyframe;
            int i = 1;
            while (i < this.mNumKeyframes) {
                keyframe = (Keyframe) this.mKeyframes.get(i);
                if (f < keyframe.getFraction()) {
                    interpolator = keyframe.getInterpolator();
                    if (interpolator != null) {
                        f = interpolator.getInterpolation(f);
                    }
                    fraction = keyframe2.getFraction();
                    return this.mEvaluator.evaluate((f - fraction) / (keyframe.getFraction() - fraction), keyframe2.getValue(), keyframe.getValue());
                } else {
                    i++;
                    keyframe2 = keyframe;
                }
            }
            return this.mLastKeyframe.getValue();
        }
    }

    public void setEvaluator(TypeEvaluator typeEvaluator) {
        this.mEvaluator = typeEvaluator;
    }

    public String toString() {
        String str = " ";
        int i = 0;
        while (i < this.mNumKeyframes) {
            String str2 = str + ((Keyframe) this.mKeyframes.get(i)).getValue() + "  ";
            i++;
            str = str2;
        }
        return str;
    }
}