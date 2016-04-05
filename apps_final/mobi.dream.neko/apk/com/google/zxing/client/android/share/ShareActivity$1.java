package com.google.zxing.client.android.share;

import android.content.Intent;
import android.provider.ContactsContract.Contacts;
import android.view.View;
import android.view.View.OnClickListener;

class ShareActivity$1
  implements View.OnClickListener
{
  ShareActivity$1(ShareActivity paramShareActivity) {}
  
  public void onClick(View paramView)
  {
    paramView = new Intent("android.intent.action.PICK", ContactsContract.Contacts.CONTENT_URI);
    paramView.addFlags(524288);
    this$0.startActivityForResult(paramView, 1);
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.client.android.share.ShareActivity.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */