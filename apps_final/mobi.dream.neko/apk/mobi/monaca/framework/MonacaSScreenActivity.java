package mobi.monaca.framework;

import android.app.Activity;
import android.content.Intent;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.graphics.BitmapFactory;
import android.os.Bundle;
import android.os.Handler;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import android.widget.Toast;
import com.google.android.gcm.GCMRegistrar;
import java.io.IOException;
import java.io.InputStream;
import java.io.Serializable;
import mobi.monaca.framework.bootloader.LocalFileBootloader;
import mobi.monaca.framework.psedo.R.anim;
import mobi.monaca.framework.psedo.R.string;
import mobi.monaca.utils.gcm.GCMPushDataset;

public class MonacaSScreenActivity
  extends Activity
{
  protected static final String SPLASH_IMAGE_PATH = MonacaApplication.getStringFromResource(R.string.splash_image_path);
  private static final String TAG = MonacaSScreenActivity.class.getSimpleName();
  protected MonacaApplication app;
  protected Handler handler;
  protected Runnable pageLauncher;
  protected ImageView splashView;
  
  private void setupLocalFileBootLoaderAndRunProject(Runnable paramRunnable)
  {
    LocalFileBootloader.mShouldExtractAssets = true;
    LocalFileBootloader.setup(this, paramRunnable, new Runnable()
    {
      public void run()
      {
        Toast.makeText(MonacaSScreenActivity.this, MonacaApplication.getStringFromResource(R.string.message_launch_failed), 1).show();
        finish();
      }
    });
  }
  
  protected Intent createActivityIntent()
  {
    Intent localIntent = new Intent(this, MonacaPageActivity.class);
    Object localObject = getIntent();
    Bundle localBundle = ((Intent)localObject).getExtras();
    if ((localObject != null) && (localBundle != null))
    {
      localObject = (GCMPushDataset)localBundle.get("get_pushdata_key");
      if (localObject != null) {
        localIntent.putExtra("get_pushdata_key", (Serializable)localObject);
      }
    }
    return localIntent;
  }
  
  protected InputStream getSplashFileStream()
  {
    try
    {
      InputStream localInputStream = getResources().getAssets().open(SPLASH_IMAGE_PATH);
      return localInputStream;
    }
    catch (IOException localIOException) {}
    return null;
  }
  
  protected void goNextActivityWithoutSplash()
  {
    Intent localIntent = createActivityIntent();
    localIntent.putExtra(MonacaApplication.getStringFromResource(R.string.extra_key_without_splash), true);
    startActivity(localIntent);
    finish();
  }
  
  protected boolean hasSplashScreenExists()
  {
    if (!app.getAppJsonSetting().getAutoHide()) {
      return false;
    }
    try
    {
      getResources().getAssets().open(SPLASH_IMAGE_PATH).close();
      return true;
    }
    catch (IOException localIOException) {}
    return false;
  }
  
  protected void loadAppJson()
  {
    app.loadAppJsonSetting();
  }
  
  public void onBackPressed()
  {
    if ((handler != null) && (pageLauncher != null)) {
      handler.removeCallbacks(pageLauncher);
    }
    super.onBackPressed();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    app = ((MonacaApplication)getApplication());
    loadAppJson();
    setup();
  }
  
  protected void onDestroy()
  {
    super.onDestroy();
  }
  
  protected void registerGCM()
  {
    try
    {
      String str1 = app.getAppJsonSetting().getSenderId();
      GCMRegistrar.checkDevice(this);
      GCMRegistrar.checkManifest(this);
      String str2 = GCMRegistrar.getRegistrationId(this);
      if (str2.equals(""))
      {
        GCMRegistrar.register(this, new String[] { str1 });
        return;
      }
      ((MonacaApplication)getApplication()).sendGCMRegisterIdToAppAPI(str2);
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
  
  protected void setup()
  {
    Runnable local1 = new Runnable()
    {
      public void run()
      {
        InputStream localInputStream;
        if (hasSplashScreenExists())
        {
          splashView = new ImageView(getApplicationContext());
          splashView.setScaleType(ImageView.ScaleType.FIT_CENTER);
          localInputStream = getSplashFileStream();
          splashView.setImageBitmap(BitmapFactory.decodeStream(localInputStream));
          splashView.setBackgroundColor(app.getAppJsonSetting().getSplashBackgroundColor());
        }
        try
        {
          localInputStream.close();
          setContentView(splashView);
          overridePendingTransition(R.anim.monaca_none, R.anim.monaca_slide_close_exit);
          handler = new Handler();
          pageLauncher = new Runnable()
          {
            public void run()
            {
              Intent localIntent = createActivityIntent();
              startActivity(localIntent);
              finish();
            }
          };
          handler.postDelayed(pageLauncher, 1000L);
          return;
          goNextActivityWithoutSplash();
          return;
        }
        catch (Exception localException)
        {
          for (;;) {}
        }
      }
    };
    if (shouldExtractAsset())
    {
      setupLocalFileBootLoaderAndRunProject(local1);
      return;
    }
    if (!app.needToUseBootloader())
    {
      local1.run();
      LocalFileBootloader.mShouldExtractAssets = false;
      return;
    }
    setupLocalFileBootLoaderAndRunProject(local1);
  }
  
  protected boolean shouldExtractAsset()
  {
    return app.getAppJsonSetting().shouldExtractAssets();
  }
}

/* Location:
 * Qualified Name:     mobi.monaca.framework.MonacaSScreenActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */