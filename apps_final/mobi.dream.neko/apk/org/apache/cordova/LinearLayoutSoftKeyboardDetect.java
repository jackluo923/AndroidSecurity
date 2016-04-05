package org.apache.cordova;

import android.content.Context;
import android.view.View.MeasureSpec;
import android.widget.LinearLayout;
import org.apache.cordova.api.LOG;

public class LinearLayoutSoftKeyboardDetect
  extends LinearLayout
{
  private static final String TAG = "SoftKeyboardDetect";
  private CordovaActivity app = null;
  private int oldHeight = 0;
  private int oldWidth = 0;
  private int screenHeight = 0;
  private int screenWidth = 0;
  
  public LinearLayoutSoftKeyboardDetect(Context paramContext, int paramInt1, int paramInt2)
  {
    super(paramContext);
    screenWidth = paramInt1;
    screenHeight = paramInt2;
    app = ((CordovaActivity)paramContext);
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    LOG.v("SoftKeyboardDetect", "We are in our onMeasure method");
    paramInt2 = View.MeasureSpec.getSize(paramInt2);
    paramInt1 = View.MeasureSpec.getSize(paramInt1);
    LOG.v("SoftKeyboardDetect", "Old Height = %d", new Object[] { Integer.valueOf(oldHeight) });
    LOG.v("SoftKeyboardDetect", "Height = %d", new Object[] { Integer.valueOf(paramInt2) });
    LOG.v("SoftKeyboardDetect", "Old Width = %d", new Object[] { Integer.valueOf(oldWidth) });
    LOG.v("SoftKeyboardDetect", "Width = %d", new Object[] { Integer.valueOf(paramInt1) });
    if ((oldHeight == 0) || (oldHeight == paramInt2)) {
      LOG.d("SoftKeyboardDetect", "Ignore this event");
    }
    for (;;)
    {
      oldHeight = paramInt2;
      oldWidth = paramInt1;
      return;
      if (screenHeight == paramInt1)
      {
        int i = screenHeight;
        screenHeight = screenWidth;
        screenWidth = i;
        LOG.v("SoftKeyboardDetect", "Orientation Change");
      }
      else if (paramInt2 > oldHeight)
      {
        if (app != null) {
          app.appView.sendJavascript("cordova.fireDocumentEvent('hidekeyboard');");
        }
      }
      else if ((paramInt2 < oldHeight) && (app != null))
      {
        app.appView.sendJavascript("cordova.fireDocumentEvent('showkeyboard');");
      }
    }
  }
}

/* Location:
 * Qualified Name:     org.apache.cordova.LinearLayoutSoftKeyboardDetect
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */