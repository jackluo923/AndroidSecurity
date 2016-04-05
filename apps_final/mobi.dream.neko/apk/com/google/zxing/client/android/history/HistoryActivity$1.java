package com.google.zxing.client.android.history;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

class HistoryActivity$1
  implements DialogInterface.OnClickListener
{
  HistoryActivity$1(HistoryActivity paramHistoryActivity) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    HistoryActivity.access$000(this$0).clearHistory();
    paramDialogInterface.dismiss();
    this$0.finish();
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.client.android.history.HistoryActivity.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */