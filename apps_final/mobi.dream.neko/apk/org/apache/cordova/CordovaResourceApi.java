package org.apache.cordova;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.content.res.AssetManager;
import android.database.Cursor;
import android.net.Uri;
import android.os.Looper;
import android.util.Base64;
import com.squareup.okhttp.OkHttpClient;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.nio.channels.FileChannel;
import org.apache.cordova.api.PluginManager;
import org.apache.http.util.EncodingUtils;

public class CordovaResourceApi
{
  private static final String[] LOCAL_FILE_PROJECTION = { "_data" };
  private static final String LOG_TAG = "CordovaResourceApi";
  public static final int URI_TYPE_ASSET = 1;
  public static final int URI_TYPE_CONTENT = 2;
  public static final int URI_TYPE_DATA = 4;
  public static final int URI_TYPE_FILE = 0;
  public static final int URI_TYPE_HTTP = 5;
  public static final int URI_TYPE_HTTPS = 6;
  public static final int URI_TYPE_RESOURCE = 3;
  public static final int URI_TYPE_UNKNOWN = -1;
  private static OkHttpClient httpClient = new OkHttpClient();
  static Thread jsThread;
  private final AssetManager assetManager;
  private final ContentResolver contentResolver;
  private final PluginManager pluginManager;
  private boolean threadCheckingEnabled = true;
  
  public CordovaResourceApi(Context paramContext, PluginManager paramPluginManager)
  {
    contentResolver = paramContext.getContentResolver();
    assetManager = paramContext.getAssets();
    pluginManager = paramPluginManager;
  }
  
  private void assertBackgroundThread()
  {
    if (threadCheckingEnabled)
    {
      Thread localThread = Thread.currentThread();
      if (localThread == Looper.getMainLooper().getThread()) {
        throw new IllegalStateException("Do not perform IO operations on the UI thread. Use CordovaInterface.getThreadPool() instead.");
      }
      if (localThread == jsThread) {
        throw new IllegalStateException("Tried to perform an IO operation on the WebCore thread. Use CordovaInterface.getThreadPool() instead.");
      }
    }
  }
  
  private static void assertNonRelative(Uri paramUri)
  {
    if (!paramUri.isAbsolute()) {
      throw new IllegalArgumentException("Relative URIs are not supported.");
    }
  }
  
  public static int getUriType(Uri paramUri)
  {
    assertNonRelative(paramUri);
    String str = paramUri.getScheme();
    if ("content".equals(str)) {
      return 2;
    }
    if ("android.resource".equals(str)) {
      return 3;
    }
    if ("file".equals(str))
    {
      if (paramUri.getPath().startsWith("/android_asset/")) {
        return 1;
      }
      return 0;
    }
    if ("data".equals(str)) {
      return 4;
    }
    if ("http".equals(str)) {
      return 5;
    }
    if ("https".equals(str)) {
      return 6;
    }
    return -1;
  }
  
  private OpenForReadResult readDataUri(Uri paramUri)
  {
    Object localObject = paramUri.getSchemeSpecificPart();
    int k = ((String)localObject).indexOf(',');
    if (k == -1) {
      return null;
    }
    String[] arrayOfString = ((String)localObject).substring(0, k).split(";");
    String str = null;
    int j = 0;
    if (arrayOfString.length > 0) {
      str = arrayOfString[0];
    }
    int i = 1;
    while (i < arrayOfString.length)
    {
      if ("base64".equalsIgnoreCase(arrayOfString[i])) {
        j = 1;
      }
      i += 1;
    }
    localObject = ((String)localObject).substring(k + 1);
    if (j != 0) {}
    for (localObject = Base64.decode((String)localObject, 0);; localObject = EncodingUtils.getBytes((String)localObject, "UTF-8")) {
      return new OpenForReadResult(paramUri, new ByteArrayInputStream((byte[])localObject), str, localObject.length, null);
    }
  }
  
  public void copyResource(Uri paramUri, OutputStream paramOutputStream)
    throws IOException
  {
    copyResource(openForRead(paramUri), paramOutputStream);
  }
  
  /* Error */
  public void copyResource(OpenForReadResult paramOpenForReadResult, OutputStream paramOutputStream)
    throws IOException
  {
    // Byte code:
    //   0: aload_0
    //   1: invokespecial 213	org/apache/cordova/CordovaResourceApi:assertBackgroundThread	()V
    //   4: aload_1
    //   5: getfield 217	org/apache/cordova/CordovaResourceApi$OpenForReadResult:inputStream	Ljava/io/InputStream;
    //   8: astore_3
    //   9: aload_3
    //   10: instanceof 219
    //   13: ifeq +82 -> 95
    //   16: aload_2
    //   17: instanceof 221
    //   20: ifeq +75 -> 95
    //   23: aload_1
    //   24: getfield 217	org/apache/cordova/CordovaResourceApi$OpenForReadResult:inputStream	Ljava/io/InputStream;
    //   27: checkcast 219	java/io/FileInputStream
    //   30: invokevirtual 225	java/io/FileInputStream:getChannel	()Ljava/nio/channels/FileChannel;
    //   33: astore_3
    //   34: aload_2
    //   35: checkcast 221	java/io/FileOutputStream
    //   38: invokevirtual 226	java/io/FileOutputStream:getChannel	()Ljava/nio/channels/FileChannel;
    //   41: astore 4
    //   43: lconst_0
    //   44: lstore 6
    //   46: aload_1
    //   47: getfield 230	org/apache/cordova/CordovaResourceApi$OpenForReadResult:length	J
    //   50: lstore 8
    //   52: aload_1
    //   53: getfield 234	org/apache/cordova/CordovaResourceApi$OpenForReadResult:assetFd	Landroid/content/res/AssetFileDescriptor;
    //   56: ifnull +12 -> 68
    //   59: aload_1
    //   60: getfield 234	org/apache/cordova/CordovaResourceApi$OpenForReadResult:assetFd	Landroid/content/res/AssetFileDescriptor;
    //   63: invokevirtual 240	android/content/res/AssetFileDescriptor:getStartOffset	()J
    //   66: lstore 6
    //   68: aload 4
    //   70: aload_3
    //   71: lload 6
    //   73: lload 8
    //   75: invokevirtual 246	java/nio/channels/FileChannel:transferFrom	(Ljava/nio/channels/ReadableByteChannel;JJ)J
    //   78: pop2
    //   79: aload_1
    //   80: getfield 217	org/apache/cordova/CordovaResourceApi$OpenForReadResult:inputStream	Ljava/io/InputStream;
    //   83: invokevirtual 251	java/io/InputStream:close	()V
    //   86: aload_2
    //   87: ifnull +7 -> 94
    //   90: aload_2
    //   91: invokevirtual 254	java/io/OutputStream:close	()V
    //   94: return
    //   95: sipush 8192
    //   98: newarray <illegal type>
    //   100: astore 4
    //   102: aload_3
    //   103: aload 4
    //   105: iconst_0
    //   106: sipush 8192
    //   109: invokevirtual 258	java/io/InputStream:read	([BII)I
    //   112: istore 5
    //   114: iload 5
    //   116: ifle -37 -> 79
    //   119: aload_2
    //   120: aload 4
    //   122: iconst_0
    //   123: iload 5
    //   125: invokevirtual 262	java/io/OutputStream:write	([BII)V
    //   128: goto -26 -> 102
    //   131: astore_3
    //   132: aload_1
    //   133: getfield 217	org/apache/cordova/CordovaResourceApi$OpenForReadResult:inputStream	Ljava/io/InputStream;
    //   136: invokevirtual 251	java/io/InputStream:close	()V
    //   139: aload_2
    //   140: ifnull +7 -> 147
    //   143: aload_2
    //   144: invokevirtual 254	java/io/OutputStream:close	()V
    //   147: aload_3
    //   148: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	149	0	this	CordovaResourceApi
    //   0	149	1	paramOpenForReadResult	OpenForReadResult
    //   0	149	2	paramOutputStream	OutputStream
    //   8	95	3	localObject1	Object
    //   131	17	3	localObject2	Object
    //   41	80	4	localObject3	Object
    //   112	12	5	i	int
    //   44	28	6	l1	long
    //   50	24	8	l2	long
    // Exception table:
    //   from	to	target	type
    //   4	43	131	finally
    //   46	52	131	finally
    //   52	68	131	finally
    //   68	79	131	finally
    //   95	102	131	finally
    //   102	114	131	finally
    //   119	128	131	finally
  }
  
  public HttpURLConnection createHttpConnection(Uri paramUri)
    throws IOException
  {
    assertBackgroundThread();
    return httpClient.open(new URL(paramUri.toString()));
  }
  
  public boolean isThreadCheckingEnabled()
  {
    return threadCheckingEnabled;
  }
  
  public File mapUriToFile(Uri paramUri)
  {
    assertBackgroundThread();
    switch (getUriType(paramUri))
    {
    }
    do
    {
      return null;
      return new File(paramUri.getPath());
      paramUri = contentResolver.query(paramUri, LOCAL_FILE_PROJECTION, null, null, null);
    } while (paramUri == null);
    try
    {
      int i = paramUri.getColumnIndex(LOCAL_FILE_PROJECTION[0]);
      if ((i != -1) && (paramUri.getCount() > 0))
      {
        paramUri.moveToFirst();
        Object localObject1 = paramUri.getString(i);
        if (localObject1 != null)
        {
          localObject1 = new File((String)localObject1);
          return (File)localObject1;
        }
      }
      return null;
    }
    finally
    {
      paramUri.close();
    }
  }
  
  public OpenForReadResult openForRead(Uri paramUri)
    throws IOException
  {
    return openForRead(paramUri, false);
  }
  
  public OpenForReadResult openForRead(Uri paramUri, boolean paramBoolean)
    throws IOException
  {
    if (!paramBoolean) {
      assertBackgroundThread();
    }
    switch (getUriType(paramUri))
    {
    default: 
    case 0: 
    case 1: 
    case 2: 
    case 3: 
    case 4: 
      do
      {
        throw new FileNotFoundException("URI not supported by CordovaResourceApi: " + paramUri);
        localObject1 = new FileInputStream(paramUri.getPath());
        return new OpenForReadResult(paramUri, (InputStream)localObject1, FileHelper.getMimeTypeForExtension(paramUri.getPath()), ((FileInputStream)localObject1).getChannel().size(), null);
        String str = paramUri.getPath().substring(15);
        localObject1 = null;
        long l1 = -1L;
        try
        {
          localObject2 = assetManager.openFd(str);
          localObject1 = localObject2;
          FileInputStream localFileInputStream = ((AssetFileDescriptor)localObject2).createInputStream();
          localObject1 = localObject2;
          long l2 = ((AssetFileDescriptor)localObject2).getLength();
          l1 = l2;
          localObject1 = localObject2;
          localObject2 = localFileInputStream;
        }
        catch (FileNotFoundException localFileNotFoundException)
        {
          for (;;)
          {
            Object localObject2;
            localObject3 = assetManager.open(str);
          }
        }
        return new OpenForReadResult(paramUri, (InputStream)localObject2, FileHelper.getMimeTypeForExtension(str), l1, (AssetFileDescriptor)localObject1);
        localObject1 = contentResolver.getType(paramUri);
        localObject3 = contentResolver.openAssetFileDescriptor(paramUri, "r");
        return new OpenForReadResult(paramUri, ((AssetFileDescriptor)localObject3).createInputStream(), (String)localObject1, ((AssetFileDescriptor)localObject3).getLength(), (AssetFileDescriptor)localObject3);
        localObject1 = readDataUri(paramUri);
      } while (localObject1 == null);
      return (OpenForReadResult)localObject1;
    }
    Object localObject1 = httpClient.open(new URL(paramUri.toString()));
    ((HttpURLConnection)localObject1).setDoInput(true);
    Object localObject3 = ((HttpURLConnection)localObject1).getHeaderField("Content-Type");
    int i = ((HttpURLConnection)localObject1).getContentLength();
    return new OpenForReadResult(paramUri, ((HttpURLConnection)localObject1).getInputStream(), (String)localObject3, i, null);
  }
  
  public OutputStream openOutputStream(Uri paramUri)
    throws IOException
  {
    return openOutputStream(paramUri, false);
  }
  
  public OutputStream openOutputStream(Uri paramUri, boolean paramBoolean)
    throws IOException
  {
    assertBackgroundThread();
    switch (getUriType(paramUri))
    {
    case 1: 
    default: 
      throw new FileNotFoundException("URI not supported by CordovaResourceApi: " + paramUri);
    case 0: 
      paramUri = new File(paramUri.getPath());
      localObject = paramUri.getParentFile();
      if (localObject != null) {
        ((File)localObject).mkdirs();
      }
      return new FileOutputStream(paramUri, paramBoolean);
    }
    ContentResolver localContentResolver = contentResolver;
    if (paramBoolean) {}
    for (Object localObject = "wa";; localObject = "w") {
      return localContentResolver.openAssetFileDescriptor(paramUri, (String)localObject).createOutputStream();
    }
  }
  
  public String remapPath(String paramString)
  {
    return remapUri(Uri.fromFile(new File(paramString))).getPath();
  }
  
  public Uri remapUri(Uri paramUri)
  {
    assertNonRelative(paramUri);
    Uri localUri = pluginManager.remapUri(paramUri);
    if (localUri != null) {
      return localUri;
    }
    return paramUri;
  }
  
  public void setThreadCheckingEnabled(boolean paramBoolean)
  {
    threadCheckingEnabled = paramBoolean;
  }
  
  public static final class OpenForReadResult
  {
    public final AssetFileDescriptor assetFd;
    public final InputStream inputStream;
    public final long length;
    public final String mimeType;
    public final Uri uri;
    
    OpenForReadResult(Uri paramUri, InputStream paramInputStream, String paramString, long paramLong, AssetFileDescriptor paramAssetFileDescriptor)
    {
      uri = paramUri;
      inputStream = paramInputStream;
      mimeType = paramString;
      length = paramLong;
      assetFd = paramAssetFileDescriptor;
    }
  }
}

/* Location:
 * Qualified Name:     org.apache.cordova.CordovaResourceApi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */