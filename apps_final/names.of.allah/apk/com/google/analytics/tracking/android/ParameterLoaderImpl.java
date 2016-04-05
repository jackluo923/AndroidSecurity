package com.google.analytics.tracking.android;

import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;

class ParameterLoaderImpl
  implements ParameterLoader
{
  private final Context mContext;
  private String mOverrideResourcePackageName;
  
  public ParameterLoaderImpl(Context paramContext)
  {
    if (paramContext == null) {
      throw new NullPointerException("Context cannot be null");
    }
    mContext = paramContext.getApplicationContext();
  }
  
  private int getResourceIdForType(String paramString1, String paramString2)
  {
    if (mContext == null) {
      return 0;
    }
    if (mOverrideResourcePackageName != null) {}
    for (String str = mOverrideResourcePackageName;; str = mContext.getPackageName()) {
      return mContext.getResources().getIdentifier(paramString1, paramString2, str);
    }
  }
  
  public boolean getBoolean(String paramString)
  {
    int i = getResourceIdForType(paramString, "bool");
    if (i == 0) {
      return false;
    }
    return "true".equalsIgnoreCase(mContext.getString(i));
  }
  
  public Double getDoubleFromString(String paramString)
  {
    paramString = getString(paramString);
    if (TextUtils.isEmpty(paramString)) {
      return null;
    }
    try
    {
      double d = Double.parseDouble(paramString);
      return Double.valueOf(d);
    }
    catch (NumberFormatException localNumberFormatException)
    {
      Log.w("NumberFormatException parsing " + paramString);
    }
    return null;
  }
  
  public int getInt(String paramString, int paramInt)
  {
    int i = getResourceIdForType(paramString, "integer");
    if (i == 0) {
      return paramInt;
    }
    try
    {
      int j = Integer.parseInt(mContext.getString(i));
      return j;
    }
    catch (NumberFormatException paramString)
    {
      Log.w("NumberFormatException parsing " + mContext.getString(i));
    }
    return paramInt;
  }
  
  public String getString(String paramString)
  {
    int i = getResourceIdForType(paramString, "string");
    if (i == 0) {
      return null;
    }
    return mContext.getString(i);
  }
  
  public boolean isBooleanKeyPresent(String paramString)
  {
    return getResourceIdForType(paramString, "bool") != 0;
  }
  
  public void setResourcePackageName(String paramString)
  {
    mOverrideResourcePackageName = paramString;
  }
}

/* Location:
 * Qualified Name:     com.google.analytics.tracking.android.ParameterLoaderImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */