package mobi.monaca.framework.plugin;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.text.Html;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.apache.cordova.DroidGap;
import org.apache.cordova.api.CordovaInterface;
import org.apache.cordova.api.Plugin;
import org.apache.cordova.api.PluginResult;
import org.apache.cordova.api.PluginResult.Status;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class WebIntent
  extends Plugin
{
  private String onNewIntentCallback = null;
  
  public PluginResult execute(String paramString1, JSONArray paramJSONArray, String paramString2)
  {
    Object localObject1;
    label74:
    label92:
    Object localObject2;
    int i;
    try
    {
      if (paramString1.equals("startActivity"))
      {
        if (paramJSONArray.length() != 1) {
          return new PluginResult(PluginResult.Status.INVALID_ACTION);
        }
        localObject1 = paramJSONArray.getJSONObject(0);
        if (!((JSONObject)localObject1).has("type")) {
          break label610;
        }
        paramString1 = ((JSONObject)localObject1).getString("type");
        if (!((JSONObject)localObject1).has("url")) {
          break label615;
        }
        paramJSONArray = Uri.parse(((JSONObject)localObject1).getString("url"));
        if (!((JSONObject)localObject1).has("extras")) {
          break label620;
        }
        paramString2 = ((JSONObject)localObject1).getJSONObject("extras");
        localObject2 = new HashMap();
        if (paramString2 != null)
        {
          JSONArray localJSONArray = paramString2.names();
          i = 0;
          while (i < localJSONArray.length())
          {
            String str = localJSONArray.getString(i);
            ((Map)localObject2).put(str, paramString2.getString(str));
            i += 1;
          }
        }
        startActivity(((JSONObject)localObject1).getString("action"), paramJSONArray, paramString1, (Map)localObject2);
        paramString1 = new PluginResult(PluginResult.Status.OK);
        return paramString1;
      }
    }
    catch (JSONException paramString1)
    {
      paramString1.printStackTrace();
      return new PluginResult(PluginResult.Status.JSON_EXCEPTION);
    }
    if (paramString1.equals("hasExtra"))
    {
      if (paramJSONArray.length() != 1) {
        return new PluginResult(PluginResult.Status.INVALID_ACTION);
      }
      paramString1 = ((DroidGap)cordova.getActivity()).getIntent();
      paramJSONArray = paramJSONArray.getString(0);
      return new PluginResult(PluginResult.Status.OK, paramString1.hasExtra(paramJSONArray));
    }
    if (paramString1.equals("getExtra"))
    {
      if (paramJSONArray.length() != 1) {
        return new PluginResult(PluginResult.Status.INVALID_ACTION);
      }
      paramString1 = ((DroidGap)cordova.getActivity()).getIntent();
      paramJSONArray = paramJSONArray.getString(0);
      if (paramString1.hasExtra(paramJSONArray)) {
        return new PluginResult(PluginResult.Status.OK, paramString1.getStringExtra(paramJSONArray));
      }
      return new PluginResult(PluginResult.Status.ERROR);
    }
    if (paramString1.equals("getUri"))
    {
      if (paramJSONArray.length() != 0) {
        return new PluginResult(PluginResult.Status.INVALID_ACTION);
      }
      paramString1 = ((DroidGap)cordova.getActivity()).getIntent().getDataString();
      return new PluginResult(PluginResult.Status.OK, paramString1);
    }
    if (paramString1.equals("onNewIntent"))
    {
      if (paramJSONArray.length() != 0) {
        return new PluginResult(PluginResult.Status.INVALID_ACTION);
      }
      onNewIntentCallback = paramString2;
      paramString1 = new PluginResult(PluginResult.Status.NO_RESULT);
      paramString1.setKeepCallback(true);
      return paramString1;
    }
    if (paramString1.equals("sendBroadcast"))
    {
      if (paramJSONArray.length() != 1) {
        return new PluginResult(PluginResult.Status.INVALID_ACTION);
      }
      paramJSONArray = paramJSONArray.getJSONObject(0);
      if (!paramJSONArray.has("extras")) {
        break label625;
      }
    }
    label610:
    label615:
    label620:
    label625:
    for (paramString1 = paramJSONArray.getJSONObject("extras");; paramString1 = null)
    {
      paramString2 = new HashMap();
      if (paramString1 != null)
      {
        localObject1 = paramString1.names();
        i = 0;
        while (i < ((JSONArray)localObject1).length())
        {
          localObject2 = ((JSONArray)localObject1).getString(i);
          paramString2.put(localObject2, paramString1.getString((String)localObject2));
          i += 1;
        }
      }
      sendBroadcast(paramJSONArray.getString("action"), paramString2);
      return new PluginResult(PluginResult.Status.OK);
      paramString1 = new PluginResult(PluginResult.Status.INVALID_ACTION);
      return paramString1;
      paramString1 = null;
      break;
      paramJSONArray = null;
      break label74;
      paramString2 = null;
      break label92;
    }
  }
  
  public void onNewIntent(Intent paramIntent)
  {
    if (onNewIntentCallback != null)
    {
      paramIntent = new PluginResult(PluginResult.Status.OK, paramIntent.getDataString());
      paramIntent.setKeepCallback(true);
      success(paramIntent, onNewIntentCallback);
    }
  }
  
  void sendBroadcast(String paramString, Map<String, String> paramMap)
  {
    Intent localIntent = new Intent();
    localIntent.setAction(paramString);
    paramString = paramMap.keySet().iterator();
    while (paramString.hasNext())
    {
      String str = (String)paramString.next();
      localIntent.putExtra(str, (String)paramMap.get(str));
    }
    ((DroidGap)cordova.getActivity()).sendBroadcast(localIntent);
  }
  
  void startActivity(String paramString1, Uri paramUri, String paramString2, Map<String, String> paramMap)
  {
    if (paramUri != null)
    {
      paramString1 = new Intent(paramString1, paramUri);
      if ((paramString2 == null) || (paramUri == null)) {
        break label122;
      }
      paramString1.setDataAndType(paramUri, paramString2);
      label29:
      paramUri = paramMap.keySet().iterator();
    }
    for (;;)
    {
      if (!paramUri.hasNext()) {
        break label201;
      }
      String str1 = (String)paramUri.next();
      String str2 = (String)paramMap.get(str1);
      if ((str1.equals("android.intent.extra.TEXT")) && (paramString2.equals("text/html")))
      {
        paramString1.putExtra(str1, Html.fromHtml(str2));
        continue;
        paramString1 = new Intent(paramString1);
        break;
        label122:
        if (paramString2 == null) {
          break label29;
        }
        paramString1.setType(paramString2);
        break label29;
      }
      if (str1.equals("android.intent.extra.STREAM")) {
        paramString1.putExtra(str1, Uri.parse(str2));
      } else if (str1.equals("android.intent.extra.EMAIL")) {
        paramString1.putExtra("android.intent.extra.EMAIL", new String[] { str2 });
      } else {
        paramString1.putExtra(str1, str2);
      }
    }
    label201:
    cordova.getActivity().startActivity(paramString1);
  }
}

/* Location:
 * Qualified Name:     mobi.monaca.framework.plugin.WebIntent
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */