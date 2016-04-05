package com.appyet.d;

import java.text.DecimalFormat;

public final class f
{
  public static String a(double paramDouble)
  {
    DecimalFormat localDecimalFormat = new DecimalFormat("0.00%");
    double d = Math.pow(10.0D, 2.0D);
    paramDouble = Math.floor(paramDouble * d);
    localDecimalFormat.setDecimalSeparatorAlwaysShown(false);
    localDecimalFormat.setMinimumFractionDigits(0);
    localDecimalFormat.setMaximumFractionDigits(0);
    return localDecimalFormat.format(paramDouble / d);
  }
  
  public static StringBuilder a(StringBuilder paramStringBuilder, String paramString1, String paramString2)
  {
    for (int i = 0;; i = i + paramString2.length() + 1)
    {
      i = paramStringBuilder.indexOf(paramString1, i);
      if (i < 0) {
        break;
      }
      paramStringBuilder = paramStringBuilder.replace(i, paramString1.length() + i, paramString2);
    }
    return paramStringBuilder;
  }
}

/* Location:
 * Qualified Name:     com.appyet.d.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */