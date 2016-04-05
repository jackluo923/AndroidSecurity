package mobi.monaca.framework.util;

import android.content.Context;
import android.content.res.AssetManager;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import mobi.monaca.framework.MonacaApplication;
import mobi.monaca.framework.bootloader.LocalFileBootloader;
import mobi.monaca.framework.psedo.R.string;

public class AssetUtils
{
  private static final String TAG = AssetUtils.class.getSimpleName();
  
  public static String assetToString(Context paramContext, String paramString)
    throws IOException
  {
    paramContext = new BufferedReader(new InputStreamReader(LocalFileBootloader.openAsset(paramContext, paramString), MonacaApplication.getStringFromResource(R.string.encoding)));
    paramString = new StringBuffer();
    for (;;)
    {
      String str = paramContext.readLine();
      if (str == null) {
        break;
      }
      paramString.append(str);
      paramString.append("\n");
    }
    return paramString.toString();
  }
  
  public static boolean existsAsset(Context paramContext, String paramString)
  {
    try
    {
      LocalFileBootloader.openAsset(paramContext, paramString).close();
      return true;
    }
    catch (Exception paramContext) {}
    return false;
  }
  
  protected void aggregateAssetsFileList(Context paramContext, String paramString, ArrayList<String> paramArrayList)
  {
    for (;;)
    {
      int i;
      try
      {
        String[] arrayOfString = paramContext.getAssets().list(paramString);
        int j = arrayOfString.length;
        i = 0;
        if (i < j)
        {
          String str = arrayOfString[i];
          if (existsAsset(paramContext, paramString + MonacaApplication.getStringFromResource(R.string.slash) + str)) {
            paramArrayList.add(paramString + MonacaApplication.getStringFromResource(R.string.slash) + str);
          } else {
            aggregateAssetsFileList(paramContext, paramString + MonacaApplication.getStringFromResource(R.string.slash) + str, paramArrayList);
          }
        }
      }
      catch (Exception paramContext)
      {
        MyLog.e(getClass().getSimpleName(), paramContext.getMessage());
        throw new RuntimeException(paramContext);
      }
      return;
      i += 1;
    }
  }
  
  /* Error */
  protected void copyAssetToLocal(Context paramContext, String paramString)
  {
    // Byte code:
    //   0: sipush 4096
    //   3: newarray <illegal type>
    //   5: astore_3
    //   6: new 137	java/io/File
    //   9: dup
    //   10: new 93	java/lang/StringBuilder
    //   13: dup
    //   14: invokespecial 94	java/lang/StringBuilder:<init>	()V
    //   17: aload_1
    //   18: invokevirtual 141	android/content/Context:getApplicationInfo	()Landroid/content/pm/ApplicationInfo;
    //   21: getfield 146	android/content/pm/ApplicationInfo:dataDir	Ljava/lang/String;
    //   24: invokevirtual 97	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   27: getstatic 100	mobi/monaca/framework/psedo/R$string:slash	I
    //   30: invokestatic 46	mobi/monaca/framework/MonacaApplication:getStringFromResource	(I)Ljava/lang/String;
    //   33: invokevirtual 97	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   36: aload_2
    //   37: invokevirtual 97	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   40: invokevirtual 101	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   43: invokespecial 149	java/io/File:<init>	(Ljava/lang/String;)V
    //   46: astore 4
    //   48: aload 4
    //   50: invokevirtual 153	java/io/File:getParentFile	()Ljava/io/File;
    //   53: invokevirtual 157	java/io/File:mkdirs	()Z
    //   56: pop
    //   57: new 159	java/io/FileOutputStream
    //   60: dup
    //   61: aload 4
    //   63: invokespecial 162	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   66: astore 4
    //   68: aload_1
    //   69: invokevirtual 85	android/content/Context:getAssets	()Landroid/content/res/AssetManager;
    //   72: aload_2
    //   73: invokevirtual 166	android/content/res/AssetManager:open	(Ljava/lang/String;)Ljava/io/InputStream;
    //   76: astore_1
    //   77: aload_1
    //   78: aload_3
    //   79: invokevirtual 170	java/io/InputStream:read	([B)I
    //   82: istore 5
    //   84: iconst_m1
    //   85: iload 5
    //   87: if_icmpeq +25 -> 112
    //   90: aload 4
    //   92: aload_3
    //   93: iconst_0
    //   94: iload 5
    //   96: invokevirtual 176	java/io/OutputStream:write	([BII)V
    //   99: goto -22 -> 77
    //   102: astore_1
    //   103: new 126	java/lang/RuntimeException
    //   106: dup
    //   107: aload_1
    //   108: invokespecial 129	java/lang/RuntimeException:<init>	(Ljava/lang/Throwable;)V
    //   111: athrow
    //   112: aload_1
    //   113: invokevirtual 77	java/io/InputStream:close	()V
    //   116: aload 4
    //   118: invokevirtual 177	java/io/OutputStream:close	()V
    //   121: return
    //   122: astore_1
    //   123: new 179	mobi/monaca/framework/bootloader/AbortException
    //   126: dup
    //   127: aload_1
    //   128: invokespecial 182	mobi/monaca/framework/bootloader/AbortException:<init>	(Ljava/lang/Exception;)V
    //   131: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	132	0	this	AssetUtils
    //   0	132	1	paramContext	Context
    //   0	132	2	paramString	String
    //   5	88	3	arrayOfByte	byte[]
    //   46	71	4	localObject	Object
    //   82	13	5	i	int
    // Exception table:
    //   from	to	target	type
    //   57	77	102	java/io/FileNotFoundException
    //   77	84	102	java/io/FileNotFoundException
    //   90	99	102	java/io/FileNotFoundException
    //   112	121	102	java/io/FileNotFoundException
    //   57	77	122	java/io/IOException
    //   77	84	122	java/io/IOException
    //   90	99	122	java/io/IOException
    //   112	121	122	java/io/IOException
  }
}

/* Location:
 * Qualified Name:     mobi.monaca.framework.util.AssetUtils
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */