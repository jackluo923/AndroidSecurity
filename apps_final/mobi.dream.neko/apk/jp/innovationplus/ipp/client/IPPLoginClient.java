package jp.innovationplus.ipp.client;

import android.content.Context;
import java.util.LinkedHashMap;
import java.util.Map;
import jp.innovationplus.ipp.core.IPPException;
import jp.innovationplus.ipp.core.IPPQueryCallback;
import jp.innovationplus.ipp.jsontype.IPPLoginResult;

public final class IPPLoginClient
  extends _HttpURLConnection
{
  private static final String IPP_LOGIN_PATH = "/user/login";
  
  public IPPLoginClient(Context paramContext)
  {
    super(paramContext, "/user/login");
  }
  
  public void login(String paramString1, String paramString2, IPPQueryCallback<IPPLoginResult> paramIPPQueryCallback)
    throws IPPException
  {
    try
    {
      LinkedHashMap localLinkedHashMap = new LinkedHashMap();
      localLinkedHashMap.put("username", paramString1);
      localLinkedHashMap.put("password", paramString2);
      super.ippPostRequest(IPPLoginResult.class, localLinkedHashMap, paramIPPQueryCallback);
      return;
    }
    catch (IPPException paramString1)
    {
      throw paramString1;
    }
  }
}

/* Location:
 * Qualified Name:     jp.innovationplus.ipp.client.IPPLoginClient
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */