package com.google.zxing.client.android;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.Button;
import com.google.zxing.FakeR;

public final class HelpActivity
  extends Activity
{
  private static final String BASE_URL = "file:///android_asset/html-" + LocaleManager.getTranslatedAssetLanguage() + '/';
  public static final String DEFAULT_PAGE = "index.html";
  public static final String REQUESTED_PAGE_KEY = "requested_page_key";
  private static final String WEBVIEW_STATE_PRESENT = "webview_state_present";
  public static final String WHATS_NEW_PAGE = "whatsnew.html";
  private static FakeR fakeR;
  private Button backButton;
  private final View.OnClickListener backListener = new View.OnClickListener()
  {
    public void onClick(View paramAnonymousView)
    {
      webView.goBack();
    }
  };
  private final View.OnClickListener doneListener = new View.OnClickListener()
  {
    public void onClick(View paramAnonymousView)
    {
      finish();
    }
  };
  private WebView webView;
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    fakeR = new FakeR(this);
    setContentView(fakeR.getId("layout", "help"));
    webView = ((WebView)findViewById(fakeR.getId("id", "help_contents")));
    webView.setWebViewClient(new HelpClient(null));
    Intent localIntent = getIntent();
    if ((paramBundle != null) && (paramBundle.getBoolean("webview_state_present", false))) {
      webView.restoreState(paramBundle);
    }
    for (;;)
    {
      backButton = ((Button)findViewById(fakeR.getId("id", "back_button")));
      backButton.setOnClickListener(backListener);
      findViewById(fakeR.getId("id", "done_button")).setOnClickListener(doneListener);
      return;
      if (localIntent != null)
      {
        paramBundle = localIntent.getStringExtra("requested_page_key");
        if ((paramBundle != null) && (paramBundle.length() > 0)) {
          webView.loadUrl(BASE_URL + paramBundle);
        } else {
          webView.loadUrl(BASE_URL + "index.html");
        }
      }
      else
      {
        webView.loadUrl(BASE_URL + "index.html");
      }
    }
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramInt == 4) && (webView.canGoBack()))
    {
      webView.goBack();
      return true;
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    String str = webView.getUrl();
    if ((str != null) && (str.length() > 0))
    {
      webView.saveState(paramBundle);
      paramBundle.putBoolean("webview_state_present", true);
    }
  }
  
  private final class HelpClient
    extends WebViewClient
  {
    private HelpClient() {}
    
    public void onPageFinished(WebView paramWebView, String paramString)
    {
      setTitle(paramWebView.getTitle());
      backButton.setEnabled(paramWebView.canGoBack());
    }
    
    public boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
    {
      if (paramString.startsWith("file")) {
        return false;
      }
      startActivity(new Intent("android.intent.action.VIEW", Uri.parse(paramString)));
      return true;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.client.android.HelpActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */