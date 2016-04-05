package com.actionbarsherlock.view;

import android.view.InflateException;
import java.lang.reflect.Method;

class MenuInflater$InflatedOnMenuItemClickListener
  implements MenuItem.OnMenuItemClickListener
{
  private static final Class<?>[] PARAM_TYPES = { MenuItem.class };
  private Method mMethod;
  private Object mRealOwner;
  
  public MenuInflater$InflatedOnMenuItemClickListener(Object paramObject, String paramString)
  {
    mRealOwner = paramObject;
    Class localClass = paramObject.getClass();
    try
    {
      mMethod = localClass.getMethod(paramString, PARAM_TYPES);
      return;
    }
    catch (Exception paramObject)
    {
      paramString = new InflateException("Couldn't resolve menu item onClick handler " + paramString + " in class " + localClass.getName());
      paramString.initCause((Throwable)paramObject);
      throw paramString;
    }
  }
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    try
    {
      if (mMethod.getReturnType() == Boolean.TYPE) {
        return ((Boolean)mMethod.invoke(mRealOwner, new Object[] { paramMenuItem })).booleanValue();
      }
      mMethod.invoke(mRealOwner, new Object[] { paramMenuItem });
      return true;
    }
    catch (Exception paramMenuItem)
    {
      throw new RuntimeException(paramMenuItem);
    }
  }
}

/* Location:
 * Qualified Name:     com.actionbarsherlock.view.MenuInflater.InflatedOnMenuItemClickListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */