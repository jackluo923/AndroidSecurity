import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.ads.Ad;
import com.google.ads.AdListener;
import com.google.ads.AdRequest;
import com.google.ads.AdSize;
import com.google.ads.AdView;
import java.util.Iterator;
import java.util.LinkedList;

public final class d
{
  private Activity a;
  private Ad b;
  private AdListener c;
  private c d;
  private AdRequest e;
  private AdSize f;
  private f g;
  private String h;
  private g i;
  private h j;
  private Handler k;
  private boolean l;
  private boolean m;
  private long n;
  private x o;
  private LinkedList p;
  private int q;
  
  public d(Activity paramActivity, Ad paramAd, AdSize paramAdSize, String paramString)
  {
    int i1 = 4;
    q = i1;
    a = paramActivity;
    b = paramAd;
    f = paramAdSize;
    h = paramString;
    Object localObject1 = new f;
    ((f)localObject1).<init>();
    g = ((f)localObject1);
    c = localContext;
    d = localContext;
    e = localContext;
    l = i3;
    localObject1 = new android/os/Handler;
    ((Handler)localObject1).<init>();
    k = ((Handler)localObject1);
    long l1 = 0L;
    n = l1;
    m = i3;
    Object localObject2 = new x;
    ((x)localObject2).<init>(this);
    o = ((x)localObject2);
    localObject2 = new java/util/LinkedList;
    ((LinkedList)localObject2).<init>();
    p = ((LinkedList)localObject2);
    localObject2 = new g;
    localContext = paramActivity.getApplicationContext();
    ((g)localObject2).<init>(localContext, paramAdSize);
    i = ((g)localObject2);
    localObject2 = i;
    u.b((WebView)localObject2);
    localObject2 = i;
    ((g)localObject2).setBackgroundColor(i3);
    localObject2 = i;
    int i2 = 8;
    ((g)localObject2).setVisibility(i2);
    localObject2 = new h;
    Object localObject3 = a.a.b;
    i3 = 1;
    ((h)localObject2).<init>(this, (a.a)localObject3, i3);
    j = ((h)localObject2);
    localObject2 = i;
    localObject3 = j;
    ((g)localObject2).setWebViewClient((WebViewClient)localObject3);
    localObject2 = paramActivity.getApplicationContext();
    u.g((Context)localObject2);
  }
  
  public final void a()
  {
    for (;;)
    {
      try
      {
        Ad localAd = b;
        boolean bool1 = localAd instanceof AdView;
        if (bool1)
        {
          bool1 = m;
          if (bool1)
          {
            localObject1 = "Refreshing is already enabled.";
            t.a((String)localObject1);
            return;
          }
          Object localObject1 = new java/lang/StringBuilder;
          ((StringBuilder)localObject1).<init>();
          String str2 = "Enabling refreshing every ";
          localObject1 = ((StringBuilder)localObject1).append(str2);
          long l1 = n;
          localObject1 = ((StringBuilder)localObject1).append(l1);
          Object localObject3 = " milliseconds.";
          localObject1 = ((StringBuilder)localObject1).append((String)localObject3);
          localObject1 = ((StringBuilder)localObject1).toString();
          t.a((String)localObject1);
          localObject1 = k;
          localObject3 = o;
          long l2 = n;
          ((Handler)localObject1).postDelayed((Runnable)localObject3, l2);
          boolean bool2 = true;
          m = bool2;
          continue;
        }
        str1 = "Tried to enable refreshing on something other than an AdView.";
      }
      finally {}
      String str1;
      t.a(str1);
    }
  }
  
  public final void a(float paramFloat)
  {
    float f1 = 1000.0F;
    f1 *= paramFloat;
    long l1 = f1;
    try
    {
      n = l1;
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public final void a(int paramInt)
  {
    q = paramInt;
  }
  
  public final void a(AdListener paramAdListener)
  {
    try
    {
      c = paramAdListener;
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  /* Error */
  public final void a(com.google.ads.AdRequest.ErrorCode paramErrorCode)
  {
    // Byte code:
    //   0: nop
    //   1: aload_0
    //   2: monitorenter
    //   3: aconst_null
    //   4: astore_2
    //   5: aload_0
    //   6: aload_2
    //   7: putfield 34	d:d	Lc;
    //   10: aload_0
    //   11: getfield 137	d:b	Lcom/google/ads/Ad;
    //   14: astore_2
    //   15: aload_2
    //   16: instanceof 197
    //   19: istore_2
    //   20: iload_2
    //   21: ifeq +21 -> 42
    //   24: getstatic 90	com/google/ads/AdRequest$ErrorCode:NO_FILL	Lcom/google/ads/AdRequest$ErrorCode;
    //   27: astore_2
    //   28: aload_1
    //   29: aload_2
    //   30: if_acmpne +83 -> 113
    //   33: aload_0
    //   34: getfield 161	d:g	Lf;
    //   37: astore_2
    //   38: aload_2
    //   39: invokevirtual 138	f:n	()V
    //   42: new 253	java/lang/StringBuilder
    //   45: astore_2
    //   46: aload_2
    //   47: invokespecial 134	java/lang/StringBuilder:<init>	()V
    //   50: ldc 12
    //   52: astore_3
    //   53: aload_2
    //   54: aload_3
    //   55: invokevirtual 141	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   58: astore_2
    //   59: aload_2
    //   60: aload_1
    //   61: invokevirtual 123	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   64: astore_2
    //   65: ldc 32
    //   67: astore_3
    //   68: aload_2
    //   69: aload_3
    //   70: invokevirtual 141	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   73: astore_2
    //   74: aload_2
    //   75: invokevirtual 158	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   78: astore_2
    //   79: aload_2
    //   80: invokestatic 222	t:c	(Ljava/lang/String;)V
    //   83: aload_0
    //   84: getfield 171	d:c	Lcom/google/ads/AdListener;
    //   87: astore_2
    //   88: aload_2
    //   89: ifnull +21 -> 110
    //   92: aload_0
    //   93: getfield 171	d:c	Lcom/google/ads/AdListener;
    //   96: astore_2
    //   97: aload_0
    //   98: getfield 137	d:b	Lcom/google/ads/Ad;
    //   101: astore_3
    //   102: aload_2
    //   103: aload_3
    //   104: aload_1
    //   105: invokeinterface 47 3 0
    //   110: aload_0
    //   111: monitorexit
    //   112: return
    //   113: getstatic 153	com/google/ads/AdRequest$ErrorCode:NETWORK_ERROR	Lcom/google/ads/AdRequest$ErrorCode;
    //   116: astore_2
    //   117: aload_1
    //   118: aload_2
    //   119: if_acmpne -77 -> 42
    //   122: aload_0
    //   123: getfield 161	d:g	Lf;
    //   126: astore_2
    //   127: aload_2
    //   128: invokevirtual 103	f:l	()V
    //   131: goto -89 -> 42
    //   134: astore_2
    //   135: aload_0
    //   136: monitorexit
    //   137: aload_2
    //   138: athrow
    //   139: nop
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	140	0	this	d
    //   0	140	1	paramErrorCode	com.google.ads.AdRequest.ErrorCode
    //   4	12	2	localAd	Ad
    //   19	2	2	bool	boolean
    //   27	101	2	localObject1	Object
    //   134	4	2	localObject2	Object
    //   52	52	3	localObject3	Object
    // Exception table:
    //   from	to	target	type
    //   5	10	134	finally
    //   15	20	134	finally
    //   24	28	134	finally
    //   33	38	134	finally
    //   42	46	134	finally
    //   50	53	134	finally
    //   59	64	134	finally
    //   65	68	134	finally
    //   74	78	134	finally
    //   79	83	134	finally
    //   92	97	134	finally
    //   102	110	134	finally
    //   113	117	134	finally
    //   122	127	134	finally
  }
  
  /* Error */
  public final void a(AdRequest paramAdRequest)
  {
    // Byte code:
    //   0: nop
    //   1: aload_0
    //   2: monitorenter
    //   3: aload_0
    //   4: invokespecial 36	d:t	()Z
    //   7: istore_2
    //   8: iload_2
    //   9: ifeq +13 -> 22
    //   12: ldc 2
    //   14: astore_2
    //   15: aload_2
    //   16: invokestatic 23	t:e	(Ljava/lang/String;)V
    //   19: aload_0
    //   20: monitorexit
    //   21: return
    //   22: aload_0
    //   23: getfield 284	d:a	Landroid/app/Activity;
    //   26: astore_2
    //   27: aload_2
    //   28: invokevirtual 98	android/app/Activity:getApplicationContext	()Landroid/content/Context;
    //   31: astore_2
    //   32: aload_2
    //   33: invokestatic 22	u:b	(Landroid/content/Context;)Z
    //   36: istore_2
    //   37: iload_2
    //   38: ifeq -19 -> 19
    //   41: iconst_0
    //   42: istore_2
    //   43: aload_0
    //   44: iload_2
    //   45: putfield 224	d:l	Z
    //   48: aload_0
    //   49: aload_1
    //   50: putfield 104	d:e	Lcom/google/ads/AdRequest;
    //   53: new 181	c
    //   56: astore_2
    //   57: aload_2
    //   58: aload_0
    //   59: invokespecial 296	c:<init>	(Ld;)V
    //   62: aload_0
    //   63: aload_2
    //   64: putfield 34	d:d	Lc;
    //   67: aload_0
    //   68: getfield 34	d:d	Lc;
    //   71: astore_2
    //   72: iconst_1
    //   73: istore_3
    //   74: iload_3
    //   75: anewarray 10	com/google/ads/AdRequest
    //   78: astore_3
    //   79: iconst_0
    //   80: istore 4
    //   82: aload_3
    //   83: iload 4
    //   85: aload_1
    //   86: aastore
    //   87: aload_2
    //   88: aload_3
    //   89: invokevirtual 260	c:execute	([Ljava/lang/Object;)Landroid/os/AsyncTask;
    //   92: pop
    //   93: goto -74 -> 19
    //   96: astore_2
    //   97: aload_0
    //   98: monitorexit
    //   99: aload_2
    //   100: athrow
    //   101: nop
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	102	0	this	d
    //   0	102	1	paramAdRequest	AdRequest
    //   7	2	2	bool1	boolean
    //   14	19	2	localObject1	Object
    //   36	9	2	bool2	boolean
    //   56	32	2	localc	c
    //   96	4	2	localObject2	Object
    //   73	2	3	i1	int
    //   78	11	3	arrayOfAdRequest	AdRequest[]
    //   80	4	4	i2	int
    // Exception table:
    //   from	to	target	type
    //   3	7	96	finally
    //   12	15	96	finally
    //   22	27	96	finally
    //   32	36	96	finally
    //   43	48	96	finally
    //   53	57	96	finally
    //   62	67	96	finally
    //   74	79	96	finally
    //   82	87	96	finally
  }
  
  final void a(String paramString)
  {
    try
    {
      LinkedList localLinkedList = p;
      localLinkedList.add(paramString);
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public final Activity b()
  {
    Activity localActivity = a;
    return localActivity;
  }
  
  final Ad c()
  {
    Ad localAd = b;
    return localAd;
  }
  
  public final c d()
  {
    try
    {
      c localc = d;
      return localc;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  final String e()
  {
    String str = h;
    return str;
  }
  
  public final g f()
  {
    g localg = i;
    return localg;
  }
  
  final h g()
  {
    h localh = j;
    return localh;
  }
  
  public final AdSize h()
  {
    AdSize localAdSize = f;
    return localAdSize;
  }
  
  public final f i()
  {
    f localf = g;
    return localf;
  }
  
  public final int j()
  {
    int i1 = q;
    return i1;
  }
  
  public final boolean k()
  {
    try
    {
      boolean bool = l;
      return bool;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public final boolean l()
  {
    try
    {
      boolean bool = m;
      return bool;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  final void m()
  {
    c localc = null;
    try
    {
      d = localc;
      boolean bool1 = true;
      l = bool1;
      Object localObject1 = i;
      int i1 = 0;
      ((g)localObject1).setVisibility(i1);
      localObject1 = g;
      ((f)localObject1).c();
      localObject1 = b;
      boolean bool2 = localObject1 instanceof AdView;
      if (bool2) {
        q();
      }
      Object localObject2 = "onReceiveAd()";
      t.c((String)localObject2);
      localObject2 = c;
      if (localObject2 != null)
      {
        localObject2 = c;
        Ad localAd = b;
        ((AdListener)localObject2).onReceiveAd(localAd);
      }
      return;
    }
    finally {}
  }
  
  public final void n()
  {
    try
    {
      Object localObject1 = g;
      ((f)localObject1).o();
      localObject1 = "onDismissScreen()";
      t.c((String)localObject1);
      localObject1 = c;
      if (localObject1 != null)
      {
        localObject1 = c;
        Ad localAd = b;
        ((AdListener)localObject1).onDismissScreen(localAd);
      }
      return;
    }
    finally {}
  }
  
  public final void o()
  {
    try
    {
      Object localObject1 = g;
      ((f)localObject1).b();
      localObject1 = "onPresentScreen()";
      t.c((String)localObject1);
      localObject1 = c;
      if (localObject1 != null)
      {
        localObject1 = c;
        Ad localAd = b;
        ((AdListener)localObject1).onPresentScreen(localAd);
      }
      return;
    }
    finally {}
  }
  
  public final void p()
  {
    try
    {
      Object localObject1 = "onLeaveApplication()";
      t.c((String)localObject1);
      localObject1 = c;
      if (localObject1 != null)
      {
        localObject1 = c;
        Ad localAd = b;
        ((AdListener)localObject1).onLeaveApplication(localAd);
      }
      return;
    }
    finally {}
  }
  
  public final void q()
  {
    try
    {
      LinkedList localLinkedList1 = p;
      Iterator localIterator = localLinkedList1.iterator();
      for (;;)
      {
        boolean bool = localIterator.hasNext();
        if (!bool) {
          break;
        }
        Object localObject1 = localIterator.next();
        localObject1 = (String)localObject1;
        w localw = new w;
        localw.<init>();
        int i1 = 1;
        String[] arrayOfString = new String[i1];
        int i2 = 0;
        arrayOfString[i2] = localObject1;
        localw.execute(arrayOfString);
      }
      localLinkedList2 = p;
    }
    finally {}
    LinkedList localLinkedList2;
    localLinkedList2.clear();
  }
  
  public final void r()
  {
    for (;;)
    {
      try
      {
        Object localObject1 = e;
        if (localObject1 != null)
        {
          localObject1 = i;
          int i1 = ((g)localObject1).getWindowVisibility();
          if (i1 == 0)
          {
            boolean bool = u.b();
            if (bool)
            {
              localObject2 = "Refreshing ad.";
              t.c((String)localObject2);
              localObject2 = e;
              a((AdRequest)localObject2);
              localObject2 = k;
              x localx = o;
              long l1 = n;
              ((Handler)localObject2).postDelayed(localx, l1);
              return;
            }
          }
          Object localObject2 = "Disabling refreshing because the ad is not visible.";
          t.a((String)localObject2);
          continue;
        }
        str = "Tried to refresh before calling loadAd().";
      }
      finally {}
      String str;
      t.a(str);
    }
  }
  
  public final void s()
  {
    try
    {
      Object localObject1 = d;
      if (localObject1 != null)
      {
        localObject1 = d;
        boolean bool = false;
        ((c)localObject1).cancel(bool);
        localObject1 = null;
        d = ((c)localObject1);
      }
      localObject1 = i;
      ((g)localObject1).stopLoading();
      return;
    }
    finally {}
  }
  
  /* Error */
  private boolean t()
  {
    // Byte code:
    //   0: nop
    //   1: aload_0
    //   2: monitorenter
    //   3: aload_0
    //   4: getfield 34	d:d	Lc;
    //   7: astore_1
    //   8: aload_1
    //   9: ifnull +9 -> 18
    //   12: iconst_1
    //   13: istore_1
    //   14: aload_0
    //   15: monitorexit
    //   16: iload_1
    //   17: ireturn
    //   18: iconst_0
    //   19: istore_1
    //   20: goto -6 -> 14
    //   23: astore_1
    //   24: aload_0
    //   25: monitorexit
    //   26: aload_1
    //   27: athrow
    //   28: nop
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	29	0	this	d
    //   7	2	1	localc	c
    //   13	7	1	bool	boolean
    //   23	4	1	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   3	8	23	finally
  }
}

/* Location:
 * Qualified Name:     d
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */