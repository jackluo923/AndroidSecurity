package com.inmobi.commons.internal;

import android.content.Context;
import android.content.pm.ActivityInfo;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Paint;
import android.net.http.SslError;
import android.os.Build.VERSION;
import android.view.Display;
import android.view.WindowManager;
import android.webkit.WebView;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public class WrapperFunctions
{
  private static int a;
  
  private static void a(WebView paramWebView, int paramInt)
  {
    try
    {
      paramWebView.getClass().getMethod("setLayerType", new Class[] { Integer.TYPE, Paint.class }).invoke(paramWebView, new Object[] { Integer.valueOf(paramInt), null });
      return;
    }
    catch (NoSuchMethodException paramWebView)
    {
      Log.internal("[InMobi]-4.4.1", "Cannot set hardware accl", paramWebView);
      return;
    }
    catch (IllegalArgumentException paramWebView)
    {
      Log.internal("[InMobi]-4.4.1", "Cannot set hardware accl", paramWebView);
      return;
    }
    catch (IllegalAccessException paramWebView)
    {
      Log.internal("[InMobi]-4.4.1", "Cannot set hardware accl", paramWebView);
      return;
    }
    catch (InvocationTargetException paramWebView)
    {
      Log.internal("[InMobi]-4.4.1", "Cannot set hardware accl", paramWebView);
    }
  }
  
  public static void disableHardwareAccl(WebView paramWebView)
  {
    a(paramWebView, 1);
  }
  
  public static int getCurrentOrientationInFixedValues(Context paramContext)
  {
    switch (getResourcesgetConfigurationorientation)
    {
    default: 
      return 1;
    case 1: 
      if (Build.VERSION.SDK_INT < 8) {
        return 1;
      }
      i = ((WindowManager)paramContext.getSystemService("window")).getDefaultDisplay().getRotation();
      if ((i == 1) || (i == 2)) {
        return 9;
      }
      return 1;
    }
    if (Build.VERSION.SDK_INT < 8) {
      return 0;
    }
    int i = ((WindowManager)paramContext.getSystemService("window")).getDefaultDisplay().getRotation();
    if ((i == 0) || (i == 1)) {
      return 0;
    }
    return 8;
  }
  
  /* Error */
  public static int getDisplayHeight(Display paramDisplay)
  {
    // Byte code:
    //   0: ldc 102
    //   2: ldc 110
    //   4: iconst_1
    //   5: anewarray 28	java/lang/Class
    //   8: dup
    //   9: iconst_0
    //   10: ldc 112
    //   12: aastore
    //   13: invokevirtual 40	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   16: astore_1
    //   17: iconst_1
    //   18: istore_3
    //   19: iload_3
    //   20: ifeq +63 -> 83
    //   23: new 112	android/graphics/Point
    //   26: dup
    //   27: invokespecial 113	android/graphics/Point:<init>	()V
    //   30: astore_2
    //   31: aload_1
    //   32: aload_0
    //   33: iconst_1
    //   34: anewarray 4	java/lang/Object
    //   37: dup
    //   38: iconst_0
    //   39: aload_2
    //   40: aastore
    //   41: invokevirtual 50	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   44: pop
    //   45: aload_2
    //   46: getfield 116	android/graphics/Point:y	I
    //   49: istore_3
    //   50: iload_3
    //   51: ireturn
    //   52: astore_1
    //   53: ldc 102
    //   55: ldc 118
    //   57: aconst_null
    //   58: invokevirtual 40	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   61: astore_1
    //   62: iconst_0
    //   63: istore_3
    //   64: goto -45 -> 19
    //   67: astore_1
    //   68: ldc 52
    //   70: ldc 120
    //   72: aload_1
    //   73: invokestatic 60	com/inmobi/commons/internal/Log:internal	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   76: aconst_null
    //   77: astore_1
    //   78: iconst_0
    //   79: istore_3
    //   80: goto -61 -> 19
    //   83: aload_1
    //   84: aload_0
    //   85: aconst_null
    //   86: invokevirtual 50	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   89: checkcast 30	java/lang/Integer
    //   92: invokevirtual 123	java/lang/Integer:intValue	()I
    //   95: istore_3
    //   96: iload_3
    //   97: ireturn
    //   98: astore_0
    //   99: ldc 52
    //   101: ldc 120
    //   103: aload_0
    //   104: invokestatic 60	com/inmobi/commons/internal/Log:internal	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   107: iconst_0
    //   108: ireturn
    //   109: astore_0
    //   110: ldc 52
    //   112: ldc 120
    //   114: aload_0
    //   115: invokestatic 60	com/inmobi/commons/internal/Log:internal	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   118: iconst_0
    //   119: ireturn
    //   120: astore_0
    //   121: ldc 52
    //   123: ldc 120
    //   125: aload_0
    //   126: invokestatic 60	com/inmobi/commons/internal/Log:internal	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   129: iconst_0
    //   130: ireturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	131	0	paramDisplay	Display
    //   16	16	1	localMethod1	Method
    //   52	1	1	localNoSuchMethodException1	NoSuchMethodException
    //   61	1	1	localMethod2	Method
    //   67	6	1	localNoSuchMethodException2	NoSuchMethodException
    //   77	7	1	localObject	Object
    //   30	16	2	localPoint	android.graphics.Point
    //   18	79	3	i	int
    // Exception table:
    //   from	to	target	type
    //   0	17	52	java/lang/NoSuchMethodException
    //   53	62	67	java/lang/NoSuchMethodException
    //   23	50	98	java/lang/IllegalArgumentException
    //   83	96	98	java/lang/IllegalArgumentException
    //   23	50	109	java/lang/IllegalAccessException
    //   83	96	109	java/lang/IllegalAccessException
    //   23	50	120	java/lang/reflect/InvocationTargetException
    //   83	96	120	java/lang/reflect/InvocationTargetException
  }
  
  /* Error */
  public static int getDisplayWidth(Display paramDisplay)
  {
    // Byte code:
    //   0: ldc 102
    //   2: ldc 110
    //   4: iconst_1
    //   5: anewarray 28	java/lang/Class
    //   8: dup
    //   9: iconst_0
    //   10: ldc 112
    //   12: aastore
    //   13: invokevirtual 40	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   16: astore_1
    //   17: iconst_1
    //   18: istore_3
    //   19: iload_3
    //   20: ifeq +63 -> 83
    //   23: new 112	android/graphics/Point
    //   26: dup
    //   27: invokespecial 113	android/graphics/Point:<init>	()V
    //   30: astore_2
    //   31: aload_1
    //   32: aload_0
    //   33: iconst_1
    //   34: anewarray 4	java/lang/Object
    //   37: dup
    //   38: iconst_0
    //   39: aload_2
    //   40: aastore
    //   41: invokevirtual 50	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   44: pop
    //   45: aload_2
    //   46: getfield 127	android/graphics/Point:x	I
    //   49: istore_3
    //   50: iload_3
    //   51: ireturn
    //   52: astore_1
    //   53: ldc 102
    //   55: ldc -127
    //   57: aconst_null
    //   58: invokevirtual 40	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   61: astore_1
    //   62: iconst_0
    //   63: istore_3
    //   64: goto -45 -> 19
    //   67: astore_1
    //   68: ldc 52
    //   70: ldc -125
    //   72: aload_1
    //   73: invokestatic 60	com/inmobi/commons/internal/Log:internal	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   76: aconst_null
    //   77: astore_1
    //   78: iconst_0
    //   79: istore_3
    //   80: goto -61 -> 19
    //   83: aload_1
    //   84: aload_0
    //   85: aconst_null
    //   86: invokevirtual 50	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   89: checkcast 30	java/lang/Integer
    //   92: invokevirtual 123	java/lang/Integer:intValue	()I
    //   95: istore_3
    //   96: iload_3
    //   97: ireturn
    //   98: astore_0
    //   99: ldc 52
    //   101: ldc -125
    //   103: aload_0
    //   104: invokestatic 60	com/inmobi/commons/internal/Log:internal	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   107: iconst_0
    //   108: ireturn
    //   109: astore_0
    //   110: ldc 52
    //   112: ldc -125
    //   114: aload_0
    //   115: invokestatic 60	com/inmobi/commons/internal/Log:internal	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   118: iconst_0
    //   119: ireturn
    //   120: astore_0
    //   121: ldc 52
    //   123: ldc -125
    //   125: aload_0
    //   126: invokestatic 60	com/inmobi/commons/internal/Log:internal	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   129: iconst_0
    //   130: ireturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	131	0	paramDisplay	Display
    //   16	16	1	localMethod1	Method
    //   52	1	1	localNoSuchMethodException1	NoSuchMethodException
    //   61	1	1	localMethod2	Method
    //   67	6	1	localNoSuchMethodException2	NoSuchMethodException
    //   77	7	1	localObject	Object
    //   30	16	2	localPoint	android.graphics.Point
    //   18	79	3	i	int
    // Exception table:
    //   from	to	target	type
    //   0	17	52	java/lang/NoSuchMethodException
    //   53	62	67	java/lang/NoSuchMethodException
    //   23	50	98	java/lang/IllegalArgumentException
    //   83	96	98	java/lang/IllegalArgumentException
    //   23	50	109	java/lang/IllegalAccessException
    //   83	96	109	java/lang/IllegalAccessException
    //   23	50	120	java/lang/reflect/InvocationTargetException
    //   83	96	120	java/lang/reflect/InvocationTargetException
  }
  
  public static int getParamConfigScreenSize()
  {
    int i = 0;
    ActivityInfo localActivityInfo = new ActivityInfo();
    try
    {
      Field localField = ActivityInfo.class.getField("CONFIG_SCREEN_SIZE");
      if (localField != null) {
        i = localField.getInt(localActivityInfo);
      }
      return i;
    }
    catch (NoSuchFieldException localNoSuchFieldException)
    {
      Log.internal("[InMobi]-4.4.1", "Cannot get screen size", localNoSuchFieldException);
      return 0;
    }
    catch (Exception localException)
    {
      Log.internal("[InMobi]-4.4.1", "Cannot get screen size", localException);
    }
    return 0;
  }
  
  public static int getParamConfigSmallestScreenSize()
  {
    int i = 0;
    ActivityInfo localActivityInfo = new ActivityInfo();
    try
    {
      Field localField = ActivityInfo.class.getField("CONFIG_SMALLEST_SCREEN_SIZE");
      if (localField != null) {
        i = localField.getInt(localActivityInfo);
      }
      return i;
    }
    catch (NoSuchFieldException localNoSuchFieldException)
    {
      Log.internal("[InMobi]-4.4.1", "Cannot get smallest screen size", localNoSuchFieldException);
      return 0;
    }
    catch (Exception localException)
    {
      Log.internal("[InMobi]-4.4.1", "Cannot get smallest screen size", localException);
    }
    return 0;
  }
  
  /* Error */
  public static int getParamFillParent()
  {
    // Byte code:
    //   0: getstatic 161	com/inmobi/commons/internal/WrapperFunctions:a	I
    //   3: ifne +45 -> 48
    //   6: ldc 2
    //   8: monitorenter
    //   9: getstatic 161	com/inmobi/commons/internal/WrapperFunctions:a	I
    //   12: ifne +33 -> 45
    //   15: new 163	android/view/ViewGroup$LayoutParams
    //   18: dup
    //   19: iconst_1
    //   20: iconst_1
    //   21: invokespecial 166	android/view/ViewGroup$LayoutParams:<init>	(II)V
    //   24: astore_1
    //   25: ldc -93
    //   27: ldc -88
    //   29: invokevirtual 145	java/lang/Class:getField	(Ljava/lang/String;)Ljava/lang/reflect/Field;
    //   32: astore_0
    //   33: aload_0
    //   34: ifnull +11 -> 45
    //   37: aload_0
    //   38: aload_1
    //   39: invokevirtual 151	java/lang/reflect/Field:getInt	(Ljava/lang/Object;)I
    //   42: putstatic 161	com/inmobi/commons/internal/WrapperFunctions:a	I
    //   45: ldc 2
    //   47: monitorexit
    //   48: getstatic 161	com/inmobi/commons/internal/WrapperFunctions:a	I
    //   51: ireturn
    //   52: astore_0
    //   53: ldc -93
    //   55: ldc -86
    //   57: invokevirtual 145	java/lang/Class:getField	(Ljava/lang/String;)Ljava/lang/reflect/Field;
    //   60: astore_0
    //   61: goto -28 -> 33
    //   64: astore_0
    //   65: ldc 52
    //   67: ldc -84
    //   69: aload_0
    //   70: invokestatic 60	com/inmobi/commons/internal/Log:internal	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   73: aconst_null
    //   74: astore_0
    //   75: goto -42 -> 33
    //   78: astore_0
    //   79: ldc 52
    //   81: ldc -84
    //   83: aload_0
    //   84: invokestatic 60	com/inmobi/commons/internal/Log:internal	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   87: goto -42 -> 45
    //   90: astore_0
    //   91: ldc 2
    //   93: monitorexit
    //   94: aload_0
    //   95: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   32	6	0	localField1	Field
    //   52	1	0	localNoSuchFieldException1	NoSuchFieldException
    //   60	1	0	localField2	Field
    //   64	6	0	localNoSuchFieldException2	NoSuchFieldException
    //   74	1	0	localObject1	Object
    //   78	6	0	localException	Exception
    //   90	5	0	localObject2	Object
    //   24	15	1	localLayoutParams	android.view.ViewGroup.LayoutParams
    // Exception table:
    //   from	to	target	type
    //   25	33	52	java/lang/NoSuchFieldException
    //   53	61	64	java/lang/NoSuchFieldException
    //   37	45	78	java/lang/Exception
    //   9	25	90	finally
    //   25	33	90	finally
    //   37	45	90	finally
    //   45	48	90	finally
    //   53	61	90	finally
    //   65	73	90	finally
    //   79	87	90	finally
  }
  
  public static int getParamLandscapeOrientation(int paramInt)
  {
    int j = 0;
    int i = j;
    ActivityInfo localActivityInfo;
    if (paramInt == 3) {
      localActivityInfo = new ActivityInfo();
    }
    try
    {
      Field localField = ActivityInfo.class.getField("SCREEN_ORIENTATION_REVERSE_LANDSCAPE");
      i = j;
      if (localField != null) {
        i = localField.getInt(localActivityInfo);
      }
      return i;
    }
    catch (NoSuchFieldException localNoSuchFieldException)
    {
      Log.internal("[InMobi]-4.4.1", "Cannot get landscape orientation", localNoSuchFieldException);
      return 0;
    }
    catch (Exception localException)
    {
      Log.internal("[InMobi]-4.4.1", "Cannot get landscape orientation", localException);
    }
    return 0;
  }
  
  public static int getParamPortraitOrientation(int paramInt)
  {
    int j = 1;
    int i = j;
    ActivityInfo localActivityInfo;
    if (paramInt == 2) {
      localActivityInfo = new ActivityInfo();
    }
    try
    {
      Field localField = ActivityInfo.class.getField("SCREEN_ORIENTATION_REVERSE_PORTRAIT");
      i = j;
      if (localField != null) {
        i = localField.getInt(localActivityInfo);
      }
      return i;
    }
    catch (NoSuchFieldException localNoSuchFieldException)
    {
      Log.internal("[InMobi]-4.4.1", "Cannot get portrait orientation", localNoSuchFieldException);
      return 1;
    }
    catch (Exception localException)
    {
      Log.internal("[InMobi]-4.4.1", "Cannot get portrait orientation", localException);
    }
    return 1;
  }
  
  public static String getSSLErrorUrl(SslError paramSslError)
  {
    try
    {
      paramSslError = Class.forName("android.net.http.SslError").getDeclaredMethod("getUrl", new Class[0]).invoke(paramSslError, new Object[0]).toString();
      return paramSslError;
    }
    catch (Exception paramSslError)
    {
      Log.internal("[InMobi]-4.4.1", "Cannot get SSL Url", paramSslError);
    }
    return null;
  }
  
  public static Bitmap getVideoBitmap(String paramString)
  {
    try
    {
      paramString = (Bitmap)Class.forName("android.media.ThumbnailUtils").getDeclaredMethod("createVideoThumbnail", new Class[] { String.class, Integer.TYPE }).invoke(null, new Object[] { paramString, Integer.valueOf(1) });
      return paramString;
    }
    catch (Exception paramString)
    {
      Log.internal("[InMobi]-4.4.1", "Cannot get video bitmap", paramString);
      throw paramString;
    }
  }
}

/* Location:
 * Qualified Name:     com.inmobi.commons.internal.WrapperFunctions
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */