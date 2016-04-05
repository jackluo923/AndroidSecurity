package com.millennialmedia.android;

import android.util.Log;

class MMSDK$Log
{
  static void d(String paramString)
  {
    if (MMSDK.logLevel > 0) {
      Log.i("MillennialMediaSDK", "Diagnostic - " + paramString);
    }
  }
  
  static void d(String paramString, Object... paramVarArgs)
  {
    if (MMSDK.logLevel > 0) {
      Log.i("MillennialMediaSDK", "Diagnostic - " + String.format(paramString, paramVarArgs));
    }
  }
  
  static void d(Throwable paramThrowable)
  {
    if (MMSDK.logLevel > 0) {
      d(Log.getStackTraceString(paramThrowable));
    }
  }
  
  static void e(String paramString)
  {
    Log.e("MillennialMediaSDK", paramString);
  }
  
  static void e(String paramString, Object... paramVarArgs)
  {
    Log.e("MillennialMediaSDK", String.format(paramString, paramVarArgs));
  }
  
  static void e(Throwable paramThrowable)
  {
    Log.e("MillennialMediaSDK", Log.getStackTraceString(paramThrowable));
  }
  
  static void i(String paramString)
  {
    Log.i("MillennialMediaSDK", paramString);
  }
  
  static void i(String paramString, Object... paramVarArgs)
  {
    Log.i("MillennialMediaSDK", String.format(paramString, paramVarArgs));
  }
  
  static void i(Throwable paramThrowable)
  {
    Log.i("MillennialMediaSDK", Log.getStackTraceString(paramThrowable));
  }
  
  static void p(String paramString)
  {
    if (MMSDK.logLevel > 3) {
      Log.i("MillennialMediaSDK", "Private - " + paramString);
    }
  }
  
  static void p(String paramString, Object... paramVarArgs)
  {
    if (MMSDK.logLevel > 3) {
      Log.i("MillennialMediaSDK", "Private - " + String.format(paramString, paramVarArgs));
    }
  }
  
  static void p(Throwable paramThrowable)
  {
    if (MMSDK.logLevel > 3) {
      p(Log.getStackTraceString(paramThrowable));
    }
  }
  
  static void v(String paramString)
  {
    if (MMSDK.logLevel >= 3) {
      Log.i("MillennialMediaSDK", "Verbose - " + paramString);
    }
  }
  
  static void v(String paramString, Object... paramVarArgs)
  {
    if (MMSDK.logLevel >= 3) {
      Log.i("MillennialMediaSDK", "Verbose - " + String.format(paramString, paramVarArgs));
    }
  }
  
  static void v(Throwable paramThrowable)
  {
    if (MMSDK.logLevel >= 3) {
      v(Log.getStackTraceString(paramThrowable));
    }
  }
  
  static void w(String paramString)
  {
    Log.w("MillennialMediaSDK", paramString);
  }
  
  static void w(String paramString, Object... paramVarArgs)
  {
    Log.w("MillennialMediaSDK", String.format(paramString, paramVarArgs));
  }
  
  static void w(Throwable paramThrowable)
  {
    Log.w("MillennialMediaSDK", Log.getStackTraceString(paramThrowable));
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.MMSDK.Log
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */