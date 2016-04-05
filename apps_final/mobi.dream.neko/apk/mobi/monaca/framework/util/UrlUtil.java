package mobi.monaca.framework.util;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import java.io.File;
import mobi.monaca.framework.MonacaApplication;
import mobi.monaca.framework.psedo.R.string;

public class UrlUtil
{
  public static final String DELIMITTER = MonacaApplication.getStringFromResource(R.string.relative_asset_www);
  public static final String EMBEDDING_HASH = MonacaApplication.getStringFromResource(R.string.embedding_hash);
  
  public static String cutHostInUri(String paramString)
  {
    String str = paramString;
    if (paramString.contains(DELIMITTER)) {
      str = paramString.substring(paramString.indexOf(DELIMITTER) + MonacaApplication.getStringFromResource(R.string.util_relative_asset).length());
    }
    return str;
  }
  
  public static String getResolvedUrl(String paramString)
  {
    String str = paramString;
    if (paramString.startsWith(MonacaApplication.getStringFromResource(R.string.file_scheme))) {}
    try
    {
      str = MonacaApplication.getStringFromResource(R.string.file_scheme) + new File(paramString.substring(MonacaApplication.getStringFromResource(R.string.file_scheme).length())).getCanonicalPath();
      return str;
    }
    catch (Exception localException) {}
    return paramString;
  }
  
  public static String getUIFileUrl(String paramString)
  {
    if (paramString.endsWith(MonacaApplication.getStringFromResource(R.string.extension_html))) {
      return paramString.substring(0, paramString.length() - 4) + MonacaApplication.getStringFromResource(R.string.ui);
    }
    if (paramString.endsWith(MonacaApplication.getStringFromResource(R.string.extension_htm))) {
      return paramString.substring(0, paramString.length() - 3) + MonacaApplication.getStringFromResource(R.string.ui);
    }
    return null;
  }
  
  public static boolean isEmbedding(String paramString)
  {
    return paramString.endsWith(EMBEDDING_HASH);
  }
  
  public static boolean isMonacaUri(Context paramContext, String paramString)
  {
    return (paramString.startsWith(MonacaApplication.getStringFromResource(R.string.asset_url))) || (paramString.startsWith(MonacaApplication.getStringFromResource(R.string.file_scheme) + getApplicationInfodataDir));
  }
}

/* Location:
 * Qualified Name:     mobi.monaca.framework.util.UrlUtil
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */