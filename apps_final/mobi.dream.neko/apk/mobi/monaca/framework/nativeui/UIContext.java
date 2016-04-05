package mobi.monaca.framework.nativeui;

import android.content.ContextWrapper;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import android.util.DisplayMetrics;
import android.util.SparseIntArray;
import android.view.Display;
import android.view.View;
import android.view.WindowManager;
import android.view.inputmethod.InputMethodManager;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.net.URI;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import mobi.monaca.framework.InternalSettings;
import mobi.monaca.framework.MonacaApplication;
import mobi.monaca.framework.MonacaPageActivity;
import mobi.monaca.framework.bootloader.LocalFileBootloader;
import mobi.monaca.framework.nativeui.component.Component;
import mobi.monaca.framework.nativeui.component.PageComponent;
import mobi.monaca.framework.psedo.R.string;
import mobi.monaca.framework.util.InputStreamLoader;

public class UIContext
  extends ContextWrapper
{
  protected SparseIntArray computedFontSizeCache = new SparseIntArray();
  protected Map<String, Component> mComponentIDsMap = new HashMap();
  protected PageComponent mPageComponent;
  protected DisplayMetrics metrics;
  protected ArrayList<OnRotateListener> onRotateListeners = new ArrayList();
  protected MonacaPageActivity pageActivity;
  protected InternalSettings settings;
  protected String uiFilePath;
  
  public UIContext(String paramString, MonacaPageActivity paramMonacaPageActivity)
  {
    super(paramMonacaPageActivity);
    uiFilePath = paramString;
    pageActivity = paramMonacaPageActivity;
    metrics = new DisplayMetrics();
    paramMonacaPageActivity.getWindowManager().getDefaultDisplay().getMetrics(metrics);
    settings = ((MonacaApplication)paramMonacaPageActivity.getApplication()).getInternalSettings();
  }
  
  public static String getPreferredPath(String paramString)
  {
    String str = MonacaApplication.getStringFromResource(R.string.nc_a2x);
    if (paramString.endsWith(MonacaApplication.getStringFromResource(R.string.extension_png))) {
      return paramString.substring(0, paramString.length() - 4) + str + MonacaApplication.getStringFromResource(R.string.extension_png);
    }
    if (paramString.endsWith(MonacaApplication.getStringFromResource(R.string.extension_jpg))) {
      return paramString.substring(0, paramString.length() - 4) + str + MonacaApplication.getStringFromResource(R.string.extension_jpg);
    }
    if (paramString.endsWith(MonacaApplication.getStringFromResource(R.string.extension_jpeg))) {
      return paramString.substring(0, paramString.length() - 5) + str + MonacaApplication.getStringFromResource(R.string.extension_jpeg);
    }
    if (paramString.endsWith(MonacaApplication.getStringFromResource(R.string.extension_gif))) {
      return paramString.substring(0, paramString.length() - 4) + str + MonacaApplication.getStringFromResource(R.string.extension_gif);
    }
    return null;
  }
  
  public void addOnRotateListener(OnRotateListener paramOnRotateListener)
  {
    onRotateListeners.add(paramOnRotateListener);
  }
  
  public void changeCurrentUri(String paramString)
  {
    paramString = resolve(paramString);
    pageActivity.setCurrentUri(paramString);
  }
  
  protected boolean exists(String paramString)
  {
    if (paramString.startsWith(getString(R.string.asset_url))) {
      try
      {
        LocalFileBootloader.openAsset(pageActivity.getApplicationContext(), paramString.substring(getString(R.string.asset_url).length())).close();
        return true;
      }
      catch (Exception paramString)
      {
        return false;
      }
    }
    if (paramString.startsWith(getString(R.string.file_scheme))) {
      return new File(paramString.substring(getString(R.string.file_scheme).length())).exists();
    }
    throw new RuntimeException(getString(R.string.nc_error_unsupported_path) + paramString);
  }
  
  public void fireOnRotateListeners(int paramInt)
  {
    Iterator localIterator = onRotateListeners.iterator();
    while (localIterator.hasNext()) {
      ((OnRotateListener)localIterator.next()).onRotate(paramInt);
    }
  }
  
  protected float getBitmapScaleFactorFromPath(String paramString)
  {
    String str = getString(R.string.nc_a2x);
    if ((paramString.endsWith(str + getString(R.string.extension_png))) || (paramString.endsWith(str + getString(R.string.extension_gif))) || (paramString.endsWith(str + getString(R.string.extension_jpg))) || (paramString.endsWith(str + getString(R.string.extension_jpeg)))) {
      return 0.5F;
    }
    return 1.0F;
  }
  
  public Map<String, Component> getComponentIDsMap()
  {
    return mComponentIDsMap;
  }
  
  protected float getDensityScale()
  {
    DisplayMetrics localDisplayMetrics = new DisplayMetrics();
    pageActivity.getWindowManager().getDefaultDisplay().getMetrics(localDisplayMetrics);
    return density;
  }
  
  public DisplayMetrics getDisplayMetrics()
  {
    return metrics;
  }
  
  public int getFontSizeFromDip(int paramInt)
  {
    return UIUtil.getFontSizeFromDip(this, paramInt);
  }
  
  public MonacaPageActivity getPageActivity()
  {
    return pageActivity;
  }
  
  public PageComponent getPageComponent()
  {
    return mPageComponent;
  }
  
  public InternalSettings getSettings()
  {
    return settings;
  }
  
  public String getUIFilePath()
  {
    return uiFilePath;
  }
  
  public int getUIOrientation()
  {
    return pageActivity.getResources().getConfiguration().orientation;
  }
  
  public void loadRelativePathWithoutUIFile(String paramString)
  {
    paramString = resolve(paramString);
    pageActivity.loadUri(paramString, true);
  }
  
  public void react(String paramString)
  {
    if (paramString.startsWith(getString(R.string.js_scheme)))
    {
      pageActivity.sendJavascript(paramString.substring(11));
      return;
    }
    pageActivity.pushPageWithIntent(paramString, null);
  }
  
  public Bitmap readScaledBitmap(String paramString)
    throws IOException
  {
    paramString = resolve(paramString);
    Object localObject;
    Bitmap localBitmap;
    float f;
    if (paramString.startsWith(getString(R.string.asset_url)))
    {
      localObject = InputStreamLoader.loadAssetFile(this, paramString.substring(getString(R.string.asset_url).length()));
      localBitmap = BitmapFactory.decodeStream((InputStream)localObject);
      ((InputStream)localObject).close();
      localObject = new Matrix();
      f = getDensityScale() * getBitmapScaleFactorFromPath(paramString);
      ((Matrix)localObject).postScale(f, f);
      return Bitmap.createBitmap(localBitmap, 0, 0, localBitmap.getWidth(), localBitmap.getHeight(), (Matrix)localObject, true);
    }
    if (paramString.startsWith(getString(R.string.file_scheme)))
    {
      localObject = InputStreamLoader.loadLocalFile(paramString.substring(getString(R.string.file_scheme).length()));
      localBitmap = BitmapFactory.decodeStream((InputStream)localObject);
      ((InputStream)localObject).close();
      localObject = new Matrix();
      f = getDensityScale() * getBitmapScaleFactorFromPath(paramString);
      ((Matrix)localObject).postScale(f, f);
      return Bitmap.createBitmap(localBitmap, 0, 0, localBitmap.getWidth(), localBitmap.getHeight(), (Matrix)localObject, true);
    }
    return null;
  }
  
  public String resolve(String paramString)
  {
    try
    {
      String str = new URI(uiFilePath).resolve(paramString).toString();
      paramString = str;
      if (str.startsWith(getString(R.string.nc_resolve_assetpath))) {
        paramString = getString(R.string.file_scheme) + str.substring(getString(R.string.nc_resolve_filescheme).length());
      }
      str = paramString;
      if (paramString.startsWith(getString(R.string.nc_resolve_datapath))) {
        str = getString(R.string.file_scheme) + getString(R.string.slash) + paramString.substring(new StringBuilder().append(getString(R.string.nc_resolve_filescheme)).append(getString(R.string.slash)).toString().length());
      }
      paramString = getPreferredPath(str);
      if ((paramString != null) && (exists(paramString))) {
        return paramString;
      }
    }
    catch (Exception localException)
    {
      return paramString;
    }
    return localException;
  }
  
  public void setPageComponent(PageComponent paramPageComponent)
  {
    mPageComponent = paramPageComponent;
  }
  
  public void showSoftInput(View paramView)
  {
    ((InputMethodManager)pageActivity.getSystemService("input_method")).showSoftInput(paramView, 0);
  }
  
  public static abstract interface OnRotateListener
  {
    public abstract void onRotate(int paramInt);
  }
}

/* Location:
 * Qualified Name:     mobi.monaca.framework.nativeui.UIContext
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */