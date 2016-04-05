package com.millennialmedia.android;

import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import java.lang.ref.WeakReference;

class InlineVideoView$2
  implements View.OnTouchListener
{
  InlineVideoView$2(InlineVideoView paramInlineVideoView) {}
  
  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    if (paramMotionEvent.getAction() == 1)
    {
      paramView = (MMLayout)this$0.mmLayoutRef.get();
      if (paramView == null)
      {
        MMSDK.Log.w("MMLayout weak reference broken");
        return false;
      }
      if (!TextUtils.isEmpty(this$0.inlineParams.touchCallBack)) {
        paramView.loadUrl(String.format("javascript:" + this$0.inlineParams.touchCallBack + "(%f,%f)", new Object[] { Float.valueOf(paramMotionEvent.getX()), Float.valueOf(paramMotionEvent.getY()) }));
      }
      if ((this$0.inlineParams.showControls) && (this$0.mediaController != null) && (!this$0.mediaController.isShowing()))
      {
        this$0.mediaController.show();
        return true;
      }
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.InlineVideoView.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */