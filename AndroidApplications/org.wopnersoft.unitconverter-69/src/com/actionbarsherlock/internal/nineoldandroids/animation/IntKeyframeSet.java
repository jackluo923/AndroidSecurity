package com.actionbarsherlock.internal.nineoldandroids.animation;

import java.util.ArrayList;

// compiled from: ProGuard
class IntKeyframeSet extends KeyframeSet {
    private int deltaValue;
    private boolean firstTime;
    private int firstValue;
    private int lastValue;

    public IntKeyframeSet(IntKeyframe... intKeyframeArr) {
        super(intKeyframeArr);
        this.firstTime = true;
    }

    public IntKeyframeSet clone() {
        ArrayList arrayList = this.mKeyframes;
        int size = this.mKeyframes.size();
        IntKeyframe[] intKeyframeArr = new IntKeyframe[size];
        int i = 0;
        while (i < size) {
            intKeyframeArr[i] = (IntKeyframe) ((Keyframe) arrayList.get(i)).clone();
            i++;
        }
        return new IntKeyframeSet(intKeyframeArr);
    }

    public int getIntValue(float f) {
        int i = 1;
        if (this.mNumKeyframes == 2) {
            if (this.firstTime) {
                this.firstTime = false;
                this.firstValue = ((IntKeyframe) this.mKeyframes.get(0)).getIntValue();
                this.lastValue = ((IntKeyframe) this.mKeyframes.get(1)).getIntValue();
                this.deltaValue = this.lastValue - this.firstValue;
            }
            if (this.mInterpolator != null) {
                f = this.mInterpolator.getInterpolation(f);
            }
            return this.mEvaluator == null ? this.firstValue + ((int) (((float) this.deltaValue) * f)) : ((Number) this.mEvaluator.evaluate(f, Integer.valueOf(this.firstValue), Integer.valueOf(this.lastValue))).intValue();
        } else if (f <= 0.0f) {
            intKeyframe = (IntKeyframe) this.mKeyframes.get(0);
            intKeyframe = (IntKeyframe) this.mKeyframes.get(1);
            intValue = intKeyframe.getIntValue();
            intValue = intKeyframe.getIntValue();
            fraction = intKeyframe.getFraction();
            fraction = intKeyframe.getFraction();
            interpolator = intKeyframe.getInterpolator();
            if (interpolator != null) {
                f = interpolator.getInterpolation(f);
            }
            fraction = (f - fraction) / (fraction - fraction);
            return this.mEvaluator == null ? ((int) (fraction * ((float) (intValue - intValue)))) + intValue : ((Number) this.mEvaluator.evaluate(fraction, Integer.valueOf(intValue), Integer.valueOf(intValue))).intValue();
        } else if (f >= 1.0f) {
            intKeyframe = (IntKeyframe) this.mKeyframes.get(this.mNumKeyframes - 2);
            intKeyframe = (IntKeyframe) this.mKeyframes.get(this.mNumKeyframes - 1);
            intValue = intKeyframe.getIntValue();
            intValue = intKeyframe.getIntValue();
            fraction = intKeyframe.getFraction();
            fraction = intKeyframe.getFraction();
            interpolator = intKeyframe.getInterpolator();
            if (interpolator != null) {
                f = interpolator.getInterpolation(f);
            }
            fraction = (f - fraction) / (fraction - fraction);
            return this.mEvaluator == null ? ((int) (fraction * ((float) (intValue - intValue)))) + intValue : ((Number) this.mEvaluator.evaluate(fraction, Integer.valueOf(intValue), Integer.valueOf(intValue))).intValue();
        } else {
            IntKeyframe intKeyframe2 = (IntKeyframe) this.mKeyframes.get(0);
            while (i < this.mNumKeyframes) {
                intKeyframe = (IntKeyframe) this.mKeyframes.get(i);
                if (f < intKeyframe.getFraction()) {
                    interpolator = intKeyframe.getInterpolator();
                    if (interpolator != null) {
                        f = interpolator.getInterpolation(f);
                    }
                    float fraction2 = (f - intKeyframe2.getFraction()) / (intKeyframe.getFraction() - intKeyframe2.getFraction());
                    intValue = intKeyframe2.getIntValue();
                    int intValue2 = intKeyframe.getIntValue();
                    return this.mEvaluator == null ? ((int) (((float) (intValue2 - intValue)) * fraction2)) + intValue : ((Number) this.mEvaluator.evaluate(fraction2, Integer.valueOf(intValue), Integer.valueOf(intValue2))).intValue();
                } else {
                    i++;
                    intKeyframe2 = intKeyframe;
                }
            }
            return ((Number) ((Keyframe) this.mKeyframes.get(this.mNumKeyframes - 1)).getValue()).intValue();
        }
    }

    public Object getValue(float f) {
        return Integer.valueOf(getIntValue(f));
    }
}