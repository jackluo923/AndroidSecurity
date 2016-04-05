package mobi.monaca.framework.plugin;

import android.app.Activity;
import fi.iki.elonen.SimpleWebServer;
import java.io.File;
import java.io.IOException;
import mobi.monaca.framework.MonacaPageActivity;

public class MonacaLocalServer
{
  private static final String TAG = MonacaLocalServer.class.getSimpleName();
  private MonacaPageActivity activity;
  private String fullPath;
  private String mAppAssetPath;
  private int port;
  private SimpleWebServer webServer;
  
  public MonacaLocalServer(Activity paramActivity, String paramString, int paramInt)
  {
    activity = ((MonacaPageActivity)paramActivity);
    mAppAssetPath = activity.getAppWWWPath();
    fullPath = (mAppAssetPath + "/" + removeLeadingSlash(paramString));
    paramActivity = new File(fullPath);
    port = paramInt;
    webServer = new SimpleWebServer(null, paramInt, paramActivity, true);
  }
  
  private String removeLeadingSlash(String paramString)
  {
    String str = paramString;
    if (paramString.startsWith("/")) {
      str = paramString.replaceFirst("/", "");
    }
    return str;
  }
  
  public int getPort()
  {
    return port;
  }
  
  public String getServerRoot()
  {
    return fullPath;
  }
  
  public void start()
    throws IOException
  {
    webServer.start();
  }
  
  public void stop()
  {
    webServer.stop();
  }
}

/* Location:
 * Qualified Name:     mobi.monaca.framework.plugin.MonacaLocalServer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */