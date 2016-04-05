package com.millennialmedia.android;

import android.content.Context;
import java.lang.ref.WeakReference;
import java.util.HashMap;

class BridgeMMPasteboard
  extends MMJSObject
{
  public MMJSResponse getPasteboardContents(HashMap<String, String> paramHashMap)
  {
    paramHashMap = (Context)contextRef.get();
    if (paramHashMap != null) {
      return runOnUiThreadFuture(new BridgeMMPasteboard.1(this, paramHashMap));
    }
    return null;
  }
  
  public MMJSResponse writeToPasteboard(HashMap<String, String> paramHashMap)
  {
    Context localContext = (Context)contextRef.get();
    if (localContext != null) {
      return runOnUiThreadFuture(new BridgeMMPasteboard.2(this, localContext, paramHashMap));
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.BridgeMMPasteboard
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */