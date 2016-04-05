package mobi.monaca.framework;

import android.app.Dialog;
import android.view.Display;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.view.WindowManager.LayoutParams;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import android.widget.LinearLayout.LayoutParams;
import java.io.IOException;
import mobi.monaca.framework.util.MyLog;

class MonacaPageActivity$4
  implements Runnable
{
  MonacaPageActivity$4(MonacaPageActivity paramMonacaPageActivity1, MonacaPageActivity paramMonacaPageActivity2) {}
  
  public void run()
  {
    Object localObject = val$activity.getWindowManager().getDefaultDisplay();
    FrameLayout localFrameLayout = new FrameLayout(val$activity.getActivity());
    localFrameLayout.setMinimumHeight(((Display)localObject).getHeight());
    localFrameLayout.setMinimumWidth(((Display)localObject).getWidth());
    localFrameLayout.setBackgroundColor(this$0.mApp.getAppJsonSetting().getSplashBackgroundColor());
    localFrameLayout.setLayoutParams(new LinearLayout.LayoutParams(-1, -1, 0.0F));
    try
    {
      localObject = new ImageView(this$0);
      ((ImageView)localObject).setImageDrawable(val$activity.getSplashDrawable());
      ((ImageView)localObject).setScaleType(ImageView.ScaleType.FIT_CENTER);
      localFrameLayout.addView((View)localObject);
      this$0.monacaSplashDialog = new Dialog(this$0, 16973840);
      if ((this$0.getWindow().getAttributes().flags & 0x400) == 1024) {
        this$0.monacaSplashDialog.getWindow().setFlags(1024, 1024);
      }
      this$0.monacaSplashDialog.setContentView(localFrameLayout);
      this$0.monacaSplashDialog.setCancelable(false);
      this$0.monacaSplashDialog.show();
      return;
    }
    catch (IOException localIOException)
    {
      for (;;)
      {
        MyLog.e(MonacaPageActivity.TAG, localIOException.getMessage());
      }
    }
  }
}

/* Location:
 * Qualified Name:     mobi.monaca.framework.MonacaPageActivity.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */