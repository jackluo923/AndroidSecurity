package mobi.monaca.framework.view;

import android.annotation.TargetApi;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import java.io.ByteArrayInputStream;
import mobi.monaca.framework.MonacaApplication;
import mobi.monaca.framework.MonacaPageActivity;
import mobi.monaca.framework.psedo.R.string;
import mobi.monaca.framework.util.MyLog;
import mobi.monaca.utils.TimeStamp;
import mobi.monaca.utils.log.LogItem;
import mobi.monaca.utils.log.LogItem.LogLevel;
import mobi.monaca.utils.log.LogItem.Source;
import org.apache.cordova.CordovaWebView;

public class MonacaPageHoneyCombWebViewClient
  extends MonacaPageGingerbreadWebViewClient
{
  private static final String TAG = MonacaPageHoneyCombWebViewClient.class.getSimpleName();
  
  public MonacaPageHoneyCombWebViewClient(MonacaPageActivity paramMonacaPageActivity, CordovaWebView paramCordovaWebView)
  {
    super(paramMonacaPageActivity, paramCordovaWebView);
  }
  
  @TargetApi(11)
  public WebResourceResponse shouldInterceptRequest(WebView paramWebView, String paramString)
  {
    if (!((MonacaApplication)monacaPage.getApplication()).allowAccess(paramString))
    {
      paramWebView = new LogItem(TimeStamp.getCurrentTimeStamp(), LogItem.Source.SYSTEM, LogItem.LogLevel.ERROR, monacaPage.getString(R.string.error_notallowed) + paramString, "", 0);
      MyLog.sendBroadcastDebugLog(monacaPage.getApplicationContext(), paramWebView);
      return new WebResourceResponse(monacaPage.getString(R.string.mine_type), monacaPage.getString(R.string.encoding), new ByteArrayInputStream((monacaPage.getString(R.string.error_notallowed) + paramString).getBytes()));
    }
    return super.shouldInterceptRequest(paramWebView, paramString);
  }
}

/* Location:
 * Qualified Name:     mobi.monaca.framework.view.MonacaPageHoneyCombWebViewClient
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */