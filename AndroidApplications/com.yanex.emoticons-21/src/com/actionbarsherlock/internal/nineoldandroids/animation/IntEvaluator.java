package com.actionbarsherlock.internal.nineoldandroids.animation;

public class IntEvaluator implements TypeEvaluator {
    public Integer evaluate(float f, Integer num, Integer num2) {
        int intValue = num.intValue();
        return Integer.valueOf((int) (((float) (num2.intValue() - intValue)) * f + ((float) intValue)));
    }
}