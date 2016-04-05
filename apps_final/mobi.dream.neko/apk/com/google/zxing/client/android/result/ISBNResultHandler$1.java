package com.google.zxing.client.android.result;

import android.view.View;
import android.view.View.OnClickListener;
import com.google.zxing.client.result.ISBNParsedResult;

class ISBNResultHandler$1
  implements View.OnClickListener
{
  ISBNResultHandler$1(ISBNResultHandler paramISBNResultHandler) {}
  
  public void onClick(View paramView)
  {
    paramView = (ISBNParsedResult)this$0.getResult();
    this$0.openGoogleShopper(paramView.getISBN());
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.client.android.result.ISBNResultHandler.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */