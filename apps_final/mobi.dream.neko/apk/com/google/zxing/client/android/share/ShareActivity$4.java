package com.google.zxing.client.android.share;

import android.text.ClipboardManager;
import android.view.View;
import android.view.View.OnClickListener;

class ShareActivity$4
  implements View.OnClickListener
{
  ShareActivity$4(ShareActivity paramShareActivity) {}
  
  public void onClick(View paramView)
  {
    paramView = (ClipboardManager)this$0.getSystemService("clipboard");
    if (paramView.hasText()) {
      ShareActivity.access$000(this$0, paramView.getText().toString());
    }
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.client.android.share.ShareActivity.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */