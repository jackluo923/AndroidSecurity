package com.actionbarsherlock.internal.nineoldandroids.animation;

// compiled from: ProGuard
public class FloatEvaluator implements TypeEvaluator {
    public Float evaluate(float f, Number number, Number number2) {
        float floatValue = number.floatValue();
        return Float.valueOf(floatValue + (number2.floatValue() - floatValue) * f);
    }
}