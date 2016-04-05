import android.webkit.WebView;
import java.util.HashMap;

public final class m
  implements i
{
  public final void a(d paramd, HashMap<String, String> paramHashMap, WebView paramWebView)
  {
    Object localObject1 = "string";
    this = paramHashMap.get(localObject1);
    this = (String)this;
    localObject1 = "afma_notify_dt";
    localObject1 = paramHashMap.get(localObject1);
    localObject1 = (String)localObject1;
    Object localObject2 = new java/lang/StringBuilder;
    ((StringBuilder)localObject2).<init>();
    String str = "Received log message: <\"string\": \"";
    localObject2 = ((StringBuilder)localObject2).append(str);
    localObject2 = ((StringBuilder)localObject2).append(this);
    str = "\", \"afmaNotifyDt\": \"";
    localObject2 = ((StringBuilder)localObject2).append(str);
    localObject1 = ((StringBuilder)localObject2).append((String)localObject1);
    localObject2 = "\">";
    localObject1 = ((StringBuilder)localObject1).append((String)localObject2);
    localObject1 = ((StringBuilder)localObject1).toString();
    t.c((String)localObject1);
  }
}

/* Location:
 * Qualified Name:     m
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */