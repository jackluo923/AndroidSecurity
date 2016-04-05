package com.google.android.gms.internal;

import android.text.TextUtils;
import android.util.Log;

public class go
{
  private static boolean Ci = false;
  private boolean Cj;
  private boolean Ck;
  private String Cl;
  private final String mTag;
  
  public go(String paramString)
  {
    this(paramString, en());
  }
  
  public go(String paramString, boolean paramBoolean)
  {
    mTag = paramString;
    Cj = paramBoolean;
    Ck = false;
  }
  
  private String e(String paramString, Object... paramVarArgs)
  {
    paramVarArgs = String.format(paramString, paramVarArgs);
    paramString = paramVarArgs;
    if (!TextUtils.isEmpty(Cl)) {
      paramString = Cl + paramVarArgs;
    }
    return paramString;
  }
  
  public static boolean en()
  {
    return Ci;
  }
  
  public void a(String paramString, Object... paramVarArgs)
  {
    if (em()) {
      Log.v(mTag, e(paramString, paramVarArgs));
    }
  }
  
  public void a(Throwable paramThrowable, String paramString, Object... paramVarArgs)
  {
    if ((el()) || (Ci)) {
      Log.d(mTag, e(paramString, paramVarArgs), paramThrowable);
    }
  }
  
  public void ap(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {}
    for (paramString = null;; paramString = String.format("[%s] ", new Object[] { paramString }))
    {
      Cl = paramString;
      return;
    }
  }
  
  public void b(String paramString, Object... paramVarArgs)
  {
    if ((el()) || (Ci)) {
      Log.d(mTag, e(paramString, paramVarArgs));
    }
  }
  
  public void c(String paramString, Object... paramVarArgs)
  {
    Log.i(mTag, e(paramString, paramVarArgs));
  }
  
  public void d(String paramString, Object... paramVarArgs)
  {
    Log.w(mTag, e(paramString, paramVarArgs));
  }
  
  public boolean el()
  {
    return Cj;
  }
  
  public boolean em()
  {
    return Ck;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.go
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */