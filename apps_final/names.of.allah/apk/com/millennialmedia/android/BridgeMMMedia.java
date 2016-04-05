package com.millennialmedia.android;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.media.MediaScannerConnection;
import android.net.Uri;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.lang.ref.WeakReference;
import java.nio.channels.FileChannel;
import java.util.HashMap;
import java.util.List;
import org.json.JSONArray;

class BridgeMMMedia
  extends MMJSObject
{
  private static final String PATH = "path";
  private static final String PICTURES = "Pictures";
  private static Object pickerActivityObject;
  MediaScannerConnection mediaScanner;
  
  private static Bitmap centerOfImage(Bitmap paramBitmap, int paramInt1, int paramInt2)
  {
    float f1 = (paramBitmap.getWidth() - paramInt1) / 2;
    float f2 = (paramBitmap.getHeight() - paramInt2) / 2;
    return cropImage(paramBitmap, (int)f1, (int)f2, paramInt1, paramInt2);
  }
  
  private static Bitmap cropImage(Bitmap paramBitmap, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    return Bitmap.createBitmap(paramBitmap, paramInt1, paramInt2, paramInt3, paramInt4);
  }
  
  private boolean isCameraAvailable()
  {
    Context localContext = (Context)contextRef.get();
    if ((localContext != null) && (localContext.getPackageManager().checkPermission("android.permission.CAMERA", localContext.getPackageName()) == 0))
    {
      Intent localIntent = new Intent("android.media.action.IMAGE_CAPTURE");
      return localContext.getPackageManager().queryIntentActivities(localIntent, 65536).size() > 0;
    }
    return false;
  }
  
  private boolean isPictureChooserAvailable()
  {
    Context localContext = (Context)contextRef.get();
    if (localContext != null)
    {
      Intent localIntent = new Intent();
      localIntent.setType("image/*");
      localIntent.setAction("android.intent.action.GET_CONTENT");
      return localContext.getPackageManager().queryIntentActivities(localIntent, 65536).size() > 0;
    }
    return false;
  }
  
  private boolean moveFile(File paramFile1, File paramFile2)
  {
    try
    {
      paramFile1 = new FileInputStream(paramFile1).getChannel();
      paramFile2.createNewFile();
      paramFile2 = new FileOutputStream(paramFile2).getChannel();
      paramFile1.transferTo(0L, paramFile1.size(), paramFile2);
      return true;
    }
    catch (Exception paramFile1)
    {
      paramFile1.printStackTrace();
    }
    return false;
  }
  
  private static Bitmap resizeImage(Bitmap paramBitmap, int paramInt1, int paramInt2, int paramInt3)
  {
    return Bitmap.createScaledBitmap(paramBitmap, paramInt1, paramInt2, true);
  }
  
  static Bitmap resizeImage(Bitmap paramBitmap, String paramString, int paramInt1, int paramInt2, int paramInt3)
  {
    float f1 = paramInt1 / paramBitmap.getWidth();
    float f2 = paramInt2 / paramBitmap.getHeight();
    if (paramString.equals("Center")) {
      return centerOfImage(paramBitmap, paramInt1, paramInt2);
    }
    if (paramString.equals("ScaleToAspectFit"))
    {
      f1 = Math.min(f1, f2);
      return resizeImage(paramBitmap, (int)(paramBitmap.getWidth() * f1), (int)(f1 * paramBitmap.getHeight()), paramInt3);
    }
    if (paramString.equals("ScaleToAspectFill"))
    {
      f1 = Math.max(f1, f2);
      return cropImage(resizeImage(paramBitmap, (int)(paramBitmap.getWidth() * f1), (int)(f1 * paramBitmap.getHeight()), paramInt3), 0, 0, paramInt1, paramInt2);
    }
    return resizeImage(paramBitmap, paramInt1, paramInt2, paramInt3);
  }
  
  /* Error */
  private static final byte[] scaleBitmapToBytes(File paramFile, int paramInt1, int paramInt2, String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 7
    //   3: new 107	java/io/FileInputStream
    //   6: dup
    //   7: aload_0
    //   8: invokespecial 110	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   11: astore 5
    //   13: new 175	android/graphics/BitmapFactory$Options
    //   16: dup
    //   17: invokespecial 176	android/graphics/BitmapFactory$Options:<init>	()V
    //   20: astore 8
    //   22: aload 8
    //   24: iconst_1
    //   25: putfield 180	android/graphics/BitmapFactory$Options:inJustDecodeBounds	Z
    //   28: aload 5
    //   30: aconst_null
    //   31: aload 8
    //   33: invokestatic 186	android/graphics/BitmapFactory:decodeStream	(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    //   36: pop
    //   37: aload 8
    //   39: getfield 190	android/graphics/BitmapFactory$Options:outHeight	I
    //   42: istore 9
    //   44: aload 8
    //   46: getfield 193	android/graphics/BitmapFactory$Options:outWidth	I
    //   49: istore 10
    //   51: iload 9
    //   53: iload_2
    //   54: if_icmpgt +9 -> 63
    //   57: iload 10
    //   59: iload_1
    //   60: if_icmple +408 -> 468
    //   63: iload 10
    //   65: iload 9
    //   67: if_icmple +151 -> 218
    //   70: iload 9
    //   72: i2f
    //   73: iload_2
    //   74: i2f
    //   75: fdiv
    //   76: invokestatic 197	java/lang/Math:round	(F)I
    //   79: istore 9
    //   81: new 107	java/io/FileInputStream
    //   84: dup
    //   85: aload_0
    //   86: invokespecial 110	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   89: astore 6
    //   91: aload 8
    //   93: iconst_0
    //   94: putfield 180	android/graphics/BitmapFactory$Options:inJustDecodeBounds	Z
    //   97: aload 8
    //   99: iload 9
    //   101: putfield 200	android/graphics/BitmapFactory$Options:inSampleSize	I
    //   104: aload 6
    //   106: aconst_null
    //   107: aload 8
    //   109: invokestatic 186	android/graphics/BitmapFactory:decodeStream	(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    //   112: astore_0
    //   113: aload 5
    //   115: invokevirtual 203	java/io/FileInputStream:close	()V
    //   118: aload 6
    //   120: invokevirtual 203	java/io/FileInputStream:close	()V
    //   123: aload 7
    //   125: astore 5
    //   127: aload_0
    //   128: ifnull +87 -> 215
    //   131: aload_0
    //   132: aload_3
    //   133: iload_1
    //   134: iload_2
    //   135: iconst_1
    //   136: invokestatic 205	com/millennialmedia/android/BridgeMMMedia:resizeImage	(Landroid/graphics/Bitmap;Ljava/lang/String;III)Landroid/graphics/Bitmap;
    //   139: astore 8
    //   141: new 207	java/io/ByteArrayOutputStream
    //   144: dup
    //   145: invokespecial 208	java/io/ByteArrayOutputStream:<init>	()V
    //   148: astore 6
    //   150: aload 6
    //   152: astore 5
    //   154: aload_3
    //   155: ldc -46
    //   157: invokevirtual 150	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   160: ifeq +137 -> 297
    //   163: aload 6
    //   165: astore 5
    //   167: aload_0
    //   168: getstatic 216	android/graphics/Bitmap$CompressFormat:JPEG	Landroid/graphics/Bitmap$CompressFormat;
    //   171: bipush 100
    //   173: aload 6
    //   175: invokevirtual 220	android/graphics/Bitmap:compress	(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    //   178: pop
    //   179: aload 6
    //   181: astore 5
    //   183: aload 6
    //   185: invokevirtual 224	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   188: astore_3
    //   189: aload_0
    //   190: ifnull +7 -> 197
    //   193: aload_0
    //   194: invokevirtual 227	android/graphics/Bitmap:recycle	()V
    //   197: aload 8
    //   199: ifnull +8 -> 207
    //   202: aload 8
    //   204: invokevirtual 227	android/graphics/Bitmap:recycle	()V
    //   207: aload 6
    //   209: invokevirtual 228	java/io/ByteArrayOutputStream:close	()V
    //   212: aload_3
    //   213: astore 5
    //   215: aload 5
    //   217: areturn
    //   218: iload 10
    //   220: i2f
    //   221: iload_1
    //   222: i2f
    //   223: fdiv
    //   224: fstore 4
    //   226: fload 4
    //   228: invokestatic 197	java/lang/Math:round	(F)I
    //   231: istore 9
    //   233: goto -152 -> 81
    //   236: astore_0
    //   237: aconst_null
    //   238: astore_0
    //   239: aconst_null
    //   240: astore 5
    //   242: aload 5
    //   244: ifnull +8 -> 252
    //   247: aload 5
    //   249: invokevirtual 203	java/io/FileInputStream:close	()V
    //   252: aload_0
    //   253: ifnull +7 -> 260
    //   256: aload_0
    //   257: invokevirtual 203	java/io/FileInputStream:close	()V
    //   260: aconst_null
    //   261: astore_0
    //   262: goto -139 -> 123
    //   265: astore_0
    //   266: aconst_null
    //   267: astore_0
    //   268: goto -145 -> 123
    //   271: astore_0
    //   272: aconst_null
    //   273: astore 5
    //   275: aconst_null
    //   276: astore_3
    //   277: aload 5
    //   279: ifnull +8 -> 287
    //   282: aload 5
    //   284: invokevirtual 203	java/io/FileInputStream:close	()V
    //   287: aload_3
    //   288: ifnull +7 -> 295
    //   291: aload_3
    //   292: invokevirtual 203	java/io/FileInputStream:close	()V
    //   295: aload_0
    //   296: athrow
    //   297: aload 6
    //   299: astore 5
    //   301: aload 8
    //   303: getstatic 216	android/graphics/Bitmap$CompressFormat:JPEG	Landroid/graphics/Bitmap$CompressFormat;
    //   306: bipush 100
    //   308: aload 6
    //   310: invokevirtual 220	android/graphics/Bitmap:compress	(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    //   313: pop
    //   314: goto -135 -> 179
    //   317: astore 5
    //   319: aload 6
    //   321: astore_3
    //   322: aload 5
    //   324: astore 6
    //   326: aload_3
    //   327: astore 5
    //   329: aload 6
    //   331: invokevirtual 135	java/lang/Exception:printStackTrace	()V
    //   334: aload_0
    //   335: ifnull +7 -> 342
    //   338: aload_0
    //   339: invokevirtual 227	android/graphics/Bitmap:recycle	()V
    //   342: aload 8
    //   344: ifnull +8 -> 352
    //   347: aload 8
    //   349: invokevirtual 227	android/graphics/Bitmap:recycle	()V
    //   352: aload 7
    //   354: astore 5
    //   356: aload_3
    //   357: ifnull -142 -> 215
    //   360: aload_3
    //   361: invokevirtual 228	java/io/ByteArrayOutputStream:close	()V
    //   364: aconst_null
    //   365: areturn
    //   366: astore_0
    //   367: aload_0
    //   368: invokevirtual 135	java/lang/Exception:printStackTrace	()V
    //   371: aconst_null
    //   372: areturn
    //   373: astore_0
    //   374: aload_0
    //   375: invokevirtual 135	java/lang/Exception:printStackTrace	()V
    //   378: aload_3
    //   379: areturn
    //   380: astore_3
    //   381: aconst_null
    //   382: astore 5
    //   384: aload_0
    //   385: ifnull +7 -> 392
    //   388: aload_0
    //   389: invokevirtual 227	android/graphics/Bitmap:recycle	()V
    //   392: aload 8
    //   394: ifnull +8 -> 402
    //   397: aload 8
    //   399: invokevirtual 227	android/graphics/Bitmap:recycle	()V
    //   402: aload 5
    //   404: ifnull +8 -> 412
    //   407: aload 5
    //   409: invokevirtual 228	java/io/ByteArrayOutputStream:close	()V
    //   412: aload_3
    //   413: athrow
    //   414: astore_0
    //   415: aload_0
    //   416: invokevirtual 135	java/lang/Exception:printStackTrace	()V
    //   419: goto -7 -> 412
    //   422: astore_3
    //   423: goto -39 -> 384
    //   426: astore 6
    //   428: aconst_null
    //   429: astore_3
    //   430: goto -104 -> 326
    //   433: astore_3
    //   434: goto -139 -> 295
    //   437: astore_0
    //   438: aconst_null
    //   439: astore_3
    //   440: goto -163 -> 277
    //   443: astore_0
    //   444: aload 6
    //   446: astore_3
    //   447: goto -170 -> 277
    //   450: astore_0
    //   451: aconst_null
    //   452: astore_0
    //   453: goto -211 -> 242
    //   456: astore_0
    //   457: aload 6
    //   459: astore_0
    //   460: goto -218 -> 242
    //   463: astore 5
    //   465: goto -342 -> 123
    //   468: iconst_1
    //   469: istore 9
    //   471: goto -390 -> 81
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	474	0	paramFile	File
    //   0	474	1	paramInt1	int
    //   0	474	2	paramInt2	int
    //   0	474	3	paramString	String
    //   224	3	4	f	float
    //   11	289	5	localObject1	Object
    //   317	6	5	localException1	Exception
    //   327	81	5	localObject2	Object
    //   463	1	5	localIOException	java.io.IOException
    //   89	241	6	localObject3	Object
    //   426	32	6	localException2	Exception
    //   1	352	7	localObject4	Object
    //   20	378	8	localObject5	Object
    //   42	428	9	i	int
    //   49	170	10	j	int
    // Exception table:
    //   from	to	target	type
    //   3	13	236	java/io/FileNotFoundException
    //   247	252	265	java/io/IOException
    //   256	260	265	java/io/IOException
    //   3	13	271	finally
    //   154	163	317	java/lang/Exception
    //   167	179	317	java/lang/Exception
    //   183	189	317	java/lang/Exception
    //   301	314	317	java/lang/Exception
    //   338	342	366	java/lang/Exception
    //   347	352	366	java/lang/Exception
    //   360	364	366	java/lang/Exception
    //   193	197	373	java/lang/Exception
    //   202	207	373	java/lang/Exception
    //   207	212	373	java/lang/Exception
    //   141	150	380	finally
    //   388	392	414	java/lang/Exception
    //   397	402	414	java/lang/Exception
    //   407	412	414	java/lang/Exception
    //   154	163	422	finally
    //   167	179	422	finally
    //   183	189	422	finally
    //   301	314	422	finally
    //   329	334	422	finally
    //   141	150	426	java/lang/Exception
    //   282	287	433	java/io/IOException
    //   291	295	433	java/io/IOException
    //   13	51	437	finally
    //   70	81	437	finally
    //   81	91	437	finally
    //   226	233	437	finally
    //   91	113	443	finally
    //   13	51	450	java/io/FileNotFoundException
    //   70	81	450	java/io/FileNotFoundException
    //   81	91	450	java/io/FileNotFoundException
    //   226	233	450	java/io/FileNotFoundException
    //   91	113	456	java/io/FileNotFoundException
    //   113	123	463	java/io/IOException
  }
  
  private void scanMedia(String paramString)
  {
    Context localContext = (Context)contextRef.get();
    if (localContext != null)
    {
      mediaScanner = new MediaScannerConnection(localContext.getApplicationContext(), new BridgeMMMedia.1(this, paramString));
      if (mediaScanner != null) {
        mediaScanner.connect();
      }
    }
  }
  
  public MMJSResponse availableSourceTypes(HashMap<String, String> paramHashMap)
  {
    paramHashMap = new JSONArray();
    if (isCameraAvailable()) {
      paramHashMap.put("Camera");
    }
    if (isPictureChooserAvailable()) {
      paramHashMap.put("Photo Library");
    }
    MMJSResponse localMMJSResponse = new MMJSResponse();
    result = 1;
    response = paramHashMap;
    return localMMJSResponse;
  }
  
  /* Error */
  public MMJSResponse getPicture(HashMap<String, String> paramHashMap)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 48	com/millennialmedia/android/BridgeMMMedia:contextRef	Ljava/lang/ref/WeakReference;
    //   6: invokevirtual 53	java/lang/ref/WeakReference:get	()Ljava/lang/Object;
    //   9: checkcast 55	android/content/Context
    //   12: astore_3
    //   13: aload_1
    //   14: ldc_w 279
    //   17: invokevirtual 284	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   20: checkcast 146	java/lang/String
    //   23: astore 4
    //   25: aload_1
    //   26: ldc_w 286
    //   29: invokevirtual 284	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   32: checkcast 146	java/lang/String
    //   35: astore 5
    //   37: aload_1
    //   38: ldc_w 288
    //   41: invokevirtual 284	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   44: checkcast 146	java/lang/String
    //   47: astore 6
    //   49: aload_1
    //   50: ldc_w 290
    //   53: invokevirtual 284	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   56: checkcast 146	java/lang/String
    //   59: astore_2
    //   60: aload_2
    //   61: astore_1
    //   62: aload_2
    //   63: ifnonnull +285 -> 348
    //   66: ldc -46
    //   68: astore_1
    //   69: goto +279 -> 348
    //   72: ldc_w 292
    //   75: invokestatic 296	com/millennialmedia/android/MMJSResponse:responseWithError	(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;
    //   78: astore_1
    //   79: aload_0
    //   80: monitorexit
    //   81: aload_1
    //   82: areturn
    //   83: aload 5
    //   85: invokestatic 302	java/lang/Float:parseFloat	(Ljava/lang/String;)F
    //   88: f2i
    //   89: istore 7
    //   91: aload 6
    //   93: invokestatic 302	java/lang/Float:parseFloat	(Ljava/lang/String;)F
    //   96: f2i
    //   97: istore 8
    //   99: iload 7
    //   101: iload 8
    //   103: imul
    //   104: ldc_w 303
    //   107: if_icmple +13 -> 120
    //   110: ldc_w 305
    //   113: invokestatic 296	com/millennialmedia/android/MMJSResponse:responseWithError	(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;
    //   116: astore_1
    //   117: goto -38 -> 79
    //   120: aload_3
    //   121: ifnull +222 -> 343
    //   124: aload 4
    //   126: ifnull +217 -> 343
    //   129: new 116	java/io/File
    //   132: dup
    //   133: aload_3
    //   134: invokestatic 311	com/millennialmedia/android/AdCache:getCacheDirectory	(Landroid/content/Context;)Ljava/io/File;
    //   137: new 313	java/lang/StringBuilder
    //   140: dup
    //   141: ldc_w 315
    //   144: invokespecial 316	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   147: invokestatic 321	java/lang/System:currentTimeMillis	()J
    //   150: invokestatic 325	java/lang/String:valueOf	(J)Ljava/lang/String;
    //   153: invokevirtual 329	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   156: ldc_w 331
    //   159: invokevirtual 329	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   162: invokevirtual 334	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   165: invokespecial 337	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   168: astore_2
    //   169: aload 4
    //   171: ldc_w 257
    //   174: invokevirtual 341	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   177: ifeq +10 -> 187
    //   180: aload_0
    //   181: invokespecial 255	com/millennialmedia/android/BridgeMMMedia:isCameraAvailable	()Z
    //   184: ifne +36 -> 220
    //   187: aload 4
    //   189: ldc_w 265
    //   192: invokevirtual 341	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   195: ifne +14 -> 209
    //   198: aload 4
    //   200: ldc_w 343
    //   203: invokevirtual 341	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   206: ifeq +137 -> 343
    //   209: aload_0
    //   210: invokespecial 263	com/millennialmedia/android/BridgeMMMedia:isPictureChooserAvailable	()Z
    //   213: istore 9
    //   215: iload 9
    //   217: ifeq +126 -> 343
    //   220: new 345	java/lang/Object
    //   223: dup
    //   224: invokespecial 346	java/lang/Object:<init>	()V
    //   227: astore 5
    //   229: aload 5
    //   231: putstatic 24	com/millennialmedia/android/BridgeMMMedia:pickerActivityObject	Ljava/lang/Object;
    //   234: aload 5
    //   236: monitorenter
    //   237: aload_3
    //   238: aload_2
    //   239: aload 4
    //   241: invokestatic 352	com/millennialmedia/android/Utils$IntentUtils:startPickerActivity	(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V
    //   244: getstatic 24	com/millennialmedia/android/BridgeMMMedia:pickerActivityObject	Ljava/lang/Object;
    //   247: invokevirtual 355	java/lang/Object:wait	()V
    //   250: aload 5
    //   252: monitorexit
    //   253: aconst_null
    //   254: putstatic 24	com/millennialmedia/android/BridgeMMMedia:pickerActivityObject	Ljava/lang/Object;
    //   257: aload_2
    //   258: invokevirtual 358	java/io/File:exists	()Z
    //   261: ifeq +82 -> 343
    //   264: aload_2
    //   265: invokevirtual 361	java/io/File:length	()J
    //   268: lconst_0
    //   269: lcmp
    //   270: ifle +73 -> 343
    //   273: aload_2
    //   274: iload 8
    //   276: iload 7
    //   278: aload_1
    //   279: invokestatic 363	com/millennialmedia/android/BridgeMMMedia:scaleBitmapToBytes	(Ljava/io/File;IILjava/lang/String;)[B
    //   282: astore_3
    //   283: aload_2
    //   284: invokevirtual 366	java/io/File:delete	()Z
    //   287: pop
    //   288: aload_3
    //   289: ifnull +54 -> 343
    //   292: new 267	com/millennialmedia/android/MMJSResponse
    //   295: dup
    //   296: invokespecial 268	com/millennialmedia/android/MMJSResponse:<init>	()V
    //   299: astore_1
    //   300: aload_1
    //   301: iconst_1
    //   302: putfield 271	com/millennialmedia/android/MMJSResponse:result	I
    //   305: aload_1
    //   306: aload_3
    //   307: putfield 370	com/millennialmedia/android/MMJSResponse:dataResponse	[B
    //   310: goto -231 -> 79
    //   313: astore_1
    //   314: aload_0
    //   315: monitorexit
    //   316: aload_1
    //   317: athrow
    //   318: astore_3
    //   319: aload 5
    //   321: monitorexit
    //   322: aload_3
    //   323: athrow
    //   324: astore_3
    //   325: aload_3
    //   326: invokevirtual 135	java/lang/Exception:printStackTrace	()V
    //   329: aconst_null
    //   330: putstatic 24	com/millennialmedia/android/BridgeMMMedia:pickerActivityObject	Ljava/lang/Object;
    //   333: goto -76 -> 257
    //   336: astore_1
    //   337: aconst_null
    //   338: putstatic 24	com/millennialmedia/android/BridgeMMMedia:pickerActivityObject	Ljava/lang/Object;
    //   341: aload_1
    //   342: athrow
    //   343: aconst_null
    //   344: astore_1
    //   345: goto -266 -> 79
    //   348: aload 5
    //   350: ifnull -278 -> 72
    //   353: aload 6
    //   355: ifnonnull -272 -> 83
    //   358: goto -286 -> 72
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	361	0	this	BridgeMMMedia
    //   0	361	1	paramHashMap	HashMap<String, String>
    //   59	225	2	localObject1	Object
    //   12	295	3	localObject2	Object
    //   318	5	3	localObject3	Object
    //   324	2	3	localException	Exception
    //   23	217	4	str1	String
    //   35	314	5	localObject4	Object
    //   47	307	6	str2	String
    //   89	188	7	i	int
    //   97	178	8	j	int
    //   213	3	9	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   2	60	313	finally
    //   72	79	313	finally
    //   83	99	313	finally
    //   110	117	313	finally
    //   129	187	313	finally
    //   187	209	313	finally
    //   209	215	313	finally
    //   253	257	313	finally
    //   257	288	313	finally
    //   292	310	313	finally
    //   329	333	313	finally
    //   337	343	313	finally
    //   237	253	318	finally
    //   220	237	324	java/lang/Exception
    //   319	324	324	java/lang/Exception
    //   220	237	336	finally
    //   319	324	336	finally
    //   325	329	336	finally
  }
  
  public MMJSResponse isSourceTypeAvailable(HashMap<String, String> paramHashMap)
  {
    paramHashMap = (String)paramHashMap.get("sourceType");
    if (paramHashMap != null)
    {
      if ((paramHashMap.equalsIgnoreCase("Camera")) && (isCameraAvailable())) {
        return MMJSResponse.responseWithSuccess("true");
      }
      if ((paramHashMap.equalsIgnoreCase("Photo Library")) && (isPictureChooserAvailable())) {
        return MMJSResponse.responseWithSuccess("true");
      }
    }
    return MMJSResponse.responseWithError("false");
  }
  
  public MMJSResponse playAudio(HashMap<String, String> paramHashMap)
  {
    Context localContext = (Context)contextRef.get();
    Object localObject = (String)paramHashMap.get("path");
    if ((localContext != null) && (localObject != null))
    {
      if (BridgeMMMedia.Audio.sharedAudio(localContext).isPlaying()) {
        return MMJSResponse.responseWithError("Audio already playing.");
      }
      if (((String)localObject).startsWith("http")) {
        return BridgeMMMedia.Audio.sharedAudio(localContext).playAudio(Uri.parse((String)localObject), Boolean.parseBoolean((String)paramHashMap.get("repeat")));
      }
      localObject = AdCache.getDownloadFile(localContext, (String)localObject);
      if (((File)localObject).exists()) {
        return BridgeMMMedia.Audio.sharedAudio(localContext).playAudio(Uri.fromFile((File)localObject), Boolean.parseBoolean((String)paramHashMap.get("repeat")));
      }
    }
    return null;
  }
  
  public MMJSResponse playSound(HashMap<String, String> paramHashMap)
  {
    Context localContext = (Context)contextRef.get();
    paramHashMap = (String)paramHashMap.get("path");
    if ((localContext != null) && (paramHashMap != null))
    {
      paramHashMap = AdCache.getDownloadFile(localContext, paramHashMap);
      if (paramHashMap.exists()) {
        return BridgeMMMedia.Audio.sharedAudio((Context)contextRef.get()).playSound(paramHashMap);
      }
    }
    return null;
  }
  
  public MMJSResponse playVideo(HashMap<String, String> paramHashMap)
  {
    Context localContext = (Context)contextRef.get();
    paramHashMap = (String)paramHashMap.get("path");
    if ((localContext != null) && (paramHashMap != null))
    {
      if (paramHashMap.startsWith("http"))
      {
        Utils.IntentUtils.startVideoPlayerActivityWithData(localContext, paramHashMap);
        return MMJSResponse.responseWithSuccess(paramHashMap);
      }
      paramHashMap = AdCache.getDownloadFile(localContext, paramHashMap);
      if (paramHashMap.exists())
      {
        Utils.IntentUtils.startVideoPlayerActivityWithData(localContext, paramHashMap);
        return MMJSResponse.responseWithSuccess(paramHashMap.getName());
      }
    }
    return null;
  }
  
  public MMJSResponse stopAudio(HashMap<String, String> paramHashMap)
  {
    return BridgeMMMedia.Audio.sharedAudio((Context)contextRef.get()).stop();
  }
  
  /* Error */
  public MMJSResponse writeToPhotoLibrary(HashMap<String, String> paramHashMap)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 48	com/millennialmedia/android/BridgeMMMedia:contextRef	Ljava/lang/ref/WeakReference;
    //   6: invokevirtual 53	java/lang/ref/WeakReference:get	()Ljava/lang/Object;
    //   9: checkcast 55	android/content/Context
    //   12: astore_3
    //   13: aload_1
    //   14: ldc 8
    //   16: invokevirtual 284	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   19: checkcast 146	java/lang/String
    //   22: invokestatic 401	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   25: astore 4
    //   27: new 116	java/io/File
    //   30: dup
    //   31: new 313	java/lang/StringBuilder
    //   34: dup
    //   35: invokespecial 441	java/lang/StringBuilder:<init>	()V
    //   38: aload_3
    //   39: invokestatic 311	com/millennialmedia/android/AdCache:getCacheDirectory	(Landroid/content/Context;)Ljava/io/File;
    //   42: invokevirtual 444	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   45: invokevirtual 329	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   48: getstatic 447	java/io/File:separator	Ljava/lang/String;
    //   51: invokevirtual 329	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   54: ldc 11
    //   56: invokevirtual 329	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   59: getstatic 447	java/io/File:separator	Ljava/lang/String;
    //   62: invokevirtual 329	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   65: aload 4
    //   67: invokevirtual 450	android/net/Uri:getLastPathSegment	()Ljava/lang/String;
    //   70: invokevirtual 329	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   73: invokevirtual 334	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   76: invokespecial 451	java/io/File:<init>	(Ljava/lang/String;)V
    //   79: astore_2
    //   80: aload 4
    //   82: invokevirtual 454	android/net/Uri:getScheme	()Ljava/lang/String;
    //   85: astore 5
    //   87: aload 5
    //   89: ifnull +74 -> 163
    //   92: aload 5
    //   94: ldc_w 392
    //   97: invokevirtual 150	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   100: ifeq +63 -> 163
    //   103: aload_1
    //   104: ldc_w 456
    //   107: aload 4
    //   109: invokevirtual 457	android/net/Uri:toString	()Ljava/lang/String;
    //   112: invokevirtual 460	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   115: pop
    //   116: aload_1
    //   117: ldc 8
    //   119: aload 4
    //   121: invokevirtual 450	android/net/Uri:getLastPathSegment	()Ljava/lang/String;
    //   124: invokevirtual 460	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   127: pop
    //   128: new 462	com/millennialmedia/android/BridgeMMFileManager
    //   131: dup
    //   132: invokespecial 463	com/millennialmedia/android/BridgeMMFileManager:<init>	()V
    //   135: astore 5
    //   137: aload 5
    //   139: aload_3
    //   140: invokevirtual 467	com/millennialmedia/android/BridgeMMFileManager:setContext	(Landroid/content/Context;)V
    //   143: aload 5
    //   145: aload_1
    //   146: invokevirtual 470	com/millennialmedia/android/BridgeMMFileManager:downloadFile	(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
    //   149: ifnonnull +14 -> 163
    //   152: ldc_w 472
    //   155: invokestatic 296	com/millennialmedia/android/MMJSResponse:responseWithError	(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;
    //   158: astore_1
    //   159: aload_0
    //   160: monitorexit
    //   161: aload_1
    //   162: areturn
    //   163: aload_3
    //   164: aload 4
    //   166: invokevirtual 450	android/net/Uri:getLastPathSegment	()Ljava/lang/String;
    //   169: invokestatic 415	com/millennialmedia/android/AdCache:getDownloadFile	(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    //   172: astore_1
    //   173: aload_1
    //   174: invokevirtual 358	java/io/File:exists	()Z
    //   177: ifne +30 -> 207
    //   180: new 313	java/lang/StringBuilder
    //   183: dup
    //   184: ldc_w 474
    //   187: invokespecial 316	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   190: aload_1
    //   191: invokevirtual 444	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   194: invokevirtual 329	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   197: invokevirtual 334	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   200: invokestatic 296	com/millennialmedia/android/MMJSResponse:responseWithError	(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;
    //   203: astore_1
    //   204: goto -45 -> 159
    //   207: aload_0
    //   208: aload_1
    //   209: aload_2
    //   210: invokespecial 476	com/millennialmedia/android/BridgeMMMedia:moveFile	(Ljava/io/File;Ljava/io/File;)Z
    //   213: ifeq +23 -> 236
    //   216: aload_2
    //   217: invokevirtual 444	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   220: astore_1
    //   221: aload_0
    //   222: aload_1
    //   223: invokespecial 478	com/millennialmedia/android/BridgeMMMedia:scanMedia	(Ljava/lang/String;)V
    //   226: ldc_w 480
    //   229: invokestatic 376	com/millennialmedia/android/MMJSResponse:responseWithSuccess	(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;
    //   232: astore_1
    //   233: goto -74 -> 159
    //   236: aload_1
    //   237: invokevirtual 444	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   240: astore_1
    //   241: goto -20 -> 221
    //   244: astore_1
    //   245: aload_0
    //   246: monitorexit
    //   247: aload_1
    //   248: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	249	0	this	BridgeMMMedia
    //   0	249	1	paramHashMap	HashMap<String, String>
    //   79	138	2	localFile	File
    //   12	152	3	localContext	Context
    //   25	140	4	localUri	Uri
    //   85	59	5	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	87	244	finally
    //   92	159	244	finally
    //   163	204	244	finally
    //   207	221	244	finally
    //   221	233	244	finally
    //   236	241	244	finally
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.BridgeMMMedia
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */