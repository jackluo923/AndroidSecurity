package kagegames.apps.DWBeta;

import android.webkit.WebView;
import android.webkit.WebViewClient;

class ScoreboardWebActivity$DWWebViewClient
  extends WebViewClient
{
  final ScoreboardWebActivity this$0;
  
  private ScoreboardWebActivity$DWWebViewClient(ScoreboardWebActivity paramScoreboardWebActivity) {}
  
  ScoreboardWebActivity$DWWebViewClient(ScoreboardWebActivity paramScoreboardWebActivity, DWWebViewClient paramDWWebViewClient)
  {
    this(paramScoreboardWebActivity);
  }
  
  public boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    paramWebView.loadUrl(paramString);
    boolean bool = true;
    return bool;
  }
}

/* Location:
 * Qualified Name:     kagegames.apps.DWBeta.ScoreboardWebActivity.DWWebViewClient
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */