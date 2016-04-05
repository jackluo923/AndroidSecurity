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
import org.json.JSONException;
import org.json.JSONObject;

class ChildBrowser$1
  implements Runnable
{
  ChildBrowser$1(ChildBrowser paramChildBrowser, String paramString) {}
  
  private int dpToPixels(int paramInt)
  {
    return (int)TypedValue.applyDimension(1, paramInt, this$0.cordova.getActivity().getResources().getDisplayMetrics());
  }
  
  private Bitmap loadDrawable(String paramString)
    throws IOException
  {
    return BitmapFactory.decodeStream(this$0.cordova.getActivity().getAssets().open(paramString));
  }
  
  public void run()
  {
    ChildBrowser.access$002(this$0, new Dialog(this$0.cordova.getActivity(), 16973830));
    access$000this$0).getWindow().getAttributes().windowAnimations = 16973826;
    ChildBrowser.access$000(this$0).requestWindowFeature(1);
    ChildBrowser.access$000(this$0).setCancelable(true);
    ChildBrowser.access$000(this$0).setOnDismissListener(new DialogInterface.OnDismissListener()
    {
      public void onDismiss(DialogInterface paramAnonymousDialogInterface)
      {
        try
        {
          paramAnonymousDialogInterface = new JSONObject();
          paramAnonymousDialogInterface.put("type", ChildBrowser.access$100());
          ChildBrowser.access$200(this$0, paramAnonymousDialogInterface, false);
          return;
        }
        catch (JSONException paramAnonymousDialogInterface)
        {
          Log.d("ChildBrowser", "Should never happen");
        }
      }
    });
    LinearLayout localLinearLayout = new LinearLayout(this$0.cordova.getActivity());
    localLinearLayout.setOrientation(1);
    Object localObject1 = new RelativeLayout(this$0.cordova.getActivity());
    ((RelativeLayout)localObject1).setLayoutParams(new RelativeLayout.LayoutParams(-1, dpToPixels(44)));
    ((RelativeLayout)localObject1).setPadding(dpToPixels(2), dpToPixels(2), dpToPixels(2), dpToPixels(2));
    ((RelativeLayout)localObject1).setHorizontalGravity(3);
    ((RelativeLayout)localObject1).setVerticalGravity(48);
    RelativeLayout localRelativeLayout = new RelativeLayout(this$0.cordova.getActivity());
    localRelativeLayout.setLayoutParams(new RelativeLayout.LayoutParams(-2, -2));
    localRelativeLayout.setHorizontalGravity(3);
    localRelativeLayout.setVerticalGravity(16);
    localRelativeLayout.setId(1);
    ImageButton localImageButton = new ImageButton(this$0.cordova.getActivity());
    Object localObject2 = new RelativeLayout.LayoutParams(-2, -1);
    ((RelativeLayout.LayoutParams)localObject2).addRule(5);
    localImageButton.setLayoutParams((ViewGroup.LayoutParams)localObject2);
    localImageButton.setContentDescription("Back Button");
    localImageButton.setId(2);
    localImageButton.setImageResource(R.drawable.childbroswer_icon_arrow_left);
    localImageButton.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        ChildBrowser.access$300(this$0);
      }
    });
    localObject2 = new ImageButton(this$0.cordova.getActivity());
    Object localObject3 = new RelativeLayout.LayoutParams(-2, -1);
    ((RelativeLayout.LayoutParams)localObject3).addRule(1, 2);
    ((ImageButton)localObject2).setLayoutParams((ViewGroup.LayoutParams)localObject3);
    ((ImageButton)localObject2).setContentDescription("Forward Button");
    ((ImageButton)localObject2).setId(3);
    ((ImageButton)localObject2).setImageResource(R.drawable.childbroswer_icon_arrow_right);
    ((ImageButton)localObject2).setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        ChildBrowser.access$400(this$0);
      }
    });
    ChildBrowser.access$502(this$0, new EditText(this$0.cordova.getActivity()));
    localObject3 = new RelativeLayout.LayoutParams(-1, -1);
    ((RelativeLayout.LayoutParams)localObject3).addRule(1, 1);
    ((RelativeLayout.LayoutParams)localObject3).addRule(0, 5);
    ChildBrowser.access$500(this$0).setLayoutParams((ViewGroup.LayoutParams)localObject3);
    ChildBrowser.access$500(this$0).setId(4);
    ChildBrowser.access$500(this$0).setSingleLine(true);
    ChildBrowser.access$500(this$0).setText(val$url);
    ChildBrowser.access$500(this$0).setInputType(16);
    ChildBrowser.access$500(this$0).setImeOptions(2);
    ChildBrowser.access$500(this$0).setInputType(0);
    ChildBrowser.access$500(this$0).setOnKeyListener(new View.OnKeyListener()
    {
      public boolean onKey(View paramAnonymousView, int paramAnonymousInt, KeyEvent paramAnonymousKeyEvent)
      {
        if ((paramAnonymousKeyEvent.getAction() == 0) && (paramAnonymousInt == 66))
        {
          ChildBrowser.access$600(this$0, ChildBrowser.access$500(this$0).getText().toString());
          return true;
        }
        return false;
      }
    });
    localObject3 = new ImageButton(this$0.cordova.getActivity());
    Object localObject4 = new RelativeLayout.LayoutParams(-2, -1);
    ((RelativeLayout.LayoutParams)localObject4).addRule(11);
    ((ImageButton)localObject3).setLayoutParams((ViewGroup.LayoutParams)localObject4);
    ((ImageButton)localObject2).setContentDescription("Close Button");
    ((ImageButton)localObject3).setId(5);
    ((ImageButton)localObject3).setImageResource(R.drawable.childbroswer_icon_close);
    ((ImageButton)localObject3).setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        ChildBrowser.access$700(this$0);
      }
    });
    ChildBrowser.access$802(this$0, new WebView(this$0.cordova.getActivity()));
    ChildBrowser.access$800(this$0).setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
    ChildBrowser.access$800(this$0).setWebChromeClient(new WebChromeClient());
    localObject4 = new ChildBrowser.ChildBrowserClient(this$0, ChildBrowser.access$500(this$0));
    ChildBrowser.access$800(this$0).setWebViewClient((WebViewClient)localObject4);
    localObject4 = ChildBrowser.access$800(this$0).getSettings();
    ((WebSettings)localObject4).setJavaScriptEnabled(true);
    ((WebSettings)localObject4).setJavaScriptCanOpenWindowsAutomatically(true);
    ((WebSettings)localObject4).setBuiltInZoomControls(true);
    ((WebSettings)localObject4).setPluginState(WebSettings.PluginState.ON);
    ((WebSettings)localObject4).setDomStorageEnabled(true);
    ChildBrowser.access$800(this$0).loadUrl(val$url);
    ChildBrowser.access$800(this$0).setId(6);
    ChildBrowser.access$800(this$0).getSettings().setLoadWithOverviewMode(true);
    ChildBrowser.access$800(this$0).getSettings().setUseWideViewPort(true);
    ChildBrowser.access$800(this$0).requestFocus();
    ChildBrowser.access$800(this$0).requestFocusFromTouch();
    localRelativeLayout.addView(localImageButton);
    localRelativeLayout.addView((View)localObject2);
    ((RelativeLayout)localObject1).addView(localRelativeLayout);
    ((RelativeLayout)localObject1).addView(ChildBrowser.access$500(this$0));
    ((RelativeLayout)localObject1).addView((View)localObject3);
    if (ChildBrowser.access$900(this$0)) {
      localLinearLayout.addView((View)localObject1);
    }
    localLinearLayout.addView(ChildBrowser.access$800(this$0));
    localObject1 = new WindowManager.LayoutParams();
    ((WindowManager.LayoutParams)localObject1).copyFrom(ChildBrowser.access$000(this$0).getWindow().getAttributes());
    width = -1;
    height = -1;
    ChildBrowser.access$000(this$0).setContentView(localLinearLayout);
    ChildBrowser.access$000(this$0).show();
    ChildBrowser.access$000(this$0).getWindow().setAttributes((WindowManager.LayoutParams)localObject1);
  }
}

/* Location:
 * Qualified Name:     mobi.monaca.framework.plugin.ChildBrowser.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */