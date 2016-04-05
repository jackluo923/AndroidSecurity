package com.adsdk.sdk.video;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import com.adsdk.sdk.Log;
import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Set;
import org.apache.http.client.methods.HttpGet;

public class ResourceManager
{
  public static final String BACK_ICON = "browser_back.png";
  public static final String BOTTOMBAR_BG = "bar.png";
  public static final String CLOSE_BUTTON_NORMAL = "close_button_normal.png";
  public static final String CLOSE_BUTTON_PRESSED = "close_button_pressed.png";
  public static final int DEFAULT_BACK_IMAGE_RESOURCE_ID = -14;
  public static final int DEFAULT_BOTTOMBAR_BG_RESOURCE_ID = -2;
  public static final int DEFAULT_CLOSE_BUTTON_NORMAL_RESOURCE_ID = -29;
  public static final int DEFAULT_CLOSE_BUTTON_PRESSED_RESOURCE_ID = -30;
  public static final int DEFAULT_EXTERNAL_IMAGE_RESOURCE_ID = -17;
  public static final int DEFAULT_FORWARD_IMAGE_RESOURCE_ID = -15;
  public static final int DEFAULT_PAUSE_IMAGE_RESOURCE_ID = -12;
  public static final int DEFAULT_PLAY_IMAGE_RESOURCE_ID = -11;
  public static final int DEFAULT_RELOAD_IMAGE_RESOURCE_ID = -16;
  public static final int DEFAULT_REPLAY_IMAGE_RESOURCE_ID = -13;
  public static final int DEFAULT_SKIP_IMAGE_RESOURCE_ID = -18;
  public static final int DEFAULT_TOPBAR_BG_RESOURCE_ID = -1;
  public static final String EXTERNAL_ICON = "browser_external.png";
  public static final String FORWARD_ICON = "browser_forward.png";
  public static final String PAUSE_ICON = "video_pause.png";
  public static final String PLAY_ICON = "video_play.png";
  public static final String RELOAD_ICON = "video_replay.png";
  public static final String REPLAY_ICON = "video_replay.png";
  public static final int RESOURCE_LOADED_MSG = 100;
  public static final String SKIP_ICON = "skip.png";
  public static final String TOPBAR_BG = "bar.png";
  public static final int TYPE_FILE = 0;
  public static final int TYPE_UNKNOWN = -1;
  public static final int TYPE_ZIP = 1;
  public static final String VERSION = "version.txt";
  public static boolean sCancel;
  public static HttpGet sDownloadGet;
  public static boolean sDownloading;
  private static HashMap<Integer, Drawable> sResources;
  private Handler mHandler;
  private HashMap<Integer, Drawable> mResources = new HashMap();
  
  static
  {
    if (!ResourceManager.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      $assertionsDisabled = bool;
      sDownloading = false;
      sCancel = false;
      sResources = new HashMap();
      return;
    }
  }
  
  public ResourceManager(Context paramContext, Handler paramHandler)
  {
    mHandler = paramHandler;
  }
  
  /* Error */
  private static Drawable buildDrawable(Context paramContext, String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 124	java/lang/Object:getClass	()Ljava/lang/Class;
    //   4: invokevirtual 128	java/lang/Class:getClassLoader	()Ljava/lang/ClassLoader;
    //   7: aload_1
    //   8: invokevirtual 134	java/lang/ClassLoader:getResourceAsStream	(Ljava/lang/String;)Ljava/io/InputStream;
    //   11: astore_2
    //   12: aload_2
    //   13: invokestatic 140	android/graphics/BitmapFactory:decodeStream	(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    //   16: astore_3
    //   17: aload_3
    //   18: ifnull +140 -> 158
    //   21: aload_0
    //   22: invokevirtual 146	android/content/Context:getResources	()Landroid/content/res/Resources;
    //   25: invokevirtual 152	android/content/res/Resources:getDisplayMetrics	()Landroid/util/DisplayMetrics;
    //   28: astore 4
    //   30: aload_3
    //   31: invokevirtual 158	android/graphics/Bitmap:getWidth	()I
    //   34: istore 5
    //   36: aload_3
    //   37: invokevirtual 161	android/graphics/Bitmap:getHeight	()I
    //   40: istore 6
    //   42: iconst_1
    //   43: iload 5
    //   45: i2f
    //   46: aload 4
    //   48: invokestatic 167	android/util/TypedValue:applyDimension	(IFLandroid/util/DisplayMetrics;)F
    //   51: f2i
    //   52: istore 7
    //   54: iconst_1
    //   55: iload 6
    //   57: i2f
    //   58: aload 4
    //   60: invokestatic 167	android/util/TypedValue:applyDimension	(IFLandroid/util/DisplayMetrics;)F
    //   63: f2i
    //   64: istore 8
    //   66: iload 7
    //   68: iload 5
    //   70: if_icmpne +10 -> 80
    //   73: iload 8
    //   75: iload 6
    //   77: if_icmpeq +125 -> 202
    //   80: aload_3
    //   81: iload 7
    //   83: iload 8
    //   85: iconst_0
    //   86: invokestatic 171	android/graphics/Bitmap:createScaledBitmap	(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    //   89: astore_3
    //   90: new 173	android/graphics/drawable/BitmapDrawable
    //   93: dup
    //   94: aload_0
    //   95: invokevirtual 146	android/content/Context:getResources	()Landroid/content/res/Resources;
    //   98: aload_3
    //   99: invokespecial 176	android/graphics/drawable/BitmapDrawable:<init>	(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    //   102: astore_0
    //   103: aload_2
    //   104: ifnull +7 -> 111
    //   107: aload_2
    //   108: invokevirtual 181	java/io/InputStream:close	()V
    //   111: aload_0
    //   112: areturn
    //   113: astore_0
    //   114: aconst_null
    //   115: astore_0
    //   116: new 183	java/lang/StringBuilder
    //   119: dup
    //   120: ldc -71
    //   122: invokespecial 188	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   125: aload_1
    //   126: invokevirtual 192	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   129: invokevirtual 196	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   132: invokestatic 201	com/adsdk/sdk/Log:i	(Ljava/lang/String;)V
    //   135: aload_0
    //   136: ifnull +7 -> 143
    //   139: aload_0
    //   140: invokevirtual 181	java/io/InputStream:close	()V
    //   143: aconst_null
    //   144: areturn
    //   145: astore_0
    //   146: aconst_null
    //   147: astore_2
    //   148: aload_2
    //   149: ifnull +7 -> 156
    //   152: aload_2
    //   153: invokevirtual 181	java/io/InputStream:close	()V
    //   156: aload_0
    //   157: athrow
    //   158: aload_2
    //   159: ifnull -16 -> 143
    //   162: aload_2
    //   163: invokevirtual 181	java/io/InputStream:close	()V
    //   166: goto -23 -> 143
    //   169: astore_0
    //   170: goto -27 -> 143
    //   173: astore_1
    //   174: aload_0
    //   175: areturn
    //   176: astore_0
    //   177: goto -34 -> 143
    //   180: astore_1
    //   181: goto -25 -> 156
    //   184: astore_0
    //   185: goto -37 -> 148
    //   188: astore_1
    //   189: aload_0
    //   190: astore_2
    //   191: aload_1
    //   192: astore_0
    //   193: goto -45 -> 148
    //   196: astore_0
    //   197: aload_2
    //   198: astore_0
    //   199: goto -83 -> 116
    //   202: goto -112 -> 90
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	205	0	paramContext	Context
    //   0	205	1	paramString	String
    //   11	187	2	localObject	Object
    //   16	83	3	localBitmap	Bitmap
    //   28	31	4	localDisplayMetrics	android.util.DisplayMetrics
    //   34	37	5	i	int
    //   40	38	6	j	int
    //   52	30	7	k	int
    //   64	20	8	m	int
    // Exception table:
    //   from	to	target	type
    //   0	12	113	java/lang/Exception
    //   0	12	145	finally
    //   162	166	169	java/lang/Exception
    //   107	111	173	java/lang/Exception
    //   139	143	176	java/lang/Exception
    //   152	156	180	java/lang/Exception
    //   12	17	184	finally
    //   21	66	184	finally
    //   80	90	184	finally
    //   90	103	184	finally
    //   116	135	188	finally
    //   12	17	196	java/lang/Exception
    //   21	66	196	java/lang/Exception
    //   80	90	196	java/lang/Exception
    //   90	103	196	java/lang/Exception
  }
  
  public static void cancel()
  {
    sCancel = true;
    if (sDownloadGet != null)
    {
      sDownloadGet.abort();
      sDownloadGet = null;
    }
    sResources.clear();
  }
  
  public static Drawable getDefaultResource(int paramInt)
  {
    return (Drawable)sResources.get(Integer.valueOf(paramInt));
  }
  
  public static Drawable getDefaultSkipButton(Context paramContext)
  {
    return buildDrawable(paramContext, "skip.png");
  }
  
  public static long getInstalledVersion(Context paramContext)
  {
    l2 = -1L;
    localContext2 = null;
    localContext1 = null;
    try
    {
      paramContext = paramContext.openFileInput("version.txt");
      localContext1 = paramContext;
      localContext2 = paramContext;
      l1 = Long.valueOf(new BufferedReader(new InputStreamReader(paramContext, "UTF-8")).readLine()).longValue();
      l2 = l1;
      l1 = l2;
      if (paramContext == null) {}
    }
    catch (Exception paramContext)
    {
      for (;;)
      {
        label64:
        l1 = l2;
        if (localContext1 != null) {
          try
          {
            localContext1.close();
            l1 = l2;
          }
          catch (Exception paramContext)
          {
            l1 = l2;
          }
        }
      }
    }
    finally
    {
      if (localContext2 != null) {}
      try
      {
        localContext2.close();
        throw paramContext;
      }
      catch (Exception localException)
      {
        for (;;) {}
      }
    }
    try
    {
      paramContext.close();
      l1 = l2;
    }
    catch (Exception paramContext)
    {
      l1 = l2;
      break label64;
    }
    Log.d("Resources installed version:" + l1);
    return l1;
  }
  
  public static Drawable getStaticResource(Context paramContext, int paramInt)
  {
    BitmapDrawable localBitmapDrawable2 = (BitmapDrawable)sResources.get(Integer.valueOf(paramInt));
    BitmapDrawable localBitmapDrawable1;
    if (localBitmapDrawable2 != null)
    {
      localBitmapDrawable1 = localBitmapDrawable2;
      if (!localBitmapDrawable2.getBitmap().isRecycled()) {}
    }
    else
    {
      initDefaultResource(paramContext, paramInt);
      localBitmapDrawable1 = (BitmapDrawable)sResources.get(Integer.valueOf(paramInt));
    }
    return localBitmapDrawable1;
  }
  
  private static void initDefaultResource(Context paramContext, int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return;
    case -11: 
      registerImageResource(paramContext, -11, "video_play.png");
      return;
    case -12: 
      registerImageResource(paramContext, -12, "video_pause.png");
      return;
    case -13: 
      registerImageResource(paramContext, -13, "video_replay.png");
      return;
    case -14: 
      registerImageResource(paramContext, -14, "browser_back.png");
      return;
    case -15: 
      registerImageResource(paramContext, -15, "browser_forward.png");
      return;
    case -16: 
      registerImageResource(paramContext, -16, "video_replay.png");
      return;
    case -17: 
      registerImageResource(paramContext, -17, "browser_external.png");
      return;
    case -18: 
      registerImageResource(paramContext, -18, "skip.png");
      return;
    case -1: 
      registerImageResource(paramContext, -1, "bar.png");
      return;
    case -2: 
      registerImageResource(paramContext, -2, "bar.png");
      return;
    case -29: 
      registerImageResource(paramContext, -29, "close_button_normal.png");
      return;
    }
    registerImageResource(paramContext, -30, "close_button_pressed.png");
  }
  
  public static boolean isDownloading()
  {
    return sDownloading;
  }
  
  private static void registerImageResource(Context paramContext, int paramInt, String paramString)
  {
    paramContext = buildDrawable(paramContext, paramString);
    if (paramContext != null)
    {
      sResources.put(Integer.valueOf(paramInt), paramContext);
      return;
    }
    Log.i("registerImageResource", "drawable was null " + paramString);
  }
  
  public static boolean resourcesInstalled(Context paramContext)
  {
    paramContext = paramContext.fileList();
    int i = 0;
    for (;;)
    {
      if (i >= paramContext.length) {
        return false;
      }
      if ("version.txt".equals(paramContext[i]))
      {
        Log.d("Resources already installed");
        return true;
      }
      i += 1;
    }
  }
  
  public static void saveInstalledVersion(Context paramContext, long paramLong)
  {
    Context localContext1 = null;
    try
    {
      paramContext = paramContext.openFileOutput("version.txt", 0);
      localContext1 = paramContext;
      OutputStreamWriter localOutputStreamWriter;
      if (localContext1 == null) {}
    }
    catch (Exception paramContext)
    {
      do
      {
        for (;;)
        {
          try
          {
            localOutputStreamWriter = new OutputStreamWriter(paramContext, "UTF-8");
            localContext1 = paramContext;
            localOutputStreamWriter.write(String.valueOf(paramLong));
            localContext1 = paramContext;
            localOutputStreamWriter.flush();
            if (paramContext == null) {}
          }
          finally
          {
            Context localContext2 = paramContext;
            paramContext = (Context)localObject;
            continue;
          }
          try
          {
            paramContext.close();
            return;
          }
          catch (Exception paramContext)
          {
            return;
          }
        }
        paramContext = paramContext;
      } while (localContext1 == null);
      try
      {
        localContext1.close();
        return;
      }
      catch (Exception paramContext)
      {
        return;
      }
    }
    finally
    {
      paramContext = finally;
      localContext1 = null;
    }
    try
    {
      localContext1.close();
      throw paramContext;
    }
    catch (Exception localException)
    {
      for (;;) {}
    }
  }
  
  public boolean containsResource(int paramInt)
  {
    return (mResources.get(Integer.valueOf(paramInt)) != null) || (mResources.get(Integer.valueOf(paramInt)) != null);
  }
  
  public void fetchResource(Context paramContext, String paramString, int paramInt)
  {
    if (sResources.get(Integer.valueOf(paramInt)) == null) {
      new ResourceManager.FetchImageTask(this, paramContext, paramString, paramInt).execute(new Void[0]);
    }
  }
  
  public Drawable getResource(Context paramContext, int paramInt)
  {
    BitmapDrawable localBitmapDrawable = (BitmapDrawable)mResources.get(Integer.valueOf(paramInt));
    if (localBitmapDrawable != null) {
      return localBitmapDrawable;
    }
    return getStaticResource(paramContext, paramInt);
  }
  
  public void releaseInstance()
  {
    Iterator localIterator = mResources.entrySet().iterator();
    for (;;)
    {
      if (!localIterator.hasNext())
      {
        if (($assertionsDisabled) || (mResources.size() == 0)) {
          break;
        }
        throw new AssertionError();
      }
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      localIterator.remove();
      localEntry.getValue();
    }
    System.gc();
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.video.ResourceManager
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */