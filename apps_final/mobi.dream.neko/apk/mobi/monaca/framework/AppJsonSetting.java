package mobi.monaca.framework;

import android.content.Context;
import android.graphics.Color;
import java.net.URI;
import java.net.URISyntaxException;
import mobi.monaca.framework.psedo.R.string;
import mobi.monaca.framework.util.MyLog;
import mobi.monaca.utils.TimeStamp;
import mobi.monaca.utils.log.LogItem;
import mobi.monaca.utils.log.LogItem.LogLevel;
import mobi.monaca.utils.log.LogItem.Source;
import org.json.JSONException;
import org.json.JSONObject;

public class AppJsonSetting
{
  protected JSONObject appJson;
  protected boolean autoHide;
  private Context context;
  protected boolean disableCookie;
  protected URI monacaCloudUri;
  protected String pushProjectId = "";
  protected String senderId = "";
  private boolean sendsBroadcast = false;
  protected int splashColor;
  
  public AppJsonSetting(JSONObject paramJSONObject)
  {
    appJson = paramJSONObject;
    parseSplash();
    parsePush();
    parseSecurity();
    parseMonacaCloud();
  }
  
  public boolean getAutoHide()
  {
    return autoHide;
  }
  
  public boolean getDisableCookie()
  {
    return disableCookie;
  }
  
  public String getMonacaCloudDomain()
  {
    if (monacaCloudUri.getHost() != null) {
      return monacaCloudUri.getHost();
    }
    return "";
  }
  
  public String getMonacaCloudPath()
  {
    return monacaCloudUri.getPath();
  }
  
  public String getPushProjectId()
  {
    return pushProjectId;
  }
  
  public String getSenderId()
  {
    return senderId;
  }
  
  public int getSplashBackgroundColor()
  {
    return splashColor;
  }
  
  protected void parseMonacaCloud()
  {
    try
    {
      localJSONObject1 = appJson.getJSONObject(MonacaApplication.getStringFromResource(R.string.monaca_cloud));
    }
    catch (JSONException localJSONException)
    {
      for (;;)
      {
        try
        {
          JSONObject localJSONObject1;
          monacaCloudUri = new URI(localJSONObject1.optString(MonacaApplication.getStringFromResource(R.string.end_point), ""));
          return;
        }
        catch (URISyntaxException localURISyntaxException) {}
        localJSONException = localJSONException;
        JSONObject localJSONObject2 = new JSONObject();
      }
    }
  }
  
  protected void parsePush()
  {
    try
    {
      localJSONObject1 = appJson.getJSONObject(MonacaApplication.getStringFromResource(R.string.push_notification));
      pushProjectId = localJSONObject1.optString(MonacaApplication.getStringFromResource(R.string.push_project_id), "");
    }
    catch (JSONException localJSONException1)
    {
      for (;;)
      {
        try
        {
          JSONObject localJSONObject1;
          senderId = localJSONObject1.getJSONObject(MonacaApplication.getStringFromResource(R.string.android)).optString(MonacaApplication.getStringFromResource(R.string.sender_id), "");
          return;
        }
        catch (JSONException localJSONException2) {}
        localJSONException1 = localJSONException1;
        JSONObject localJSONObject2 = new JSONObject();
      }
    }
  }
  
  protected void parseSecurity()
  {
    try
    {
      JSONObject localJSONObject1 = appJson.getJSONObject(MonacaApplication.getStringFromResource(R.string.security));
      disableCookie = localJSONObject1.optBoolean(MonacaApplication.getStringFromResource(R.string.disable_cookie), false);
      return;
    }
    catch (JSONException localJSONException)
    {
      for (;;)
      {
        JSONObject localJSONObject2 = new JSONObject();
      }
    }
  }
  
  protected void parseSplash()
  {
    try
    {
      localJSONObject1 = appJson.getJSONObject(MonacaApplication.getStringFromResource(R.string.splash)).getJSONObject(MonacaApplication.getStringFromResource(R.string.android));
      String str = localJSONObject1.optString(MonacaApplication.getStringFromResource(R.string.background), MonacaApplication.getStringFromResource(R.string.color_transparent));
      localObject = str;
      if (!str.startsWith(MonacaApplication.getStringFromResource(R.string.sharp))) {
        localObject = MonacaApplication.getStringFromResource(R.string.sharp) + str;
      }
    }
    catch (JSONException localJSONException)
    {
      try
      {
        JSONObject localJSONObject1;
        splashColor = Color.parseColor((String)localObject);
        autoHide = localJSONObject1.optBoolean(MonacaApplication.getStringFromResource(R.string.auto_hide), true);
        return;
        localJSONException = localJSONException;
        JSONObject localJSONObject2 = new JSONObject();
      }
      catch (IllegalArgumentException localIllegalArgumentException)
      {
        for (;;)
        {
          Object localObject;
          if ((sendsBroadcast) && (context != null))
          {
            localObject = MonacaApplication.getStringFromResource(R.string.log_invalid_color_forward) + (String)localObject + MonacaApplication.getStringFromResource(R.string.log_invalid_color_backward);
            localObject = new LogItem(TimeStamp.getCurrentTimeStamp(), LogItem.Source.SYSTEM, LogItem.LogLevel.DEBUG, (String)localObject, "", 0);
            MyLog.sendBroadcastDebugLog(context, (LogItem)localObject);
          }
          splashColor = 0;
        }
      }
    }
  }
  
  public void sendsBroadcastDebugLog(boolean paramBoolean, Context paramContext)
  {
    sendsBroadcast = paramBoolean;
    context = paramContext;
  }
  
  public boolean shouldExtractAssets()
  {
    try
    {
      boolean bool = appJson.getJSONObject(MonacaApplication.getStringFromResource(R.string.loader)).getJSONObject(MonacaApplication.getStringFromResource(R.string.android)).getBoolean(MonacaApplication.getStringFromResource(R.string.extract_assets));
      return bool;
    }
    catch (JSONException localJSONException) {}
    return false;
  }
}

/* Location:
 * Qualified Name:     mobi.monaca.framework.AppJsonSetting
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */