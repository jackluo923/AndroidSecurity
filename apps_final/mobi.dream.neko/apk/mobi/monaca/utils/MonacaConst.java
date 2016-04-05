package mobi.monaca.utils;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.util.Log;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;
import org.xmlpull.v1.XmlPullParserException;

public class MonacaConst
{
  private static final String KEY_DOMAIN = "domain";
  private static final String KEY_ENV = "env";
  private static final String KEY_ISCUSTOM = "isCustom";
  private static final String SCHEME = "https://";
  private static Map<String, String> constMap = null;
  
  private static String getConst(Context paramContext, String paramString)
  {
    if (paramContext == null) {
      throw new NullPointerException();
    }
    if (constMap == null) {
      loadMonacaConst(paramContext);
    }
    return (String)constMap.get(paramString);
  }
  
  public static String getIsCustom(Context paramContext)
  {
    return getConst(paramContext, "isCustom");
  }
  
  public static String getPushRegistrationAPIUrl(Context paramContext, String paramString)
  {
    try
    {
      paramContext = "https://" + getConst(paramContext, "domain") + "/v1/push/register/" + URLEncoder.encode(paramString, "UTF-8");
      return paramContext;
    }
    catch (UnsupportedEncodingException paramContext) {}
    return null;
  }
  
  public static String getPushUnegistrationAPIUrl(Context paramContext, String paramString)
  {
    try
    {
      paramContext = "https://" + getConst(paramContext, "domain") + "/v1/push/unregister/" + URLEncoder.encode(paramString, "UTF-8");
      return paramContext;
    }
    catch (UnsupportedEncodingException paramContext) {}
    return null;
  }
  
  private static void loadMonacaConst(Context paramContext)
  {
    constMap = new HashMap();
    constMap.put("domain", "api.monaca.mobi");
    constMap.put("env", "prod");
    constMap.put("isCustom", "false");
    Object localObject = paramContext.getResources();
    int i = ((Resources)localObject).getIdentifier("monaca_const", "xml", paramContext.getPackageName());
    if (i != 0)
    {
      Log.d("MonacaConst", "found monaca_const.xml");
      paramContext = ((Resources)localObject).getXml(i);
      i = -1;
      while (i != 1)
      {
        localObject = paramContext.getName();
        if ((i == 2) && (((String)localObject).equalsIgnoreCase("monaca")))
        {
          int j = paramContext.getAttributeCount();
          i = 0;
          while (i < j)
          {
            constMap.put(paramContext.getAttributeName(i), paramContext.getAttributeValue(i));
            i += 1;
          }
          i = 1;
        }
        else
        {
          try
          {
            i = paramContext.next();
          }
          catch (XmlPullParserException localXmlPullParserException)
          {
            i = 1;
            localXmlPullParserException.printStackTrace();
          }
          catch (IOException localIOException)
          {
            i = 1;
            localIOException.printStackTrace();
          }
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     mobi.monaca.utils.MonacaConst
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */