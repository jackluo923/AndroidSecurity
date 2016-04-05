package com.millennialmedia.android;

import android.content.Context;
import android.os.Parcelable;
import android.view.View;
import android.view.ViewGroup;

class MMAdView$ResizeView
  extends View
{
  public MMAdView$ResizeView(MMAdView paramMMAdView, Context paramContext)
  {
    super(paramContext);
  }
  
  void attachToContext(View paramView)
  {
    try
    {
      MMAdView.access$100(this$0, paramView);
      if ((getParent() != null) && ((getParent() instanceof ViewGroup))) {
        ((ViewGroup)getParent()).addView(paramView);
      }
      return;
    }
    finally
    {
      paramView = finally;
      throw paramView;
    }
  }
  
  protected void onRestoreInstanceState(Parcelable paramParcelable)
  {
    MMSDK.Log.d("onRestoreInstanceState");
    MMAdView.access$000(this$0, this$0);
    super.onRestoreInstanceState(paramParcelable);
  }
  
  protected Parcelable onSaveInstanceState()
  {
    MMSDK.Log.d("onSaveInstanceState");
    attachToContext(this$0);
    return super.onSaveInstanceState();
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.MMAdView.ResizeView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */