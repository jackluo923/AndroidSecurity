package com.inmobi.re.container;

import android.app.Activity;
import android.content.pm.PackageManager;
import android.os.AsyncTask;
import android.os.Binder;
import android.os.Environment;
import android.webkit.URLUtil;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.re.configs.ConfigParams;
import com.inmobi.re.configs.Initializer;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.ProtocolException;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.util.ArrayList;
import org.json.JSONException;
import org.json.JSONObject;

class IMWebView$i
  extends AsyncTask<Void, Void, String>
{
  File a;
  String b;
  String c;
  int d = -1;
  String e = "";
  
  IMWebView$i(IMWebView paramIMWebView, File paramFile, String paramString1, String paramString2)
  {
    a = paramFile;
    b = paramString1;
    c = paramString2;
    IMWebView.p(paramIMWebView).add(this);
  }
  
  public String a()
  {
    return c;
  }
  
  protected String a(Void... paramVarArgs)
  {
    paramVarArgs = IMWebView.h(f).getPackageManager();
    if (paramVarArgs.checkPermission("android.permission.WRITE_EXTERNAL_STORAGE", paramVarArgs.getNameForUid(Binder.getCallingUid())) == 0) {}
    for (int i = 1; i == 0; i = 0)
    {
      d = IMWebView.f.j.ordinal();
      return "failure";
    }
    if (!InternalSDKUtil.checkNetworkAvailibility(InternalSDKUtil.getContext()))
    {
      d = IMWebView.f.i.ordinal();
      return "failure";
    }
    if ((!c.matches("[A-Za-z0-9]+")) || (c.equals("")))
    {
      d = IMWebView.f.c.ordinal();
      return "failure";
    }
    if ((b.equals("")) || (!URLUtil.isValidUrl(b)))
    {
      d = IMWebView.f.d.ordinal();
      return "failure";
    }
    if (!Environment.getExternalStorageState().equals("mounted"))
    {
      d = IMWebView.f.k.ordinal();
      return "failure";
    }
    paramVarArgs = Initializer.getConfigParams().getAllowedContentType().replace("\\", "");
    paramVarArgs = paramVarArgs.substring(1, paramVarArgs.length() - 1);
    int j;
    if (paramVarArgs.contains(","))
    {
      paramVarArgs = paramVarArgs.split(",");
      j = Initializer.getConfigParams().getMaxSaveContentSize();
    }
    for (;;)
    {
      try
      {
        long l2 = System.currentTimeMillis();
        Object localObject1 = (HttpURLConnection)new URL(b).openConnection();
        ((HttpURLConnection)localObject1).setRequestMethod("GET");
        ((HttpURLConnection)localObject1).setDoOutput(true);
        ((HttpURLConnection)localObject1).setConnectTimeout(5000);
        Object localObject2 = ((HttpURLConnection)localObject1).getContentType();
        android.util.Log.i("Nilanjana", "contentType_url: " + (String)localObject2);
        i = 0;
        long l1;
        if (i < paramVarArgs.length)
        {
          if (paramVarArgs[i].substring(1, paramVarArgs[i].length() - 1).equals(localObject2))
          {
            i = 1;
            if (i != 0) {
              continue;
            }
            d = IMWebView.f.g.ordinal();
            return "failure";
            paramVarArgs = new String[] { paramVarArgs };
            break;
          }
          i += 1;
          continue;
          l1 = ((HttpURLConnection)localObject1).getContentLength();
          if ((l1 >= 0L) && (l1 > j * 1024 * 1024))
          {
            d = IMWebView.f.h.ordinal();
            return "failure";
          }
          ((HttpURLConnection)localObject1).connect();
          paramVarArgs = new FileOutputStream(a);
          localObject1 = ((HttpURLConnection)localObject1).getInputStream();
          localObject2 = new byte['Ѐ'];
          l1 = 0L;
          i = ((InputStream)localObject1).read((byte[])localObject2);
          if (i > 0)
          {
            l1 += i;
            if (l1 > j * 1024 * 1024)
            {
              d = IMWebView.f.h.ordinal();
              return "failure";
            }
            paramVarArgs.write((byte[])localObject2, 0, i);
            continue;
          }
        }
        i = 0;
      }
      catch (SocketTimeoutException paramVarArgs)
      {
        com.inmobi.commons.internal.Log.internal("[InMobi]-[RE]-4.4.1", "SocketTimeoutException");
        d = IMWebView.f.i.ordinal();
        return "failure";
        paramVarArgs.close();
        l1 = System.currentTimeMillis();
        paramVarArgs = "file://" + a.getAbsolutePath();
        com.inmobi.commons.internal.Log.internal("[InMobi]-[RE]-4.4.1", "file path of video: " + paramVarArgs);
        localObject1 = new JSONObject();
        ((JSONObject)localObject1).put("url", b);
        ((JSONObject)localObject1).put("saved_url", paramVarArgs);
        ((JSONObject)localObject1).put("size_in_bytes", a.length());
        ((JSONObject)localObject1).put("download_started_at", l2);
        ((JSONObject)localObject1).put("download_ended_at", l1);
        e = ((JSONObject)localObject1).toString().replace("\"", "\\\"");
        return "success";
      }
      catch (FileNotFoundException paramVarArgs)
      {
        com.inmobi.commons.internal.Log.internal("[InMobi]-[RE]-4.4.1", "FileNotFoundException");
        d = IMWebView.f.e.ordinal();
        return "failure";
      }
      catch (MalformedURLException paramVarArgs)
      {
        com.inmobi.commons.internal.Log.internal("[InMobi]-[RE]-4.4.1", "MalformedURLException");
        d = IMWebView.f.d.ordinal();
        return "failure";
      }
      catch (ProtocolException paramVarArgs)
      {
        com.inmobi.commons.internal.Log.internal("[InMobi]-[RE]-4.4.1", "ProtocolException");
        d = IMWebView.f.i.ordinal();
        return "failure";
      }
      catch (IOException paramVarArgs)
      {
        com.inmobi.commons.internal.Log.internal("[InMobi]-[RE]-4.4.1", "IOException");
        d = IMWebView.f.a.ordinal();
        return "failure";
      }
      catch (JSONException paramVarArgs)
      {
        com.inmobi.commons.internal.Log.internal("[InMobi]-[RE]-4.4.1", "JSONException");
        d = IMWebView.f.a.ordinal();
        return "failure";
      }
      catch (Exception paramVarArgs)
      {
        com.inmobi.commons.internal.Log.internal("[InMobi]-[RE]-4.4.1", "Unknown Exception");
        d = IMWebView.f.a.ordinal();
        return "failure";
      }
    }
  }
  
  protected void a(String paramString)
  {
    if (paramString.equals("success"))
    {
      f.injectJavaScript("window.mraid.sendSaveContentResult(\"saveContent_" + c + "\", 'success', \"" + e + "\");");
      if (f.c != null) {
        f.c.postSuccess();
      }
    }
    for (;;)
    {
      super.onPostExecute(paramString);
      return;
      Object localObject = new JSONObject();
      try
      {
        ((JSONObject)localObject).put("url", b);
        ((JSONObject)localObject).put("reason", d);
        localObject = ((JSONObject)localObject).toString().replace("\"", "\\\"");
        f.injectJavaScript("window.mraid.sendSaveContentResult(\"saveContent_" + c + "\", 'failure', \"" + (String)localObject + "\");");
        if (f.c != null) {
          f.c.postFailed(d);
        }
      }
      catch (JSONException localJSONException) {}
    }
  }
  
  protected void onCancelled()
  {
    super.onCancelled();
  }
}

/* Location:
 * Qualified Name:     com.inmobi.re.container.IMWebView.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */