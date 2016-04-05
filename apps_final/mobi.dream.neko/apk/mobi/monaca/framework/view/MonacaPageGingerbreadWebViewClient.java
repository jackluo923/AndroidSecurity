package mobi.monaca.framework.view;

import android.annotation.SuppressLint;
import android.graphics.Bitmap;
import android.net.http.SslError;
import android.os.Message;
import android.webkit.HttpAuthHandler;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import mobi.monaca.framework.MonacaApplication;
import mobi.monaca.framework.MonacaPageActivity;
import mobi.monaca.framework.psedo.R.string;
import mobi.monaca.framework.util.MyLog;
import mobi.monaca.framework.util.UrlUtil;
import mobi.monaca.utils.TimeStamp;
import mobi.monaca.utils.log.LogItem;
import mobi.monaca.utils.log.LogItem.LogLevel;
import mobi.monaca.utils.log.LogItem.Source;
import org.apache.cordova.CordovaWebView;
import org.apache.cordova.CordovaWebViewClient;

public class MonacaPageGingerbreadWebViewClient
  extends CordovaWebViewClient
{
  private static final String TAG = MonacaPageGingerbreadWebViewClient.class.getSimpleName();
  protected boolean isRemote;
  protected MonacaPageActivity monacaPage;
  
  public MonacaPageGingerbreadWebViewClient(MonacaPageActivity paramMonacaPageActivity, CordovaWebView paramCordovaWebView)
  {
    super(paramMonacaPageActivity, paramCordovaWebView);
    monacaPage = paramMonacaPageActivity;
  }
  
  public void doUpdateVisitedHistory(WebView paramWebView, String paramString, boolean paramBoolean)
  {
    super.doUpdateVisitedHistory(paramWebView, paramString, paramBoolean);
  }
  
  public void onFormResubmission(WebView paramWebView, Message paramMessage1, Message paramMessage2)
  {
    super.onFormResubmission(paramWebView, paramMessage1, paramMessage2);
  }
  
  public void onLoadResource(WebView paramWebView, String paramString)
  {
    monacaPage.onLoadResource(paramWebView, paramString);
    super.onLoadResource(paramWebView, paramString);
  }
  
  public void onPageFinished(WebView paramWebView, String paramString)
  {
    monacaPage.onPageFinished(paramWebView, paramString);
    super.onPageFinished(paramWebView, paramString);
  }
  
  public void onPageStarted(WebView paramWebView, String paramString, Bitmap paramBitmap)
  {
    monacaPage.onPageStarted(paramWebView, paramString);
    super.onPageStarted(paramWebView, paramString, paramBitmap);
  }
  
  public void onReceivedError(WebView paramWebView, int paramInt, String paramString1, String paramString2)
  {
    monacaPage.onReceivedError(paramWebView, paramInt, paramString1, paramString2);
    if ((paramInt == -14) || (paramInt == -1))
    {
      monacaPage.push404Page(paramString2);
      return;
    }
    super.onReceivedError(paramWebView, paramInt, paramString1, paramString2);
  }
  
  public void onReceivedHttpAuthRequest(WebView paramWebView, HttpAuthHandler paramHttpAuthHandler, String paramString1, String paramString2)
  {
    String[] arrayOfString = paramWebView.getHttpAuthUsernamePassword(paramString1, paramString2);
    if ((arrayOfString != null) && (arrayOfString.length == 2) && (arrayOfString[0] != null) && (arrayOfString[1] != null))
    {
      paramHttpAuthHandler.proceed(arrayOfString[0], arrayOfString[1]);
      return;
    }
    super.onReceivedHttpAuthRequest(paramWebView, paramHttpAuthHandler, paramString1, paramString2);
  }
  
  @SuppressLint({"NewApi"})
  public void onReceivedSslError(WebView paramWebView, SslErrorHandler paramSslErrorHandler, SslError paramSslError)
  {
    paramSslErrorHandler.proceed();
  }
  
  public boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    boolean bool = false;
    if (!((MonacaApplication)monacaPage.getApplication()).allowAccess(paramString))
    {
      paramWebView = new LogItem(TimeStamp.getCurrentTimeStamp(), LogItem.Source.SYSTEM, LogItem.LogLevel.ERROR, monacaPage.getString(R.string.error_notallowed) + paramString, "", 0);
      MyLog.sendBroadcastDebugLog(monacaPage.getApplicationContext(), paramWebView);
      bool = true;
    }
    while (paramString == null) {
      return bool;
    }
    if (paramString.contains(MonacaApplication.getStringFromResource(R.string.raw_home_url)))
    {
      monacaPage.goHomeAsync(null);
      return true;
    }
    if ((UrlUtil.isMonacaUri(monacaPage, paramString)) && (!UrlUtil.isEmbedding(paramString)))
    {
      monacaPage.loadUri(paramString, true);
      return true;
    }
    return super.shouldOverrideUrlLoading(paramWebView, paramString);
  }
}

/* Location:
 * Qualified Name:     mobi.monaca.framework.view.MonacaPageGingerbreadWebViewClient
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */