import android.webkit.WebView;
import com.google.ads.AdActivity;
import java.util.HashMap;

public final class n
  implements i
{
  public final void a(d paramd, HashMap<String, String> paramHashMap, WebView paramWebView)
  {
    String str1 = "a";
    this = paramHashMap.get(str1);
    this = (String)this;
    if (this == null)
    {
      str1 = "Could not get the action parameter for open GMSG.";
      t.a(str1);
    }
    for (;;)
    {
      return;
      str1 = "webapp";
      boolean bool = equals(str1);
      e locale;
      String str2;
      if (bool)
      {
        locale = new e;
        str2 = "webapp";
        locale.<init>(str2, paramHashMap);
        AdActivity.launchAdActivity(paramd, locale);
      }
      else
      {
        locale = new e;
        str2 = "intent";
        locale.<init>(str2, paramHashMap);
        AdActivity.launchAdActivity(paramd, locale);
      }
    }
  }
}

/* Location:
 * Qualified Name:     n
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */