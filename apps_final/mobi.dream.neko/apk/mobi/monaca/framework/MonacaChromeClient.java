package mobi.monaca.framework;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnClickListener;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.res.Resources;
import android.webkit.GeolocationPermissions.Callback;
import android.webkit.JsPromptResult;
import android.webkit.JsResult;
import android.webkit.WebView;
import mobi.monaca.framework.psedo.R.string;
import mobi.monaca.framework.util.MyLog;
import org.apache.cordova.CordovaChromeClient;
import org.apache.cordova.CordovaWebView;
import org.apache.cordova.api.CordovaInterface;

public class MonacaChromeClient
  extends CordovaChromeClient
{
  private static final String TAG = MonacaChromeClient.class.getSimpleName();
  private CordovaInterface cordova;
  private SharedPreferences geolocationPref;
  
  public MonacaChromeClient(CordovaInterface paramCordovaInterface)
  {
    super(paramCordovaInterface);
    cordova = paramCordovaInterface;
    paramCordovaInterface = cordova.getActivity();
    geolocationPref = paramCordovaInterface.getSharedPreferences(paramCordovaInterface.getResources().getString(R.string.pref_geolocation), 0);
  }
  
  public MonacaChromeClient(CordovaInterface paramCordovaInterface, CordovaWebView paramCordovaWebView)
  {
    super(paramCordovaInterface, paramCordovaWebView);
    cordova = paramCordovaInterface;
    geolocationPref = paramCordovaInterface.getActivity().getSharedPreferences(paramCordovaInterface.getActivity().getResources().getString(R.string.pref_geolocation), 0);
  }
  
  public void onGeolocationPermissionsShowPrompt(final String paramString, final GeolocationPermissions.Callback paramCallback)
  {
    MyLog.d(TAG, TAG + paramString);
    if ((geolocationPref.contains(paramString)) && (geolocationPref.getBoolean(paramString, false)))
    {
      paramCallback.invoke(paramString, true, false);
      return;
    }
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(cordova.getActivity());
    localBuilder.setTitle(R.string.geo_confirm_title);
    localBuilder.setMessage(R.string.geo_confirm_message);
    localBuilder.setPositiveButton(17039370, new DialogInterface.OnClickListener()
    {
      public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        geolocationPref.edit().putBoolean(paramString, true).commit();
        paramCallback.invoke(paramString, true, false);
      }
    });
    localBuilder.setNegativeButton(17039369, new DialogInterface.OnClickListener()
    {
      public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        paramCallback.invoke(paramString, false, false);
      }
    });
    localBuilder.setOnCancelListener(new DialogInterface.OnCancelListener()
    {
      public void onCancel(DialogInterface paramAnonymousDialogInterface)
      {
        paramCallback.invoke(paramString, false, false);
      }
    });
    localBuilder.create().show();
  }
  
  public boolean onJsAlert(WebView paramWebView, String paramString1, String paramString2, JsResult paramJsResult)
  {
    if (cordova.getActivity().isFinishing())
    {
      paramJsResult.cancel();
      return true;
    }
    return super.onJsAlert(paramWebView, paramString1, paramString2, paramJsResult);
  }
  
  public boolean onJsConfirm(WebView paramWebView, String paramString1, String paramString2, JsResult paramJsResult)
  {
    if (cordova.getActivity().isFinishing())
    {
      paramJsResult.cancel();
      return true;
    }
    return super.onJsConfirm(paramWebView, paramString1, paramString2, paramJsResult);
  }
  
  public boolean onJsPrompt(WebView paramWebView, String paramString1, String paramString2, String paramString3, JsPromptResult paramJsPromptResult)
  {
    if (paramString1.equalsIgnoreCase(MonacaApplication.getStringFromResource(R.string.uri))) {
      return true;
    }
    return super.onJsPrompt(paramWebView, paramString1, paramString2, paramString3, paramJsPromptResult);
  }
}

/* Location:
 * Qualified Name:     mobi.monaca.framework.MonacaChromeClient
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */