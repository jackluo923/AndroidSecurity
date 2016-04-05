package com.admob.android.ads;

import android.content.Context;
import android.graphics.Bitmap;
import android.text.Html;
import android.util.Log;

class Ad
{
  private static int CLICK_REQUEST_TIMEOUT = 0;
  private String clickURL;
  private Context context;
  private String html;
  private Bitmap icon;
  private String iconURL;
  private Bitmap image;
  private int imageHeight;
  private String imageURL;
  private int imageWidth;
  private Ad.NetworkListener networkListener;
  private String text;
  
  static
  {
    int i = 5000;
    CLICK_REQUEST_TIMEOUT = i;
  }
  
  public void clicked()
  {
    Object localObject = "AdMob SDK";
    String str = "Ad clicked.";
    Log.i((String)localObject, str);
    localObject = clickURL;
    if (localObject != null)
    {
      localObject = new com/admob/android/ads/Ad$1;
      ((Ad.1)localObject).<init>(this);
      ((Ad.1)localObject).start();
    }
  }
  
  public static Ad createAd(Context paramContext, String paramString1, String paramString2)
  {
    if (paramString1 != null)
    {
      String str1 = "";
      boolean bool = paramString1.equals(str1);
      if (!bool) {}
    }
    else
    {
      paramContext = null;
      return paramContext;
    }
    Object localObject = new com/admob/android/ads/Ad;
    ((Ad)localObject).<init>();
    context = paramContext;
    html = paramString1;
    iconURL = paramString2;
    for (;;)
    {
      try
      {
        paramContext = "<a ";
        paramContext = paramString1.indexOf(paramContext);
        if (paramContext >= 0)
        {
          paramString2 = " href=\"";
          paramContext = paramString1.indexOf(paramString2, paramContext);
          paramString2 = paramContext + 7;
          paramContext = "\"";
          paramContext = paramString1.indexOf(paramContext, paramString2);
          paramString2 = paramString1.substring(paramString2, paramContext);
          clickURL = paramString2;
          paramContext += 1;
          paramContext = skipToNext(paramString1, paramContext);
          if (paramContext < 0)
          {
            paramContext = null;
            break;
          }
        }
        paramString2 = paramContext;
        if (paramString2 >= 0)
        {
          paramContext = "<img";
          paramContext = paramString1.indexOf(paramContext, paramString2);
          if (paramContext == paramString2)
          {
            paramContext = " src=\"";
            paramContext = paramString1.indexOf(paramContext, paramString2);
            int i = paramContext + 6;
            paramContext = "\"";
            paramContext = paramString1.indexOf(paramContext, i);
            paramContext = paramString1.substring(i, paramContext);
            imageURL = paramContext;
            paramContext = " height=\"";
            paramContext = paramString1.indexOf(paramContext, paramString2);
            i = paramContext + 9;
            paramContext = "\"";
            paramContext = paramString1.indexOf(paramContext, i);
            paramContext = paramString1.substring(i, paramContext);
            paramContext = Integer.valueOf(paramContext);
            paramContext = paramContext.intValue();
            imageHeight = paramContext;
            paramContext = " width=\"";
            paramContext = paramString1.indexOf(paramContext, paramString2);
            paramString2 = paramContext + 8;
            paramContext = "\"";
            paramContext = paramString1.indexOf(paramContext, paramString2);
            paramString2 = paramString1.substring(paramString2, paramContext);
            paramString2 = Integer.valueOf(paramString2);
            paramString2 = paramString2.intValue();
            imageWidth = paramString2;
            paramString2 = "<a";
            paramContext += 1;
            paramContext = paramString1.indexOf(paramString2, paramContext);
            if (paramContext < 0) {
              break label442;
            }
            paramContext += 2;
            paramContext = skipToNext(paramString1, paramContext);
            paramString2 = paramContext;
          }
        }
        if (paramString2 >= 0)
        {
          paramContext = "<";
          paramContext = paramString1.indexOf(paramContext, paramString2);
          paramContext = paramString1.substring(paramString2, paramContext);
          paramContext = paramContext.trim();
          text = paramContext;
          paramContext = text;
          paramContext = Html.fromHtml(paramContext);
          paramContext = paramContext.toString();
          text = paramContext;
        }
        paramContext = ((Ad)localObject).hasImage();
        if (paramContext == 0) {
          break label423;
        }
        paramContext = ((Ad)localObject).getImage();
        if (paramContext != null) {
          break label423;
        }
        paramContext = null;
      }
      catch (Exception paramContext)
      {
        paramString2 = "AdMob SDK";
        localObject = new java/lang/StringBuilder;
        ((StringBuilder)localObject).<init>();
        String str2 = "Failed to parse ad response:  ";
        localObject = ((StringBuilder)localObject).append(str2);
        paramString1 = ((StringBuilder)localObject).append(paramString1);
        paramString1 = paramString1.toString();
        Log.e(paramString2, paramString1, paramContext);
        paramContext = null;
      }
      break;
      label423:
      paramContext = iconURL;
      if (paramContext != null) {
        ((Ad)localObject).getIcon();
      }
      paramContext = (Context)localObject;
      break;
      label442:
      paramString2 = paramContext;
    }
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool1 = paramObject instanceof Ad;
    String str1;
    String str2;
    if (bool1)
    {
      Object localObject1 = paramObject;
      localObject1 = (Ad)localObject1;
      Object localObject2 = localObject1;
      str1 = toString();
      str2 = ((Ad)localObject2).toString();
    }
    for (boolean bool2 = str1.equals(str2);; bool2 = false) {
      return bool2;
    }
  }
  
  /* Error */
  private static Bitmap fetchImage(String paramString, boolean paramBoolean)
  {
    // Byte code:
    //   0: nop
    //   1: aconst_null
    //   2: astore 4
    //   4: aload_0
    //   5: ifnull +73 -> 78
    //   8: aconst_null
    //   9: astore 5
    //   11: new 115	java/net/URL
    //   14: astore 6
    //   16: aload 6
    //   18: aload_0
    //   19: invokespecial 154	java/net/URL:<init>	(Ljava/lang/String;)V
    //   22: aload 6
    //   24: invokevirtual 2	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   27: astore_2
    //   28: iconst_0
    //   29: istore 7
    //   31: aload_2
    //   32: iload 7
    //   34: invokevirtual 214	java/net/URLConnection:setConnectTimeout	(I)V
    //   37: iconst_0
    //   38: istore 7
    //   40: aload_2
    //   41: iload 7
    //   43: invokevirtual 44	java/net/URLConnection:setReadTimeout	(I)V
    //   46: aload_2
    //   47: iload_1
    //   48: invokevirtual 6	java/net/URLConnection:setUseCaches	(Z)V
    //   51: aload_2
    //   52: invokevirtual 248	java/net/URLConnection:connect	()V
    //   55: aload_2
    //   56: invokevirtual 39	java/net/URLConnection:getInputStream	()Ljava/io/InputStream;
    //   59: astore 5
    //   61: aload 5
    //   63: invokestatic 110	android/graphics/BitmapFactory:decodeStream	(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    //   66: astore 4
    //   68: aload 5
    //   70: ifnull +8 -> 78
    //   73: aload 5
    //   75: invokevirtual 223	java/io/InputStream:close	()V
    //   78: aload 4
    //   80: areturn
    //   81: astore 7
    //   83: aload 7
    //   85: astore_3
    //   86: ldc -40
    //   88: astore 7
    //   90: new 158	java/lang/StringBuilder
    //   93: astore 8
    //   95: aload 8
    //   97: invokespecial 160	java/lang/StringBuilder:<init>	()V
    //   100: ldc -65
    //   102: astore 9
    //   104: aload 8
    //   106: aload 9
    //   108: invokevirtual 194	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   111: astore 8
    //   113: aload 8
    //   115: aload_0
    //   116: invokevirtual 194	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   119: astore 8
    //   121: aload 8
    //   123: invokevirtual 10	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   126: astore 8
    //   128: aload 7
    //   130: aload 8
    //   132: aload_3
    //   133: invokestatic 97	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   136: pop
    //   137: aload 5
    //   139: ifnull -61 -> 78
    //   142: aload 5
    //   144: invokevirtual 223	java/io/InputStream:close	()V
    //   147: goto -69 -> 78
    //   150: astore 7
    //   152: goto -74 -> 78
    //   155: astore 7
    //   157: aload 5
    //   159: ifnull +8 -> 167
    //   162: aload 5
    //   164: invokevirtual 223	java/io/InputStream:close	()V
    //   167: aload 7
    //   169: athrow
    //   170: astore 7
    //   172: goto -94 -> 78
    //   175: astore 8
    //   177: goto -10 -> 167
    //   180: nop
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	181	0	paramString	String
    //   0	181	1	paramBoolean	boolean
    //   27	29	2	localURLConnection	java.net.URLConnection
    //   85	48	3	localThrowable1	Throwable
    //   2	77	4	localBitmap	Bitmap
    //   9	154	5	localInputStream	java.io.InputStream
    //   14	9	6	localURL	java.net.URL
    //   29	13	7	i	int
    //   81	3	7	localThrowable2	Throwable
    //   88	41	7	str1	String
    //   150	1	7	localIOException1	java.io.IOException
    //   155	13	7	localObject1	Object
    //   170	1	7	localIOException2	java.io.IOException
    //   93	38	8	localObject2	Object
    //   175	1	8	localIOException3	java.io.IOException
    //   102	5	9	str2	String
    // Exception table:
    //   from	to	target	type
    //   11	16	81	java/lang/Throwable
    //   22	27	81	java/lang/Throwable
    //   31	37	81	java/lang/Throwable
    //   40	46	81	java/lang/Throwable
    //   51	55	81	java/lang/Throwable
    //   61	66	81	java/lang/Throwable
    //   142	147	150	java/io/IOException
    //   11	16	155	finally
    //   22	27	155	finally
    //   31	37	155	finally
    //   40	46	155	finally
    //   51	55	155	finally
    //   61	66	155	finally
    //   86	90	155	finally
    //   95	100	155	finally
    //   104	111	155	finally
    //   113	119	155	finally
    //   121	126	155	finally
    //   128	137	155	finally
    //   73	78	170	java/io/IOException
    //   162	167	175	java/io/IOException
  }
  
  public String getClickURL()
  {
    String str = clickURL;
    return str;
  }
  
  public String getHTML()
  {
    String str = html;
    return str;
  }
  
  public Bitmap getIcon()
  {
    Object localObject1 = icon;
    if (localObject1 == null)
    {
      localObject1 = iconURL;
      boolean bool = true;
      localObject1 = fetchImage((String)localObject1, bool);
      icon = ((Bitmap)localObject1);
      localObject1 = icon;
      if (localObject1 == null)
      {
        localObject1 = "AdMob SDK";
        Object localObject2 = new java/lang/StringBuilder;
        ((StringBuilder)localObject2).<init>();
        String str = "Could not get icon for ad from ";
        localObject2 = ((StringBuilder)localObject2).append(str);
        str = iconURL;
        localObject2 = ((StringBuilder)localObject2).append(str);
        localObject2 = ((StringBuilder)localObject2).toString();
        Log.w((String)localObject1, (String)localObject2);
      }
    }
    localObject1 = icon;
    return (Bitmap)localObject1;
  }
  
  public Bitmap getImage()
  {
    Object localObject = image;
    if (localObject == null)
    {
      localObject = imageURL;
      if (localObject != null)
      {
        localObject = imageURL;
        boolean bool = false;
        localObject = fetchImage((String)localObject, bool);
        image = ((Bitmap)localObject);
      }
    }
    localObject = image;
    return (Bitmap)localObject;
  }
  
  public int getImageHeight()
  {
    Bitmap localBitmap = image;
    if (localBitmap != null) {
      localBitmap = image;
    }
    for (int i = localBitmap.getHeight();; i = imageHeight) {
      return i;
    }
  }
  
  public String getImageURL()
  {
    String str = imageURL;
    return str;
  }
  
  public int getImageWidth()
  {
    Bitmap localBitmap = image;
    if (localBitmap != null) {
      localBitmap = image;
    }
    for (int i = localBitmap.getWidth();; i = imageWidth) {
      return i;
    }
  }
  
  public Ad.NetworkListener getNetworkListener()
  {
    Ad.NetworkListener localNetworkListener = networkListener;
    return localNetworkListener;
  }
  
  public String getText()
  {
    String str = text;
    return str;
  }
  
  public boolean hasImage()
  {
    String str = imageURL;
    if (str != null) {}
    for (boolean bool = true;; bool = false) {
      return bool;
    }
  }
  
  public int hashCode()
  {
    String str = toString();
    int i = str.hashCode();
    return i;
  }
  
  public void setNetworkListener(Ad.NetworkListener paramNetworkListener)
  {
    networkListener = paramNetworkListener;
  }
  
  private static int skipToNext(String paramString, int paramInt)
  {
    int i2 = 62;
    int i1 = -1;
    int k = paramString.length();
    int m;
    if ((paramInt < 0) || (paramInt >= k)) {
      m = i1;
    }
    for (;;)
    {
      return m;
      for (int i = paramString.charAt(paramInt);; i = paramString.charAt(paramInt))
      {
        if (i == i2) {
          break label76;
        }
        m = 60;
        if (i == m) {
          break label76;
        }
        paramInt += 1;
        if (paramInt >= k)
        {
          m = i1;
          break;
        }
      }
      label76:
      if (i == i2)
      {
        paramInt += 1;
        int j;
        for (i = paramString.charAt(paramInt);; j = paramString.charAt(i))
        {
          boolean bool = Character.isWhitespace(i);
          if (!bool) {
            break label128;
          }
          paramInt += 1;
          if (paramInt >= k)
          {
            bool = i1;
            break;
          }
        }
      }
      label128:
      int n = paramInt;
    }
  }
  
  public String toString()
  {
    String str = getText();
    if (str == null) {
      str = "";
    }
    return str;
  }
}

/* Location:
 * Qualified Name:     com.admob.android.ads.Ad
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */