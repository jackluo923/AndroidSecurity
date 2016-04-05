package org.apache.cordova;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnDismissListener;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnKeyListener;
import android.view.ViewGroup.LayoutParams;
import android.view.Window;
import android.view.WindowManager.LayoutParams;
import android.webkit.CookieManager;
import android.webkit.WebSettings;
import android.webkit.WebSettings.PluginState;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import java.io.File;
import org.apache.cordova.api.CordovaInterface;

class InAppBrowser$5
  implements Runnable
{
  InAppBrowser$5(InAppBrowser paramInAppBrowser, String paramString, CordovaWebView paramCordovaWebView) {}
  
  private int dpToPixels(int paramInt)
  {
    return (int)TypedValue.applyDimension(1, paramInt, this$0.cordova.getActivity().getResources().getDisplayMetrics());
  }
  
  public void run()
  {
    InAppBrowser.access$002(this$0, new Dialog(this$0.cordova.getActivity(), 16973830));
    access$000this$0).getWindow().getAttributes().windowAnimations = 16973826;
    InAppBrowser.access$000(this$0).requestWindowFeature(1);
    InAppBrowser.access$000(this$0).setCancelable(true);
    InAppBrowser.access$000(this$0).setOnDismissListener(new DialogInterface.OnDismissListener()
    {
      public void onDismiss(DialogInterface paramAnonymousDialogInterface)
      {
        this$0.closeDialog();
      }
    });
    LinearLayout localLinearLayout = new LinearLayout(this$0.cordova.getActivity());
    localLinearLayout.setOrientation(1);
    Object localObject1 = new RelativeLayout(this$0.cordova.getActivity());
    ((RelativeLayout)localObject1).setBackgroundColor(-3355444);
    ((RelativeLayout)localObject1).setLayoutParams(new RelativeLayout.LayoutParams(-1, dpToPixels(44)));
    ((RelativeLayout)localObject1).setPadding(dpToPixels(2), dpToPixels(2), dpToPixels(2), dpToPixels(2));
    ((RelativeLayout)localObject1).setHorizontalGravity(3);
    ((RelativeLayout)localObject1).setVerticalGravity(48);
    RelativeLayout localRelativeLayout = new RelativeLayout(this$0.cordova.getActivity());
    localRelativeLayout.setLayoutParams(new RelativeLayout.LayoutParams(-2, -2));
    localRelativeLayout.setHorizontalGravity(3);
    localRelativeLayout.setVerticalGravity(16);
    localRelativeLayout.setId(1);
    Button localButton = new Button(this$0.cordova.getActivity());
    Object localObject2 = new RelativeLayout.LayoutParams(-2, -1);
    ((RelativeLayout.LayoutParams)localObject2).addRule(5);
    localButton.setLayoutParams((ViewGroup.LayoutParams)localObject2);
    localButton.setContentDescription("Back Button");
    localButton.setId(2);
    localButton.setText("<");
    localButton.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        InAppBrowser.access$200(this$0);
      }
    });
    localObject2 = new Button(this$0.cordova.getActivity());
    Object localObject3 = new RelativeLayout.LayoutParams(-2, -1);
    ((RelativeLayout.LayoutParams)localObject3).addRule(1, 2);
    ((Button)localObject2).setLayoutParams((ViewGroup.LayoutParams)localObject3);
    ((Button)localObject2).setContentDescription("Forward Button");
    ((Button)localObject2).setId(3);
    ((Button)localObject2).setText(">");
    ((Button)localObject2).setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        InAppBrowser.access$300(this$0);
      }
    });
    InAppBrowser.access$402(this$0, new EditText(this$0.cordova.getActivity()));
    localObject3 = new RelativeLayout.LayoutParams(-1, -1);
    ((RelativeLayout.LayoutParams)localObject3).addRule(1, 1);
    ((RelativeLayout.LayoutParams)localObject3).addRule(0, 5);
    InAppBrowser.access$400(this$0).setLayoutParams((ViewGroup.LayoutParams)localObject3);
    InAppBrowser.access$400(this$0).setId(4);
    InAppBrowser.access$400(this$0).setSingleLine(true);
    InAppBrowser.access$400(this$0).setText(val$url);
    InAppBrowser.access$400(this$0).setInputType(16);
    InAppBrowser.access$400(this$0).setImeOptions(2);
    InAppBrowser.access$400(this$0).setInputType(0);
    InAppBrowser.access$400(this$0).setOnKeyListener(new View.OnKeyListener()
    {
      public boolean onKey(View paramAnonymousView, int paramAnonymousInt, KeyEvent paramAnonymousKeyEvent)
      {
        if ((paramAnonymousKeyEvent.getAction() == 0) && (paramAnonymousInt == 66))
        {
          InAppBrowser.access$500(this$0, InAppBrowser.access$400(this$0).getText().toString());
          return true;
        }
        return false;
      }
    });
    localObject3 = new Button(this$0.cordova.getActivity());
    Object localObject4 = new RelativeLayout.LayoutParams(-2, -1);
    ((RelativeLayout.LayoutParams)localObject4).addRule(11);
    ((Button)localObject3).setLayoutParams((ViewGroup.LayoutParams)localObject4);
    ((Button)localObject2).setContentDescription("Close Button");
    ((Button)localObject3).setId(5);
    ((Button)localObject3).setText(InAppBrowser.access$600(this$0));
    ((Button)localObject3).setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        this$0.closeDialog();
      }
    });
    InAppBrowser.access$102(this$0, new WebView(this$0.cordova.getActivity()));
    InAppBrowser.access$100(this$0).setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
    InAppBrowser.access$100(this$0).setWebChromeClient(new InAppChromeClient(val$thatWebView));
    localObject4 = new InAppBrowser.InAppBrowserClient(this$0, val$thatWebView, InAppBrowser.access$400(this$0));
    InAppBrowser.access$100(this$0).setWebViewClient((WebViewClient)localObject4);
    localObject4 = InAppBrowser.access$100(this$0).getSettings();
    ((WebSettings)localObject4).setJavaScriptEnabled(true);
    ((WebSettings)localObject4).setJavaScriptCanOpenWindowsAutomatically(true);
    ((WebSettings)localObject4).setBuiltInZoomControls(true);
    ((WebSettings)localObject4).setPluginState(WebSettings.PluginState.ON);
    Bundle localBundle = this$0.cordova.getActivity().getIntent().getExtras();
    boolean bool;
    if (localBundle == null)
    {
      bool = true;
      if (bool)
      {
        ((WebSettings)localObject4).setDatabasePath(this$0.cordova.getActivity().getApplicationContext().getDir("inAppBrowserDB", 0).getPath());
        ((WebSettings)localObject4).setDatabaseEnabled(true);
      }
      ((WebSettings)localObject4).setDomStorageEnabled(true);
      if (!InAppBrowser.access$700(this$0)) {
        break label1113;
      }
      CookieManager.getInstance().removeAllCookie();
    }
    for (;;)
    {
      InAppBrowser.access$100(this$0).loadUrl(val$url);
      InAppBrowser.access$100(this$0).setId(6);
      InAppBrowser.access$100(this$0).getSettings().setLoadWithOverviewMode(true);
      InAppBrowser.access$100(this$0).getSettings().setUseWideViewPort(true);
      InAppBrowser.access$100(this$0).requestFocus();
      InAppBrowser.access$100(this$0).requestFocusFromTouch();
      localRelativeLayout.addView(localButton);
      localRelativeLayout.addView((View)localObject2);
      ((RelativeLayout)localObject1).addView(localRelativeLayout);
      ((RelativeLayout)localObject1).addView(InAppBrowser.access$400(this$0));
      ((RelativeLayout)localObject1).addView((View)localObject3);
      if (InAppBrowser.access$900(this$0)) {
        localLinearLayout.addView((View)localObject1);
      }
      localLinearLayout.addView(InAppBrowser.access$100(this$0));
      localObject1 = new WindowManager.LayoutParams();
      ((WindowManager.LayoutParams)localObject1).copyFrom(InAppBrowser.access$000(this$0).getWindow().getAttributes());
      width = -1;
      height = -1;
      InAppBrowser.access$000(this$0).setContentView(localLinearLayout);
      InAppBrowser.access$000(this$0).show();
      InAppBrowser.access$000(this$0).getWindow().setAttributes((WindowManager.LayoutParams)localObject1);
      if (InAppBrowser.access$1000(this$0)) {
        InAppBrowser.access$000(this$0).hide();
      }
      return;
      bool = localBundle.getBoolean("InAppBrowserStorageEnabled", true);
      break;
      label1113:
      if (InAppBrowser.access$800(this$0)) {
        CookieManager.getInstance().removeSessionCookie();
      }
    }
  }
}

/* Location:
 * Qualified Name:     org.apache.cordova.InAppBrowser.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */