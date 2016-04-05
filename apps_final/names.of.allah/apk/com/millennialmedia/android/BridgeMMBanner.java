package com.millennialmedia.android;

import android.content.Context;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import java.lang.ref.WeakReference;
import java.util.HashMap;

class BridgeMMBanner
  extends MMJSObject
{
  int getScreenHeight(Context paramContext)
  {
    return Integer.parseInt(MMSDK.getDpiHeight(paramContext));
  }
  
  int getScreenWidth(Context paramContext)
  {
    return Integer.parseInt(MMSDK.getDpiWidth(paramContext));
  }
  
  public MMJSResponse resize(HashMap<String, String> paramHashMap)
  {
    int m = 0;
    MMWebView localMMWebView = (MMWebView)mmWebViewRef.get();
    String str1;
    Object localObject;
    if (localMMWebView != null)
    {
      if (localMMWebView.isMraidResized()) {
        return MMJSResponse.responseWithError("State is currently resized");
      }
      str1 = (String)paramHashMap.get("width");
      localObject = (String)paramHashMap.get("height");
      if (TextUtils.isEmpty(str1)) {
        break label234;
      }
    }
    label234:
    for (int i = (int)Float.parseFloat(str1);; i = 0)
    {
      if (!TextUtils.isEmpty((CharSequence)localObject)) {}
      for (int j = (int)Float.parseFloat((String)localObject);; j = 0)
      {
        str1 = (String)paramHashMap.get("customClosePosition");
        localObject = (String)paramHashMap.get("offsetX");
        String str2 = (String)paramHashMap.get("offsetY");
        if (!TextUtils.isEmpty(str2)) {}
        for (int k = (int)Float.parseFloat(str2);; k = 0)
        {
          if (!TextUtils.isEmpty((CharSequence)localObject)) {
            m = (int)Float.parseFloat((String)localObject);
          }
          boolean bool = Boolean.parseBoolean((String)paramHashMap.get("allowOffscreen"));
          paramHashMap = localMMWebView.getContext();
          localObject = MMSDK.getMetrics(paramHashMap);
          int n = getScreenWidth(paramHashMap);
          int i1 = getScreenHeight(paramHashMap);
          localMMWebView.setMraidResize(new DTOResizeParameters(density, i, j, str1, m, k, bool, n, i1));
          return MMJSResponse.responseWithSuccess();
          return null;
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.BridgeMMBanner
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */