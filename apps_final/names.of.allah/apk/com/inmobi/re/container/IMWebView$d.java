package com.inmobi.re.container;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.webkit.SslErrorHandler;

class IMWebView$d
  implements DialogInterface.OnClickListener
{
  IMWebView$d(IMWebView paramIMWebView, SslErrorHandler paramSslErrorHandler) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface.cancel();
    a.proceed();
  }
}

/* Location:
 * Qualified Name:     com.inmobi.re.container.IMWebView.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */