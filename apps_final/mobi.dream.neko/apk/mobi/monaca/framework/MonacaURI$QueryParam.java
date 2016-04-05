package mobi.monaca.framework;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import mobi.monaca.framework.psedo.R.string;

public class MonacaURI$QueryParam
{
  private String key;
  private String value;
  
  public MonacaURI$QueryParam(MonacaURI paramMonacaURI, String paramString)
  {
    paramMonacaURI = paramString.split(MonacaApplication.getStringFromResource(R.string.equal));
    if ((paramMonacaURI == null) || (paramMonacaURI.length < 2))
    {
      key = paramString;
      value = null;
      if (key.equals("")) {
        key = null;
      }
      return;
    }
    key = paramMonacaURI[0];
    value = paramMonacaURI[1];
  }
  
  public String getDecodedKey()
  {
    try
    {
      String str = URLDecoder.decode(key, MonacaURI.URL_ENCODE);
      return str;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException) {}
    return key;
  }
  
  public String getDecodedValue()
  {
    try
    {
      String str = URLDecoder.decode(value, MonacaURI.URL_ENCODE);
      return str;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException) {}
    return value;
  }
  
  public boolean hasValue()
  {
    return value != null;
  }
  
  public boolean isEmpty()
  {
    return (key == null) && (value == null);
  }
}

/* Location:
 * Qualified Name:     mobi.monaca.framework.MonacaURI.QueryParam
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */