package com.inmobi.re.container.mraidimpl;

import android.view.View;
import android.view.View.OnClickListener;
import com.inmobi.re.container.IMWebView;

class MRAIDResizeController$a
  implements View.OnClickListener
{
  MRAIDResizeController$a(MRAIDResizeController paramMRAIDResizeController) {}
  
  public void onClick(View paramView)
  {
    IMWebView.userInitiatedClose = true;
    MRAIDResizeController.a(a).close();
  }
}

/* Location:
 * Qualified Name:     com.inmobi.re.container.mraidimpl.MRAIDResizeController.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */