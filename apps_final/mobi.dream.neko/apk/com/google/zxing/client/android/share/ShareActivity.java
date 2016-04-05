package com.google.zxing.client.android.share;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.provider.ContactsContract.Contacts;
import android.text.ClipboardManager;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnKeyListener;
import android.widget.Button;
import android.widget.TextView;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.FakeR;

public final class ShareActivity
  extends Activity
{
  private static final int PICK_APP = 2;
  private static final int PICK_BOOKMARK = 0;
  private static final int PICK_CONTACT = 1;
  private static final String TAG = ShareActivity.class.getSimpleName();
  private static FakeR fakeR;
  private final View.OnClickListener appListener = new View.OnClickListener()
  {
    public void onClick(View paramAnonymousView)
    {
      paramAnonymousView = new Intent("android.intent.action.PICK");
      paramAnonymousView.addFlags(524288);
      paramAnonymousView.setClassName(ShareActivity.this, AppPickerActivity.class.getName());
      startActivityForResult(paramAnonymousView, 2);
    }
  };
  private final View.OnClickListener bookmarkListener = new View.OnClickListener()
  {
    public void onClick(View paramAnonymousView)
    {
      paramAnonymousView = new Intent("android.intent.action.PICK");
      paramAnonymousView.addFlags(524288);
      paramAnonymousView.setClassName(ShareActivity.this, BookmarkPickerActivity.class.getName());
      startActivityForResult(paramAnonymousView, 0);
    }
  };
  private Button clipboardButton;
  private final View.OnClickListener clipboardListener = new View.OnClickListener()
  {
    public void onClick(View paramAnonymousView)
    {
      paramAnonymousView = (ClipboardManager)getSystemService("clipboard");
      if (paramAnonymousView.hasText()) {
        ShareActivity.this.launchSearch(paramAnonymousView.getText().toString());
      }
    }
  };
  private final View.OnClickListener contactListener = new View.OnClickListener()
  {
    public void onClick(View paramAnonymousView)
    {
      paramAnonymousView = new Intent("android.intent.action.PICK", ContactsContract.Contacts.CONTENT_URI);
      paramAnonymousView.addFlags(524288);
      startActivityForResult(paramAnonymousView, 1);
    }
  };
  private final View.OnKeyListener textListener = new View.OnKeyListener()
  {
    public boolean onKey(View paramAnonymousView, int paramAnonymousInt, KeyEvent paramAnonymousKeyEvent)
    {
      if ((paramAnonymousInt == 66) && (paramAnonymousKeyEvent.getAction() == 0))
      {
        paramAnonymousView = ((TextView)paramAnonymousView).getText().toString();
        if ((paramAnonymousView != null) && (paramAnonymousView.length() > 0)) {
          ShareActivity.this.launchSearch(paramAnonymousView);
        }
        return true;
      }
      return false;
    }
  };
  
  private void launchSearch(String paramString)
  {
    Intent localIntent = new Intent("com.google.zxing.client.android.ENCODE");
    localIntent.addFlags(524288);
    localIntent.putExtra("ENCODE_TYPE", "TEXT_TYPE");
    localIntent.putExtra("ENCODE_DATA", paramString);
    localIntent.putExtra("ENCODE_FORMAT", BarcodeFormat.QR_CODE.toString());
    startActivity(localIntent);
  }
  
  private static String massageContactData(String paramString)
  {
    String str = paramString;
    if (paramString.indexOf('\n') >= 0) {
      str = paramString.replace("\n", " ");
    }
    paramString = str;
    if (str.indexOf('\r') >= 0) {
      paramString = str.replace("\r", " ");
    }
    return paramString;
  }
  
  /* Error */
  private void showContactAsBarcode(android.net.Uri paramUri)
  {
    // Byte code:
    //   0: getstatic 44	com/google/zxing/client/android/share/ShareActivity:TAG	Ljava/lang/String;
    //   3: new 131	java/lang/StringBuilder
    //   6: dup
    //   7: invokespecial 132	java/lang/StringBuilder:<init>	()V
    //   10: ldc -122
    //   12: invokevirtual 138	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   15: aload_1
    //   16: invokevirtual 141	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   19: invokevirtual 142	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   22: invokestatic 148	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;)I
    //   25: pop
    //   26: aload_1
    //   27: ifnonnull +4 -> 31
    //   30: return
    //   31: aload_0
    //   32: invokevirtual 152	com/google/zxing/client/android/share/ShareActivity:getContentResolver	()Landroid/content/ContentResolver;
    //   35: astore_3
    //   36: new 154	android/os/Bundle
    //   39: dup
    //   40: invokespecial 155	android/os/Bundle:<init>	()V
    //   43: astore_2
    //   44: aload_3
    //   45: aload_1
    //   46: aconst_null
    //   47: aconst_null
    //   48: aconst_null
    //   49: aconst_null
    //   50: invokevirtual 161	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   53: astore 4
    //   55: aload 4
    //   57: ifnull -27 -> 30
    //   60: aload 4
    //   62: invokeinterface 167 1 0
    //   67: istore 8
    //   69: iload 8
    //   71: ifne +13 -> 84
    //   74: aload 4
    //   76: invokeinterface 170 1 0
    //   81: return
    //   82: astore_1
    //   83: return
    //   84: aload 4
    //   86: aload 4
    //   88: ldc -84
    //   90: invokeinterface 176 2 0
    //   95: invokeinterface 180 2 0
    //   100: astore_1
    //   101: aload 4
    //   103: aload 4
    //   105: ldc -74
    //   107: invokeinterface 176 2 0
    //   112: invokeinterface 180 2 0
    //   117: astore 5
    //   119: aload 4
    //   121: aload 4
    //   123: ldc -72
    //   125: invokeinterface 176 2 0
    //   130: invokeinterface 187 2 0
    //   135: istore 6
    //   137: iload 6
    //   139: ifle +159 -> 298
    //   142: iconst_1
    //   143: istore 6
    //   145: aload 4
    //   147: invokeinterface 170 1 0
    //   152: aload 5
    //   154: ifnull +22 -> 176
    //   157: aload 5
    //   159: invokevirtual 191	java/lang/String:length	()I
    //   162: ifle +14 -> 176
    //   165: aload_2
    //   166: ldc -63
    //   168: aload 5
    //   170: invokestatic 195	com/google/zxing/client/android/share/ShareActivity:massageContactData	(Ljava/lang/String;)Ljava/lang/String;
    //   173: invokevirtual 199	android/os/Bundle:putString	(Ljava/lang/String;Ljava/lang/String;)V
    //   176: iload 6
    //   178: ifeq +143 -> 321
    //   181: aload_3
    //   182: getstatic 205	android/provider/ContactsContract$CommonDataKinds$Phone:CONTENT_URI	Landroid/net/Uri;
    //   185: aconst_null
    //   186: new 131	java/lang/StringBuilder
    //   189: dup
    //   190: invokespecial 132	java/lang/StringBuilder:<init>	()V
    //   193: ldc -49
    //   195: invokevirtual 138	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   198: aload_1
    //   199: invokevirtual 138	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   202: invokevirtual 142	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   205: aconst_null
    //   206: aconst_null
    //   207: invokevirtual 161	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   210: astore 4
    //   212: aload 4
    //   214: ifnull +107 -> 321
    //   217: iconst_0
    //   218: istore 6
    //   220: aload 4
    //   222: ldc -47
    //   224: invokeinterface 176 2 0
    //   229: istore 7
    //   231: aload 4
    //   233: invokeinterface 212 1 0
    //   238: ifeq +76 -> 314
    //   241: iload 6
    //   243: getstatic 218	com/google/zxing/client/android/Contents:PHONE_KEYS	[Ljava/lang/String;
    //   246: arraylength
    //   247: if_icmpge +67 -> 314
    //   250: aload 4
    //   252: iload 7
    //   254: invokeinterface 180 2 0
    //   259: astore 5
    //   261: aload 5
    //   263: ifnull +26 -> 289
    //   266: aload 5
    //   268: invokevirtual 191	java/lang/String:length	()I
    //   271: ifle +18 -> 289
    //   274: aload_2
    //   275: getstatic 218	com/google/zxing/client/android/Contents:PHONE_KEYS	[Ljava/lang/String;
    //   278: iload 6
    //   280: aaload
    //   281: aload 5
    //   283: invokestatic 195	com/google/zxing/client/android/share/ShareActivity:massageContactData	(Ljava/lang/String;)Ljava/lang/String;
    //   286: invokevirtual 199	android/os/Bundle:putString	(Ljava/lang/String;Ljava/lang/String;)V
    //   289: iload 6
    //   291: iconst_1
    //   292: iadd
    //   293: istore 6
    //   295: goto -64 -> 231
    //   298: iconst_0
    //   299: istore 6
    //   301: goto -156 -> 145
    //   304: astore_1
    //   305: aload 4
    //   307: invokeinterface 170 1 0
    //   312: aload_1
    //   313: athrow
    //   314: aload 4
    //   316: invokeinterface 170 1 0
    //   321: aload_3
    //   322: getstatic 221	android/provider/ContactsContract$CommonDataKinds$StructuredPostal:CONTENT_URI	Landroid/net/Uri;
    //   325: aconst_null
    //   326: new 131	java/lang/StringBuilder
    //   329: dup
    //   330: invokespecial 132	java/lang/StringBuilder:<init>	()V
    //   333: ldc -49
    //   335: invokevirtual 138	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   338: aload_1
    //   339: invokevirtual 138	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   342: invokevirtual 142	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   345: aconst_null
    //   346: aconst_null
    //   347: invokevirtual 161	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   350: astore 4
    //   352: aload 4
    //   354: ifnull +62 -> 416
    //   357: aload 4
    //   359: invokeinterface 212 1 0
    //   364: ifeq +45 -> 409
    //   367: aload 4
    //   369: aload 4
    //   371: ldc -47
    //   373: invokeinterface 176 2 0
    //   378: invokeinterface 180 2 0
    //   383: astore 5
    //   385: aload 5
    //   387: ifnull +22 -> 409
    //   390: aload 5
    //   392: invokevirtual 191	java/lang/String:length	()I
    //   395: ifle +14 -> 409
    //   398: aload_2
    //   399: ldc -33
    //   401: aload 5
    //   403: invokestatic 195	com/google/zxing/client/android/share/ShareActivity:massageContactData	(Ljava/lang/String;)Ljava/lang/String;
    //   406: invokevirtual 199	android/os/Bundle:putString	(Ljava/lang/String;Ljava/lang/String;)V
    //   409: aload 4
    //   411: invokeinterface 170 1 0
    //   416: aload_3
    //   417: getstatic 226	android/provider/ContactsContract$CommonDataKinds$Email:CONTENT_URI	Landroid/net/Uri;
    //   420: aconst_null
    //   421: new 131	java/lang/StringBuilder
    //   424: dup
    //   425: invokespecial 132	java/lang/StringBuilder:<init>	()V
    //   428: ldc -49
    //   430: invokevirtual 138	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   433: aload_1
    //   434: invokevirtual 138	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   437: invokevirtual 142	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   440: aconst_null
    //   441: aconst_null
    //   442: invokevirtual 161	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   445: astore_1
    //   446: aload_1
    //   447: ifnull +103 -> 550
    //   450: iconst_0
    //   451: istore 6
    //   453: aload_1
    //   454: ldc -47
    //   456: invokeinterface 176 2 0
    //   461: istore 7
    //   463: aload_1
    //   464: invokeinterface 212 1 0
    //   469: ifeq +75 -> 544
    //   472: iload 6
    //   474: getstatic 229	com/google/zxing/client/android/Contents:EMAIL_KEYS	[Ljava/lang/String;
    //   477: arraylength
    //   478: if_icmpge +66 -> 544
    //   481: aload_1
    //   482: iload 7
    //   484: invokeinterface 180 2 0
    //   489: astore_3
    //   490: aload_3
    //   491: ifnull +24 -> 515
    //   494: aload_3
    //   495: invokevirtual 191	java/lang/String:length	()I
    //   498: ifle +17 -> 515
    //   501: aload_2
    //   502: getstatic 229	com/google/zxing/client/android/Contents:EMAIL_KEYS	[Ljava/lang/String;
    //   505: iload 6
    //   507: aaload
    //   508: aload_3
    //   509: invokestatic 195	com/google/zxing/client/android/share/ShareActivity:massageContactData	(Ljava/lang/String;)Ljava/lang/String;
    //   512: invokevirtual 199	android/os/Bundle:putString	(Ljava/lang/String;Ljava/lang/String;)V
    //   515: iload 6
    //   517: iconst_1
    //   518: iadd
    //   519: istore 6
    //   521: goto -58 -> 463
    //   524: astore_1
    //   525: aload 4
    //   527: invokeinterface 170 1 0
    //   532: aload_1
    //   533: athrow
    //   534: astore_1
    //   535: aload 4
    //   537: invokeinterface 170 1 0
    //   542: aload_1
    //   543: athrow
    //   544: aload_1
    //   545: invokeinterface 170 1 0
    //   550: new 73	android/content/Intent
    //   553: dup
    //   554: ldc 75
    //   556: invokespecial 77	android/content/Intent:<init>	(Ljava/lang/String;)V
    //   559: astore_1
    //   560: aload_1
    //   561: ldc 78
    //   563: invokevirtual 82	android/content/Intent:addFlags	(I)Landroid/content/Intent;
    //   566: pop
    //   567: aload_1
    //   568: ldc 84
    //   570: ldc -25
    //   572: invokevirtual 90	android/content/Intent:putExtra	(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    //   575: pop
    //   576: aload_1
    //   577: ldc 92
    //   579: aload_2
    //   580: invokevirtual 234	android/content/Intent:putExtra	(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;
    //   583: pop
    //   584: aload_1
    //   585: ldc 94
    //   587: getstatic 100	com/google/zxing/BarcodeFormat:QR_CODE	Lcom/google/zxing/BarcodeFormat;
    //   590: invokevirtual 103	com/google/zxing/BarcodeFormat:toString	()Ljava/lang/String;
    //   593: invokevirtual 90	android/content/Intent:putExtra	(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    //   596: pop
    //   597: getstatic 44	com/google/zxing/client/android/share/ShareActivity:TAG	Ljava/lang/String;
    //   600: new 131	java/lang/StringBuilder
    //   603: dup
    //   604: invokespecial 132	java/lang/StringBuilder:<init>	()V
    //   607: ldc -20
    //   609: invokevirtual 138	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   612: aload_2
    //   613: invokevirtual 141	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   616: invokevirtual 142	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   619: invokestatic 148	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;)I
    //   622: pop
    //   623: aload_0
    //   624: aload_1
    //   625: invokevirtual 107	com/google/zxing/client/android/share/ShareActivity:startActivity	(Landroid/content/Intent;)V
    //   628: return
    //   629: astore_2
    //   630: aload_1
    //   631: invokeinterface 170 1 0
    //   636: aload_2
    //   637: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	638	0	this	ShareActivity
    //   0	638	1	paramUri	android.net.Uri
    //   43	570	2	localBundle	Bundle
    //   629	8	2	localObject1	Object
    //   35	474	3	localObject2	Object
    //   53	483	4	localCursor	android.database.Cursor
    //   117	285	5	str	String
    //   135	385	6	i	int
    //   229	254	7	j	int
    //   67	3	8	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   44	55	82	java/lang/IllegalArgumentException
    //   60	69	304	finally
    //   84	137	304	finally
    //   220	231	524	finally
    //   231	261	524	finally
    //   266	289	524	finally
    //   357	385	534	finally
    //   390	409	534	finally
    //   453	463	629	finally
    //   463	490	629	finally
    //   494	515	629	finally
  }
  
  private void showTextAsBarcode(String paramString)
  {
    Log.i(TAG, "Showing text as barcode: " + paramString);
    if (paramString == null) {
      return;
    }
    Intent localIntent = new Intent("com.google.zxing.client.android.ENCODE");
    localIntent.addFlags(524288);
    localIntent.putExtra("ENCODE_TYPE", "TEXT_TYPE");
    localIntent.putExtra("ENCODE_DATA", paramString);
    localIntent.putExtra("ENCODE_FORMAT", BarcodeFormat.QR_CODE.toString());
    startActivity(localIntent);
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if (paramInt2 == -1) {}
    switch (paramInt1)
    {
    default: 
      return;
    case 0: 
    case 2: 
      showTextAsBarcode(paramIntent.getStringExtra("url"));
      return;
    }
    showContactAsBarcode(paramIntent.getData());
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    fakeR = new FakeR(this);
    setContentView(fakeR.getId("layout", "share"));
    findViewById(fakeR.getId("id", "share_contact_button")).setOnClickListener(contactListener);
    findViewById(fakeR.getId("id", "share_bookmark_button")).setOnClickListener(bookmarkListener);
    findViewById(fakeR.getId("id", "share_app_button")).setOnClickListener(appListener);
    clipboardButton = ((Button)findViewById(fakeR.getId("id", "share_clipboard_button")));
    clipboardButton.setOnClickListener(clipboardListener);
    findViewById(fakeR.getId("id", "share_text_view")).setOnKeyListener(textListener);
  }
  
  protected void onResume()
  {
    super.onResume();
    ClipboardManager localClipboardManager = (ClipboardManager)getSystemService("clipboard");
    clipboardButton.setEnabled(localClipboardManager.hasText());
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.client.android.share.ShareActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */