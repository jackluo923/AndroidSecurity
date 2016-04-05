import android.webkit.WebView;
import java.util.HashMap;

public final class j
  implements i
{
  public final void a(d paramd, HashMap<String, String> paramHashMap, WebView paramWebView)
  {
    boolean bool = paramWebView instanceof g;
    if (bool)
    {
      paramWebView = (g)paramWebView;
      paramWebView.a();
    }
    for (;;)
    {
      return;
      String str = "Trying to close WebView that isn't an AdWebView";
      t.b(str);
    }
  }
}

/* Location:
 * Qualified Name:     j
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */