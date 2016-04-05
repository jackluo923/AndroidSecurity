import android.net.Uri;
import android.webkit.WebView;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

public final class a
{
  private static final Map a;
  private static final Map b;
  
  static
  {
    Object localObject1 = new java/util/HashMap;
    ((HashMap)localObject1).<init>();
    String str = "/invalidRequest";
    Object localObject2 = new k;
    ((k)localObject2).<init>();
    ((Map)localObject1).put(str, localObject2);
    str = "/loadAdURL";
    localObject2 = new l;
    ((l)localObject2).<init>();
    ((Map)localObject1).put(str, localObject2);
    localObject1 = Collections.unmodifiableMap((Map)localObject1);
    a = (Map)localObject1;
    localObject1 = new java/util/HashMap;
    ((HashMap)localObject1).<init>();
    str = "/open";
    localObject2 = new n;
    ((n)localObject2).<init>();
    ((Map)localObject1).put(str, localObject2);
    str = "/close";
    localObject2 = new j;
    ((j)localObject2).<init>();
    ((Map)localObject1).put(str, localObject2);
    str = "/log";
    localObject2 = new m;
    ((m)localObject2).<init>();
    ((Map)localObject1).put(str, localObject2);
    str = "/click";
    localObject2 = new o;
    ((o)localObject2).<init>();
    ((Map)localObject1).put(str, localObject2);
    str = "/httpTrack";
    localObject2 = new o;
    ((o)localObject2).<init>();
    ((Map)localObject1).put(str, localObject2);
    str = "/reloadRequest";
    localObject2 = new p;
    ((p)localObject2).<init>();
    ((Map)localObject1).put(str, localObject2);
    str = "/settings";
    localObject2 = new q;
    ((q)localObject2).<init>();
    ((Map)localObject1).put(str, localObject2);
    str = "/touch";
    localObject2 = new r;
    ((r)localObject2).<init>();
    ((Map)localObject1).put(str, localObject2);
    str = "/video";
    localObject2 = new s;
    ((s)localObject2).<init>();
    ((Map)localObject1).put(str, localObject2);
    localObject1 = Collections.unmodifiableMap((Map)localObject1);
    b = (Map)localObject1;
  }
  
  public static void a(WebView paramWebView)
  {
    String str = "Calling onshow.";
    t.d(str);
    str = "javascript:AFMA_ReceiveMessage('onshow', {'version': 'afma-sdk-a-v4.0.2'});";
    paramWebView.loadUrl(str);
  }
  
  static void a(d paramd, a.a parama, Uri paramUri, WebView paramWebView)
  {
    Object localObject9 = null;
    Object localObject5 = u.a(paramUri);
    if (localObject5 == null)
    {
      String str1 = "An error occurred while parsing the message parameters.";
      t.e(str1);
    }
    Object localObject1;
    for (;;)
    {
      return;
      boolean bool1 = c(paramUri);
      if (!bool1) {
        break label364;
      }
      localObject1 = paramUri.getHost();
      if (localObject1 != null) {
        break;
      }
      localObject1 = "An error occurred while parsing the AMSG parameters.";
      t.e((String)localObject1);
    }
    String str2 = "launch";
    boolean bool4 = ((String)localObject1).equals(str2);
    Object localObject6;
    if (bool4)
    {
      localObject1 = "/open";
      localObject6 = "a";
      Object localObject8 = "intent";
      ((HashMap)localObject5).put(localObject6, localObject8);
      localObject6 = "u";
      localObject8 = "url";
      localObject8 = ((HashMap)localObject5).get(localObject8);
      ((HashMap)localObject5).put(localObject6, localObject8);
      localObject6 = "url";
      ((HashMap)localObject5).remove(localObject6);
      localObject6 = localObject1;
    }
    for (;;)
    {
      label142:
      localObject1 = a.1.a;
      int j = parama.ordinal();
      int i = localObject1[j];
      Object localObject2;
      switch (i)
      {
      default: 
        localObject2 = localObject9;
      }
      label364:
      Object localObject4;
      for (;;)
      {
        if (localObject2 != null) {
          break label440;
        }
        localObject2 = new java/lang/StringBuilder;
        ((StringBuilder)localObject2).<init>();
        localObject5 = "No AdResponse found, <message: ";
        localObject2 = ((StringBuilder)localObject2).append((String)localObject5);
        localObject2 = ((StringBuilder)localObject2).append((String)localObject6);
        localObject5 = ">";
        localObject2 = ((StringBuilder)localObject2).append((String)localObject5);
        localObject2 = ((StringBuilder)localObject2).toString();
        t.e((String)localObject2);
        break;
        localObject6 = "closecanvas";
        boolean bool5 = ((String)localObject2).equals(localObject6);
        if (bool5)
        {
          localObject2 = "/close";
          localObject7 = localObject2;
          break label142;
        }
        localObject7 = "log";
        boolean bool2 = ((String)localObject2).equals(localObject7);
        if (bool2)
        {
          localObject3 = "/log";
          localObject7 = localObject3;
          break label142;
        }
        Object localObject3 = new java/lang/StringBuilder;
        ((StringBuilder)localObject3).<init>();
        localObject5 = "An error occurred while parsing the AMSG: ";
        localObject3 = ((StringBuilder)localObject3).append((String)localObject5);
        localObject5 = paramUri.toString();
        localObject3 = ((StringBuilder)localObject3).append((String)localObject5);
        localObject3 = ((StringBuilder)localObject3).toString();
        t.e((String)localObject3);
        break;
        boolean bool3 = b(paramUri);
        if (!bool3) {
          break label454;
        }
        localObject4 = paramUri.getPath();
        localObject7 = localObject4;
        break label142;
        localObject4 = a;
        localObject4 = ((Map)localObject4).get(localObject7);
        localObject4 = (i)localObject4;
        continue;
        localObject4 = b;
        localObject4 = ((Map)localObject4).get(localObject7);
        localObject4 = (i)localObject4;
      }
      label440:
      ((i)localObject4).a(paramd, (HashMap)localObject5, paramWebView);
      break;
      label454:
      Object localObject7 = localObject9;
    }
  }
  
  static boolean a(Uri paramUri)
  {
    boolean bool2 = false;
    boolean bool1;
    if (paramUri != null)
    {
      bool1 = paramUri.isHierarchical();
      if (bool1) {}
    }
    else
    {
      bool1 = bool2;
    }
    for (;;)
    {
      return bool1;
      bool1 = b(paramUri);
      if (!bool1)
      {
        bool1 = c(paramUri);
        if (!bool1) {}
      }
      else
      {
        bool1 = true;
        continue;
      }
      bool1 = bool2;
    }
  }
  
  public static void b(WebView paramWebView)
  {
    String str = "Calling onhide.";
    t.d(str);
    str = "javascript:AFMA_ReceiveMessage('onhide');";
    paramWebView.loadUrl(str);
  }
  
  private static boolean b(Uri paramUri)
  {
    boolean bool3 = false;
    String str1 = paramUri.getScheme();
    String str3;
    boolean bool1;
    if (str1 != null)
    {
      str3 = "gmsg";
      bool1 = str1.equals(str3);
      if (bool1) {}
    }
    else
    {
      bool1 = bool3;
    }
    for (;;)
    {
      return bool1;
      String str2 = paramUri.getAuthority();
      if (str2 != null)
      {
        str3 = "mobileads.google.com";
        bool2 = str2.equals(str3);
        if (bool2) {}
      }
      else
      {
        bool2 = bool3;
        continue;
      }
      boolean bool2 = true;
    }
  }
  
  private static boolean c(Uri paramUri)
  {
    String str1 = paramUri.getScheme();
    if (str1 != null)
    {
      String str2 = "admob";
      bool = str1.equals(str2);
      if (bool) {
        break label27;
      }
    }
    label27:
    for (boolean bool = false;; bool = true) {
      return bool;
    }
  }
}

/* Location:
 * Qualified Name:     a
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */