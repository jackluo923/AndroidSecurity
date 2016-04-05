package com.adsdk.sdk.video;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Handler;
import android.util.TypedValue;
import android.view.View;
import android.view.View.OnClickListener;
import com.adsdk.sdk.Log;
import java.lang.reflect.Method;

@SuppressLint({"ViewConstructor"})
public class NavIcon
  extends AspectRatioImageViewWidth
  implements View.OnClickListener
{
  private Context mContext;
  private Handler mHandler;
  private NavIconData mIcon;
  
  public NavIcon(Context paramContext, NavIconData paramNavIconData)
  {
    super(paramContext);
    int i = (int)TypedValue.applyDimension(1, 4.0F, getResources().getDisplayMetrics());
    mContext = paramContext;
    mIcon = paramNavIconData;
    setPadding(i, 0, i, 0);
    mHandler = new Handler();
    setVisibility(8);
    setImageDrawable(iconUrl);
    setOnClickListener(this);
  }
  
  /* Error */
  private android.graphics.drawable.Drawable fetchImage(String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: new 83	java/net/URL
    //   5: dup
    //   6: aload_1
    //   7: invokespecial 85	java/net/URL:<init>	(Ljava/lang/String;)V
    //   10: invokevirtual 89	java/net/URL:getContent	()Ljava/lang/Object;
    //   13: checkcast 91	java/io/InputStream
    //   16: astore_3
    //   17: aload_3
    //   18: astore_2
    //   19: aload_3
    //   20: invokestatic 97	android/graphics/BitmapFactory:decodeStream	(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    //   23: astore 4
    //   25: aload 4
    //   27: ifnull +187 -> 214
    //   30: aload_3
    //   31: astore_2
    //   32: aload_0
    //   33: getfield 39	com/adsdk/sdk/video/NavIcon:mContext	Landroid/content/Context;
    //   36: invokevirtual 100	android/content/Context:getResources	()Landroid/content/res/Resources;
    //   39: invokevirtual 31	android/content/res/Resources:getDisplayMetrics	()Landroid/util/DisplayMetrics;
    //   42: astore 5
    //   44: aload_3
    //   45: astore_2
    //   46: aload 4
    //   48: invokevirtual 106	android/graphics/Bitmap:getWidth	()I
    //   51: istore 6
    //   53: aload_3
    //   54: astore_2
    //   55: aload 4
    //   57: invokevirtual 109	android/graphics/Bitmap:getHeight	()I
    //   60: istore 7
    //   62: aload_3
    //   63: astore_2
    //   64: iconst_1
    //   65: iload 6
    //   67: i2f
    //   68: aload 5
    //   70: invokestatic 37	android/util/TypedValue:applyDimension	(IFLandroid/util/DisplayMetrics;)F
    //   73: f2i
    //   74: istore 8
    //   76: aload_3
    //   77: astore_2
    //   78: iconst_1
    //   79: iload 7
    //   81: i2f
    //   82: aload 5
    //   84: invokestatic 37	android/util/TypedValue:applyDimension	(IFLandroid/util/DisplayMetrics;)F
    //   87: f2i
    //   88: istore 9
    //   90: iload 8
    //   92: iload 6
    //   94: if_icmpne +10 -> 104
    //   97: iload 9
    //   99: iload 7
    //   101: if_icmpeq +171 -> 272
    //   104: aload_3
    //   105: astore_2
    //   106: aload 4
    //   108: iload 8
    //   110: iload 9
    //   112: iconst_0
    //   113: invokestatic 113	android/graphics/Bitmap:createScaledBitmap	(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    //   116: astore 4
    //   118: aload_3
    //   119: astore_2
    //   120: new 115	android/graphics/drawable/BitmapDrawable
    //   123: dup
    //   124: aload_0
    //   125: getfield 39	com/adsdk/sdk/video/NavIcon:mContext	Landroid/content/Context;
    //   128: invokevirtual 100	android/content/Context:getResources	()Landroid/content/res/Resources;
    //   131: aload 4
    //   133: invokespecial 118	android/graphics/drawable/BitmapDrawable:<init>	(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    //   136: astore 4
    //   138: aload_3
    //   139: ifnull +7 -> 146
    //   142: aload_3
    //   143: invokevirtual 121	java/io/InputStream:close	()V
    //   146: aload 4
    //   148: areturn
    //   149: astore_2
    //   150: aconst_null
    //   151: astore_3
    //   152: aload_3
    //   153: astore_2
    //   154: new 123	java/lang/StringBuilder
    //   157: dup
    //   158: ldc 125
    //   160: invokespecial 126	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   163: aload_1
    //   164: invokevirtual 130	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   167: invokevirtual 134	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   170: invokestatic 139	com/adsdk/sdk/Log:d	(Ljava/lang/String;)V
    //   173: aload_3
    //   174: ifnull +7 -> 181
    //   177: aload_3
    //   178: invokevirtual 121	java/io/InputStream:close	()V
    //   181: new 83	java/net/URL
    //   184: dup
    //   185: aload_1
    //   186: invokespecial 85	java/net/URL:<init>	(Ljava/lang/String;)V
    //   189: invokevirtual 89	java/net/URL:getContent	()Ljava/lang/Object;
    //   192: checkcast 91	java/io/InputStream
    //   195: ldc -115
    //   197: invokestatic 147	android/graphics/drawable/Drawable:createFromStream	(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    //   200: astore_2
    //   201: aload_2
    //   202: areturn
    //   203: astore_1
    //   204: aload_2
    //   205: ifnull +7 -> 212
    //   208: aload_2
    //   209: invokevirtual 121	java/io/InputStream:close	()V
    //   212: aload_1
    //   213: athrow
    //   214: aload_3
    //   215: ifnull -34 -> 181
    //   218: aload_3
    //   219: invokevirtual 121	java/io/InputStream:close	()V
    //   222: goto -41 -> 181
    //   225: astore_2
    //   226: goto -45 -> 181
    //   229: astore_2
    //   230: new 123	java/lang/StringBuilder
    //   233: dup
    //   234: ldc -107
    //   236: invokespecial 126	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   239: aload_1
    //   240: invokevirtual 130	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   243: invokevirtual 134	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   246: aload_2
    //   247: invokestatic 153	com/adsdk/sdk/Log:e	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   250: aconst_null
    //   251: areturn
    //   252: astore_1
    //   253: goto -107 -> 146
    //   256: astore_2
    //   257: goto -76 -> 181
    //   260: astore_2
    //   261: goto -49 -> 212
    //   264: astore_1
    //   265: goto -61 -> 204
    //   268: astore_2
    //   269: goto -117 -> 152
    //   272: goto -154 -> 118
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	275	0	this	NavIcon
    //   0	275	1	paramString	String
    //   1	119	2	localObject1	Object
    //   149	1	2	localException1	Exception
    //   153	56	2	localObject2	Object
    //   225	1	2	localException2	Exception
    //   229	18	2	localException3	Exception
    //   256	1	2	localException4	Exception
    //   260	1	2	localException5	Exception
    //   268	1	2	localException6	Exception
    //   16	203	3	localInputStream	java.io.InputStream
    //   23	124	4	localObject3	Object
    //   42	41	5	localDisplayMetrics	android.util.DisplayMetrics
    //   51	44	6	i	int
    //   60	42	7	j	int
    //   74	35	8	k	int
    //   88	23	9	m	int
    // Exception table:
    //   from	to	target	type
    //   2	17	149	java/lang/Exception
    //   2	17	203	finally
    //   218	222	225	java/lang/Exception
    //   181	201	229	java/lang/Exception
    //   142	146	252	java/lang/Exception
    //   177	181	256	java/lang/Exception
    //   208	212	260	java/lang/Exception
    //   19	25	264	finally
    //   32	44	264	finally
    //   46	53	264	finally
    //   55	62	264	finally
    //   64	76	264	finally
    //   78	90	264	finally
    //   106	118	264	finally
    //   120	138	264	finally
    //   154	173	264	finally
    //   19	25	268	java/lang/Exception
    //   32	44	268	java/lang/Exception
    //   46	53	268	java/lang/Exception
    //   55	62	268	java/lang/Exception
    //   64	76	268	java/lang/Exception
    //   78	90	268	java/lang/Exception
    //   106	118	268	java/lang/Exception
    //   120	138	268	java/lang/Exception
  }
  
  private void setImageDrawable(String paramString)
  {
    new Thread(new NavIcon.1(this, paramString)).start();
  }
  
  public void onClick(View paramView)
  {
    String str;
    try
    {
      if (!(mContext instanceof RichMediaActivity)) {
        return;
      }
      paramView = (RichMediaActivity)mContext;
      if (mIcon.openType == 1)
      {
        paramView.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(mIcon.clickUrl)));
        return;
      }
      str = mIcon.clickUrl;
      if ((str.startsWith("market:")) || (str.startsWith("http://market.android.com")) || (str.startsWith("sms:")) || (str.startsWith("tel:")) || (str.startsWith("mailto:")) || (str.startsWith("voicemail:")) || (str.startsWith("geo:")) || (str.startsWith("google.streetview:")))
      {
        paramView.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
        return;
      }
    }
    catch (Exception paramView)
    {
      Log.w("Couldn't open URL: " + mIcon.clickUrl);
      return;
    }
    if (str.startsWith("mfox:external:"))
    {
      paramView.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str.substring(16))));
      return;
    }
    boolean bool = str.startsWith("mfox:replayvideo");
    if (bool) {
      try
      {
        paramView.getClass().getMethod("replayVideo", new Class[0]).invoke(paramView, new Object[0]);
        return;
      }
      catch (NoSuchMethodException paramView)
      {
        Log.d("Your activity class has no replayVideo method");
        return;
      }
      catch (Exception paramView)
      {
        Log.d("Couldn't run replayVideo method in your Activity");
        return;
      }
    }
    bool = str.startsWith("mfox:playvideo");
    if (bool) {
      try
      {
        paramView.getClass().getMethod("playVideo", new Class[0]).invoke(paramView, new Object[0]);
        return;
      }
      catch (NoSuchMethodException paramView)
      {
        Log.d("Your activity class has no playVideo method");
        return;
      }
      catch (Exception paramView)
      {
        Log.d("Couldn't run replayVideo method in your Activity");
        return;
      }
    }
    if (str.startsWith("mfox:skip"))
    {
      paramView.finish();
      return;
    }
    paramView.navigate(mIcon.clickUrl);
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.video.NavIcon
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */