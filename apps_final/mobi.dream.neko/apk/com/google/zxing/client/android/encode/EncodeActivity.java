package com.google.zxing.client.android.encode;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.content.Intent;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.util.Log;
import android.view.Display;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.zxing.FakeR;
import com.google.zxing.WriterException;
import com.google.zxing.client.android.FinishListener;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class EncodeActivity
  extends Activity
{
  private static final int MAX_BARCODE_FILENAME_LENGTH = 24;
  private static final Pattern NOT_ALPHANUMERIC = Pattern.compile("[^A-Za-z0-9]");
  private static final String TAG = EncodeActivity.class.getSimpleName();
  private static final String USE_VCARD_KEY = "USE_VCARD";
  private static FakeR fakeR;
  private QRCodeEncoder qrCodeEncoder;
  
  private static CharSequence makeBarcodeFileName(CharSequence paramCharSequence)
  {
    String str = NOT_ALPHANUMERIC.matcher(paramCharSequence).replaceAll("_");
    paramCharSequence = str;
    if (str.length() > 24) {
      paramCharSequence = str.substring(0, 24);
    }
    return paramCharSequence;
  }
  
  /* Error */
  private void share()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 75	com/google/zxing/client/android/encode/EncodeActivity:qrCodeEncoder	Lcom/google/zxing/client/android/encode/QRCodeEncoder;
    //   4: astore 5
    //   6: aload 5
    //   8: ifnonnull +13 -> 21
    //   11: getstatic 28	com/google/zxing/client/android/encode/EncodeActivity:TAG	Ljava/lang/String;
    //   14: ldc 77
    //   16: invokestatic 83	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;)I
    //   19: pop
    //   20: return
    //   21: aload 5
    //   23: invokevirtual 88	com/google/zxing/client/android/encode/QRCodeEncoder:getContents	()Ljava/lang/String;
    //   26: astore 6
    //   28: aload 6
    //   30: ifnonnull +13 -> 43
    //   33: getstatic 28	com/google/zxing/client/android/encode/EncodeActivity:TAG	Ljava/lang/String;
    //   36: ldc 77
    //   38: invokestatic 83	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;)I
    //   41: pop
    //   42: return
    //   43: aload 5
    //   45: invokevirtual 92	com/google/zxing/client/android/encode/QRCodeEncoder:encodeAsBitmap	()Landroid/graphics/Bitmap;
    //   48: astore 7
    //   50: aload 7
    //   52: ifnull -32 -> 20
    //   55: new 94	java/io/File
    //   58: dup
    //   59: new 94	java/io/File
    //   62: dup
    //   63: invokestatic 100	android/os/Environment:getExternalStorageDirectory	()Ljava/io/File;
    //   66: ldc 102
    //   68: invokespecial 105	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   71: ldc 107
    //   73: invokespecial 105	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   76: astore_1
    //   77: aload_1
    //   78: invokevirtual 111	java/io/File:exists	()Z
    //   81: ifne +61 -> 142
    //   84: aload_1
    //   85: invokevirtual 114	java/io/File:mkdirs	()Z
    //   88: ifne +54 -> 142
    //   91: getstatic 28	com/google/zxing/client/android/encode/EncodeActivity:TAG	Ljava/lang/String;
    //   94: new 116	java/lang/StringBuilder
    //   97: dup
    //   98: invokespecial 117	java/lang/StringBuilder:<init>	()V
    //   101: ldc 119
    //   103: invokevirtual 123	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   106: aload_1
    //   107: invokevirtual 126	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   110: invokevirtual 129	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   113: invokestatic 83	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;)I
    //   116: pop
    //   117: aload_0
    //   118: getstatic 131	com/google/zxing/client/android/encode/EncodeActivity:fakeR	Lcom/google/zxing/FakeR;
    //   121: ldc -123
    //   123: ldc -121
    //   125: invokevirtual 140	com/google/zxing/FakeR:getId	(Ljava/lang/String;Ljava/lang/String;)I
    //   128: invokespecial 144	com/google/zxing/client/android/encode/EncodeActivity:showErrorMessage	(I)V
    //   131: return
    //   132: astore_1
    //   133: getstatic 28	com/google/zxing/client/android/encode/EncodeActivity:TAG	Ljava/lang/String;
    //   136: aload_1
    //   137: invokestatic 147	android/util/Log:w	(Ljava/lang/String;Ljava/lang/Throwable;)I
    //   140: pop
    //   141: return
    //   142: new 94	java/io/File
    //   145: dup
    //   146: aload_1
    //   147: new 116	java/lang/StringBuilder
    //   150: dup
    //   151: invokespecial 117	java/lang/StringBuilder:<init>	()V
    //   154: aload 6
    //   156: invokestatic 149	com/google/zxing/client/android/encode/EncodeActivity:makeBarcodeFileName	(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    //   159: invokevirtual 126	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   162: ldc -105
    //   164: invokevirtual 123	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   167: invokevirtual 129	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   170: invokespecial 105	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   173: astore 4
    //   175: aload 4
    //   177: invokevirtual 154	java/io/File:delete	()Z
    //   180: pop
    //   181: aconst_null
    //   182: astore_1
    //   183: aconst_null
    //   184: astore_3
    //   185: new 156	java/io/FileOutputStream
    //   188: dup
    //   189: aload 4
    //   191: invokespecial 159	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   194: astore_2
    //   195: aload 7
    //   197: getstatic 165	android/graphics/Bitmap$CompressFormat:PNG	Landroid/graphics/Bitmap$CompressFormat;
    //   200: iconst_0
    //   201: aload_2
    //   202: invokevirtual 171	android/graphics/Bitmap:compress	(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    //   205: pop
    //   206: aload_2
    //   207: ifnull +7 -> 214
    //   210: aload_2
    //   211: invokevirtual 174	java/io/FileOutputStream:close	()V
    //   214: new 176	android/content/Intent
    //   217: dup
    //   218: ldc -78
    //   220: ldc -76
    //   222: invokestatic 186	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   225: invokespecial 189	android/content/Intent:<init>	(Ljava/lang/String;Landroid/net/Uri;)V
    //   228: astore_1
    //   229: aload_1
    //   230: ldc -65
    //   232: new 116	java/lang/StringBuilder
    //   235: dup
    //   236: invokespecial 117	java/lang/StringBuilder:<init>	()V
    //   239: aload_0
    //   240: getstatic 131	com/google/zxing/client/android/encode/EncodeActivity:fakeR	Lcom/google/zxing/FakeR;
    //   243: ldc -123
    //   245: ldc -63
    //   247: invokevirtual 140	com/google/zxing/FakeR:getId	(Ljava/lang/String;Ljava/lang/String;)I
    //   250: invokevirtual 197	com/google/zxing/client/android/encode/EncodeActivity:getString	(I)Ljava/lang/String;
    //   253: invokevirtual 123	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   256: ldc -57
    //   258: invokevirtual 123	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   261: aload 5
    //   263: invokevirtual 202	com/google/zxing/client/android/encode/QRCodeEncoder:getTitle	()Ljava/lang/String;
    //   266: invokevirtual 123	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   269: invokevirtual 129	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   272: invokevirtual 206	android/content/Intent:putExtra	(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    //   275: pop
    //   276: aload_1
    //   277: ldc -48
    //   279: aload 6
    //   281: invokevirtual 206	android/content/Intent:putExtra	(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    //   284: pop
    //   285: aload_1
    //   286: ldc -46
    //   288: new 116	java/lang/StringBuilder
    //   291: dup
    //   292: invokespecial 117	java/lang/StringBuilder:<init>	()V
    //   295: ldc -44
    //   297: invokevirtual 123	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   300: aload 4
    //   302: invokevirtual 215	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   305: invokevirtual 123	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   308: invokevirtual 129	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   311: invokestatic 186	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   314: invokevirtual 218	android/content/Intent:putExtra	(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    //   317: pop
    //   318: aload_1
    //   319: ldc -36
    //   321: invokevirtual 224	android/content/Intent:setType	(Ljava/lang/String;)Landroid/content/Intent;
    //   324: pop
    //   325: aload_1
    //   326: ldc -31
    //   328: invokevirtual 229	android/content/Intent:addFlags	(I)Landroid/content/Intent;
    //   331: pop
    //   332: aload_0
    //   333: aload_1
    //   334: aconst_null
    //   335: invokestatic 233	android/content/Intent:createChooser	(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;
    //   338: invokevirtual 237	com/google/zxing/client/android/encode/EncodeActivity:startActivity	(Landroid/content/Intent;)V
    //   341: return
    //   342: astore_1
    //   343: aload_3
    //   344: astore_2
    //   345: aload_1
    //   346: astore_3
    //   347: aload_2
    //   348: astore_1
    //   349: getstatic 28	com/google/zxing/client/android/encode/EncodeActivity:TAG	Ljava/lang/String;
    //   352: new 116	java/lang/StringBuilder
    //   355: dup
    //   356: invokespecial 117	java/lang/StringBuilder:<init>	()V
    //   359: ldc -17
    //   361: invokevirtual 123	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   364: aload 4
    //   366: invokevirtual 126	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   369: ldc -15
    //   371: invokevirtual 123	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   374: aload_3
    //   375: invokevirtual 126	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   378: invokevirtual 129	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   381: invokestatic 83	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;)I
    //   384: pop
    //   385: aload_2
    //   386: astore_1
    //   387: aload_0
    //   388: getstatic 131	com/google/zxing/client/android/encode/EncodeActivity:fakeR	Lcom/google/zxing/FakeR;
    //   391: ldc -123
    //   393: ldc -121
    //   395: invokevirtual 140	com/google/zxing/FakeR:getId	(Ljava/lang/String;Ljava/lang/String;)I
    //   398: invokespecial 144	com/google/zxing/client/android/encode/EncodeActivity:showErrorMessage	(I)V
    //   401: aload_2
    //   402: ifnull -382 -> 20
    //   405: aload_2
    //   406: invokevirtual 174	java/io/FileOutputStream:close	()V
    //   409: return
    //   410: astore_1
    //   411: return
    //   412: astore_2
    //   413: aload_1
    //   414: ifnull +7 -> 421
    //   417: aload_1
    //   418: invokevirtual 174	java/io/FileOutputStream:close	()V
    //   421: aload_2
    //   422: athrow
    //   423: astore_1
    //   424: goto -210 -> 214
    //   427: astore_1
    //   428: goto -7 -> 421
    //   431: astore_3
    //   432: aload_2
    //   433: astore_1
    //   434: aload_3
    //   435: astore_2
    //   436: goto -23 -> 413
    //   439: astore_3
    //   440: goto -93 -> 347
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	443	0	this	EncodeActivity
    //   76	31	1	localFile1	java.io.File
    //   132	15	1	localWriterException	WriterException
    //   182	152	1	localIntent	Intent
    //   342	4	1	localFileNotFoundException1	java.io.FileNotFoundException
    //   348	39	1	localObject1	Object
    //   410	8	1	localIOException1	java.io.IOException
    //   423	1	1	localIOException2	java.io.IOException
    //   427	1	1	localIOException3	java.io.IOException
    //   433	1	1	localObject2	Object
    //   194	212	2	localObject3	Object
    //   412	21	2	localObject4	Object
    //   435	1	2	localObject5	Object
    //   184	191	3	localFileNotFoundException2	java.io.FileNotFoundException
    //   431	4	3	localObject6	Object
    //   439	1	3	localFileNotFoundException3	java.io.FileNotFoundException
    //   173	192	4	localFile2	java.io.File
    //   4	258	5	localQRCodeEncoder	QRCodeEncoder
    //   26	254	6	str	String
    //   48	148	7	localBitmap	Bitmap
    // Exception table:
    //   from	to	target	type
    //   43	50	132	com/google/zxing/WriterException
    //   185	195	342	java/io/FileNotFoundException
    //   405	409	410	java/io/IOException
    //   185	195	412	finally
    //   349	385	412	finally
    //   387	401	412	finally
    //   210	214	423	java/io/IOException
    //   417	421	427	java/io/IOException
    //   195	206	431	finally
    //   195	206	439	java/io/FileNotFoundException
  }
  
  private void showErrorMessage(int paramInt)
  {
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(this);
    localBuilder.setMessage(paramInt);
    localBuilder.setPositiveButton(fakeR.getId("string", "button_ok"), new FinishListener(this));
    localBuilder.setOnCancelListener(new FinishListener(this));
    localBuilder.show();
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    fakeR = new FakeR(this);
    if (getIntent() == null)
    {
      finish();
      return;
    }
    setContentView(fakeR.getId("layout", "encode"));
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    getMenuInflater().inflate(fakeR.getId("menu", "encode"), paramMenu);
    if ((qrCodeEncoder != null) && (qrCodeEncoder.isUseVCard()))
    {
      i = 1;
      if (i == 0) {
        break label127;
      }
    }
    label127:
    for (int i = fakeR.getId("string", "menu_encode_mecard");; i = fakeR.getId("string", "menu_encode_vcard"))
    {
      MenuItem localMenuItem = paramMenu.findItem(fakeR.getId("id", "menu_encode"));
      localMenuItem.setTitle(i);
      Intent localIntent = getIntent();
      if (localIntent != null) {
        localMenuItem.setVisible("CONTACT_TYPE".equals(localIntent.getStringExtra("ENCODE_TYPE")));
      }
      return super.onCreateOptionsMenu(paramMenu);
      i = 0;
      break;
    }
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    boolean bool = false;
    int i = paramMenuItem.getItemId();
    if (i == fakeR.getId("id", "menu_share"))
    {
      share();
      return true;
    }
    if (i == fakeR.getId("id", "menu_encode"))
    {
      paramMenuItem = getIntent();
      if (paramMenuItem == null) {
        return false;
      }
      if (!qrCodeEncoder.isUseVCard()) {
        bool = true;
      }
      paramMenuItem.putExtra("USE_VCARD", bool);
      startActivity(paramMenuItem);
      finish();
      return true;
    }
    return false;
  }
  
  protected void onResume()
  {
    super.onResume();
    Object localObject1 = ((WindowManager)getSystemService("window")).getDefaultDisplay();
    int i = ((Display)localObject1).getWidth();
    int j = ((Display)localObject1).getHeight();
    if (i < j) {}
    for (;;)
    {
      i = i * 7 / 8;
      localObject1 = getIntent();
      if (localObject1 != null) {
        break;
      }
      return;
      i = j;
    }
    try
    {
      qrCodeEncoder = new QRCodeEncoder(this, (Intent)localObject1, i, ((Intent)localObject1).getBooleanExtra("USE_VCARD", false));
      localObject2 = qrCodeEncoder.encodeAsBitmap();
      if (localObject2 == null)
      {
        Log.w(TAG, "Could not encode barcode");
        showErrorMessage(fakeR.getId("string", "msg_encode_contents_failed"));
        qrCodeEncoder = null;
        return;
      }
    }
    catch (WriterException localWriterException)
    {
      Log.w(TAG, "Could not encode barcode", localWriterException);
      showErrorMessage(fakeR.getId("string", "msg_encode_contents_failed"));
      qrCodeEncoder = null;
      return;
    }
    ((ImageView)findViewById(fakeR.getId("id", "image_view"))).setImageBitmap((Bitmap)localObject2);
    Object localObject2 = (TextView)findViewById(fakeR.getId("id", "contents_text_view"));
    if (localWriterException.getBooleanExtra("ENCODE_SHOW_CONTENTS", true))
    {
      ((TextView)localObject2).setText(qrCodeEncoder.getDisplayContents());
      setTitle(qrCodeEncoder.getTitle());
      return;
    }
    ((TextView)localObject2).setText("");
    setTitle("");
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.client.android.encode.EncodeActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */