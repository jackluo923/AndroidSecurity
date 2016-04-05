package com.actionbarsherlock.internal.nineoldandroids.animation;

public class FloatEvaluator
  implements TypeEvaluator<Number>
{
  public Float evaluate(float paramFloat, Number paramNumber1, Number paramNumber2)
  {
    float f = paramNumber1.floatValue();
    return Float.valueOf(f + (paramNumber2.floatValue() - f) * paramFloat);
  }
}

/* Location:
 * Qualified Name:     com.actionbarsherlock.internal.nineoldandroids.animation.FloatEvaluator
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */