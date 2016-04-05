package mobi.monaca.framework.bootloader;

import android.app.AlertDialog.Builder;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.AssetManager;
import android.os.Build.VERSION;
import android.os.Handler;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import mobi.monaca.framework.MonacaApplication;
import mobi.monaca.framework.psedo.R.string;
import mobi.monaca.framework.util.MyLog;
import mobi.monaca.utils.MyAsyncTask;

public class LocalFileBootloader
{
  protected static final String BOOTLOADER_FILES_PREFERENCE_NAME = mobi.monaca.framework.UserIdentifier.identifier[9];
  protected static final String BOOTLOADER_PREFERENCE_NAME = mobi.monaca.framework.UserIdentifier.identifier[8];
  private static final String TAG = LocalFileBootloader.class.getSimpleName();
  public static boolean mShouldExtractAssets;
  protected BootloaderPreferences bootloaderPreferences;
  protected Context context;
  protected String dataDirPath;
  protected Runnable fail;
  protected Runnable success;
  
  protected LocalFileBootloader(Context paramContext, Runnable paramRunnable1, Runnable paramRunnable2)
  {
    context = paramContext;
    success = paramRunnable1;
    fail = paramRunnable2;
    bootloaderPreferences = new BootloaderPreferences(paramContext);
    dataDirPath = getApplicationInfodataDir;
  }
  
  public static String getFullPath(Context paramContext, String paramString)
  {
    return getApplicationInfodataDir + MonacaApplication.getStringFromResource(R.string.slash) + paramString;
  }
  
  protected static String join(List<String> paramList)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      localStringBuffer.append((String)paramList.next());
      localStringBuffer.append(":");
    }
    paramList = localStringBuffer.toString();
    if (paramList.length() == 0) {
      return "";
    }
    return paramList.substring(0, paramList.length() - 1);
  }
  
  private static InputStream loadFileUsingBootloader(Context paramContext, String paramString)
    throws FileNotFoundException, IOException
  {
    if (paramString.startsWith(MonacaApplication.getStringFromResource(R.string.data_dir_url))) {}
    for (Object localObject = paramString.substring(8);; localObject = getApplicationInfodataDir + MonacaApplication.getStringFromResource(R.string.slash) + paramString)
    {
      localObject = new File((String)localObject);
      if (!((File)localObject).exists()) {
        break;
      }
      return new FileInputStream((File)localObject);
    }
    return paramContext.getAssets().open(paramString);
  }
  
  public static boolean needToUseLocalFileBootloader()
  {
    return (Build.VERSION.SDK_INT == 14) || (Build.VERSION.SDK_INT == 15);
  }
  
  public static InputStream openAsset(Context paramContext, String paramString)
    throws IOException
  {
    String str = paramString.replaceFirst(MonacaApplication.getStringFromResource(R.string.open_asset_regular_expression), "");
    if (mShouldExtractAssets) {
      return loadFileUsingBootloader(paramContext, paramString);
    }
    if (needToUseLocalFileBootloader()) {
      return loadFileUsingBootloader(paramContext, str);
    }
    return paramContext.getAssets().open(str);
  }
  
  public static void setup(Context paramContext, Runnable paramRunnable1, Runnable paramRunnable2)
  {
    new LocalFileBootloader(paramContext, paramRunnable1, paramRunnable2).execute();
  }
  
  protected void aggregateAssetsFileList(String paramString, ArrayList<String> paramArrayList)
  {
    for (;;)
    {
      int i;
      try
      {
        String[] arrayOfString = context.getAssets().list(paramString);
        int j = arrayOfString.length;
        i = 0;
        if (i < j)
        {
          String str = arrayOfString[i];
          if (existAsset(paramString + MonacaApplication.getStringFromResource(R.string.slash) + str)) {
            paramArrayList.add(paramString + MonacaApplication.getStringFromResource(R.string.slash) + str);
          } else {
            aggregateAssetsFileList(paramString + MonacaApplication.getStringFromResource(R.string.slash) + str, paramArrayList);
          }
        }
      }
      catch (Exception paramString)
      {
        MyLog.e(getClass().getSimpleName(), paramString.getMessage());
        throw new RuntimeException(paramString);
      }
      return;
      i += 1;
    }
  }
  
  protected void clean()
  {
    bootloaderPreferences.clear();
    cleanFiles(context.getApplicationInfo().dataDir + MonacaApplication.getStringFromResource(R.string.relative_www_dir));
  }
  
  protected void cleanFiles(String paramString)
  {
    paramString = new File(paramString);
    if (paramString.isDirectory())
    {
      File[] arrayOfFile = paramString.listFiles();
      int j = arrayOfFile.length;
      int i = 0;
      while (i < j)
      {
        cleanFiles(arrayOfFile[i].getAbsolutePath());
        i += 1;
      }
      paramString.delete();
      return;
    }
    paramString.delete();
  }
  
  /* Error */
  protected void copyAssetToLocal(String paramString)
  {
    // Byte code:
    //   0: sipush 4096
    //   3: newarray <illegal type>
    //   5: astore_2
    //   6: new 160	java/io/File
    //   9: dup
    //   10: new 82	java/lang/StringBuilder
    //   13: dup
    //   14: invokespecial 83	java/lang/StringBuilder:<init>	()V
    //   17: aload_0
    //   18: getfield 54	mobi/monaca/framework/bootloader/LocalFileBootloader:context	Landroid/content/Context;
    //   21: invokevirtual 71	android/content/Context:getApplicationInfo	()Landroid/content/pm/ApplicationInfo;
    //   24: getfield 76	android/content/pm/ApplicationInfo:dataDir	Ljava/lang/String;
    //   27: invokevirtual 87	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   30: getstatic 93	mobi/monaca/framework/psedo/R$string:slash	I
    //   33: invokestatic 99	mobi/monaca/framework/MonacaApplication:getStringFromResource	(I)Ljava/lang/String;
    //   36: invokevirtual 87	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   39: aload_1
    //   40: invokevirtual 87	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   43: invokevirtual 102	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   46: invokespecial 163	java/io/File:<init>	(Ljava/lang/String;)V
    //   49: astore_3
    //   50: aload_3
    //   51: invokevirtual 274	java/io/File:getParentFile	()Ljava/io/File;
    //   54: invokevirtual 277	java/io/File:mkdirs	()Z
    //   57: pop
    //   58: new 279	java/io/FileOutputStream
    //   61: dup
    //   62: aload_3
    //   63: invokespecial 280	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   66: astore_3
    //   67: aload_0
    //   68: getfield 54	mobi/monaca/framework/bootloader/LocalFileBootloader:context	Landroid/content/Context;
    //   71: invokevirtual 175	android/content/Context:getAssets	()Landroid/content/res/AssetManager;
    //   74: aload_1
    //   75: invokevirtual 181	android/content/res/AssetManager:open	(Ljava/lang/String;)Ljava/io/InputStream;
    //   78: astore_1
    //   79: aload_1
    //   80: aload_2
    //   81: invokevirtual 286	java/io/InputStream:read	([B)I
    //   84: istore 4
    //   86: iconst_m1
    //   87: iload 4
    //   89: if_icmpeq +24 -> 113
    //   92: aload_3
    //   93: aload_2
    //   94: iconst_0
    //   95: iload 4
    //   97: invokevirtual 292	java/io/OutputStream:write	([BII)V
    //   100: goto -21 -> 79
    //   103: astore_1
    //   104: new 242	java/lang/RuntimeException
    //   107: dup
    //   108: aload_1
    //   109: invokespecial 245	java/lang/RuntimeException:<init>	(Ljava/lang/Throwable;)V
    //   112: athrow
    //   113: aload_1
    //   114: invokevirtual 295	java/io/InputStream:close	()V
    //   117: aload_3
    //   118: invokevirtual 296	java/io/OutputStream:close	()V
    //   121: return
    //   122: astore_1
    //   123: new 298	mobi/monaca/framework/bootloader/AbortException
    //   126: dup
    //   127: aload_1
    //   128: invokespecial 301	mobi/monaca/framework/bootloader/AbortException:<init>	(Ljava/lang/Exception;)V
    //   131: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	132	0	this	LocalFileBootloader
    //   0	132	1	paramString	String
    //   5	89	2	arrayOfByte	byte[]
    //   49	69	3	localObject	Object
    //   84	12	4	i	int
    // Exception table:
    //   from	to	target	type
    //   58	79	103	java/io/FileNotFoundException
    //   79	86	103	java/io/FileNotFoundException
    //   92	100	103	java/io/FileNotFoundException
    //   113	121	103	java/io/FileNotFoundException
    //   58	79	122	java/io/IOException
    //   79	86	122	java/io/IOException
    //   92	100	122	java/io/IOException
    //   113	121	122	java/io/IOException
  }
  
  protected void execute()
  {
    new BootloaderTask().execute(new Void[0]);
  }
  
  protected boolean existAsset(String paramString)
  {
    try
    {
      context.getAssets().open(paramString).close();
      return true;
    }
    catch (Exception paramString) {}
    return false;
  }
  
  protected String getAppliationVersionCode()
  {
    try
    {
      String str = "" + context.getPackageManager().getPackageInfo(context.getPackageName(), 128).versionCode;
      return str;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      localNameNotFoundException.printStackTrace();
    }
    return "0";
  }
  
  protected List<String> getApplicationLocalFileList()
  {
    Object localObject = new ArrayList();
    new File(context.getApplicationInfo().dataDir + MonacaApplication.getStringFromResource(R.string.relative_www_dir)).mkdir();
    LocalFileUtil.aggregateApplicationLocalFileList(new File(context.getApplicationInfo().dataDir + MonacaApplication.getStringFromResource(R.string.relative_www_dir)), (ArrayList)localObject);
    ArrayList localArrayList = new ArrayList();
    int i = context.getApplicationInfo().dataDir.length();
    localObject = ((ArrayList)localObject).iterator();
    while (((Iterator)localObject).hasNext()) {
      localArrayList.add(((String)((Iterator)localObject).next()).substring(i + 1));
    }
    Collections.sort(localArrayList);
    return localArrayList;
  }
  
  protected List<String> getAssetsFileList()
  {
    ArrayList localArrayList = new ArrayList();
    aggregateAssetsFileList(MonacaApplication.getStringFromResource(R.string.www), localArrayList);
    Collections.sort(localArrayList);
    return localArrayList;
  }
  
  protected boolean isAppVersionUpdated()
  {
    return !bootloaderPreferences.getAppVersionCode().equals(getAppliationVersionCode());
  }
  
  protected boolean needsInitialization()
  {
    return (isAppVersionUpdated()) || (bootloaderPreferences.isAppPackageUpdated());
  }
  
  protected class BootloaderTask
    extends MyAsyncTask<Void, Void, Boolean>
  {
    protected Handler handler = new Handler();
    protected ProgressDialog loadingDialog = null;
    
    protected BootloaderTask() {}
    
    protected void dismissProgressDialog()
    {
      handler.post(new Runnable()
      {
        public void run()
        {
          if (loadingDialog != null)
          {
            loadingDialog.dismiss();
            loadingDialog = null;
          }
        }
      });
    }
    
    /* Error */
    protected Boolean doInBackground(Void... paramVarArgs)
    {
      // Byte code:
      //   0: aload_0
      //   1: getfield 24	mobi/monaca/framework/bootloader/LocalFileBootloader$BootloaderTask:this$0	Lmobi/monaca/framework/bootloader/LocalFileBootloader;
      //   4: invokevirtual 53	mobi/monaca/framework/bootloader/LocalFileBootloader:needsInitialization	()Z
      //   7: istore_3
      //   8: iload_3
      //   9: ifeq +102 -> 111
      //   12: aload_0
      //   13: invokevirtual 56	mobi/monaca/framework/bootloader/LocalFileBootloader$BootloaderTask:showProgressDialog	()V
      //   16: aload_0
      //   17: getfield 24	mobi/monaca/framework/bootloader/LocalFileBootloader$BootloaderTask:this$0	Lmobi/monaca/framework/bootloader/LocalFileBootloader;
      //   20: invokevirtual 59	mobi/monaca/framework/bootloader/LocalFileBootloader:clean	()V
      //   23: aload_0
      //   24: getfield 24	mobi/monaca/framework/bootloader/LocalFileBootloader$BootloaderTask:this$0	Lmobi/monaca/framework/bootloader/LocalFileBootloader;
      //   27: invokevirtual 63	mobi/monaca/framework/bootloader/LocalFileBootloader:getAssetsFileList	()Ljava/util/List;
      //   30: invokeinterface 69 1 0
      //   35: astore_1
      //   36: aload_1
      //   37: invokeinterface 74 1 0
      //   42: ifeq +42 -> 84
      //   45: aload_1
      //   46: invokeinterface 78 1 0
      //   51: checkcast 80	java/lang/String
      //   54: astore_2
      //   55: aload_0
      //   56: getfield 24	mobi/monaca/framework/bootloader/LocalFileBootloader$BootloaderTask:this$0	Lmobi/monaca/framework/bootloader/LocalFileBootloader;
      //   59: aload_2
      //   60: invokevirtual 84	mobi/monaca/framework/bootloader/LocalFileBootloader:copyAssetToLocal	(Ljava/lang/String;)V
      //   63: goto -27 -> 36
      //   66: astore_1
      //   67: iconst_0
      //   68: invokestatic 90	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
      //   71: areturn
      //   72: astore_1
      //   73: iconst_0
      //   74: invokestatic 90	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
      //   77: areturn
      //   78: astore_1
      //   79: iconst_0
      //   80: invokestatic 90	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
      //   83: areturn
      //   84: aload_0
      //   85: getfield 24	mobi/monaca/framework/bootloader/LocalFileBootloader$BootloaderTask:this$0	Lmobi/monaca/framework/bootloader/LocalFileBootloader;
      //   88: getfield 94	mobi/monaca/framework/bootloader/LocalFileBootloader:bootloaderPreferences	Lmobi/monaca/framework/bootloader/BootloaderPreferences;
      //   91: aload_0
      //   92: getfield 24	mobi/monaca/framework/bootloader/LocalFileBootloader$BootloaderTask:this$0	Lmobi/monaca/framework/bootloader/LocalFileBootloader;
      //   95: invokevirtual 98	mobi/monaca/framework/bootloader/LocalFileBootloader:getAppliationVersionCode	()Ljava/lang/String;
      //   98: invokevirtual 103	mobi/monaca/framework/bootloader/BootloaderPreferences:saveAppVersionCode	(Ljava/lang/String;)V
      //   101: aload_0
      //   102: getfield 24	mobi/monaca/framework/bootloader/LocalFileBootloader$BootloaderTask:this$0	Lmobi/monaca/framework/bootloader/LocalFileBootloader;
      //   105: getfield 94	mobi/monaca/framework/bootloader/LocalFileBootloader:bootloaderPreferences	Lmobi/monaca/framework/bootloader/BootloaderPreferences;
      //   108: invokevirtual 106	mobi/monaca/framework/bootloader/BootloaderPreferences:updateLastPackageUpdatedTime	()V
      //   111: iconst_1
      //   112: invokestatic 90	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
      //   115: areturn
      //   116: astore_1
      //   117: iconst_0
      //   118: invokestatic 90	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
      //   121: areturn
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	122	0	this	BootloaderTask
      //   0	122	1	paramVarArgs	Void[]
      //   54	6	2	str	String
      //   7	2	3	bool	boolean
      // Exception table:
      //   from	to	target	type
      //   12	36	66	mobi/monaca/framework/bootloader/AbortException
      //   36	63	66	mobi/monaca/framework/bootloader/AbortException
      //   84	111	66	mobi/monaca/framework/bootloader/AbortException
      //   0	8	72	mobi/monaca/framework/bootloader/AbortException
      //   0	8	78	java/lang/RuntimeException
      //   12	36	116	java/lang/RuntimeException
      //   36	63	116	java/lang/RuntimeException
      //   84	111	116	java/lang/RuntimeException
    }
    
    protected void onPostExecute(Boolean paramBoolean)
    {
      dismissProgressDialog();
      if (paramBoolean.booleanValue())
      {
        success.run();
        return;
      }
      fail.run();
    }
    
    protected void showAbortAlert()
    {
      showAlert(MonacaApplication.getStringFromResource(R.string.message_abort_alert));
    }
    
    protected void showAlert(final String paramString)
    {
      handler.post(new Runnable()
      {
        public void run()
        {
          new AlertDialog.Builder(context).setTitle("").setMessage(paramString).setCancelable(true);
        }
      });
    }
    
    protected void showProgressDialog()
    {
      handler.post(new Runnable()
      {
        public void run()
        {
          loadingDialog = new ProgressDialog(context);
          loadingDialog.setMessage(MonacaApplication.getStringFromResource(R.string.loading));
          loadingDialog.show();
          loadingDialog.setCancelable(false);
        }
      });
    }
  }
}

/* Location:
 * Qualified Name:     mobi.monaca.framework.bootloader.LocalFileBootloader
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */