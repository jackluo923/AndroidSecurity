package mobi.monaca.framework;

import android.content.Intent;
import android.graphics.BitmapFactory;
import android.os.Handler;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import java.io.InputStream;
import mobi.monaca.framework.psedo.R.anim;

class MonacaSScreenActivity$1
  implements Runnable
{
  MonacaSScreenActivity$1(MonacaSScreenActivity paramMonacaSScreenActivity) {}
  
  public void run()
  {
    InputStream localInputStream;
    if (this$0.hasSplashScreenExists())
    {
      this$0.splashView = new ImageView(this$0.getApplicationContext());
      this$0.splashView.setScaleType(ImageView.ScaleType.FIT_CENTER);
      localInputStream = this$0.getSplashFileStream();
      this$0.splashView.setImageBitmap(BitmapFactory.decodeStream(localInputStream));
      this$0.splashView.setBackgroundColor(this$0.app.getAppJsonSetting().getSplashBackgroundColor());
    }
    try
    {
      localInputStream.close();
      this$0.setContentView(this$0.splashView);
      this$0.overridePendingTransition(R.anim.monaca_none, R.anim.monaca_slide_close_exit);
      this$0.handler = new Handler();
      this$0.pageLauncher = new Runnable()
      {
        public void run()
        {
          Intent localIntent = this$0.createActivityIntent();
          this$0.startActivity(localIntent);
          this$0.finish();
        }
      };
      this$0.handler.postDelayed(this$0.pageLauncher, 1000L);
      return;
      this$0.goNextActivityWithoutSplash();
      return;
    }
    catch (Exception localException)
    {
      for (;;) {}
    }
  }
}

/* Location:
 * Qualified Name:     mobi.monaca.framework.MonacaSScreenActivity.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */