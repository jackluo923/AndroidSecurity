import android.net.Uri;
import android.webkit.WebView;
import java.util.HashMap;

public final class o
  implements i
{
  public final void a(d paramd, HashMap<String, String> paramHashMap, WebView paramWebView)
  {
    Object localObject1 = "u";
    this = paramHashMap.get(localObject1);
    this = (String)this;
    localObject1 = paramd.i();
    if (localObject1 != null)
    {
      Object localObject2 = Uri.parse(this);
      String str1 = ((Uri)localObject2).getHost();
      String str2 = "admob.com";
      boolean bool = str1.endsWith(str2);
      if (bool)
      {
        localObject2 = ((Uri)localObject2).getPath();
        j = 4;
        localObject2 = ((String)localObject2).substring(j);
        ((f)localObject1).b((String)localObject2);
      }
    }
    localObject1 = new w;
    ((w)localObject1).<init>();
    int i = 1;
    String[] arrayOfString = new String[i];
    int j = 0;
    arrayOfString[j] = this;
    ((w)localObject1).execute(arrayOfString);
  }
}

/* Location:
 * Qualified Name:     o
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */