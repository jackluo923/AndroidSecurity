package com.actionbarsherlock.internal.nineoldandroids.animation;

import java.util.ArrayList;

class FloatKeyframeSet extends KeyframeSet {
    private float deltaValue;
    private boolean firstTime;
    private float firstValue;
    private float lastValue;

    public FloatKeyframeSet(FloatKeyframe... floatKeyframeArr) {
        super(floatKeyframeArr);
        this.firstTime = true;
    }

    public FloatKeyframeSet clone() {
        ArrayList arrayList = this.mKeyframes;
        int size = this.mKeyframes.size();
        FloatKeyframe[] floatKeyframeArr = new FloatKeyframe[size];
        int i = 0;
        while (i < size) {
            floatKeyframeArr[i] = (FloatKeyframe) ((Keyframe) arrayList.get(i)).clone();
            i++;
        }
        return new FloatKeyframeSet(floatKeyframeArr);
    }

    public float getFloatValue(float f) {
        int i = 1;
        if (this.mNumKeyframes == 2) {
            if (this.firstTime) {
                this.firstTime = false;
                this.firstValue = ((FloatKeyframe) this.mKeyframes.get(0)).getFloatValue();
                this.lastValue = ((FloatKeyframe) this.mKeyframes.get(1)).getFloatValue();
                this.deltaValue = this.lastValue - this.firstValue;
            }
            if (this.mInterpolator != null) {
                f = this.mInterpolator.getInterpolation(f);
            }
            return this.mEvaluator == null ? this.firstValue + this.deltaValue * f : ((Number) this.mEvaluator.evaluate(f, Float.valueOf(this.firstValue), Float.valueOf(this.lastValue))).floatValue();
        } else if (f <= 0.0f) {
            floatKeyframe = (FloatKeyframe) this.mKeyframes.get(0);
            floatKeyframe = (FloatKeyframe) this.mKeyframes.get(1);
            floatValue = floatKeyframe.getFloatValue();
            floatValue = floatKeyframe.getFloatValue();
            fraction = floatKeyframe.getFraction();
            fraction = floatKeyframe.getFraction();
            interpolator = floatKeyframe.getInterpolator();
            if (interpolator != null) {
                f = interpolator.getInterpolation(f);
            }
            fraction = (f - fraction) / (fraction - fraction);
            return this.mEvaluator == null ? fraction * (floatValue - floatValue) + floatValue : ((Number) this.mEvaluator.evaluate(fraction, Float.valueOf(floatValue), Float.valueOf(floatValue))).floatValue();
        } else if (f >= 1.0f) {
            floatKeyframe = (FloatKeyframe) this.mKeyframes.get(this.mNumKeyframes - 2);
            floatKeyframe = (FloatKeyframe) this.mKeyframes.get(this.mNumKeyframes - 1);
            floatValue = floatKeyframe.getFloatValue();
            floatValue = floatKeyframe.getFloatValue();
            fraction = floatKeyframe.getFraction();
            fraction = floatKeyframe.getFraction();
            interpolator = floatKeyframe.getInterpolator();
            if (interpolator != null) {
                f = interpolator.getInterpolation(f);
            }
            fraction = (f - fraction) / (fraction - fraction);
            return this.mEvaluator == null ? fraction * (floatValue - floatValue) + floatValue : ((Number) this.mEvaluator.evaluate(fraction, Float.valueOf(floatValue), Float.valueOf(floatValue))).floatValue();
        } else {
            FloatKeyframe floatKeyframe2 = (FloatKeyframe) this.mKeyframes.get(0);
            while (i < this.mNumKeyframes) {
                floatKeyframe = (FloatKeyframe) this.mKeyframes.get(i);
                if (f < floatKeyframe.getFraction()) {
                    interpolator = floatKeyframe.getInterpolator();
                    if (interpolator != null) {
                        f = interpolator.getInterpolation(f);
                    }
                    float fraction2 = (f - floatKeyframe2.getFraction()) / (floatKeyframe.getFraction() - floatKeyframe2.getFraction());
                    floatValue = floatKeyframe2.getFloatValue();
                    fraction = floatKeyframe.getFloatValue();
                    return this.mEvaluator == null ? (fraction - floatValue) * fraction2 + floatValue : ((Number) this.mEvaluator.evaluate(fraction2, Float.valueOf(floatValue), Float.valueOf(fraction))).floatValue();
                } else {
                    i++;
                    floatKeyframe2 = floatKeyframe;
                }
            }
            return ((Number) ((Keyframe) this.mKeyframes.get(this.mNumKeyframes - 1)).getValue()).floatValue();
        }
    }

    public Object getValue(float f) {
        return Float.valueOf(getFloatValue(f));
    }
}