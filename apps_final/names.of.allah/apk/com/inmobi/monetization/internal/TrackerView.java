package com.inmobi.monetization.internal;

import android.content.Context;
import android.view.View;
import android.webkit.WebSettings;
import android.webkit.WebViewClient;
import android.widget.RelativeLayout.LayoutParams;
import com.inmobi.androidsdk.impl.imai.IMAIController;
import com.inmobi.commons.internal.Log;
import com.inmobi.commons.uid.UIDUtil;
import com.inmobi.re.container.IMWebView;
import java.util.ArrayList;
import java.util.HashMap;
import org.json.JSONObject;

public class TrackerView
  extends View
{
  public static final int ID = 999;
  WebViewClient a = new a(this);
  private IMWebView b;
  private boolean c = false;
  private String d;
  private ArrayList<String> e = null;
  private boolean f = false;
  
  public TrackerView(Context paramContext, String paramString1, String paramString2)
  {
    super(paramContext);
    if ((paramString1 == null) || (paramString2 == null)) {
      return;
    }
    d = paramString2;
    paramString2 = new RelativeLayout.LayoutParams(-1, -1);
    paramString2.addRule(10);
    setLayoutParams(paramString2);
    setBackgroundColor(0);
    IMWebView.setIMAIController(IMAIController.class);
    b = new IMWebView(paramContext, null, false, false);
    b.getSettings().setJavaScriptEnabled(true);
    b.getSettings().setCacheMode(2);
    b.setWebViewClient(a);
    b.loadData(paramString1, "text/html", "UTF-8");
    e = new ArrayList();
    setId(999);
  }
  
  private String a()
  {
    return d + "recordEvent(18)";
  }
  
  private String a(HashMap<String, String> paramHashMap)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    if ((paramHashMap == null) || (paramHashMap.isEmpty()))
    {
      localStringBuilder.append(d + "recordEvent(8)");
      return localStringBuilder.toString();
    }
    localStringBuilder.append(d + "recordEvent(8, ");
    JSONObject localJSONObject = new JSONObject();
    UIDUtil.bindToJSON(paramHashMap, localJSONObject);
    localStringBuilder.append(localJSONObject.toString());
    localStringBuilder.append(")");
    return localStringBuilder.toString();
  }
  
  public void click(HashMap<String, String> paramHashMap)
  {
    Log.debug("[InMobi]-[Monetization]", "Handle Click");
    paramHashMap = a(paramHashMap);
    if (f) {
      injectJavaScript(paramHashMap);
    }
    while (e == null) {
      return;
    }
    e.add(paramHashMap);
  }
  
  public void destroy()
  {
    if (b != null)
    {
      b.destroy();
      b = null;
    }
    if (e != null)
    {
      e.clear();
      e = null;
    }
    c = false;
    f = false;
  }
  
  public void handleImpression(String paramString)
  {
    Log.debug("[InMobi]-[Monetization]", "Handle Impression");
    injectJavaScript(paramString);
  }
  
  public void injectJavaScript(String paramString)
  {
    if (paramString != null) {}
    try
    {
      if (paramString.length() < 400) {
        Log.internal("[InMobi]-[Monetization]", paramString);
      }
      if (b != null) {
        b.loadUrl("javascript:try{" + paramString + "}catch(e){}");
      }
      return;
    }
    catch (Exception paramString)
    {
      paramString.printStackTrace();
    }
  }
  
  protected void onWindowVisibilityChanged(int paramInt)
  {
    super.onWindowVisibilityChanged(paramInt);
    if ((paramInt == 0) && (!c))
    {
      c = true;
      if (!f) {
        break label37;
      }
      handleImpression(a());
    }
    label37:
    while (e == null) {
      return;
    }
    e.add(a());
  }
}

/* Location:
 * Qualified Name:     com.inmobi.monetization.internal.TrackerView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */