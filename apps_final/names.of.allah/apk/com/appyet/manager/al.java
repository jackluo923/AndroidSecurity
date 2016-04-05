package com.appyet.manager;

import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.net.Uri;
import com.appyet.context.ApplicationContext;
import com.appyet.d.d;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.HashMap;

public final class al
{
  public static String a = "28g39kNcPYt4p2s3F";
  private String b;
  private String c;
  private String d = "";
  private String e = "";
  private ApplicationContext f;
  private int g;
  private long h;
  private long i;
  private am j;
  
  public al(ApplicationContext paramApplicationContext)
  {
    f = paramApplicationContext;
    try
    {
      b = (f.getExternalCacheDir().getAbsolutePath() + "/");
    }
    catch (Exception paramApplicationContext)
    {
      try
      {
        for (;;)
        {
          c = (f.getCacheDir().getAbsolutePath() + "/");
          g = f.d.C();
          return;
          paramApplicationContext = paramApplicationContext;
          b = (f.getCacheDir().getAbsolutePath() + "/");
        }
      }
      catch (Exception paramApplicationContext)
      {
        for (;;)
        {
          d.a(paramApplicationContext);
        }
      }
    }
  }
  
  public final File a()
  {
    return new File(d + e);
  }
  
  /* Error */
  public final void a(al paramal, String paramString1, String paramString2)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: aconst_null
    //   4: astore 5
    //   6: aload_1
    //   7: aload_2
    //   8: invokevirtual 96	com/appyet/manager/al:g	(Ljava/lang/String;)Z
    //   11: ifne +4 -> 15
    //   14: return
    //   15: new 51	java/io/File
    //   18: dup
    //   19: aload_1
    //   20: aload_2
    //   21: invokevirtual 99	com/appyet/manager/al:b	(Ljava/lang/String;)Ljava/lang/String;
    //   24: invokespecial 90	java/io/File:<init>	(Ljava/lang/String;)V
    //   27: astore_1
    //   28: new 51	java/io/File
    //   31: dup
    //   32: aload_0
    //   33: aload_3
    //   34: invokevirtual 99	com/appyet/manager/al:b	(Ljava/lang/String;)Ljava/lang/String;
    //   37: invokespecial 90	java/io/File:<init>	(Ljava/lang/String;)V
    //   40: astore_2
    //   41: new 51	java/io/File
    //   44: dup
    //   45: new 42	java/lang/StringBuilder
    //   48: dup
    //   49: invokespecial 43	java/lang/StringBuilder:<init>	()V
    //   52: aload_0
    //   53: getfield 36	com/appyet/manager/al:d	Ljava/lang/String;
    //   56: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   59: aload_0
    //   60: getfield 38	com/appyet/manager/al:e	Ljava/lang/String;
    //   63: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   66: invokevirtual 64	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   69: invokespecial 90	java/io/File:<init>	(Ljava/lang/String;)V
    //   72: astore_3
    //   73: aload_3
    //   74: invokevirtual 103	java/io/File:isDirectory	()Z
    //   77: ifne +8 -> 85
    //   80: aload_3
    //   81: invokevirtual 106	java/io/File:mkdirs	()Z
    //   84: pop
    //   85: aload_2
    //   86: invokevirtual 109	java/io/File:exists	()Z
    //   89: ifne +8 -> 97
    //   92: aload_2
    //   93: invokevirtual 112	java/io/File:createNewFile	()Z
    //   96: pop
    //   97: new 114	java/io/FileInputStream
    //   100: dup
    //   101: aload_1
    //   102: invokespecial 117	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   105: invokevirtual 121	java/io/FileInputStream:getChannel	()Ljava/nio/channels/FileChannel;
    //   108: astore_1
    //   109: new 123	java/io/FileOutputStream
    //   112: dup
    //   113: aload_2
    //   114: invokespecial 124	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   117: invokevirtual 125	java/io/FileOutputStream:getChannel	()Ljava/nio/channels/FileChannel;
    //   120: astore_3
    //   121: aload_3
    //   122: aload_1
    //   123: lconst_0
    //   124: aload_1
    //   125: invokevirtual 131	java/nio/channels/FileChannel:size	()J
    //   128: invokevirtual 135	java/nio/channels/FileChannel:transferFrom	(Ljava/nio/channels/ReadableByteChannel;JJ)J
    //   131: pop2
    //   132: aload_1
    //   133: ifnull +7 -> 140
    //   136: aload_1
    //   137: invokevirtual 138	java/nio/channels/FileChannel:close	()V
    //   140: aload_3
    //   141: ifnull +134 -> 275
    //   144: aload_3
    //   145: invokevirtual 138	java/nio/channels/FileChannel:close	()V
    //   148: return
    //   149: astore_1
    //   150: aload_1
    //   151: invokestatic 87	com/appyet/d/d:a	(Ljava/lang/Exception;)V
    //   154: return
    //   155: astore_1
    //   156: aload_1
    //   157: invokestatic 87	com/appyet/d/d:a	(Ljava/lang/Exception;)V
    //   160: return
    //   161: astore_3
    //   162: aconst_null
    //   163: astore_1
    //   164: aload 5
    //   166: astore_2
    //   167: aload_3
    //   168: invokestatic 87	com/appyet/d/d:a	(Ljava/lang/Exception;)V
    //   171: aload_2
    //   172: ifnull +7 -> 179
    //   175: aload_2
    //   176: invokevirtual 138	java/nio/channels/FileChannel:close	()V
    //   179: aload_1
    //   180: ifnull +95 -> 275
    //   183: aload_1
    //   184: invokevirtual 138	java/nio/channels/FileChannel:close	()V
    //   187: return
    //   188: astore_1
    //   189: aload_1
    //   190: invokestatic 87	com/appyet/d/d:a	(Ljava/lang/Exception;)V
    //   193: return
    //   194: astore_2
    //   195: aconst_null
    //   196: astore_1
    //   197: aload 4
    //   199: astore_3
    //   200: aload_1
    //   201: ifnull +7 -> 208
    //   204: aload_1
    //   205: invokevirtual 138	java/nio/channels/FileChannel:close	()V
    //   208: aload_3
    //   209: ifnull +7 -> 216
    //   212: aload_3
    //   213: invokevirtual 138	java/nio/channels/FileChannel:close	()V
    //   216: aload_2
    //   217: athrow
    //   218: astore_1
    //   219: aload_1
    //   220: invokestatic 87	com/appyet/d/d:a	(Ljava/lang/Exception;)V
    //   223: goto -7 -> 216
    //   226: astore_2
    //   227: aload 4
    //   229: astore_3
    //   230: goto -30 -> 200
    //   233: astore_2
    //   234: goto -34 -> 200
    //   237: astore 5
    //   239: aload_2
    //   240: astore_3
    //   241: aload_1
    //   242: astore 4
    //   244: aload 5
    //   246: astore_2
    //   247: aload_3
    //   248: astore_1
    //   249: aload 4
    //   251: astore_3
    //   252: goto -52 -> 200
    //   255: astore_3
    //   256: aload_1
    //   257: astore_2
    //   258: aconst_null
    //   259: astore_1
    //   260: goto -93 -> 167
    //   263: astore 4
    //   265: aload_1
    //   266: astore_2
    //   267: aload_3
    //   268: astore_1
    //   269: aload 4
    //   271: astore_3
    //   272: goto -105 -> 167
    //   275: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	276	0	this	al
    //   0	276	1	paramal	al
    //   0	276	2	paramString1	String
    //   0	276	3	paramString2	String
    //   1	249	4	localal	al
    //   263	7	4	localIOException	IOException
    //   4	161	5	localObject1	Object
    //   237	8	5	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   136	140	149	java/lang/Exception
    //   144	148	149	java/lang/Exception
    //   6	14	155	java/lang/Exception
    //   15	85	155	java/lang/Exception
    //   150	154	155	java/lang/Exception
    //   189	193	155	java/lang/Exception
    //   216	218	155	java/lang/Exception
    //   219	223	155	java/lang/Exception
    //   85	97	161	java/io/IOException
    //   97	109	161	java/io/IOException
    //   175	179	188	java/lang/Exception
    //   183	187	188	java/lang/Exception
    //   85	97	194	finally
    //   97	109	194	finally
    //   204	208	218	java/lang/Exception
    //   212	216	218	java/lang/Exception
    //   109	121	226	finally
    //   121	132	233	finally
    //   167	171	237	finally
    //   109	121	255	java/io/IOException
    //   121	132	263	java/io/IOException
  }
  
  public final void a(am paramam)
  {
    if (paramam == am.b) {}
    for (d = b;; d = c)
    {
      j = paramam;
      return;
    }
  }
  
  public final void a(HashMap<String, String> paramHashMap)
  {
    h = 0L;
    i = 0L;
    Object localObject1 = new File(d + e);
    if ((((File)localObject1).exists()) && (((File)localObject1).isDirectory()))
    {
      localObject1 = ((File)localObject1).listFiles();
      int k = 0;
      while (k < localObject1.length)
      {
        Object localObject2 = localObject1[k];
        if ((((File)localObject2).isFile()) && (!paramHashMap.containsKey(((File)localObject2).getName())))
        {
          h += 1L;
          i += ((File)localObject2).length();
          ((File)localObject2).delete();
        }
        k += 1;
      }
    }
  }
  
  /* Error */
  public final boolean a(InputStream paramInputStream, String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: aconst_null
    //   4: astore 5
    //   6: iconst_1
    //   7: istore 8
    //   9: aload_2
    //   10: ifnull +7 -> 17
    //   13: aload_1
    //   14: ifnonnull +25 -> 39
    //   17: aload_1
    //   18: ifnull +7 -> 25
    //   21: aload_1
    //   22: invokevirtual 178	java/io/InputStream:close	()V
    //   25: iconst_0
    //   26: istore 8
    //   28: iload 8
    //   30: ireturn
    //   31: astore_1
    //   32: aload_1
    //   33: invokestatic 87	com/appyet/d/d:a	(Ljava/lang/Exception;)V
    //   36: goto -11 -> 25
    //   39: aload 4
    //   41: astore_3
    //   42: new 51	java/io/File
    //   45: dup
    //   46: new 42	java/lang/StringBuilder
    //   49: dup
    //   50: invokespecial 43	java/lang/StringBuilder:<init>	()V
    //   53: aload_0
    //   54: getfield 36	com/appyet/manager/al:d	Ljava/lang/String;
    //   57: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   60: aload_0
    //   61: getfield 38	com/appyet/manager/al:e	Ljava/lang/String;
    //   64: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   67: invokevirtual 64	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   70: invokespecial 90	java/io/File:<init>	(Ljava/lang/String;)V
    //   73: astore 6
    //   75: aload 4
    //   77: astore_3
    //   78: new 51	java/io/File
    //   81: dup
    //   82: new 42	java/lang/StringBuilder
    //   85: dup
    //   86: invokespecial 43	java/lang/StringBuilder:<init>	()V
    //   89: aload_0
    //   90: getfield 36	com/appyet/manager/al:d	Ljava/lang/String;
    //   93: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   96: aload_0
    //   97: getfield 38	com/appyet/manager/al:e	Ljava/lang/String;
    //   100: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   103: invokevirtual 64	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   106: aload_2
    //   107: invokespecial 181	java/io/File:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   110: astore_2
    //   111: aload 4
    //   113: astore_3
    //   114: aload_2
    //   115: invokevirtual 157	java/io/File:isFile	()Z
    //   118: istore 9
    //   120: iload 9
    //   122: ifeq +20 -> 142
    //   125: aload_1
    //   126: ifnull -98 -> 28
    //   129: aload_1
    //   130: invokevirtual 178	java/io/InputStream:close	()V
    //   133: iconst_1
    //   134: ireturn
    //   135: astore_1
    //   136: aload_1
    //   137: invokestatic 87	com/appyet/d/d:a	(Ljava/lang/Exception;)V
    //   140: iconst_1
    //   141: ireturn
    //   142: aload 4
    //   144: astore_3
    //   145: invokestatic 186	android/os/Environment:getExternalStorageState	()Ljava/lang/String;
    //   148: ldc -68
    //   150: invokevirtual 193	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   153: ifeq +135 -> 288
    //   156: aload 4
    //   158: astore_3
    //   159: aload 6
    //   161: invokevirtual 106	java/io/File:mkdirs	()Z
    //   164: pop
    //   165: aload 4
    //   167: astore_3
    //   168: new 123	java/io/FileOutputStream
    //   171: dup
    //   172: aload_2
    //   173: invokespecial 124	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   176: astore 4
    //   178: sipush 1024
    //   181: newarray <illegal type>
    //   183: astore_3
    //   184: aload_1
    //   185: aload_3
    //   186: invokevirtual 197	java/io/InputStream:read	([B)I
    //   189: istore 7
    //   191: iload 7
    //   193: ifle +65 -> 258
    //   196: aload 4
    //   198: aload_3
    //   199: iconst_0
    //   200: iload 7
    //   202: invokevirtual 201	java/io/FileOutputStream:write	([BII)V
    //   205: goto -21 -> 184
    //   208: astore_3
    //   209: aload_2
    //   210: astore_3
    //   211: aload 4
    //   213: astore_2
    //   214: aload_3
    //   215: astore 4
    //   217: aload 4
    //   219: ifnull +21 -> 240
    //   222: aload_2
    //   223: astore_3
    //   224: aload 4
    //   226: invokevirtual 109	java/io/File:exists	()Z
    //   229: ifeq +11 -> 240
    //   232: aload_2
    //   233: astore_3
    //   234: aload 4
    //   236: invokevirtual 172	java/io/File:delete	()Z
    //   239: pop
    //   240: aload_2
    //   241: ifnull +7 -> 248
    //   244: aload_2
    //   245: invokevirtual 202	java/io/FileOutputStream:close	()V
    //   248: aload_1
    //   249: ifnull +7 -> 256
    //   252: aload_1
    //   253: invokevirtual 178	java/io/InputStream:close	()V
    //   256: iconst_0
    //   257: ireturn
    //   258: aload 4
    //   260: invokevirtual 202	java/io/FileOutputStream:close	()V
    //   263: aload_1
    //   264: ifnull -236 -> 28
    //   267: aload_1
    //   268: invokevirtual 178	java/io/InputStream:close	()V
    //   271: iconst_1
    //   272: ireturn
    //   273: astore_1
    //   274: aload_1
    //   275: invokestatic 87	com/appyet/d/d:a	(Ljava/lang/Exception;)V
    //   278: iconst_1
    //   279: ireturn
    //   280: astore_2
    //   281: aload_2
    //   282: invokestatic 87	com/appyet/d/d:a	(Ljava/lang/Exception;)V
    //   285: goto -22 -> 263
    //   288: aload_1
    //   289: ifnull +7 -> 296
    //   292: aload_1
    //   293: invokevirtual 178	java/io/InputStream:close	()V
    //   296: iconst_0
    //   297: ireturn
    //   298: astore_1
    //   299: aload_1
    //   300: invokestatic 87	com/appyet/d/d:a	(Ljava/lang/Exception;)V
    //   303: goto -7 -> 296
    //   306: astore 4
    //   308: aload_2
    //   309: astore_3
    //   310: aload 4
    //   312: invokestatic 87	com/appyet/d/d:a	(Ljava/lang/Exception;)V
    //   315: goto -75 -> 240
    //   318: astore_2
    //   319: aload_3
    //   320: ifnull +7 -> 327
    //   323: aload_3
    //   324: invokevirtual 202	java/io/FileOutputStream:close	()V
    //   327: aload_1
    //   328: ifnull +7 -> 335
    //   331: aload_1
    //   332: invokevirtual 178	java/io/InputStream:close	()V
    //   335: aload_2
    //   336: athrow
    //   337: astore_2
    //   338: aload_2
    //   339: invokestatic 87	com/appyet/d/d:a	(Ljava/lang/Exception;)V
    //   342: goto -94 -> 248
    //   345: astore_1
    //   346: aload_1
    //   347: invokestatic 87	com/appyet/d/d:a	(Ljava/lang/Exception;)V
    //   350: goto -94 -> 256
    //   353: astore_3
    //   354: aload_3
    //   355: invokestatic 87	com/appyet/d/d:a	(Ljava/lang/Exception;)V
    //   358: goto -31 -> 327
    //   361: astore_1
    //   362: aload_1
    //   363: invokestatic 87	com/appyet/d/d:a	(Ljava/lang/Exception;)V
    //   366: goto -31 -> 335
    //   369: astore_2
    //   370: aload 4
    //   372: astore_3
    //   373: goto -54 -> 319
    //   376: astore_2
    //   377: aconst_null
    //   378: astore 4
    //   380: aload 5
    //   382: astore_2
    //   383: goto -166 -> 217
    //   386: astore_3
    //   387: aload_2
    //   388: astore 4
    //   390: aload 5
    //   392: astore_2
    //   393: goto -176 -> 217
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	396	0	this	al
    //   0	396	1	paramInputStream	InputStream
    //   0	396	2	paramString	String
    //   41	158	3	localObject1	Object
    //   208	1	3	localException1	Exception
    //   210	114	3	str1	String
    //   353	2	3	localIOException	IOException
    //   372	1	3	localException2	Exception
    //   386	1	3	localException3	Exception
    //   1	258	4	localObject2	Object
    //   306	65	4	localException4	Exception
    //   378	11	4	str2	String
    //   4	387	5	localObject3	Object
    //   73	87	6	localFile	File
    //   189	12	7	k	int
    //   7	22	8	bool1	boolean
    //   118	3	9	bool2	boolean
    // Exception table:
    //   from	to	target	type
    //   21	25	31	java/io/IOException
    //   129	133	135	java/io/IOException
    //   178	184	208	java/lang/Exception
    //   184	191	208	java/lang/Exception
    //   196	205	208	java/lang/Exception
    //   267	271	273	java/io/IOException
    //   258	263	280	java/io/IOException
    //   292	296	298	java/io/IOException
    //   224	232	306	java/lang/Exception
    //   234	240	306	java/lang/Exception
    //   42	75	318	finally
    //   78	111	318	finally
    //   114	120	318	finally
    //   145	156	318	finally
    //   159	165	318	finally
    //   168	178	318	finally
    //   224	232	318	finally
    //   234	240	318	finally
    //   310	315	318	finally
    //   244	248	337	java/io/IOException
    //   252	256	345	java/io/IOException
    //   323	327	353	java/io/IOException
    //   331	335	361	java/io/IOException
    //   178	184	369	finally
    //   184	191	369	finally
    //   196	205	369	finally
    //   42	75	376	java/lang/Exception
    //   78	111	376	java/lang/Exception
    //   114	120	386	java/lang/Exception
    //   145	156	386	java/lang/Exception
    //   159	165	386	java/lang/Exception
    //   168	178	386	java/lang/Exception
  }
  
  public final boolean a(String paramString)
  {
    if (paramString == null) {}
    do
    {
      return false;
      paramString = new File(d + e, paramString);
    } while (!paramString.isFile());
    paramString.delete();
    return true;
  }
  
  public final boolean a(String paramString, int paramInt)
  {
    if (!g(paramString)) {}
    BitmapFactory.Options localOptions;
    int k;
    do
    {
      return false;
      f.getResources();
      localOptions = new BitmapFactory.Options();
      inJustDecodeBounds = true;
      BitmapFactory.decodeFile(b(paramString), localOptions);
      k = outWidth;
    } while ((outHeight <= paramInt) && (k <= paramInt));
    return true;
  }
  
  /* Error */
  public final boolean a(String paramString1, String paramString2)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 5
    //   3: aconst_null
    //   4: astore 4
    //   6: aload_1
    //   7: ifnull +7 -> 14
    //   10: aload_2
    //   11: ifnonnull +9 -> 20
    //   14: aconst_null
    //   15: invokestatic 232	com/appyet/manager/bl:b	(Lcom/appyet/a/f;)V
    //   18: iconst_0
    //   19: ireturn
    //   20: new 234	java/net/URL
    //   23: dup
    //   24: aload_1
    //   25: invokespecial 235	java/net/URL:<init>	(Ljava/lang/String;)V
    //   28: astore_3
    //   29: new 51	java/io/File
    //   32: dup
    //   33: new 42	java/lang/StringBuilder
    //   36: dup
    //   37: invokespecial 43	java/lang/StringBuilder:<init>	()V
    //   40: aload_0
    //   41: getfield 36	com/appyet/manager/al:d	Ljava/lang/String;
    //   44: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   47: aload_0
    //   48: getfield 38	com/appyet/manager/al:e	Ljava/lang/String;
    //   51: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   54: invokevirtual 64	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   57: invokespecial 90	java/io/File:<init>	(Ljava/lang/String;)V
    //   60: invokevirtual 106	java/io/File:mkdirs	()Z
    //   63: pop
    //   64: new 51	java/io/File
    //   67: dup
    //   68: new 42	java/lang/StringBuilder
    //   71: dup
    //   72: invokespecial 43	java/lang/StringBuilder:<init>	()V
    //   75: aload_0
    //   76: getfield 36	com/appyet/manager/al:d	Ljava/lang/String;
    //   79: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   82: aload_0
    //   83: getfield 38	com/appyet/manager/al:e	Ljava/lang/String;
    //   86: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   89: invokevirtual 64	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   92: aload_2
    //   93: invokespecial 181	java/io/File:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   96: astore_1
    //   97: new 237	com/appyet/a/d
    //   100: dup
    //   101: invokespecial 238	com/appyet/a/d:<init>	()V
    //   104: astore_2
    //   105: aload_2
    //   106: aload_3
    //   107: invokevirtual 239	java/net/URL:toString	()Ljava/lang/String;
    //   110: putfield 240	com/appyet/a/d:a	Ljava/lang/String;
    //   113: aload_0
    //   114: getfield 40	com/appyet/manager/al:f	Lcom/appyet/context/ApplicationContext;
    //   117: getfield 243	com/appyet/context/ApplicationContext:g	Lcom/appyet/manager/bl;
    //   120: aload_2
    //   121: invokevirtual 246	com/appyet/manager/bl:a	(Lcom/appyet/a/d;)Lcom/appyet/a/f;
    //   124: astore_3
    //   125: aload_0
    //   126: getfield 40	com/appyet/manager/al:f	Lcom/appyet/context/ApplicationContext;
    //   129: getfield 243	com/appyet/context/ApplicationContext:g	Lcom/appyet/manager/bl;
    //   132: astore_2
    //   133: aload_3
    //   134: invokestatic 249	com/appyet/manager/bl:a	(Lcom/appyet/a/f;)Z
    //   137: istore 8
    //   139: iload 8
    //   141: ifne +9 -> 150
    //   144: aload_3
    //   145: invokestatic 232	com/appyet/manager/bl:b	(Lcom/appyet/a/f;)V
    //   148: iconst_0
    //   149: ireturn
    //   150: aload_3
    //   151: getfield 254	com/appyet/a/f:b	Ljava/io/InputStream;
    //   154: astore 4
    //   156: new 123	java/io/FileOutputStream
    //   159: dup
    //   160: aload_1
    //   161: invokespecial 124	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   164: astore 5
    //   166: sipush 8192
    //   169: newarray <illegal type>
    //   171: astore_2
    //   172: aload 4
    //   174: aload_2
    //   175: invokevirtual 197	java/io/InputStream:read	([B)I
    //   178: istore 7
    //   180: iload 7
    //   182: ifle +65 -> 247
    //   185: aload 5
    //   187: aload_2
    //   188: iconst_0
    //   189: iload 7
    //   191: invokevirtual 201	java/io/FileOutputStream:write	([BII)V
    //   194: goto -22 -> 172
    //   197: astore_2
    //   198: aload_1
    //   199: astore 6
    //   201: aload 5
    //   203: astore_1
    //   204: aload 4
    //   206: astore_2
    //   207: aload 6
    //   209: astore 4
    //   211: aload 4
    //   213: invokevirtual 157	java/io/File:isFile	()Z
    //   216: ifeq +9 -> 225
    //   219: aload 4
    //   221: invokevirtual 172	java/io/File:delete	()Z
    //   224: pop
    //   225: aload_1
    //   226: ifnull +7 -> 233
    //   229: aload_1
    //   230: invokevirtual 202	java/io/FileOutputStream:close	()V
    //   233: aload_2
    //   234: ifnull +7 -> 241
    //   237: aload_2
    //   238: invokevirtual 178	java/io/InputStream:close	()V
    //   241: aload_3
    //   242: invokestatic 232	com/appyet/manager/bl:b	(Lcom/appyet/a/f;)V
    //   245: iconst_0
    //   246: ireturn
    //   247: aload 5
    //   249: invokevirtual 202	java/io/FileOutputStream:close	()V
    //   252: aload 4
    //   254: ifnull +8 -> 262
    //   257: aload 4
    //   259: invokevirtual 178	java/io/InputStream:close	()V
    //   262: aload_3
    //   263: invokestatic 232	com/appyet/manager/bl:b	(Lcom/appyet/a/f;)V
    //   266: iconst_1
    //   267: ireturn
    //   268: astore_1
    //   269: aconst_null
    //   270: astore_3
    //   271: aconst_null
    //   272: astore 4
    //   274: aload 5
    //   276: astore_2
    //   277: aload_3
    //   278: ifnull +7 -> 285
    //   281: aload_3
    //   282: invokevirtual 202	java/io/FileOutputStream:close	()V
    //   285: aload 4
    //   287: ifnull +8 -> 295
    //   290: aload 4
    //   292: invokevirtual 178	java/io/InputStream:close	()V
    //   295: aload_2
    //   296: invokestatic 232	com/appyet/manager/bl:b	(Lcom/appyet/a/f;)V
    //   299: aload_1
    //   300: athrow
    //   301: astore_1
    //   302: goto -50 -> 252
    //   305: astore_1
    //   306: goto -44 -> 262
    //   309: astore_1
    //   310: goto -77 -> 233
    //   313: astore_1
    //   314: goto -73 -> 241
    //   317: astore_3
    //   318: goto -33 -> 285
    //   321: astore_3
    //   322: goto -27 -> 295
    //   325: astore_1
    //   326: aconst_null
    //   327: astore 5
    //   329: aconst_null
    //   330: astore 4
    //   332: aload_3
    //   333: astore_2
    //   334: aload 5
    //   336: astore_3
    //   337: goto -60 -> 277
    //   340: astore_1
    //   341: aconst_null
    //   342: astore 5
    //   344: aload_3
    //   345: astore_2
    //   346: aload 5
    //   348: astore_3
    //   349: goto -72 -> 277
    //   352: astore_1
    //   353: aload_3
    //   354: astore_2
    //   355: aload 5
    //   357: astore_3
    //   358: goto -81 -> 277
    //   361: astore 6
    //   363: aload_2
    //   364: astore 4
    //   366: aload_1
    //   367: astore 5
    //   369: aload 6
    //   371: astore_1
    //   372: aload_3
    //   373: astore_2
    //   374: aload 5
    //   376: astore_3
    //   377: goto -100 -> 277
    //   380: astore 4
    //   382: goto -157 -> 225
    //   385: astore_1
    //   386: aconst_null
    //   387: astore_3
    //   388: aconst_null
    //   389: astore_1
    //   390: aconst_null
    //   391: astore_2
    //   392: goto -181 -> 211
    //   395: astore_2
    //   396: aconst_null
    //   397: astore_3
    //   398: aconst_null
    //   399: astore_2
    //   400: aconst_null
    //   401: astore 5
    //   403: aload_1
    //   404: astore 4
    //   406: aload 5
    //   408: astore_1
    //   409: goto -198 -> 211
    //   412: astore_2
    //   413: aconst_null
    //   414: astore_2
    //   415: aconst_null
    //   416: astore 5
    //   418: aload_1
    //   419: astore 4
    //   421: aload 5
    //   423: astore_1
    //   424: goto -213 -> 211
    //   427: astore_2
    //   428: aload 4
    //   430: astore_2
    //   431: aconst_null
    //   432: astore 5
    //   434: aload_1
    //   435: astore 4
    //   437: aload 5
    //   439: astore_1
    //   440: goto -229 -> 211
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	443	0	this	al
    //   0	443	1	paramString1	String
    //   0	443	2	paramString2	String
    //   28	254	3	localObject1	Object
    //   317	1	3	localException1	Exception
    //   321	12	3	localException2	Exception
    //   336	62	3	localObject2	Object
    //   4	361	4	localObject3	Object
    //   380	1	4	localException3	Exception
    //   404	32	4	str1	String
    //   1	437	5	localObject4	Object
    //   199	9	6	str2	String
    //   361	9	6	localObject5	Object
    //   178	12	7	k	int
    //   137	3	8	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   166	172	197	java/io/IOException
    //   172	180	197	java/io/IOException
    //   185	194	197	java/io/IOException
    //   20	97	268	finally
    //   97	125	268	finally
    //   247	252	301	java/lang/Exception
    //   257	262	305	java/lang/Exception
    //   229	233	309	java/lang/Exception
    //   237	241	313	java/lang/Exception
    //   281	285	317	java/lang/Exception
    //   290	295	321	java/lang/Exception
    //   125	139	325	finally
    //   150	156	325	finally
    //   156	166	340	finally
    //   166	172	352	finally
    //   172	180	352	finally
    //   185	194	352	finally
    //   211	225	361	finally
    //   211	225	380	java/lang/Exception
    //   20	97	385	java/io/IOException
    //   97	125	395	java/io/IOException
    //   125	139	412	java/io/IOException
    //   150	156	412	java/io/IOException
    //   156	166	427	java/io/IOException
  }
  
  public final long b()
  {
    return i;
  }
  
  public final String b(String paramString)
  {
    if (paramString == null) {
      return null;
    }
    return new File(d + e, paramString).getAbsolutePath();
  }
  
  public final String b(String paramString1, String paramString2)
  {
    if (paramString1 == null) {}
    do
    {
      for (;;)
      {
        return null;
        try
        {
          paramString1 = new File(d + e, paramString1);
          if ((paramString1.canRead()) && (paramString1.isFile()))
          {
            paramString2 = new BufferedReader(new InputStreamReader(new FileInputStream(paramString1), paramString2));
            try
            {
              paramString1 = new StringBuilder();
              for (;;)
              {
                String str = paramString2.readLine();
                if (str == null) {
                  break;
                }
                paramString1.append(str);
              }
              d.a(paramString1);
            }
            catch (Exception paramString1) {}
          }
        }
        catch (Exception paramString1)
        {
          for (;;)
          {
            paramString2 = null;
          }
        }
      }
    } while (paramString2 == null);
    try
    {
      paramString2.close();
      return null;
    }
    catch (IOException paramString2)
    {
      d.a(paramString1);
      return null;
    }
    paramString2.close();
    paramString1 = paramString1.toString();
    return paramString1;
  }
  
  public final long c()
  {
    return h;
  }
  
  public final long c(String paramString)
  {
    if (paramString == null) {}
    for (;;)
    {
      return -1L;
      try
      {
        paramString = new File(d + e, paramString);
        if (paramString.isFile())
        {
          long l = paramString.lastModified();
          return l;
        }
      }
      catch (Exception paramString) {}
    }
    return -1L;
  }
  
  public final Uri d(String paramString)
  {
    return Uri.fromFile(new File(d + e, paramString));
  }
  
  public final BitmapFactory.Options e(String paramString)
  {
    try
    {
      paramString = new File(d + e, paramString);
      if (paramString.isFile())
      {
        localObject = new BitmapFactory.Options();
        inJustDecodeBounds = true;
        inDither = false;
        inPurgeable = true;
        inInputShareable = true;
        inScaled = false;
        inPreferredConfig = Bitmap.Config.RGB_565;
        BitmapFactory.decodeFile(paramString.getAbsolutePath(), (BitmapFactory.Options)localObject);
        return (BitmapFactory.Options)localObject;
      }
    }
    catch (Exception paramString)
    {
      return null;
    }
    catch (OutOfMemoryError paramString)
    {
      Object localObject = f;
      ApplicationContext.d();
      d.a(paramString);
    }
    return null;
  }
  
  public final InputStream f(String paramString)
  {
    if (paramString == null) {}
    for (;;)
    {
      return null;
      try
      {
        paramString = new File(d + e, paramString);
        if ((paramString.canRead()) && (paramString.isFile()))
        {
          paramString = new FileInputStream(paramString);
          return paramString;
        }
      }
      catch (Exception paramString) {}
    }
    return null;
  }
  
  public final boolean g(String paramString)
  {
    if (paramString == null) {}
    do
    {
      return false;
      paramString = new File(d + e, paramString);
    } while ((!paramString.isFile()) && (!paramString.isDirectory()));
    return true;
  }
  
  public final void h(String paramString)
  {
    e = paramString;
  }
}

/* Location:
 * Qualified Name:     com.appyet.manager.al
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */