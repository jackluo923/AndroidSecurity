package com.millennialmedia.android;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;

class BridgeMMMedia$PickerActivity
  extends MMBaseActivity
{
  private Uri fileUri;
  boolean hasRequestedPic = false;
  
  /* Error */
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 5
    //   3: aconst_null
    //   4: astore 6
    //   6: aconst_null
    //   7: astore 4
    //   9: aload_0
    //   10: iload_1
    //   11: iload_2
    //   12: aload_3
    //   13: invokespecial 21	com/millennialmedia/android/MMBaseActivity:onActivityResult	(IILandroid/content/Intent;)V
    //   16: aload_3
    //   17: ifnull +137 -> 154
    //   20: aload_3
    //   21: invokevirtual 27	android/content/Intent:getData	()Landroid/net/Uri;
    //   24: astore 7
    //   26: aload 7
    //   28: ifnonnull +195 -> 223
    //   31: aload_3
    //   32: invokevirtual 31	android/content/Intent:getExtras	()Landroid/os/Bundle;
    //   35: ifnull +119 -> 154
    //   38: aload_3
    //   39: invokevirtual 31	android/content/Intent:getExtras	()Landroid/os/Bundle;
    //   42: ldc 33
    //   44: invokevirtual 39	android/os/Bundle:get	(Ljava/lang/String;)Ljava/lang/Object;
    //   47: checkcast 41	android/graphics/Bitmap
    //   50: astore 5
    //   52: new 43	java/io/File
    //   55: dup
    //   56: aload_0
    //   57: invokevirtual 47	com/millennialmedia/android/BridgeMMMedia$PickerActivity:getIntent	()Landroid/content/Intent;
    //   60: invokevirtual 27	android/content/Intent:getData	()Landroid/net/Uri;
    //   63: invokevirtual 53	android/net/Uri:getPath	()Ljava/lang/String;
    //   66: invokespecial 56	java/io/File:<init>	(Ljava/lang/String;)V
    //   69: astore_3
    //   70: new 58	java/io/ByteArrayOutputStream
    //   73: dup
    //   74: invokespecial 59	java/io/ByteArrayOutputStream:<init>	()V
    //   77: astore 6
    //   79: aload 5
    //   81: getstatic 65	android/graphics/Bitmap$CompressFormat:PNG	Landroid/graphics/Bitmap$CompressFormat;
    //   84: iconst_0
    //   85: aload 6
    //   87: invokevirtual 69	android/graphics/Bitmap:compress	(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    //   90: pop
    //   91: new 71	java/io/ByteArrayInputStream
    //   94: dup
    //   95: aload 6
    //   97: invokevirtual 75	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   100: invokespecial 78	java/io/ByteArrayInputStream:<init>	([B)V
    //   103: astore 5
    //   105: new 80	java/io/FileOutputStream
    //   108: dup
    //   109: aload_3
    //   110: invokespecial 83	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   113: astore_3
    //   114: sipush 1024
    //   117: newarray <illegal type>
    //   119: astore 4
    //   121: aload 5
    //   123: aload 4
    //   125: invokevirtual 87	java/io/ByteArrayInputStream:read	([B)I
    //   128: istore_1
    //   129: iload_1
    //   130: ifle +43 -> 173
    //   133: aload_3
    //   134: aload 4
    //   136: iconst_0
    //   137: iload_1
    //   138: invokevirtual 93	java/io/OutputStream:write	([BII)V
    //   141: goto -20 -> 121
    //   144: astore 4
    //   146: aload_3
    //   147: ifnull +7 -> 154
    //   150: aload_3
    //   151: invokevirtual 96	java/io/OutputStream:close	()V
    //   154: invokestatic 102	com/millennialmedia/android/BridgeMMMedia:access$000	()Ljava/lang/Object;
    //   157: astore_3
    //   158: aload_3
    //   159: monitorenter
    //   160: invokestatic 102	com/millennialmedia/android/BridgeMMMedia:access$000	()Ljava/lang/Object;
    //   163: invokevirtual 107	java/lang/Object:notify	()V
    //   166: aload_3
    //   167: monitorexit
    //   168: aload_0
    //   169: invokevirtual 110	com/millennialmedia/android/BridgeMMMedia$PickerActivity:finish	()V
    //   172: return
    //   173: aload_3
    //   174: invokevirtual 96	java/io/OutputStream:close	()V
    //   177: goto -23 -> 154
    //   180: astore_3
    //   181: goto -27 -> 154
    //   184: astore_3
    //   185: aload 4
    //   187: ifnull +8 -> 195
    //   190: aload 4
    //   192: invokevirtual 96	java/io/OutputStream:close	()V
    //   195: aload_3
    //   196: athrow
    //   197: astore_3
    //   198: new 112	java/lang/StringBuilder
    //   201: dup
    //   202: ldc 114
    //   204: invokespecial 115	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   207: aload_3
    //   208: invokevirtual 118	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   211: invokevirtual 122	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   214: invokevirtual 125	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   217: invokestatic 130	com/millennialmedia/android/MMSDK$Log:e	(Ljava/lang/String;)V
    //   220: goto -66 -> 154
    //   223: aload 7
    //   225: ifnull -71 -> 154
    //   228: aload_0
    //   229: invokevirtual 134	com/millennialmedia/android/BridgeMMMedia$PickerActivity:getContentResolver	()Landroid/content/ContentResolver;
    //   232: astore_3
    //   233: aload_3
    //   234: ifnull -80 -> 154
    //   237: aload_3
    //   238: aload 7
    //   240: iconst_1
    //   241: anewarray 136	java/lang/String
    //   244: dup
    //   245: iconst_0
    //   246: ldc -118
    //   248: aastore
    //   249: aconst_null
    //   250: aconst_null
    //   251: aconst_null
    //   252: invokevirtual 144	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   255: astore 4
    //   257: aload 4
    //   259: ifnull -105 -> 154
    //   262: aload 4
    //   264: ldc -118
    //   266: invokeinterface 150 2 0
    //   271: istore_1
    //   272: iload_1
    //   273: iconst_m1
    //   274: if_icmpeq -120 -> 154
    //   277: aload 4
    //   279: invokeinterface 154 1 0
    //   284: pop
    //   285: new 43	java/io/File
    //   288: dup
    //   289: aload 4
    //   291: iload_1
    //   292: invokeinterface 158 2 0
    //   297: invokespecial 56	java/io/File:<init>	(Ljava/lang/String;)V
    //   300: astore_3
    //   301: aload 4
    //   303: invokeinterface 159 1 0
    //   308: new 43	java/io/File
    //   311: dup
    //   312: aload_0
    //   313: invokevirtual 47	com/millennialmedia/android/BridgeMMMedia$PickerActivity:getIntent	()Landroid/content/Intent;
    //   316: invokevirtual 27	android/content/Intent:getData	()Landroid/net/Uri;
    //   319: invokevirtual 53	android/net/Uri:getPath	()Ljava/lang/String;
    //   322: invokespecial 56	java/io/File:<init>	(Ljava/lang/String;)V
    //   325: astore 4
    //   327: new 161	java/io/FileInputStream
    //   330: dup
    //   331: aload_3
    //   332: invokespecial 162	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   335: astore_3
    //   336: new 80	java/io/FileOutputStream
    //   339: dup
    //   340: aload 4
    //   342: invokespecial 83	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   345: astore 4
    //   347: sipush 1024
    //   350: newarray <illegal type>
    //   352: astore 5
    //   354: aload_3
    //   355: aload 5
    //   357: invokevirtual 165	java/io/InputStream:read	([B)I
    //   360: istore_1
    //   361: iload_1
    //   362: ifle +42 -> 404
    //   365: aload 4
    //   367: aload 5
    //   369: iconst_0
    //   370: iload_1
    //   371: invokevirtual 93	java/io/OutputStream:write	([BII)V
    //   374: goto -20 -> 354
    //   377: astore 5
    //   379: aload_3
    //   380: ifnull +7 -> 387
    //   383: aload_3
    //   384: invokevirtual 166	java/io/InputStream:close	()V
    //   387: aload 4
    //   389: ifnull -235 -> 154
    //   392: aload 4
    //   394: invokevirtual 96	java/io/OutputStream:close	()V
    //   397: goto -243 -> 154
    //   400: astore_3
    //   401: goto -247 -> 154
    //   404: aload_3
    //   405: invokevirtual 166	java/io/InputStream:close	()V
    //   408: aload 4
    //   410: invokevirtual 96	java/io/OutputStream:close	()V
    //   413: goto -259 -> 154
    //   416: astore_3
    //   417: goto -263 -> 154
    //   420: astore 4
    //   422: aconst_null
    //   423: astore_3
    //   424: aload 6
    //   426: astore 5
    //   428: aload_3
    //   429: ifnull +7 -> 436
    //   432: aload_3
    //   433: invokevirtual 166	java/io/InputStream:close	()V
    //   436: aload 5
    //   438: ifnull +8 -> 446
    //   441: aload 5
    //   443: invokevirtual 96	java/io/OutputStream:close	()V
    //   446: aload 4
    //   448: athrow
    //   449: astore 4
    //   451: aload_3
    //   452: monitorexit
    //   453: aload 4
    //   455: athrow
    //   456: astore_3
    //   457: goto -303 -> 154
    //   460: astore 4
    //   462: goto -267 -> 195
    //   465: astore_3
    //   466: goto -20 -> 446
    //   469: astore 4
    //   471: aload 6
    //   473: astore 5
    //   475: goto -47 -> 428
    //   478: astore 6
    //   480: aload 4
    //   482: astore 5
    //   484: aload 6
    //   486: astore 4
    //   488: goto -60 -> 428
    //   491: astore_3
    //   492: aconst_null
    //   493: astore_3
    //   494: aload 5
    //   496: astore 4
    //   498: goto -119 -> 379
    //   501: astore 4
    //   503: aload 5
    //   505: astore 4
    //   507: goto -128 -> 379
    //   510: astore 5
    //   512: aload_3
    //   513: astore 4
    //   515: aload 5
    //   517: astore_3
    //   518: goto -333 -> 185
    //   521: astore_3
    //   522: aconst_null
    //   523: astore_3
    //   524: goto -378 -> 146
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	527	0	this	PickerActivity
    //   0	527	1	paramInt1	int
    //   0	527	2	paramInt2	int
    //   0	527	3	paramIntent	Intent
    //   7	128	4	arrayOfByte	byte[]
    //   144	47	4	localException1	Exception
    //   255	154	4	localObject1	Object
    //   420	27	4	localObject2	Object
    //   449	5	4	localObject3	Object
    //   460	1	4	localException2	Exception
    //   469	12	4	localObject4	Object
    //   486	11	4	localObject5	Object
    //   501	1	4	localException3	Exception
    //   505	9	4	localObject6	Object
    //   1	367	5	localObject7	Object
    //   377	1	5	localException4	Exception
    //   426	78	5	localObject8	Object
    //   510	6	5	localObject9	Object
    //   4	468	6	localByteArrayOutputStream	java.io.ByteArrayOutputStream
    //   478	7	6	localObject10	Object
    //   24	215	7	localUri	Uri
    // Exception table:
    //   from	to	target	type
    //   114	121	144	java/lang/Exception
    //   121	129	144	java/lang/Exception
    //   133	141	144	java/lang/Exception
    //   173	177	180	java/lang/Exception
    //   52	114	184	finally
    //   20	26	197	java/lang/Exception
    //   31	52	197	java/lang/Exception
    //   195	197	197	java/lang/Exception
    //   228	233	197	java/lang/Exception
    //   237	257	197	java/lang/Exception
    //   262	272	197	java/lang/Exception
    //   277	308	197	java/lang/Exception
    //   446	449	197	java/lang/Exception
    //   347	354	377	java/lang/Exception
    //   354	361	377	java/lang/Exception
    //   365	374	377	java/lang/Exception
    //   383	387	400	java/lang/Exception
    //   392	397	400	java/lang/Exception
    //   404	413	416	java/lang/Exception
    //   308	336	420	finally
    //   160	168	449	finally
    //   150	154	456	java/lang/Exception
    //   190	195	460	java/lang/Exception
    //   432	436	465	java/lang/Exception
    //   441	446	465	java/lang/Exception
    //   336	347	469	finally
    //   347	354	478	finally
    //   354	361	478	finally
    //   365	374	478	finally
    //   308	336	491	java/lang/Exception
    //   336	347	501	java/lang/Exception
    //   114	121	510	finally
    //   121	129	510	finally
    //   133	141	510	finally
    //   52	114	521	java/lang/Exception
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (getLastNonConfigurationInstance() != null) {
      hasRequestedPic = ((Bundle)getLastNonConfigurationInstance()).getBoolean("hasRequestedPic");
    }
    if (!hasRequestedPic)
    {
      if (getIntent().getStringExtra("type").equalsIgnoreCase("Camera"))
      {
        paramBundle = new Intent("android.media.action.IMAGE_CAPTURE");
        fileUri = getIntent().getData();
        paramBundle.putExtra("return-data", true);
        hasRequestedPic = true;
        startActivityForResult(paramBundle, 0);
      }
    }
    else {
      return;
    }
    paramBundle = new Intent();
    paramBundle.setType("image/*");
    paramBundle.setAction("android.intent.action.GET_CONTENT");
    hasRequestedPic = true;
    startActivityForResult(paramBundle, 0);
  }
  
  public Object onRetainNonConfigurationInstance()
  {
    super.onRetainNonConfigurationInstance();
    Bundle localBundle = new Bundle();
    localBundle.putBoolean("hasRequestedPic", hasRequestedPic);
    return localBundle;
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.BridgeMMMedia.PickerActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */