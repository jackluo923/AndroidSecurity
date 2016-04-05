import android.webkit.WebView;
import com.google.ads.AdRequest.ErrorCode;
import java.util.HashMap;

public final class k
  implements i
{
  public final void a(d paramd, HashMap<String, String> paramHashMap, WebView paramWebView)
  {
    Object localObject1 = "type";
    this = paramHashMap.get(localObject1);
    this = (String)this;
    localObject1 = "errors";
    localObject1 = paramHashMap.get(localObject1);
    localObject1 = (String)localObject1;
    Object localObject2 = new java/lang/StringBuilder;
    ((StringBuilder)localObject2).<init>();
    String str = "Invalid ";
    localObject2 = ((StringBuilder)localObject2).append(str);
    localObject2 = ((StringBuilder)localObject2).append(this);
    str = " request error: ";
    localObject2 = ((StringBuilder)localObject2).append(str);
    localObject1 = ((StringBuilder)localObject2).append((String)localObject1);
    localObject1 = ((StringBuilder)localObject1).toString();
    t.e((String)localObject1);
    localObject1 = paramd.d();
    if (localObject1 != null)
    {
      localObject2 = AdRequest.ErrorCode.INVALID_REQUEST;
      ((c)localObject1).a((AdRequest.ErrorCode)localObject2);
    }
  }
}

/* Location:
 * Qualified Name:     k
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */