package mobi.monaca.framework;

import android.annotation.TargetApi;
import android.app.Application;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnDismissListener;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.AssetManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Environment;
import android.util.Log;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import com.google.android.gcm.GCMRegistrar;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.net.URI;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import mobi.monaca.framework.bootloader.LocalFileBootloader;
import mobi.monaca.framework.nativeui.UIContext;
import mobi.monaca.framework.nativeui.component.SpinnerDialog;
import mobi.monaca.framework.nativeui.menu.MenuRepresentation;
import mobi.monaca.framework.nativeui.menu.MenuRepresentationBuilder;
import mobi.monaca.framework.psedo.R.string;
import mobi.monaca.framework.task.GCMRegistrationIdSenderTask;
import mobi.monaca.framework.util.MyLog;
import mobi.monaca.utils.MonacaConst;
import mobi.monaca.utils.MonacaDevice;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class MonacaApplication
  extends Application
{
  private static final String TAG = MonacaApplication.class.getSimpleName();
  public static Context instance = null;
  protected static Map<String, MenuRepresentation> menuMap;
  protected static List<MonacaPageActivity> pages = null;
  protected static InternalSettings settings = null;
  protected AppJsonSetting appJsonSetting;
  protected boolean enablesBootloader = true;
  private SpinnerDialog monacaSpinnerDialog;
  private BroadcastReceiver registeredReceiver;
  
  static
  {
    menuMap = null;
  }
  
  public static void addPage(MonacaPageActivity paramMonacaPageActivity)
  {
    if (pages == null) {
      pages = new ArrayList();
    }
    pages.add(paramMonacaPageActivity);
  }
  
  public static MenuRepresentation findMenuRepresentation(String paramString)
  {
    if (menuMap != null)
    {
      if (menuMap.containsKey(paramString)) {
        return (MenuRepresentation)menuMap.get(paramString);
      }
      return (MenuRepresentation)menuMap.get(getStringFromResource(R.string.uikey_menu_default));
    }
    return null;
  }
  
  public static List<MonacaPageActivity> getPages()
  {
    if (pages != null) {
      return pages;
    }
    return new ArrayList();
  }
  
  public static String getStringFromResource(int paramInt)
  {
    return instance.getString(paramInt);
  }
  
  public static void removePage(MonacaPageActivity paramMonacaPageActivity)
  {
    if (pages != null) {
      pages.remove(paramMonacaPageActivity);
    }
  }
  
  public boolean allowAccess(String paramString)
  {
    Context localContext;
    if (paramString.startsWith(getString(R.string.file_scheme))) {
      localContext = getApplicationContext();
    }
    do
    {
      do
      {
        try
        {
          paramString = new URI(paramString).normalize().toString();
          if (paramString.startsWith(getString(R.string.asset_url))) {
            return true;
          }
        }
        catch (Exception paramString)
        {
          MyLog.e(TAG, paramString.getMessage());
          return false;
        }
        if (!paramString.startsWith(getString(R.string.file_scheme) + getApplicationInfodataDir)) {
          break;
        }
      } while (!paramString.startsWith(getString(R.string.file_scheme) + getApplicationInfodataDir + getString(R.string.relative_shared_prefs_path)));
      return false;
    } while ((paramString.startsWith(getString(R.string.sd_dir_url))) || (paramString.startsWith(getString(R.string.file_scheme) + Environment.getExternalStorageDirectory().getPath())));
    return false;
  }
  
  protected void createMenuMap()
  {
    menuMap = new MenuRepresentationBuilder(getApplicationContext()).buildFromAssets(this, getString(R.string.appmenu_url));
  }
  
  public void dismissMonacaSpinnerDialog()
  {
    if (monacaSpinnerDialog != null)
    {
      if (monacaSpinnerDialog.isShowing()) {
        monacaSpinnerDialog.dismiss();
      }
      monacaSpinnerDialog = null;
    }
  }
  
  public boolean enablesBootloader()
  {
    return enablesBootloader;
  }
  
  public AppJsonSetting getAppJsonSetting()
  {
    if (appJsonSetting == null) {
      loadAppJsonSetting();
    }
    return appJsonSetting;
  }
  
  public InternalSettings getInternalSettings()
  {
    if (settings == null) {}
    try
    {
      settings = new InternalSettings(getPackageManagergetApplicationInfogetPackageName128metaData);
      return settings;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        settings = new InternalSettings(new Bundle());
      }
    }
  }
  
  public String getPushProjectId()
  {
    return getAppJsonSetting().getPushProjectId();
  }
  
  public void hideMonacaSpinnerDialog()
  {
    if ((monacaSpinnerDialog != null) && (monacaSpinnerDialog.isShowing())) {
      monacaSpinnerDialog.hide();
    }
  }
  
  protected void initGCM()
  {
    registeredReceiver = new BroadcastReceiver()
    {
      public void onReceive(Context paramAnonymousContext, Intent paramAnonymousIntent)
      {
        paramAnonymousContext = paramAnonymousIntent.getStringExtra("gcm_registered_regid");
        sendGCMRegisterIdToAppAPI(paramAnonymousContext);
        unregisterReceiver(this);
      }
    };
    registerReceiver(registeredReceiver, new IntentFilter("gcm_registered"));
    try
    {
      String str1 = getAppJsonSetting().getSenderId();
      GCMRegistrar.checkDevice(this);
      GCMRegistrar.checkManifest(this);
      String str2 = GCMRegistrar.getRegistrationId(this);
      if (str2.equals(""))
      {
        GCMRegistrar.register(this, new String[] { str1 });
        return;
      }
      sendGCMRegisterIdToAppAPI(str2);
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
  
  public void loadAppJsonSetting()
  {
    localObject1 = null;
    try
    {
      localObject2 = getResources().getAssets().open(getString(R.string.appjson_filename));
      byte[] arrayOfByte = new byte[((InputStream)localObject2).available()];
      ((InputStream)localObject2).read(arrayOfByte);
      localObject2 = new JSONObject(new String(arrayOfByte, getString(R.string.encoding)));
      localObject1 = localObject2;
    }
    catch (IOException localIOException)
    {
      for (;;)
      {
        Object localObject2;
        boolean bool2;
        MyLog.e(TAG, localIOException.getMessage());
      }
    }
    catch (JSONException localJSONException)
    {
      for (;;)
      {
        MyLog.e(TAG, localJSONException.getMessage());
      }
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      for (;;)
      {
        MyLog.e(TAG, localIllegalArgumentException.getMessage());
      }
    }
    catch (NullPointerException localNullPointerException)
    {
      for (;;)
      {
        localNullPointerException.printStackTrace();
        continue;
        boolean bool1 = false;
        continue;
        localObject1 = getString(R.string.www_assetdir_url);
      }
    }
    localObject2 = localObject1;
    if (localObject1 == null) {
      localObject2 = new JSONObject();
    }
    appJsonSetting = new AppJsonSetting((JSONObject)localObject2);
    bool2 = appJsonSetting.getDisableCookie();
    localObject1 = CookieManager.getInstance();
    if (!bool2)
    {
      bool1 = true;
      ((CookieManager)localObject1).setAcceptCookie(bool1);
      if (!bool2)
      {
        CookieSyncManager.getInstance().startSync();
        if ((!appJsonSetting.shouldExtractAssets()) && (!needToUseBootloader())) {
          break label350;
        }
        localObject1 = getString(R.string.data_dir_url);
        CookieManager.getInstance().setCookie((String)localObject1, getString(R.string.cookie_monaca_cloud_device_id) + MonacaDevice.getDeviceId(this));
        CookieSyncManager.getInstance().sync();
        CookieManager.getInstance().setCookie((String)localObject1, getString(R.string.cookie_domain) + appJsonSetting.getMonacaCloudDomain());
        CookieSyncManager.getInstance().sync();
        CookieManager.getInstance().setCookie((String)localObject1, getString(R.string.cookie_path) + appJsonSetting.getMonacaCloudPath());
        CookieSyncManager.getInstance().sync();
        CookieManager.getInstance().setCookie((String)localObject1, getString(R.string.cookie_secure));
        CookieSyncManager.getInstance().sync();
      }
    }
  }
  
  public boolean needToUseBootloader()
  {
    return (enablesBootloader) && (LocalFileBootloader.needToUseLocalFileBootloader());
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
  }
  
  @TargetApi(12)
  public void onCreate()
  {
    instance = this;
    if (Build.VERSION.SDK_INT >= 12) {
      CookieManager.setAcceptFileSchemeCookies(true);
    }
    CookieSyncManager.createInstance(this);
    super.onCreate();
    initGCM();
    createMenuMap();
  }
  
  public void onTerminate()
  {
    pages = null;
    menuMap = null;
    super.onTerminate();
  }
  
  public void sendGCMRegisterIdToAppAPI(String paramString)
  {
    new GCMRegistrationIdSenderTask(this, MonacaConst.getPushRegistrationAPIUrl(this, getPushProjectId()), paramString)
    {
      protected void onClosedTask() {}
      
      protected void onFailedRegistration(JSONObject paramAnonymousJSONObject) {}
      
      protected void onSucceededRegistration(JSONObject paramAnonymousJSONObject) {}
    }.execute(new Void[0]);
  }
  
  public void showMonacaSpinnerDialog(UIContext paramUIContext, JSONArray paramJSONArray)
    throws Exception
  {
    if ((monacaSpinnerDialog != null) && (monacaSpinnerDialog.isShowing())) {
      monacaSpinnerDialog.dismiss();
    }
    try
    {
      monacaSpinnerDialog = new SpinnerDialog(paramUIContext, paramJSONArray);
      monacaSpinnerDialog.setCancelable(true);
      monacaSpinnerDialog.setOnDismissListener(new DialogInterface.OnDismissListener()
      {
        public void onDismiss(DialogInterface paramAnonymousDialogInterface) {}
      });
      monacaSpinnerDialog.setOnCancelListener(new DialogInterface.OnCancelListener()
      {
        public void onCancel(DialogInterface paramAnonymousDialogInterface)
        {
          if (monacaSpinnerDialog != null) {
            MonacaApplication.access$002(MonacaApplication.this, null);
          }
        }
      });
      monacaSpinnerDialog.show();
      return;
    }
    catch (Exception paramUIContext)
    {
      Log.e(TAG, paramUIContext.getMessage());
      throw paramUIContext;
    }
  }
  
  public void showMonacaSpinnerDialogIfAny()
  {
    if (monacaSpinnerDialog != null) {
      monacaSpinnerDialog.show();
    }
  }
  
  public void updateSpinnerTitle(String paramString)
  {
    if ((monacaSpinnerDialog != null) && (monacaSpinnerDialog.isShowing())) {
      monacaSpinnerDialog.updateTitleText(paramString);
    }
  }
}

/* Location:
 * Qualified Name:     mobi.monaca.framework.MonacaApplication
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */