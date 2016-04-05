package com.inmobi.re.container.mraidimpl;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.re.container.IMWebView;
import com.inmobi.re.container.IMWebView.IMWebViewListener;

class MRAIDBasic$a
  implements Runnable
{
  MRAIDBasic$a(MRAIDBasic paramMRAIDBasic, String paramString) {}
  
  public void run()
  {
    String str = InternalSDKUtil.getFinalRedirectedUrl(a);
    Intent localIntent;
    if (str != null)
    {
      localIntent = new Intent();
      localIntent.setAction("android.intent.action.VIEW");
      localIntent.setData(Uri.parse(str));
      localIntent.addFlags(268435456);
    }
    try
    {
      MRAIDBasic.a(b).startActivity(localIntent);
      if (bb).mListener != null) {
        bb).mListener.onLeaveApplication();
      }
      return;
    }
    catch (Exception localException)
    {
      MRAIDBasic.b(b).raiseError("Invalid url", "open");
    }
  }
}

/* Location:
 * Qualified Name:     com.inmobi.re.container.mraidimpl.MRAIDBasic.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */