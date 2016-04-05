package com.a.a.c;

import android.util.Log;
import com.a.a.b.f;

public final class d
{
  private static volatile boolean a = false;
  
  private static void a(int paramInt, Throwable paramThrowable, String paramString, Object... paramVarArgs)
  {
    if (a) {
      return;
    }
    if (paramVarArgs.length > 0) {
      paramString = String.format(paramString, paramVarArgs);
    }
    for (;;)
    {
      if (paramThrowable == null) {}
      for (;;)
      {
        Log.println(paramInt, f.a, paramString);
        return;
        paramVarArgs = paramString;
        if (paramString == null) {
          paramVarArgs = paramThrowable.getMessage();
        }
        paramString = String.format("%1$s\n%2$s", new Object[] { paramVarArgs, Log.getStackTraceString(paramThrowable) });
      }
    }
  }
  
  public static void a(String paramString, Object... paramVarArgs)
  {
    a(3, null, paramString, paramVarArgs);
  }
  
  public static void a(Throwable paramThrowable)
  {
    a(6, paramThrowable, null, new Object[0]);
  }
  
  public static void b(String paramString, Object... paramVarArgs)
  {
    a(4, null, paramString, paramVarArgs);
  }
  
  public static void c(String paramString, Object... paramVarArgs)
  {
    a(5, null, paramString, paramVarArgs);
  }
  
  public static void d(String paramString, Object... paramVarArgs)
  {
    a(6, null, paramString, paramVarArgs);
  }
}

/* Location:
 * Qualified Name:     com.a.a.c.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */