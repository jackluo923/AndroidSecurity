package com.google.zxing.client.android;

import com.google.zxing.ResultPoint;
import com.google.zxing.ResultPointCallback;

final class ViewfinderResultPointCallback
  implements ResultPointCallback
{
  private final ViewfinderView viewfinderView;
  
  ViewfinderResultPointCallback(ViewfinderView paramViewfinderView)
  {
    viewfinderView = paramViewfinderView;
  }
  
  public void foundPossibleResultPoint(ResultPoint paramResultPoint)
  {
    viewfinderView.addPossibleResultPoint(paramResultPoint);
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.client.android.ViewfinderResultPointCallback
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */