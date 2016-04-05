package com.google.android.gms.tagmanager;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.google.android.gms.internal.c.j;

class cn
  implements Runnable
{
  private volatile String aeM;
  private final String aeq;
  private final bm agI;
  private final String agJ;
  private bg<c.j> agK;
  private volatile r agL;
  private volatile String agM;
  private final Context mContext;
  
  cn(Context paramContext, String paramString, bm parambm, r paramr)
  {
    mContext = paramContext;
    agI = parambm;
    aeq = paramString;
    agL = paramr;
    agJ = ("/r?id=" + paramString);
    aeM = agJ;
    agM = null;
  }
  
  public cn(Context paramContext, String paramString, r paramr)
  {
    this(paramContext, paramString, new bm(), paramr);
  }
  
  private boolean mb()
  {
    NetworkInfo localNetworkInfo = ((ConnectivityManager)mContext.getSystemService("connectivity")).getActiveNetworkInfo();
    if ((localNetworkInfo == null) || (!localNetworkInfo.isConnected()))
    {
      bh.C("...no network connectivity");
      return false;
    }
    return true;
  }
  
  /* Error */
  private void mc()
  {
    // Byte code:
    //   0: aload_0
    //   1: invokespecial 96	com/google/android/gms/tagmanager/cn:mb	()Z
    //   4: ifne +16 -> 20
    //   7: aload_0
    //   8: getfield 98	com/google/android/gms/tagmanager/cn:agK	Lcom/google/android/gms/tagmanager/bg;
    //   11: getstatic 104	com/google/android/gms/tagmanager/bg$a:agd	Lcom/google/android/gms/tagmanager/bg$a;
    //   14: invokeinterface 110 2 0
    //   19: return
    //   20: ldc 112
    //   22: invokestatic 89	com/google/android/gms/tagmanager/bh:C	(Ljava/lang/String;)V
    //   25: aload_0
    //   26: invokevirtual 115	com/google/android/gms/tagmanager/cn:md	()Ljava/lang/String;
    //   29: astore_2
    //   30: aload_0
    //   31: getfield 29	com/google/android/gms/tagmanager/cn:agI	Lcom/google/android/gms/tagmanager/bm;
    //   34: invokevirtual 119	com/google/android/gms/tagmanager/bm:lM	()Lcom/google/android/gms/tagmanager/bl;
    //   37: astore_1
    //   38: aload_1
    //   39: aload_2
    //   40: invokeinterface 125 2 0
    //   45: astore_3
    //   46: new 127	java/io/ByteArrayOutputStream
    //   49: dup
    //   50: invokespecial 128	java/io/ByteArrayOutputStream:<init>	()V
    //   53: astore 4
    //   55: aload_3
    //   56: aload 4
    //   58: invokestatic 134	com/google/android/gms/tagmanager/cq:b	(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    //   61: aload 4
    //   63: invokevirtual 138	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   66: invokestatic 143	com/google/android/gms/internal/c$j:b	([B)Lcom/google/android/gms/internal/c$j;
    //   69: astore_3
    //   70: new 35	java/lang/StringBuilder
    //   73: dup
    //   74: ldc -111
    //   76: invokespecial 40	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   79: aload_3
    //   80: invokevirtual 148	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   83: invokevirtual 48	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   86: invokestatic 89	com/google/android/gms/tagmanager/bh:C	(Ljava/lang/String;)V
    //   89: aload_3
    //   90: getfield 152	com/google/android/gms/internal/c$j:fK	Lcom/google/android/gms/internal/c$f;
    //   93: ifnonnull +33 -> 126
    //   96: aload_3
    //   97: getfield 156	com/google/android/gms/internal/c$j:fJ	[Lcom/google/android/gms/internal/c$i;
    //   100: arraylength
    //   101: ifne +25 -> 126
    //   104: new 35	java/lang/StringBuilder
    //   107: dup
    //   108: ldc -98
    //   110: invokespecial 40	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   113: aload_0
    //   114: getfield 31	com/google/android/gms/tagmanager/cn:aeq	Ljava/lang/String;
    //   117: invokevirtual 44	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   120: invokevirtual 48	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   123: invokestatic 89	com/google/android/gms/tagmanager/bh:C	(Ljava/lang/String;)V
    //   126: aload_0
    //   127: getfield 98	com/google/android/gms/tagmanager/cn:agK	Lcom/google/android/gms/tagmanager/bg;
    //   130: aload_3
    //   131: invokeinterface 162 2 0
    //   136: aload_1
    //   137: invokeinterface 165 1 0
    //   142: ldc -89
    //   144: invokestatic 89	com/google/android/gms/tagmanager/bh:C	(Ljava/lang/String;)V
    //   147: return
    //   148: astore_3
    //   149: new 35	java/lang/StringBuilder
    //   152: dup
    //   153: ldc -87
    //   155: invokespecial 40	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   158: aload_2
    //   159: invokevirtual 44	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   162: ldc -85
    //   164: invokevirtual 44	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   167: aload_0
    //   168: getfield 31	com/google/android/gms/tagmanager/cn:aeq	Ljava/lang/String;
    //   171: invokevirtual 44	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   174: ldc -83
    //   176: invokevirtual 44	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   179: invokevirtual 48	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   182: invokestatic 176	com/google/android/gms/tagmanager/bh:D	(Ljava/lang/String;)V
    //   185: aload_0
    //   186: getfield 98	com/google/android/gms/tagmanager/cn:agK	Lcom/google/android/gms/tagmanager/bg;
    //   189: getstatic 179	com/google/android/gms/tagmanager/bg$a:agf	Lcom/google/android/gms/tagmanager/bg$a;
    //   192: invokeinterface 110 2 0
    //   197: aload_1
    //   198: invokeinterface 165 1 0
    //   203: return
    //   204: astore_3
    //   205: new 35	java/lang/StringBuilder
    //   208: dup
    //   209: ldc -75
    //   211: invokespecial 40	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   214: aload_2
    //   215: invokevirtual 44	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   218: ldc -73
    //   220: invokevirtual 44	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   223: aload_3
    //   224: invokevirtual 186	java/io/IOException:getMessage	()Ljava/lang/String;
    //   227: invokevirtual 44	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   230: invokevirtual 48	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   233: aload_3
    //   234: invokestatic 190	com/google/android/gms/tagmanager/bh:c	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   237: aload_0
    //   238: getfield 98	com/google/android/gms/tagmanager/cn:agK	Lcom/google/android/gms/tagmanager/bg;
    //   241: getstatic 193	com/google/android/gms/tagmanager/bg$a:age	Lcom/google/android/gms/tagmanager/bg$a;
    //   244: invokeinterface 110 2 0
    //   249: aload_1
    //   250: invokeinterface 165 1 0
    //   255: return
    //   256: astore_3
    //   257: new 35	java/lang/StringBuilder
    //   260: dup
    //   261: ldc -61
    //   263: invokespecial 40	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   266: aload_2
    //   267: invokevirtual 44	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   270: ldc -73
    //   272: invokevirtual 44	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   275: aload_3
    //   276: invokevirtual 186	java/io/IOException:getMessage	()Ljava/lang/String;
    //   279: invokevirtual 44	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   282: invokevirtual 48	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   285: aload_3
    //   286: invokestatic 190	com/google/android/gms/tagmanager/bh:c	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   289: aload_0
    //   290: getfield 98	com/google/android/gms/tagmanager/cn:agK	Lcom/google/android/gms/tagmanager/bg;
    //   293: getstatic 179	com/google/android/gms/tagmanager/bg$a:agf	Lcom/google/android/gms/tagmanager/bg$a;
    //   296: invokeinterface 110 2 0
    //   301: aload_1
    //   302: invokeinterface 165 1 0
    //   307: return
    //   308: astore_2
    //   309: aload_1
    //   310: invokeinterface 165 1 0
    //   315: aload_2
    //   316: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	317	0	this	cn
    //   37	273	1	localbl	bl
    //   29	238	2	str	String
    //   308	8	2	localObject1	Object
    //   45	86	3	localObject2	Object
    //   148	1	3	localFileNotFoundException	java.io.FileNotFoundException
    //   204	30	3	localIOException1	java.io.IOException
    //   256	30	3	localIOException2	java.io.IOException
    //   53	9	4	localByteArrayOutputStream	java.io.ByteArrayOutputStream
    // Exception table:
    //   from	to	target	type
    //   38	46	148	java/io/FileNotFoundException
    //   38	46	204	java/io/IOException
    //   46	126	256	java/io/IOException
    //   126	136	256	java/io/IOException
    //   38	46	308	finally
    //   46	126	308	finally
    //   126	136	308	finally
    //   149	197	308	finally
    //   205	249	308	finally
    //   257	301	308	finally
  }
  
  void a(bg<c.j> parambg)
  {
    agK = parambg;
  }
  
  void bM(String paramString)
  {
    if (paramString == null)
    {
      aeM = agJ;
      return;
    }
    bh.z("Setting CTFE URL path: " + paramString);
    aeM = paramString;
  }
  
  void cb(String paramString)
  {
    bh.z("Setting previous container version: " + paramString);
    agM = paramString;
  }
  
  String md()
  {
    Object localObject2 = agL.ls() + aeM + "&v=a65833898";
    Object localObject1 = localObject2;
    if (agM != null)
    {
      localObject1 = localObject2;
      if (!agM.trim().equals("")) {
        localObject1 = (String)localObject2 + "&pv=" + agM;
      }
    }
    localObject2 = localObject1;
    if (cd.lY().lZ().equals(cd.a.agA)) {
      localObject2 = (String)localObject1 + "&gtm_debug=x";
    }
    return (String)localObject2;
  }
  
  public void run()
  {
    if (agK == null) {
      throw new IllegalStateException("callback must be set before execute");
    }
    agK.lq();
    mc();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.cn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */