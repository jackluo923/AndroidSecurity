package com.google.zxing.client.android.share;

import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnKeyListener;
import android.widget.TextView;

class ShareActivity$5
  implements View.OnKeyListener
{
  ShareActivity$5(ShareActivity paramShareActivity) {}
  
  public boolean onKey(View paramView, int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramInt == 66) && (paramKeyEvent.getAction() == 0))
    {
      paramView = ((TextView)paramView).getText().toString();
      if ((paramView != null) && (paramView.length() > 0)) {
        ShareActivity.access$000(this$0, paramView);
      }
      return true;
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.client.android.share.ShareActivity.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */