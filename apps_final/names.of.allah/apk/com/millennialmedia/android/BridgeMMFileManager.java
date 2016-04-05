package com.millennialmedia.android;

import android.content.Context;
import android.net.Uri;
import android.os.StatFs;
import android.text.TextUtils;
import android.webkit.MimeTypeMap;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import org.json.JSONArray;

class BridgeMMFileManager
  extends MMJSObject
{
  private File root;
  
  private boolean hasCreativeDirectory()
  {
    Object localObject = (Context)contextRef.get();
    if (localObject != null)
    {
      localObject = AdCache.getCacheDirectory((Context)localObject);
      root = ((File)localObject);
      if (localObject != null) {
        return true;
      }
    }
    return false;
  }
  
  public MMJSResponse cleanupCache(HashMap<String, String> paramHashMap)
  {
    boolean bool = false;
    long l;
    if (hasCreativeDirectory())
    {
      if (paramHashMap.containsKey("clear")) {
        bool = Boolean.parseBoolean((String)paramHashMap.get("clear"));
      }
      if (!bool) {
        break label50;
      }
      l = 0L;
    }
    for (;;)
    {
      try
      {
        AdCache.cleanupDirectory(root, l);
        return null;
        label50:
        paramHashMap = (Context)contextRef.get();
        if (paramHashMap != null) {
          l = sharedHandShakecreativeCacheTimeout;
        }
      }
      catch (SecurityException paramHashMap)
      {
        continue;
        l = 259200000L;
      }
    }
  }
  
  public MMJSResponse downloadFile(HashMap<String, String> paramHashMap)
  {
    Context localContext = (Context)contextRef.get();
    String str = (String)paramHashMap.get("url");
    if ((!TextUtils.isEmpty(str)) && (localContext != null))
    {
      if (paramHashMap.containsKey("path")) {}
      for (paramHashMap = (String)paramHashMap.get("path"); AdCache.downloadComponentToCache(str, paramHashMap, localContext); paramHashMap = Uri.parse((String)paramHashMap.get("url")).getLastPathSegment()) {
        return MMJSResponse.responseWithSuccess(paramHashMap);
      }
    }
    return null;
  }
  
  public MMJSResponse getDirectoryContents(HashMap<String, String> paramHashMap)
  {
    if (hasCreativeDirectory())
    {
      if (paramHashMap.containsKey("path")) {}
      JSONArray localJSONArray;
      for (paramHashMap = new File(root, (String)paramHashMap.get("path"));; paramHashMap = root)
      {
        localJSONArray = new JSONArray();
        paramHashMap = paramHashMap.list();
        int j = paramHashMap.length;
        int i = 0;
        while (i < j)
        {
          localJSONArray.put(paramHashMap[i]);
          i += 1;
        }
      }
      paramHashMap = new MMJSResponse();
      result = 1;
      response = localJSONArray;
      return paramHashMap;
    }
    return null;
  }
  
  /* Error */
  public MMJSResponse getFileContents(HashMap<String, String> paramHashMap)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: aload_0
    //   3: invokespecial 39	com/millennialmedia/android/BridgeMMFileManager:hasCreativeDirectory	()Z
    //   6: ifeq +119 -> 125
    //   9: aload_1
    //   10: ldc 87
    //   12: invokevirtual 47	java/util/HashMap:containsKey	(Ljava/lang/Object;)Z
    //   15: ifeq +110 -> 125
    //   18: new 110	java/io/File
    //   21: dup
    //   22: aload_0
    //   23: getfield 33	com/millennialmedia/android/BridgeMMFileManager:root	Ljava/io/File;
    //   26: aload_1
    //   27: ldc 87
    //   29: invokevirtual 50	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   32: checkcast 52	java/lang/String
    //   35: invokespecial 113	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   38: astore_3
    //   39: new 138	java/io/FileInputStream
    //   42: dup
    //   43: aload_3
    //   44: invokespecial 141	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   47: astore_1
    //   48: aload_3
    //   49: invokevirtual 145	java/io/File:length	()J
    //   52: l2i
    //   53: newarray <illegal type>
    //   55: astore_2
    //   56: aload_1
    //   57: aload_2
    //   58: invokevirtual 149	java/io/FileInputStream:read	([B)I
    //   61: pop
    //   62: aload_1
    //   63: invokevirtual 152	java/io/FileInputStream:close	()V
    //   66: aload_2
    //   67: astore_1
    //   68: aload_1
    //   69: ifnull +56 -> 125
    //   72: new 93	com/millennialmedia/android/MMJSResponse
    //   75: dup
    //   76: invokespecial 125	com/millennialmedia/android/MMJSResponse:<init>	()V
    //   79: astore_2
    //   80: aload_2
    //   81: iconst_1
    //   82: putfield 129	com/millennialmedia/android/MMJSResponse:result	I
    //   85: aload_2
    //   86: aload_1
    //   87: putfield 156	com/millennialmedia/android/MMJSResponse:dataResponse	[B
    //   90: aload_2
    //   91: areturn
    //   92: astore_1
    //   93: aconst_null
    //   94: astore_1
    //   95: aload_1
    //   96: ifnull +7 -> 103
    //   99: aload_1
    //   100: invokevirtual 152	java/io/FileInputStream:close	()V
    //   103: aconst_null
    //   104: astore_1
    //   105: goto -37 -> 68
    //   108: astore_1
    //   109: aconst_null
    //   110: astore_1
    //   111: goto -43 -> 68
    //   114: astore_1
    //   115: aload_2
    //   116: ifnull +7 -> 123
    //   119: aload_2
    //   120: invokevirtual 152	java/io/FileInputStream:close	()V
    //   123: aload_1
    //   124: athrow
    //   125: aconst_null
    //   126: areturn
    //   127: astore_1
    //   128: aload_2
    //   129: astore_1
    //   130: goto -62 -> 68
    //   133: astore_2
    //   134: goto -11 -> 123
    //   137: astore_3
    //   138: aload_1
    //   139: astore_2
    //   140: aload_3
    //   141: astore_1
    //   142: goto -27 -> 115
    //   145: astore_2
    //   146: goto -51 -> 95
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	149	0	this	BridgeMMFileManager
    //   0	149	1	paramHashMap	HashMap<String, String>
    //   1	128	2	localObject1	Object
    //   133	1	2	localException1	Exception
    //   139	1	2	localHashMap	HashMap<String, String>
    //   145	1	2	localException2	Exception
    //   38	11	3	localFile	File
    //   137	4	3	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   18	48	92	java/lang/Exception
    //   99	103	108	java/lang/Exception
    //   18	48	114	finally
    //   62	66	127	java/lang/Exception
    //   119	123	133	java/lang/Exception
    //   48	62	137	finally
    //   48	62	145	java/lang/Exception
  }
  
  public MMJSResponse getFreeDiskSpace(HashMap<String, String> paramHashMap)
  {
    if (hasCreativeDirectory())
    {
      paramHashMap = new MMJSResponse();
      result = 1;
      StatFs localStatFs = new StatFs(root.getAbsolutePath());
      response = new Long(localStatFs.getAvailableBlocks() * localStatFs.getBlockSize());
      return paramHashMap;
    }
    return null;
  }
  
  public MMJSResponse getMimeType(HashMap<String, String> paramHashMap)
  {
    if (hasCreativeDirectory())
    {
      paramHashMap = ((String)paramHashMap.get("path")).split("\\.");
      paramHashMap = MimeTypeMap.getSingleton().getMimeTypeFromExtension(paramHashMap[(paramHashMap.length - 1)]);
      if (paramHashMap != null)
      {
        MMJSResponse localMMJSResponse = new MMJSResponse();
        result = 1;
        response = paramHashMap;
        return localMMJSResponse;
      }
    }
    return null;
  }
  
  public MMJSResponse moveFile(HashMap<String, String> paramHashMap)
  {
    if (hasCreativeDirectory()) {
      try
      {
        String str = (String)paramHashMap.get("fromPath");
        paramHashMap = (String)paramHashMap.get("toPath");
        if ((str != null) && (paramHashMap != null) && (new File(root, str).renameTo(new File(root, paramHashMap))))
        {
          paramHashMap = MMJSResponse.responseWithSuccess("File moved successfully");
          return paramHashMap;
        }
      }
      catch (Exception paramHashMap) {}
    }
    return null;
  }
  
  public MMJSResponse removeAtPath(HashMap<String, String> paramHashMap)
  {
    if (hasCreativeDirectory()) {
      try
      {
        paramHashMap = (String)paramHashMap.get("path");
        if ((paramHashMap != null) && (new File(root, paramHashMap).delete()))
        {
          paramHashMap = MMJSResponse.responseWithSuccess("File removed successfully");
          return paramHashMap;
        }
      }
      catch (Exception paramHashMap) {}
    }
    return null;
  }
  
  /* Error */
  public MMJSResponse writeData(HashMap<String, String> paramHashMap)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: aload_0
    //   3: invokespecial 39	com/millennialmedia/android/BridgeMMFileManager:hasCreativeDirectory	()Z
    //   6: ifeq +131 -> 137
    //   9: aload_1
    //   10: ldc 87
    //   12: invokevirtual 47	java/util/HashMap:containsKey	(Ljava/lang/Object;)Z
    //   15: ifeq +122 -> 137
    //   18: aload_1
    //   19: ldc -42
    //   21: invokevirtual 47	java/util/HashMap:containsKey	(Ljava/lang/Object;)Z
    //   24: ifeq +113 -> 137
    //   27: new 110	java/io/File
    //   30: dup
    //   31: aload_0
    //   32: getfield 33	com/millennialmedia/android/BridgeMMFileManager:root	Ljava/io/File;
    //   35: aload_1
    //   36: ldc 87
    //   38: invokevirtual 50	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   41: checkcast 52	java/lang/String
    //   44: invokespecial 113	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   47: astore_3
    //   48: aload_1
    //   49: ldc -42
    //   51: invokevirtual 50	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   54: checkcast 52	java/lang/String
    //   57: invokestatic 220	com/millennialmedia/android/Base64:decode	(Ljava/lang/String;)[B
    //   60: astore 4
    //   62: new 222	java/io/FileOutputStream
    //   65: dup
    //   66: aload_3
    //   67: invokespecial 223	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   70: astore_1
    //   71: aload_1
    //   72: aload 4
    //   74: invokevirtual 227	java/io/FileOutputStream:write	([B)V
    //   77: aload_1
    //   78: invokevirtual 228	java/io/FileOutputStream:close	()V
    //   81: iconst_1
    //   82: istore 5
    //   84: iload 5
    //   86: ifeq +51 -> 137
    //   89: ldc -26
    //   91: invokestatic 97	com/millennialmedia/android/MMJSResponse:responseWithSuccess	(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;
    //   94: areturn
    //   95: astore_1
    //   96: iconst_1
    //   97: istore 5
    //   99: goto -15 -> 84
    //   102: astore_1
    //   103: aconst_null
    //   104: astore_1
    //   105: aload_1
    //   106: ifnull +7 -> 113
    //   109: aload_1
    //   110: invokevirtual 228	java/io/FileOutputStream:close	()V
    //   113: iconst_0
    //   114: istore 5
    //   116: goto -32 -> 84
    //   119: astore_1
    //   120: iconst_0
    //   121: istore 5
    //   123: goto -39 -> 84
    //   126: astore_1
    //   127: aload_2
    //   128: ifnull +7 -> 135
    //   131: aload_2
    //   132: invokevirtual 228	java/io/FileOutputStream:close	()V
    //   135: aload_1
    //   136: athrow
    //   137: aconst_null
    //   138: areturn
    //   139: astore_2
    //   140: goto -5 -> 135
    //   143: astore_3
    //   144: aload_1
    //   145: astore_2
    //   146: aload_3
    //   147: astore_1
    //   148: goto -21 -> 127
    //   151: astore_2
    //   152: goto -47 -> 105
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	155	0	this	BridgeMMFileManager
    //   0	155	1	paramHashMap	HashMap<String, String>
    //   1	131	2	localObject1	Object
    //   139	1	2	localException1	Exception
    //   145	1	2	localHashMap	HashMap<String, String>
    //   151	1	2	localException2	Exception
    //   47	20	3	localFile	File
    //   143	4	3	localObject2	Object
    //   60	13	4	arrayOfByte	byte[]
    //   82	40	5	i	int
    // Exception table:
    //   from	to	target	type
    //   77	81	95	java/lang/Exception
    //   27	71	102	java/lang/Exception
    //   109	113	119	java/lang/Exception
    //   27	71	126	finally
    //   131	135	139	java/lang/Exception
    //   71	77	143	finally
    //   71	77	151	java/lang/Exception
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.BridgeMMFileManager
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */