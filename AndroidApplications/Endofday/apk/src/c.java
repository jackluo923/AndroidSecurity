import android.app.Activity;
import android.content.Context;
import android.os.AsyncTask;
import android.os.SystemClock;
import android.util.DisplayMetrics;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.ads.AdRequest;
import com.google.ads.AdRequest.ErrorCode;
import com.google.ads.AdSize;
import com.google.ads.InterstitialAd;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

public final class c
  extends AsyncTask<AdRequest, String, AdRequest.ErrorCode>
{
  private static final String a;
  private static final String b;
  private static int c = 0;
  private String d;
  private String e;
  private b f;
  private d g;
  private WebView h;
  private String i;
  private AdRequest.ErrorCode j;
  private boolean k;
  
  static
  {
    Object localObject1 = "4.0.2";
    String str1 = "\\.";
    localObject1 = ((String)localObject1).split(str1);
    int n = 0;
    Object localObject2 = localObject1[n];
    int i1 = 1;
    localObject1 = localObject1[i1];
    StringBuilder localStringBuilder = new java/lang/StringBuilder;
    localStringBuilder.<init>();
    String str2 = "http://www.gstatic.com/afma/sdk-core-v";
    localStringBuilder = localStringBuilder.append(str2);
    localObject2 = localStringBuilder.append((String)localObject2);
    localObject1 = ((StringBuilder)localObject2).append((String)localObject1);
    localObject2 = ".js";
    localObject1 = ((StringBuilder)localObject1).append((String)localObject2);
    localObject1 = ((StringBuilder)localObject1).toString();
    a = (String)localObject1;
    localObject1 = new java/lang/StringBuilder;
    ((StringBuilder)localObject1).<init>();
    localObject2 = "<html><head><script src=\"";
    localObject1 = ((StringBuilder)localObject1).append((String)localObject2);
    localObject2 = a;
    localObject1 = ((StringBuilder)localObject1).append((String)localObject2);
    localObject2 = "\"></script><script>";
    localObject1 = ((StringBuilder)localObject1).append((String)localObject2);
    localObject1 = ((StringBuilder)localObject1).toString();
    b = (String)localObject1;
    int m = 5;
    c = m;
  }
  
  c(d paramd)
  {
    g = paramd;
    i = ((String)localObject1);
    e = ((String)localObject1);
    j = ((AdRequest.ErrorCode)localObject1);
    k = bool2;
    localObject1 = new android/webkit/WebView;
    Object localObject2 = paramd.b();
    localObject2 = ((Activity)localObject2).getApplicationContext();
    ((WebView)localObject1).<init>((Context)localObject2);
    h = ((WebView)localObject1);
    localObject1 = h;
    localObject1 = ((WebView)localObject1).getSettings();
    boolean bool1 = true;
    ((WebSettings)localObject1).setJavaScriptEnabled(bool1);
    localObject1 = h;
    Object localObject3 = new h;
    a.a locala = a.a.a;
    ((h)localObject3).<init>(paramd, locala, bool2);
    ((WebView)localObject1).setWebViewClient((WebViewClient)localObject3);
    localObject1 = new b;
    localObject3 = h;
    localObject3 = u.a((WebView)localObject3);
    ((b)localObject1).<init>(this, paramd, (String)localObject3);
    f = ((b)localObject1);
  }
  
  private AdRequest.ErrorCode a(AdRequest[] paramArrayOfAdRequest)
  {
    Object localObject24 = null;
    long l10 = 0L;
    int m = 0;
    for (;;)
    {
      Object localObject8;
      Object localObject12;
      Object localObject23;
      Object localObject2;
      try
      {
        Object localObject1 = paramArrayOfAdRequest[m];
        try
        {
          localObject8 = g;
          localObject8 = ((d)localObject8).b();
          localObject12 = ((Activity)localObject8).getApplicationContext();
          localObject1 = ((AdRequest)localObject1).getRequestMap();
          Object localObject14 = g;
          localObject14 = ((d)localObject14).i();
          long l6 = ((f)localObject14).h();
          boolean bool9 = l6 < l10;
          if (bool9)
          {
            String str5 = "prl";
            localObject18 = Long.valueOf(l6);
            ((Map)localObject1).put(str5, localObject18);
          }
          Object localObject18 = ((f)localObject14).g();
          String str4;
          if (localObject18 != null)
          {
            str4 = "ppcl";
            ((Map)localObject1).put(str4, localObject18);
          }
          localObject18 = ((f)localObject14).f();
          if (localObject18 != null)
          {
            str4 = "pcl";
            ((Map)localObject1).put(str4, localObject18);
          }
          long l7 = ((f)localObject14).e();
          boolean bool10 = l7 < l10;
          if (bool10)
          {
            String str6 = "pcc";
            localObject19 = Long.valueOf(l7);
            ((Map)localObject1).put(str6, localObject19);
          }
          Object localObject19 = "preqs";
          long l8 = f.i();
          localObject23 = Long.valueOf(l8);
          ((Map)localObject1).put(localObject19, localObject23);
          localObject19 = ((f)localObject14).j();
          if (localObject19 != null)
          {
            localObject23 = "pai";
            ((Map)localObject1).put(localObject23, localObject19);
          }
          boolean bool7 = ((f)localObject14).k();
          if (bool7)
          {
            String str3 = "aoi_timeout";
            localObject23 = "true";
            ((Map)localObject1).put(str3, localObject23);
          }
          boolean bool8 = ((f)localObject14).m();
          if (bool8)
          {
            localObject20 = "aoi_nofill";
            localObject23 = "true";
            ((Map)localObject1).put(localObject20, localObject23);
          }
          localObject20 = ((f)localObject14).p();
          if (localObject20 != null)
          {
            localObject23 = "pit";
            ((Map)localObject1).put(localObject23, localObject20);
          }
          ((f)localObject14).a();
          ((f)localObject14).d();
          localObject14 = g;
          localObject14 = ((d)localObject14).c();
          boolean bool5 = localObject14 instanceof InterstitialAd;
          if (!bool5) {
            continue;
          }
          localObject15 = "format";
          localObject20 = "interstitial_mb";
          ((Map)localObject1).put(localObject15, localObject20);
          localObject15 = "slotname";
          localObject20 = g;
          localObject20 = ((d)localObject20).e();
          ((Map)localObject1).put(localObject15, localObject20);
          localObject15 = "js";
          localObject20 = "afma-sdk-a-v4.0.2";
          ((Map)localObject1).put(localObject15, localObject20);
          localObject15 = "msid";
          localObject20 = ((Context)localObject12).getPackageName();
          ((Map)localObject1).put(localObject15, localObject20);
          localObject15 = "app_name";
          localObject20 = new java/lang/StringBuilder;
          ((StringBuilder)localObject20).<init>();
          localObject23 = "4.0.2.android.";
          localObject20 = ((StringBuilder)localObject20).append((String)localObject23);
          localObject23 = ((Context)localObject12).getPackageName();
          localObject20 = ((StringBuilder)localObject20).append((String)localObject23);
          localObject20 = ((StringBuilder)localObject20).toString();
          ((Map)localObject1).put(localObject15, localObject20);
          localObject15 = "isu";
          localObject20 = u.a((Context)localObject12);
          ((Map)localObject1).put(localObject15, localObject20);
          localObject15 = u.c((Context)localObject12);
          if (localObject15 != null) {
            break label725;
          }
          localObject1 = new c$a;
          localObject8 = "NETWORK_ERROR";
          ((c.a)localObject1).<init>(this, (String)localObject8);
          throw ((Throwable)localObject1);
        }
        catch (c.a locala)
        {
          localObject2 = "Unable to connect to network.";
          t.c((String)localObject2);
          localObject2 = AdRequest.ErrorCode.NETWORK_ERROR;
        }
        return (AdRequest.ErrorCode)localObject2;
      }
      finally {}
      Object localObject15 = g;
      localObject15 = ((d)localObject15).h();
      Object localObject20 = ((AdSize)localObject15).toString();
      if (localObject20 != null)
      {
        localObject15 = "format";
        ((Map)localObject2).put(localObject15, localObject20);
      }
      else
      {
        localObject20 = new java/util/HashMap;
        ((HashMap)localObject20).<init>();
        localObject23 = "w";
        int i12 = ((AdSize)localObject15).getWidth();
        Integer localInteger = Integer.valueOf(i12);
        ((Map)localObject20).put(localObject23, localInteger);
        localObject23 = "h";
        int i8 = ((AdSize)localObject15).getHeight();
        Object localObject16 = Integer.valueOf(i8);
        ((Map)localObject20).put(localObject23, localObject16);
        localObject16 = "ad_frame";
        ((Map)localObject3).put(localObject16, localObject20);
        continue;
        label725:
        localObject20 = "net";
        ((Map)localObject3).put(localObject20, localObject16);
        localObject16 = u.d((Context)localObject12);
        if (localObject16 != null)
        {
          int i10 = ((String)localObject16).length();
          if (i10 != 0)
          {
            localObject21 = "cap";
            ((Map)localObject3).put(localObject21, localObject16);
          }
        }
        localObject16 = "u_audio";
        Object localObject21 = u.e((Context)localObject12);
        int i11 = ((u.a)localObject21).ordinal();
        Object localObject22 = Integer.valueOf(i11);
        ((Map)localObject3).put(localObject16, localObject22);
        localObject16 = "u_so";
        localObject12 = u.f((Context)localObject12);
        ((Map)localObject3).put(localObject16, localObject12);
        localObject8 = u.a((Activity)localObject8);
        localObject12 = "u_sd";
        float f1 = density;
        Float localFloat = Float.valueOf(f1);
        ((Map)localObject3).put(localObject12, localFloat);
        localObject12 = "u_h";
        int i9 = heightPixels;
        Object localObject17 = Integer.valueOf(i9);
        ((Map)localObject3).put(localObject12, localObject17);
        localObject12 = "u_w";
        int i3 = widthPixels;
        Object localObject9 = Integer.valueOf(i3);
        ((Map)localObject3).put(localObject12, localObject9);
        localObject9 = "hl";
        localObject12 = Locale.getDefault();
        localObject12 = ((Locale)localObject12).getLanguage();
        ((Map)localObject3).put(localObject9, localObject12);
        boolean bool1 = u.a();
        if (bool1)
        {
          localObject10 = "simulator";
          int i7 = 1;
          localObject13 = Integer.valueOf(i7);
          ((Map)localObject3).put(localObject10, localObject13);
        }
        Object localObject10 = new ai;
        ((ai)localObject10).<init>();
        Object localObject4 = ((ai)localObject10).a(localObject3);
        localObject10 = new java/lang/StringBuilder;
        ((StringBuilder)localObject10).<init>();
        Object localObject13 = b;
        localObject10 = ((StringBuilder)localObject10).append((String)localObject13);
        localObject13 = "AFMA_buildAdURL";
        localObject10 = ((StringBuilder)localObject10).append((String)localObject13);
        localObject13 = "(";
        localObject10 = ((StringBuilder)localObject10).append((String)localObject13);
        localObject4 = ((StringBuilder)localObject10).append((String)localObject4);
        localObject10 = ");";
        localObject4 = ((StringBuilder)localObject4).append((String)localObject10);
        localObject10 = "</script></head><body></body></html>";
        localObject4 = ((StringBuilder)localObject4).append((String)localObject10);
        localObject13 = ((StringBuilder)localObject4).toString();
        localObject4 = new java/lang/StringBuilder;
        ((StringBuilder)localObject4).<init>();
        localObject10 = "adRequestUrlHtml: ";
        localObject4 = ((StringBuilder)localObject4).append((String)localObject10);
        localObject4 = ((StringBuilder)localObject4).append((String)localObject13);
        localObject4 = ((StringBuilder)localObject4).toString();
        t.c((String)localObject4);
        localObject4 = h;
        localObject10 = null;
        localObject17 = "text/html";
        localObject22 = "utf-8";
        localObject23 = null;
        ((WebView)localObject4).loadDataWithBaseURL((String)localObject10, (String)localObject13, (String)localObject17, (String)localObject22, (String)localObject23);
        int n = c;
        n *= 1000;
        long l1 = n;
        long l9 = SystemClock.elapsedRealtime();
        boolean bool3 = l1 < l10;
        if (bool3) {}
        String str1;
        try
        {
          wait(l1);
          AdRequest.ErrorCode localErrorCode1 = j;
          if (localErrorCode1 == null) {
            break label1231;
          }
          localErrorCode1 = j;
        }
        catch (InterruptedException localInterruptedException1)
        {
          localObject10 = new java/lang/StringBuilder;
          ((StringBuilder)localObject10).<init>();
          str1 = "AdLoader InterruptedException while getting the URL: ";
          localObject10 = ((StringBuilder)localObject10).append(str1);
          localObject5 = ((StringBuilder)localObject10).append(localInterruptedException1);
          localObject5 = ((StringBuilder)localObject5).toString();
          t.e((String)localObject5);
          localObject5 = AdRequest.ErrorCode.INTERNAL_ERROR;
        }
        continue;
        label1231:
        Object localObject5 = i;
        if (localObject5 == null)
        {
          localObject5 = "AdLoader timed out while getting the URL.";
          t.c((String)localObject5);
          localObject5 = AdRequest.ErrorCode.NETWORK_ERROR;
        }
        else
        {
          int i1 = 1;
          String[] arrayOfString = new String[i1];
          int i4 = 0;
          str1 = i;
          arrayOfString[i4] = str1;
          publishProgress(arrayOfString);
          int i2 = c;
          i2 *= 1000;
          long l2 = i2;
          long l4 = SystemClock.elapsedRealtime();
          l4 -= l9;
          l2 -= l4;
          boolean bool4 = l2 < l10;
          if (bool4) {}
          Object localObject11;
          String str2;
          try
          {
            wait(l2);
            AdRequest.ErrorCode localErrorCode2 = j;
            if (localErrorCode2 == null) {
              break label1391;
            }
            localErrorCode2 = j;
          }
          catch (InterruptedException localInterruptedException2)
          {
            localObject11 = new java/lang/StringBuilder;
            ((StringBuilder)localObject11).<init>();
            str2 = "AdLoader InterruptedException while getting the HTML: ";
            localObject11 = ((StringBuilder)localObject11).append(str2);
            localObject6 = ((StringBuilder)localObject11).append(localInterruptedException2);
            localObject6 = ((StringBuilder)localObject6).toString();
            t.e((String)localObject6);
            localObject6 = AdRequest.ErrorCode.INTERNAL_ERROR;
          }
          continue;
          label1391:
          Object localObject6 = e;
          if (localObject6 == null)
          {
            localObject6 = "AdLoader timed out while getting the HTML.";
            t.c((String)localObject6);
            localObject6 = AdRequest.ErrorCode.NETWORK_ERROR;
          }
          else
          {
            localObject6 = g;
            localObject6 = ((d)localObject6).f();
            localObject11 = g;
            localObject11 = ((d)localObject11).g();
            ((h)localObject11).a();
            localObject11 = d;
            str2 = e;
            localObject17 = "text/html";
            localObject22 = "utf-8";
            localObject23 = null;
            ((g)localObject6).loadDataWithBaseURL((String)localObject11, str2, (String)localObject17, (String)localObject22, (String)localObject23);
            int i5 = c;
            i5 *= 1000;
            long l3 = i5;
            long l5 = SystemClock.elapsedRealtime();
            l5 -= l9;
            l3 -= l5;
            boolean bool6 = l3 < l10;
            if (bool6) {}
            try
            {
              wait(l3);
              boolean bool2 = k;
              if (!bool2) {
                break label1584;
              }
              localObject6 = localObject24;
            }
            catch (InterruptedException localInterruptedException3)
            {
              StringBuilder localStringBuilder = new java/lang/StringBuilder;
              localStringBuilder.<init>();
              str2 = "AdLoader InterruptedException while loading the HTML: ";
              localStringBuilder = localStringBuilder.append(str2);
              localObject7 = localStringBuilder.append(localInterruptedException3);
              localObject7 = ((StringBuilder)localObject7).toString();
              t.e((String)localObject7);
              localObject7 = AdRequest.ErrorCode.INTERNAL_ERROR;
            }
            continue;
            label1584:
            ((g)localObject7).stopLoading();
            int i6 = 8;
            ((g)localObject7).setVisibility(i6);
            Object localObject7 = "AdLoader timed out while loading the HTML.";
            t.c((String)localObject7);
            localObject7 = AdRequest.ErrorCode.NETWORK_ERROR;
          }
        }
      }
    }
  }
  
  final void a()
  {
    boolean bool = true;
    try
    {
      k = bool;
      notify();
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public static void a(int paramInt)
  {
    c = paramInt;
  }
  
  public final void a(AdRequest.ErrorCode paramErrorCode)
  {
    try
    {
      j = paramErrorCode;
      notify();
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public final void a(String paramString)
  {
    try
    {
      i = paramString;
      notify();
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  final void a(String paramString1, String paramString2)
  {
    try
    {
      d = paramString2;
      e = paramString1;
      notify();
      return;
    }
    finally {}
  }
  
  protected final Object doInBackground(Object[] paramArrayOfObject)
  {
    paramArrayOfObject = (AdRequest[])paramArrayOfObject;
    AdRequest.ErrorCode localErrorCode = a(paramArrayOfObject);
    return localErrorCode;
  }
  
  protected final void onCancelled()
  {
    Object localObject = "AdLoader cancelled.";
    t.a((String)localObject);
    localObject = h;
    ((WebView)localObject).stopLoading();
    localObject = f;
    boolean bool = false;
    ((b)localObject).cancel(bool);
  }
  
  protected final void onPostExecute(Object paramObject)
  {
    paramObject = (AdRequest.ErrorCode)paramObject;
    d locald;
    if (paramObject == null)
    {
      locald = g;
      locald.m();
    }
    for (;;)
    {
      return;
      locald = g;
      locald.a((AdRequest.ErrorCode)paramObject);
    }
  }
  
  protected final void onProgressUpdate(Object[] paramArrayOfObject)
  {
    int n = 0;
    paramArrayOfObject = (String[])paramArrayOfObject;
    b localb = f;
    int m = 1;
    String[] arrayOfString = new String[m];
    Object localObject = paramArrayOfObject[n];
    arrayOfString[n] = localObject;
    localb.execute(arrayOfString);
  }
}

/* Location:
 * Qualified Name:     c
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */