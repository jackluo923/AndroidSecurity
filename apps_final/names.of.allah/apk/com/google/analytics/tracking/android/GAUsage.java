package com.google.analytics.tracking.android;

import com.google.android.gms.common.util.VisibleForTesting;
import java.util.SortedSet;
import java.util.TreeSet;

class GAUsage
{
  private static final String BASE_64_CHARS = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_";
  private static final GAUsage INSTANCE = new GAUsage();
  private boolean mDisableUsage = false;
  private StringBuilder mSequence = new StringBuilder();
  private SortedSet<GAUsage.Field> mUsedFields = new TreeSet();
  
  public static GAUsage getInstance()
  {
    return INSTANCE;
  }
  
  @VisibleForTesting
  static GAUsage getPrivateInstance()
  {
    return new GAUsage();
  }
  
  public String getAndClearSequence()
  {
    try
    {
      if (mSequence.length() > 0) {
        mSequence.insert(0, ".");
      }
      String str = mSequence.toString();
      mSequence = new StringBuilder();
      return str;
    }
    finally {}
  }
  
  public String getAndClearUsage()
  {
    try
    {
      Object localObject1 = new StringBuilder();
      int j = 6;
      int i = 0;
      while (mUsedFields.size() > 0)
      {
        GAUsage.Field localField = (GAUsage.Field)mUsedFields.first();
        mUsedFields.remove(localField);
        int k = localField.ordinal();
        while (k >= j)
        {
          ((StringBuilder)localObject1).append("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_".charAt(i));
          j += 6;
          i = 0;
        }
        i += (1 << localField.ordinal() % 6);
      }
      if ((i > 0) || (((StringBuilder)localObject1).length() == 0)) {
        ((StringBuilder)localObject1).append("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_".charAt(i));
      }
      mUsedFields.clear();
      localObject1 = ((StringBuilder)localObject1).toString();
      return (String)localObject1;
    }
    finally {}
  }
  
  public void setDisableUsage(boolean paramBoolean)
  {
    try
    {
      mDisableUsage = paramBoolean;
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public void setUsage(GAUsage.Field paramField)
  {
    try
    {
      if (!mDisableUsage)
      {
        mUsedFields.add(paramField);
        mSequence.append("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_".charAt(paramField.ordinal()));
      }
      return;
    }
    finally
    {
      paramField = finally;
      throw paramField;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.analytics.tracking.android.GAUsage
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */