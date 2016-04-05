package mobi.monaca.framework.plugin;

import android.app.Activity;
import android.app.Dialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnDismissListener;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.util.Log;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnKeyListener;
import android.view.ViewGroup.LayoutParams;
import android.view.Window;
import android.view.WindowManager.LayoutParams;
import android.view.inputmethod.InputMethodManager;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebSettings.PluginState;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import java.io.IOException;
import mobi.monaca.framework.psedo.R.drawable;
import org.apache.cordova.api.CordovaInterface;
import org.apache.cordova.api.Plugin;
import org.apache.cordova.api.PluginResult;
import org.apache.cordova.api.PluginResult.Status;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class ChildBrowser
  extends Plugin
{
  private static int CLOSE_EVENT = 0;
  private static int LOCATION_CHANGED_EVENT = 1;
  protected static final String LOG_TAG = "ChildBrowser";
  private String browserCallbackId = null;
  private Dialog dialog;
  private EditText edittext;
  private boolean showLocationBar = true;
  private WebView webview;
  
  private void closeDialog()
  {
    if (dialog != null) {
      dialog.dismiss();
    }
  }
  
  private boolean getShowLocationBar()
  {
    return showLocationBar;
  }
  
  private void goBack()
  {
    if (webview.canGoBack()) {
      webview.goBack();
    }
  }
  
  private void goForward()
  {
    if (webview.canGoForward()) {
      webview.goForward();
    }
  }
  
  private void navigate(String paramString)
  {
    ((InputMethodManager)cordova.getActivity().getSystemService("input_method")).hideSoftInputFromWindow(edittext.getWindowToken(), 0);
    if ((!paramString.startsWith("http")) && (!paramString.startsWith("file:"))) {
      webview.loadUrl("http://" + paramString);
    }
    for (;;)
    {
      webview.requestFocus();
      return;
      webview.loadUrl(paramString);
    }
  }
  
  private void sendUpdate(JSONObject paramJSONObject, boolean paramBoolean)
  {
    if (browserCallbackId != null)
    {
      paramJSONObject = new PluginResult(PluginResult.Status.OK, paramJSONObject);
      paramJSONObject.setKeepCallback(paramBoolean);
      success(paramJSONObject, browserCallbackId);
    }
  }
  
  public PluginResult execute(String paramString1, JSONArray paramJSONArray, String paramString2)
  {
    PluginResult.Status localStatus = PluginResult.Status.OK;
    String str = "";
    try
    {
      if (!paramString1.equals("showWebPage")) {
        break label119;
      }
      browserCallbackId = paramString2;
      if ((dialog != null) && (dialog.isShowing())) {
        return new PluginResult(PluginResult.Status.ERROR, "ChildBrowser is already open");
      }
      paramString1 = showWebPage(paramJSONArray.getString(0), paramJSONArray.optJSONObject(1));
      if (paramString1.length() > 0)
      {
        paramString1 = new PluginResult(PluginResult.Status.ERROR, paramString1);
        return paramString1;
      }
    }
    catch (JSONException paramString1)
    {
      return new PluginResult(PluginResult.Status.JSON_EXCEPTION);
    }
    paramString1 = new PluginResult(localStatus, paramString1);
    paramString1.setKeepCallback(true);
    return paramString1;
    label119:
    if (paramString1.equals("close"))
    {
      closeDialog();
      paramString1 = new JSONObject();
      paramString1.put("type", CLOSE_EVENT);
      paramString1 = new PluginResult(localStatus, paramString1);
      paramString1.setKeepCallback(false);
      return paramString1;
    }
    if (paramString1.equals("openExternal"))
    {
      paramString2 = openExternal(paramJSONArray.getString(0), paramJSONArray.optBoolean(1));
      paramJSONArray = paramString2;
      paramString1 = localStatus;
      if (paramString2.length() > 0) {
        paramString1 = PluginResult.Status.ERROR;
      }
    }
    for (paramJSONArray = paramString2;; paramJSONArray = str)
    {
      return new PluginResult(paramString1, paramJSONArray);
      paramString1 = PluginResult.Status.INVALID_ACTION;
    }
  }
  
  /* Error */
  public String openExternal(String paramString, boolean paramBoolean)
  {
    // Byte code:
    //   0: iload_2
    //   1: ifeq +91 -> 92
    //   4: new 267	android/content/Intent
    //   7: dup
    //   8: invokespecial 268	android/content/Intent:<init>	()V
    //   11: aload_0
    //   12: getfield 121	mobi/monaca/framework/plugin/ChildBrowser:cordova	Lorg/apache/cordova/api/CordovaInterface;
    //   15: invokeinterface 127 1 0
    //   20: ldc_w 270
    //   23: invokevirtual 274	android/content/Intent:setClass	(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
    //   26: astore_3
    //   27: aload_3
    //   28: aload_1
    //   29: invokestatic 280	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   32: invokevirtual 284	android/content/Intent:setData	(Landroid/net/Uri;)Landroid/content/Intent;
    //   35: pop
    //   36: aload_3
    //   37: ldc_w 286
    //   40: aload_1
    //   41: invokevirtual 290	android/content/Intent:putExtra	(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    //   44: pop
    //   45: aload_3
    //   46: ldc_w 292
    //   49: ldc_w 293
    //   52: invokevirtual 296	android/content/Intent:putExtra	(Ljava/lang/String;I)Landroid/content/Intent;
    //   55: pop
    //   56: aload_3
    //   57: ldc_w 298
    //   60: ldc_w 300
    //   63: invokevirtual 290	android/content/Intent:putExtra	(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    //   66: pop
    //   67: aload_3
    //   68: ldc_w 302
    //   71: iconst_1
    //   72: invokevirtual 305	android/content/Intent:putExtra	(Ljava/lang/String;Z)Landroid/content/Intent;
    //   75: pop
    //   76: aload_0
    //   77: getfield 121	mobi/monaca/framework/plugin/ChildBrowser:cordova	Lorg/apache/cordova/api/CordovaInterface;
    //   80: invokeinterface 127 1 0
    //   85: aload_3
    //   86: invokevirtual 309	android/app/Activity:startActivity	(Landroid/content/Intent;)V
    //   89: ldc -55
    //   91: areturn
    //   92: new 267	android/content/Intent
    //   95: dup
    //   96: ldc_w 311
    //   99: invokespecial 313	android/content/Intent:<init>	(Ljava/lang/String;)V
    //   102: astore_3
    //   103: aload_3
    //   104: aload_1
    //   105: invokestatic 280	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   108: invokevirtual 284	android/content/Intent:setData	(Landroid/net/Uri;)Landroid/content/Intent;
    //   111: pop
    //   112: goto -36 -> 76
    //   115: astore_3
    //   116: ldc 27
    //   118: new 159	java/lang/StringBuilder
    //   121: dup
    //   122: invokespecial 160	java/lang/StringBuilder:<init>	()V
    //   125: ldc_w 315
    //   128: invokevirtual 166	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   131: aload_1
    //   132: invokevirtual 166	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   135: ldc_w 317
    //   138: invokevirtual 166	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   141: aload_3
    //   142: invokevirtual 318	android/content/ActivityNotFoundException:toString	()Ljava/lang/String;
    //   145: invokevirtual 166	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   148: invokevirtual 170	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   151: invokestatic 324	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   154: pop
    //   155: aload_3
    //   156: invokevirtual 318	android/content/ActivityNotFoundException:toString	()Ljava/lang/String;
    //   159: areturn
    //   160: astore_3
    //   161: goto -45 -> 116
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	164	0	this	ChildBrowser
    //   0	164	1	paramString	String
    //   0	164	2	paramBoolean	boolean
    //   26	78	3	localIntent	android.content.Intent
    //   115	41	3	localActivityNotFoundException1	android.content.ActivityNotFoundException
    //   160	1	3	localActivityNotFoundException2	android.content.ActivityNotFoundException
    // Exception table:
    //   from	to	target	type
    //   4	76	115	android/content/ActivityNotFoundException
    //   76	89	115	android/content/ActivityNotFoundException
    //   92	103	115	android/content/ActivityNotFoundException
    //   103	112	160	android/content/ActivityNotFoundException
  }
  
  public String showWebPage(final String paramString, JSONObject paramJSONObject)
  {
    if (paramJSONObject != null) {
      showLocationBar = paramJSONObject.optBoolean("showLocationBar", true);
    }
    paramString = new Runnable()
    {
      private int dpToPixels(int paramAnonymousInt)
      {
        return (int)TypedValue.applyDimension(1, paramAnonymousInt, cordova.getActivity().getResources().getDisplayMetrics());
      }
      
      private Bitmap loadDrawable(String paramAnonymousString)
        throws IOException
      {
        return BitmapFactory.decodeStream(cordova.getActivity().getAssets().open(paramAnonymousString));
      }
      
      public void run()
      {
        ChildBrowser.access$002(ChildBrowser.this, new Dialog(cordova.getActivity(), 16973830));
        dialog.getWindow().getAttributes().windowAnimations = 16973826;
        dialog.requestWindowFeature(1);
        dialog.setCancelable(true);
        dialog.setOnDismissListener(new DialogInterface.OnDismissListener()
        {
          public void onDismiss(DialogInterface paramAnonymous2DialogInterface)
          {
            try
            {
              paramAnonymous2DialogInterface = new JSONObject();
              paramAnonymous2DialogInterface.put("type", ChildBrowser.CLOSE_EVENT);
              ChildBrowser.this.sendUpdate(paramAnonymous2DialogInterface, false);
              return;
            }
            catch (JSONException paramAnonymous2DialogInterface)
            {
              Log.d("ChildBrowser", "Should never happen");
            }
          }
        });
        LinearLayout localLinearLayout = new LinearLayout(cordova.getActivity());
        localLinearLayout.setOrientation(1);
        Object localObject1 = new RelativeLayout(cordova.getActivity());
        ((RelativeLayout)localObject1).setLayoutParams(new RelativeLayout.LayoutParams(-1, dpToPixels(44)));
        ((RelativeLayout)localObject1).setPadding(dpToPixels(2), dpToPixels(2), dpToPixels(2), dpToPixels(2));
        ((RelativeLayout)localObject1).setHorizontalGravity(3);
        ((RelativeLayout)localObject1).setVerticalGravity(48);
        RelativeLayout localRelativeLayout = new RelativeLayout(cordova.getActivity());
        localRelativeLayout.setLayoutParams(new RelativeLayout.LayoutParams(-2, -2));
        localRelativeLayout.setHorizontalGravity(3);
        localRelativeLayout.setVerticalGravity(16);
        localRelativeLayout.setId(1);
        ImageButton localImageButton = new ImageButton(cordova.getActivity());
        Object localObject2 = new RelativeLayout.LayoutParams(-2, -1);
        ((RelativeLayout.LayoutParams)localObject2).addRule(5);
        localImageButton.setLayoutParams((ViewGroup.LayoutParams)localObject2);
        localImageButton.setContentDescription("Back Button");
        localImageButton.setId(2);
        localImageButton.setImageResource(R.drawable.childbroswer_icon_arrow_left);
        localImageButton.setOnClickListener(new View.OnClickListener()
        {
          public void onClick(View paramAnonymous2View)
          {
            ChildBrowser.this.goBack();
          }
        });
        localObject2 = new ImageButton(cordova.getActivity());
        Object localObject3 = new RelativeLayout.LayoutParams(-2, -1);
        ((RelativeLayout.LayoutParams)localObject3).addRule(1, 2);
        ((ImageButton)localObject2).setLayoutParams((ViewGroup.LayoutParams)localObject3);
        ((ImageButton)localObject2).setContentDescription("Forward Button");
        ((ImageButton)localObject2).setId(3);
        ((ImageButton)localObject2).setImageResource(R.drawable.childbroswer_icon_arrow_right);
        ((ImageButton)localObject2).setOnClickListener(new View.OnClickListener()
        {
          public void onClick(View paramAnonymous2View)
          {
            ChildBrowser.this.goForward();
          }
        });
        ChildBrowser.access$502(ChildBrowser.this, new EditText(cordova.getActivity()));
        localObject3 = new RelativeLayout.LayoutParams(-1, -1);
        ((RelativeLayout.LayoutParams)localObject3).addRule(1, 1);
        ((RelativeLayout.LayoutParams)localObject3).addRule(0, 5);
        edittext.setLayoutParams((ViewGroup.LayoutParams)localObject3);
        edittext.setId(4);
        edittext.setSingleLine(true);
        edittext.setText(paramString);
        edittext.setInputType(16);
        edittext.setImeOptions(2);
        edittext.setInputType(0);
        edittext.setOnKeyListener(new View.OnKeyListener()
        {
          public boolean onKey(View paramAnonymous2View, int paramAnonymous2Int, KeyEvent paramAnonymous2KeyEvent)
          {
            if ((paramAnonymous2KeyEvent.getAction() == 0) && (paramAnonymous2Int == 66))
            {
              ChildBrowser.this.navigate(edittext.getText().toString());
              return true;
            }
            return false;
          }
        });
        localObject3 = new ImageButton(cordova.getActivity());
        Object localObject4 = new RelativeLayout.LayoutParams(-2, -1);
        ((RelativeLayout.LayoutParams)localObject4).addRule(11);
        ((ImageButton)localObject3).setLayoutParams((ViewGroup.LayoutParams)localObject4);
        ((ImageButton)localObject2).setContentDescription("Close Button");
        ((ImageButton)localObject3).setId(5);
        ((ImageButton)localObject3).setImageResource(R.drawable.childbroswer_icon_close);
        ((ImageButton)localObject3).setOnClickListener(new View.OnClickListener()
        {
          public void onClick(View paramAnonymous2View)
          {
            ChildBrowser.this.closeDialog();
          }
        });
        ChildBrowser.access$802(ChildBrowser.this, new WebView(cordova.getActivity()));
        webview.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
        webview.setWebChromeClient(new WebChromeClient());
        localObject4 = new ChildBrowser.ChildBrowserClient(ChildBrowser.this, edittext);
        webview.setWebViewClient((WebViewClient)localObject4);
        localObject4 = webview.getSettings();
        ((WebSettings)localObject4).setJavaScriptEnabled(true);
        ((WebSettings)localObject4).setJavaScriptCanOpenWindowsAutomatically(true);
        ((WebSettings)localObject4).setBuiltInZoomControls(true);
        ((WebSettings)localObject4).setPluginState(WebSettings.PluginState.ON);
        ((WebSettings)localObject4).setDomStorageEnabled(true);
        webview.loadUrl(paramString);
        webview.setId(6);
        webview.getSettings().setLoadWithOverviewMode(true);
        webview.getSettings().setUseWideViewPort(true);
        webview.requestFocus();
        webview.requestFocusFromTouch();
        localRelativeLayout.addView(localImageButton);
        localRelativeLayout.addView((View)localObject2);
        ((RelativeLayout)localObject1).addView(localRelativeLayout);
        ((RelativeLayout)localObject1).addView(edittext);
        ((RelativeLayout)localObject1).addView((View)localObject3);
        if (ChildBrowser.this.getShowLocationBar()) {
          localLinearLayout.addView((View)localObject1);
        }
        localLinearLayout.addView(webview);
        localObject1 = new WindowManager.LayoutParams();
        ((WindowManager.LayoutParams)localObject1).copyFrom(dialog.getWindow().getAttributes());
        width = -1;
        height = -1;
        dialog.setContentView(localLinearLayout);
        dialog.show();
        dialog.getWindow().setAttributes((WindowManager.LayoutParams)localObject1);
      }
    };
    cordova.getActivity().runOnUiThread(paramString);
    return "";
  }
  
  public class ChildBrowserClient
    extends WebViewClient
  {
    EditText edittext;
    
    public ChildBrowserClient(EditText paramEditText)
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
          paramWebView.put("type", ChildBrowser.LOCATION_CHANGED_EVENT);
          paramWebView.put("location", paramString);
          ChildBrowser.this.sendUpdate(paramWebView, true);
          return;
        }
        catch (JSONException paramWebView)
        {
          Log.d("ChildBrowser", "This should never happen");
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     mobi.monaca.framework.plugin.ChildBrowser
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */