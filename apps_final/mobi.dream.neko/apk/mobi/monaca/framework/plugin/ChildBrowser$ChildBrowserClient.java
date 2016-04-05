package mobi.monaca.framework.plugin;

import android.graphics.Bitmap;
import android.util.Log;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.EditText;
import org.json.JSONException;
import org.json.JSONObject;

public class ChildBrowser$ChildBrowserClient
  extends WebViewClient
{
  EditText edittext;
  
  public ChildBrowser$ChildBrowserClient(ChildBrowser paramChildBrowser, EditText paramEditText)
  {
    edittext = paramEditText;
  }
  
  public void onPageStarted(WebView paramWebView, String paramString, Bitmap paramBitmap)
  {
    super.onPageStarted(paramWebView, paramString, paramBitmap);
    if ((paramString.startsWith("http:")) || (paramString.startsWith("https:")) || (paramString.startsWith("file:"))) {}
    for (paramWebView = paramString;; paramWebView = "http://" + paramString)
    {
      if (!paramWebView.equals(edittext.getText().toString())) {
        edittext.setText(paramWebView);
      }
      try
      {
        paramWebView = new JSONObject();
        paramWebView.put("type", ChildBrowser.access$1000());
        paramWebView.put("location", paramString);
        ChildBrowser.access$200(this$0, paramWebView, true);
        return;
      }
      catch (JSONException paramWebView)
      {
        Log.d("ChildBrowser", "This should never happen");
      }
    }
  }
}

/* Location:
 * Qualified Name:     mobi.monaca.framework.plugin.ChildBrowser.ChildBrowserClient
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */