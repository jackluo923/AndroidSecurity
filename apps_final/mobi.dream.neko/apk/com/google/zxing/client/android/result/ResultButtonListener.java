package com.google.zxing.client.android.result;

import android.view.View;
import android.view.View.OnClickListener;

public final class ResultButtonListener
  implements View.OnClickListener
{
  private final int index;
  private final ResultHandler resultHandler;
  
  public ResultButtonListener(ResultHandler paramResultHandler, int paramInt)
  {
    resultHandler = paramResultHandler;
    index = paramInt;
  }
  
  public void onClick(View paramView)
  {
    resultHandler.handleButtonPress(index);
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.client.android.result.ResultButtonListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */