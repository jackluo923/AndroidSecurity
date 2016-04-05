package com.google.zxing.client.android.result;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.net.Uri;

class ResultHandler$1
  implements DialogInterface.OnClickListener
{
  ResultHandler$1(ResultHandler paramResultHandler) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    this$0.launchIntent(new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=com.google.android.apps.shopper&referrer=utm_source%3Dbarcodescanner%26utm_medium%3Dapps%26utm_campaign%3Dscan")));
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.client.android.result.ResultHandler.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */