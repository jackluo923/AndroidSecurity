package com.google.zxing.client.android.share;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;

class ShareActivity$3
  implements View.OnClickListener
{
  ShareActivity$3(ShareActivity paramShareActivity) {}
  
  public void onClick(View paramView)
  {
    paramView = new Intent("android.intent.action.PICK");
    paramView.addFlags(524288);
    paramView.setClassName(this$0, AppPickerActivity.class.getName());
    this$0.startActivityForResult(paramView, 2);
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.client.android.share.ShareActivity.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */