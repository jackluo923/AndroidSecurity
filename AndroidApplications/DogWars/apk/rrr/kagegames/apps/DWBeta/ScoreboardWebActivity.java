package kagegames.apps.DWBeta;

import android.app.Activity;
import android.content.res.AssetManager;
import android.graphics.Typeface;
import android.os.Bundle;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.TextView;

public class ScoreboardWebActivity
  extends Activity
{
  Typeface mFace;
  private WebView mWebView;
  
  public void onCreate(Bundle paramBundle)
  {
    int k = 1;
    super.onCreate(paramBundle);
    requestWindowFeature(k);
    int i = 2130903068;
    setContentView(i);
    i = 2131099668;
    Object localObject1 = findViewById(i);
    localObject1 = (TextView)localObject1;
    Object localObject2 = "SCOREBOARD";
    ((TextView)localObject1).setText((CharSequence)localObject2);
    localObject2 = getAssets();
    Object localObject4 = "bohemian_typewriter.ttf";
    localObject2 = Typeface.createFromAsset((AssetManager)localObject2, (String)localObject4);
    mFace = ((Typeface)localObject2);
    localObject2 = mFace;
    ((TextView)localObject1).setTypeface((Typeface)localObject2);
    int j = 2131099785;
    Object localObject3 = findViewById(j);
    localObject3 = (WebView)localObject3;
    mWebView = ((WebView)localObject3);
    localObject3 = mWebView;
    localObject3 = ((WebView)localObject3).getSettings();
    ((WebSettings)localObject3).setJavaScriptEnabled(k);
    localObject3 = mWebView;
    localObject4 = new kagegames/apps/DWBeta/ScoreboardWebActivity$DWWebViewClient;
    ScoreboardWebActivity.DWWebViewClient localDWWebViewClient = null;
    ((ScoreboardWebActivity.DWWebViewClient)localObject4).<init>(this, localDWWebViewClient);
    ((WebView)localObject3).setWebViewClient((WebViewClient)localObject4);
    localObject3 = mWebView;
    localObject4 = "http://kagegames.com/dw/scoreboard";
    ((WebView)localObject3).loadUrl((String)localObject4);
  }
}

/* Location:
 * Qualified Name:     kagegames.apps.DWBeta.ScoreboardWebActivity
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */