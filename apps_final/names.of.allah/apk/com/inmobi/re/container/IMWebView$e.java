package com.inmobi.re.container;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.net.http.SslError;
import com.inmobi.commons.internal.WrapperFunctions;

class IMWebView$e
  implements DialogInterface.OnClickListener
{
  IMWebView$e(IMWebView paramIMWebView, SslError paramSslError) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface.cancel();
    IMWebView.a(b, WrapperFunctions.getSSLErrorUrl(a));
  }
}

/* Location:
 * Qualified Name:     com.inmobi.re.container.IMWebView.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */