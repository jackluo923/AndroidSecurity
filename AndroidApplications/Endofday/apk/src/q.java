import android.webkit.WebView;
import java.util.HashMap;

public final class q
  implements i
{
  public final void a(d paramd, HashMap<String, String> paramHashMap, WebView paramWebView)
  {
    String str1 = "applicationTimeout";
    this = paramHashMap.get(str1);
    this = (String)this;
    try
    {
      int i = Integer.parseInt(this);
      c.a(i);
      return;
    }
    catch (NumberFormatException localNumberFormatException)
    {
      for (;;)
      {
        Object localObject = new java/lang/StringBuilder;
        ((StringBuilder)localObject).<init>();
        String str2 = "Trying to set applicationTimeout to invalid value: ";
        localObject = ((StringBuilder)localObject).append(str2);
        localObject = ((StringBuilder)localObject).append(this);
        localObject = ((StringBuilder)localObject).toString();
        t.b((String)localObject, localNumberFormatException);
      }
    }
  }
}

/* Location:
 * Qualified Name:     q
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */