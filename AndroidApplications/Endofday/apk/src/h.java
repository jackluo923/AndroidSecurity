import android.net.Uri;
import android.webkit.WebView;
import android.webkit.WebViewClient;

public final class h
  extends WebViewClient
{
  private d a;
  private a.a b;
  private boolean c;
  private boolean d;
  private boolean e;
  
  public h(d paramd, a.a parama, boolean paramBoolean)
  {
    a = paramd;
    b = parama;
    c = paramBoolean;
    d = bool;
    e = bool;
  }
  
  final void a()
  {
    boolean bool = true;
    d = bool;
  }
  
  public final void b()
  {
    boolean bool = true;
    e = bool;
  }
  
  public final void onPageFinished(WebView paramWebView, String paramString)
  {
    boolean bool3 = false;
    boolean bool1 = d;
    if (bool1)
    {
      Object localObject = a;
      localObject = ((d)localObject).d();
      if (localObject == null) {
        break label57;
      }
      ((c)localObject).a();
    }
    for (;;)
    {
      d = bool3;
      boolean bool2 = e;
      if (bool2)
      {
        a.a(paramWebView);
        e = bool3;
      }
      return;
      label57:
      String str = "adLoader was null while trying to setFinishedLoadingHtml().";
      t.a(str);
    }
  }
  
  public final boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    int j = 1;
    Object localObject1 = new java/lang/StringBuilder;
    ((StringBuilder)localObject1).<init>();
    String str = "shouldOverrideUrlLoading(\"";
    localObject1 = ((StringBuilder)localObject1).append(str);
    localObject1 = ((StringBuilder)localObject1).append(paramString);
    str = "\")";
    localObject1 = ((StringBuilder)localObject1).append(str);
    localObject1 = ((StringBuilder)localObject1).toString();
    t.a((String)localObject1);
    localObject1 = Uri.parse(paramString);
    boolean bool2 = a.a((Uri)localObject1);
    Object localObject3;
    if (bool2)
    {
      localObject3 = a;
      a.a locala = b;
      a.a((d)localObject3, locala, (Uri)localObject1, paramWebView);
      localObject1 = j;
    }
    for (;;)
    {
      return (boolean)localObject1;
      boolean bool1 = c;
      Object localObject2;
      if (bool1)
      {
        localObject2 = new h$a;
        localObject3 = a;
        ((h.a)localObject2).<init>((d)localObject3);
        localObject3 = new String[j];
        int i = 0;
        localObject3[i] = paramString;
        ((h.a)localObject2).execute((Object[])localObject3);
        localObject2 = j;
      }
      else
      {
        localObject2 = new java/lang/StringBuilder;
        ((StringBuilder)localObject2).<init>();
        localObject3 = "URL is not a GMSG and shouldn't launch intents: ";
        localObject2 = ((StringBuilder)localObject2).append((String)localObject3);
        localObject2 = ((StringBuilder)localObject2).append(paramString);
        localObject2 = ((StringBuilder)localObject2).toString();
        t.e((String)localObject2);
        localObject2 = j;
      }
    }
  }
}

/* Location:
 * Qualified Name:     h
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */