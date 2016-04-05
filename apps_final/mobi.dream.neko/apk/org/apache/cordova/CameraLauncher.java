package org.apache.cordova;

import android.app.Activity;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Intent;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.graphics.Matrix;
import android.media.MediaScannerConnection;
import android.media.MediaScannerConnection.MediaScannerConnectionClient;
import android.net.Uri;
import android.os.Environment;
import android.provider.MediaStore.Images.Media;
import android.util.Base64;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.OutputStream;
import org.apache.cordova.api.CallbackContext;
import org.apache.cordova.api.CordovaInterface;
import org.apache.cordova.api.CordovaPlugin;
import org.apache.cordova.api.LOG;
import org.apache.cordova.api.PluginResult;
import org.apache.cordova.api.PluginResult.Status;
import org.json.JSONArray;
import org.json.JSONException;

public class CameraLauncher
  extends CordovaPlugin
  implements MediaScannerConnection.MediaScannerConnectionClient
{
  private static final int ALLMEDIA = 2;
  private static final int CAMERA = 1;
  private static final int DATA_URL = 0;
  private static final int FILE_URI = 1;
  private static final String GET_All = "Get All";
  private static final String GET_PICTURE = "Get Picture";
  private static final String GET_VIDEO = "Get Video";
  private static final int JPEG = 0;
  private static final String LOG_TAG = "CameraLauncher";
  private static final int NATIVE_URI = 2;
  private static final int PHOTOLIBRARY = 0;
  private static final int PICTURE = 0;
  private static final int PNG = 1;
  private static final int SAVEDPHOTOALBUM = 2;
  private static final int VIDEO = 1;
  public CallbackContext callbackContext;
  private MediaScannerConnection conn;
  private boolean correctOrientation;
  private int encodingType;
  private Uri imageUri;
  private int mQuality;
  private int mediaType;
  private int numPics;
  private boolean saveToPhotoAlbum;
  private Uri scanMe;
  private int targetHeight;
  private int targetWidth;
  
  public static int calculateSampleSize(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (paramInt1 / paramInt2 > paramInt3 / paramInt4) {
      return paramInt1 / paramInt3;
    }
    return paramInt2 / paramInt4;
  }
  
  private void checkForDuplicateImage(int paramInt)
  {
    int j = 1;
    Uri localUri = whichContentStore();
    Cursor localCursor = queryImgDB(localUri);
    int k = localCursor.getCount();
    int i = j;
    if (paramInt == 1)
    {
      i = j;
      if (saveToPhotoAlbum) {
        i = 2;
      }
    }
    if (k - numPics == i)
    {
      localCursor.moveToLast();
      j = Integer.valueOf(localCursor.getString(localCursor.getColumnIndex("_id"))).intValue();
      paramInt = j;
      if (i == 2) {
        paramInt = j - 1;
      }
      localUri = Uri.parse(localUri + "/" + paramInt);
      cordova.getActivity().getContentResolver().delete(localUri, null, null);
      localCursor.close();
    }
  }
  
  private void cleanup(int paramInt, Uri paramUri1, Uri paramUri2, Bitmap paramBitmap)
  {
    if (paramBitmap != null) {
      paramBitmap.recycle();
    }
    new File(FileHelper.stripFileProtocol(paramUri1.toString())).delete();
    checkForDuplicateImage(paramInt);
    if ((saveToPhotoAlbum) && (paramUri2 != null)) {
      scanForGallery(paramUri2);
    }
    System.gc();
  }
  
  private File createCaptureFile(int paramInt)
  {
    if (paramInt == 0) {
      return new File(getTempDirectoryPath(), ".Pic.jpg");
    }
    if (paramInt == 1) {
      return new File(getTempDirectoryPath(), ".Pic.png");
    }
    throw new IllegalArgumentException("Invalid Encoding Type: " + paramInt);
  }
  
  private int getImageOrientation(Uri paramUri)
  {
    paramUri = cordova.getActivity().getContentResolver().query(paramUri, new String[] { "orientation" }, null, null, null);
    int i = 0;
    if (paramUri != null)
    {
      paramUri.moveToPosition(0);
      i = paramUri.getInt(0);
      paramUri.close();
    }
    return i;
  }
  
  private Bitmap getRotatedBitmap(int paramInt, Bitmap paramBitmap, ExifHelper paramExifHelper)
  {
    Matrix localMatrix = new Matrix();
    if (paramInt == 180) {
      localMatrix.setRotate(paramInt);
    }
    for (;;)
    {
      paramBitmap = Bitmap.createBitmap(paramBitmap, 0, 0, paramBitmap.getWidth(), paramBitmap.getHeight(), localMatrix, true);
      paramExifHelper.resetOrientation();
      return paramBitmap;
      localMatrix.setRotate(paramInt, paramBitmap.getWidth() / 2.0F, paramBitmap.getHeight() / 2.0F);
    }
  }
  
  private Bitmap getScaledBitmap(String paramString)
    throws IOException
  {
    Object localObject2 = null;
    Object localObject1;
    if ((targetWidth <= 0) && (targetHeight <= 0)) {
      localObject1 = BitmapFactory.decodeStream(FileHelper.getInputStreamFromUriString(paramString, cordova));
    }
    int[] arrayOfInt;
    do
    {
      BitmapFactory.Options localOptions;
      do
      {
        do
        {
          return (Bitmap)localObject1;
          localOptions = new BitmapFactory.Options();
          inJustDecodeBounds = true;
          BitmapFactory.decodeStream(FileHelper.getInputStreamFromUriString(paramString, cordova), null, localOptions);
          localObject1 = localObject2;
        } while (outWidth == 0);
        localObject1 = localObject2;
      } while (outHeight == 0);
      arrayOfInt = calculateAspectRatio(outWidth, outHeight);
      inJustDecodeBounds = false;
      inSampleSize = calculateSampleSize(outWidth, outHeight, targetWidth, targetHeight);
      paramString = BitmapFactory.decodeStream(FileHelper.getInputStreamFromUriString(paramString, cordova), null, localOptions);
      localObject1 = localObject2;
    } while (paramString == null);
    return Bitmap.createScaledBitmap(paramString, arrayOfInt[0], arrayOfInt[1], true);
  }
  
  private String getTempDirectoryPath()
  {
    if (Environment.getExternalStorageState().equals("mounted")) {}
    for (File localFile = new File(Environment.getExternalStorageDirectory().getAbsolutePath() + "/Android/data/" + cordova.getActivity().getPackageName() + "/cache/");; localFile = cordova.getActivity().getCacheDir())
    {
      localFile.mkdirs();
      return localFile.getAbsolutePath();
    }
  }
  
  private Uri getUriFromMediaStore()
  {
    Object localObject = new ContentValues();
    ((ContentValues)localObject).put("mime_type", "image/jpeg");
    try
    {
      Uri localUri = cordova.getActivity().getContentResolver().insert(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, (ContentValues)localObject);
      return localUri;
    }
    catch (UnsupportedOperationException localUnsupportedOperationException2)
    {
      LOG.d("CameraLauncher", "Can't write to external media storage.");
      try
      {
        localObject = cordova.getActivity().getContentResolver().insert(MediaStore.Images.Media.INTERNAL_CONTENT_URI, (ContentValues)localObject);
        return (Uri)localObject;
      }
      catch (UnsupportedOperationException localUnsupportedOperationException1)
      {
        LOG.d("CameraLauncher", "Can't write to internal media storage.");
      }
    }
    return null;
  }
  
  private Cursor queryImgDB(Uri paramUri)
  {
    return cordova.getActivity().getContentResolver().query(paramUri, new String[] { "_id" }, null, null, null);
  }
  
  private void scanForGallery(Uri paramUri)
  {
    scanMe = paramUri;
    if (conn != null) {
      conn.disconnect();
    }
    conn = new MediaScannerConnection(cordova.getActivity().getApplicationContext(), this);
    conn.connect();
  }
  
  private Uri whichContentStore()
  {
    if (Environment.getExternalStorageState().equals("mounted")) {
      return MediaStore.Images.Media.EXTERNAL_CONTENT_URI;
    }
    return MediaStore.Images.Media.INTERNAL_CONTENT_URI;
  }
  
  private void writeUncompressedImage(Uri paramUri)
    throws FileNotFoundException, IOException
  {
    FileInputStream localFileInputStream = new FileInputStream(FileHelper.stripFileProtocol(imageUri.toString()));
    paramUri = cordova.getActivity().getContentResolver().openOutputStream(paramUri);
    byte[] arrayOfByte = new byte['က'];
    for (;;)
    {
      int i = localFileInputStream.read(arrayOfByte);
      if (i == -1) {
        break;
      }
      paramUri.write(arrayOfByte, 0, i);
    }
    paramUri.flush();
    paramUri.close();
    localFileInputStream.close();
  }
  
  public int[] calculateAspectRatio(int paramInt1, int paramInt2)
  {
    int j = targetWidth;
    int k = targetHeight;
    int i;
    if ((j <= 0) && (k <= 0))
    {
      j = paramInt1;
      i = paramInt2;
    }
    for (;;)
    {
      return new int[] { j, i };
      if ((j > 0) && (k <= 0))
      {
        i = j * paramInt2 / paramInt1;
      }
      else if ((j <= 0) && (k > 0))
      {
        j = k * paramInt1 / paramInt2;
        i = k;
      }
      else
      {
        double d1 = j / k;
        double d2 = paramInt1 / paramInt2;
        if (d2 > d1)
        {
          i = j * paramInt2 / paramInt1;
        }
        else
        {
          i = k;
          if (d2 < d1)
          {
            j = k * paramInt1 / paramInt2;
            i = k;
          }
        }
      }
    }
  }
  
  public boolean execute(String paramString, JSONArray paramJSONArray, CallbackContext paramCallbackContext)
    throws JSONException
  {
    callbackContext = paramCallbackContext;
    if (paramString.equals("takePicture"))
    {
      saveToPhotoAlbum = false;
      targetHeight = 0;
      targetWidth = 0;
      encodingType = 0;
      mediaType = 0;
      mQuality = 80;
      mQuality = paramJSONArray.getInt(0);
      int i = paramJSONArray.getInt(1);
      int j = paramJSONArray.getInt(2);
      targetWidth = paramJSONArray.getInt(3);
      targetHeight = paramJSONArray.getInt(4);
      encodingType = paramJSONArray.getInt(5);
      mediaType = paramJSONArray.getInt(6);
      correctOrientation = paramJSONArray.getBoolean(8);
      saveToPhotoAlbum = paramJSONArray.getBoolean(9);
      if (targetWidth < 1) {
        targetWidth = -1;
      }
      if (targetHeight < 1) {
        targetHeight = -1;
      }
      if (j == 1) {}
      for (;;)
      {
        try
        {
          takePicture(i, encodingType);
          paramString = new PluginResult(PluginResult.Status.NO_RESULT);
          paramString.setKeepCallback(true);
          paramCallbackContext.sendPluginResult(paramString);
          return true;
        }
        catch (IllegalArgumentException paramString)
        {
          paramCallbackContext.error("Illegal Argument Exception");
          paramCallbackContext.sendPluginResult(new PluginResult(PluginResult.Status.ERROR));
          return true;
        }
        if ((j == 0) || (j == 2)) {
          getImage(j, i);
        }
      }
    }
    return false;
  }
  
  public void failPicture(String paramString)
  {
    callbackContext.error(paramString);
  }
  
  public void getImage(int paramInt1, int paramInt2)
  {
    Intent localIntent = new Intent();
    String str = "Get Picture";
    if (mediaType == 0) {
      localIntent.setType("image/*");
    }
    for (;;)
    {
      localIntent.setAction("android.intent.action.GET_CONTENT");
      localIntent.addCategory("android.intent.category.OPENABLE");
      if (cordova != null) {
        cordova.startActivityForResult(this, Intent.createChooser(localIntent, new String(str)), (paramInt1 + 1) * 16 + paramInt2 + 1);
      }
      return;
      if (mediaType == 1)
      {
        localIntent.setType("video/*");
        str = "Get Video";
      }
      else if (mediaType == 2)
      {
        localIntent.setType("*/*");
        str = "Get All";
      }
    }
  }
  
  /* Error */
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    // Byte code:
    //   0: iload_1
    //   1: bipush 16
    //   3: idiv
    //   4: iconst_1
    //   5: isub
    //   6: istore 10
    //   8: iload_1
    //   9: bipush 16
    //   11: irem
    //   12: iconst_1
    //   13: isub
    //   14: istore 9
    //   16: iconst_0
    //   17: istore 8
    //   19: iload 10
    //   21: iconst_1
    //   22: if_icmpne +535 -> 557
    //   25: iload_2
    //   26: iconst_m1
    //   27: if_icmpne +510 -> 537
    //   30: new 238	org/apache/cordova/ExifHelper
    //   33: dup
    //   34: invokespecial 497	org/apache/cordova/ExifHelper:<init>	()V
    //   37: astore 7
    //   39: iload 8
    //   41: istore_1
    //   42: aload_0
    //   43: getfield 412	org/apache/cordova/CameraLauncher:encodingType	I
    //   46: ifne +42 -> 88
    //   49: aload 7
    //   51: new 102	java/lang/StringBuilder
    //   54: dup
    //   55: invokespecial 103	java/lang/StringBuilder:<init>	()V
    //   58: aload_0
    //   59: invokespecial 187	org/apache/cordova/CameraLauncher:getTempDirectoryPath	()Ljava/lang/String;
    //   62: invokevirtual 112	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   65: ldc_w 499
    //   68: invokevirtual 112	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   71: invokevirtual 119	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   74: invokevirtual 502	org/apache/cordova/ExifHelper:createInFile	(Ljava/lang/String;)V
    //   77: aload 7
    //   79: invokevirtual 505	org/apache/cordova/ExifHelper:readExifData	()V
    //   82: aload 7
    //   84: invokevirtual 508	org/apache/cordova/ExifHelper:getOrientation	()I
    //   87: istore_1
    //   88: aconst_null
    //   89: astore 6
    //   91: aconst_null
    //   92: astore 4
    //   94: aconst_null
    //   95: astore 5
    //   97: iload 9
    //   99: ifne +987 -> 1086
    //   102: aload_0
    //   103: aload_0
    //   104: getfield 382	org/apache/cordova/CameraLauncher:imageUri	Landroid/net/Uri;
    //   107: invokevirtual 160	android/net/Uri:toString	()Ljava/lang/String;
    //   110: invokestatic 166	org/apache/cordova/FileHelper:stripFileProtocol	(Ljava/lang/String;)Ljava/lang/String;
    //   113: invokespecial 510	org/apache/cordova/CameraLauncher:getScaledBitmap	(Ljava/lang/String;)Landroid/graphics/Bitmap;
    //   116: astore 6
    //   118: aload 6
    //   120: astore 4
    //   122: aload 6
    //   124: ifnonnull +18 -> 142
    //   127: aload_3
    //   128: invokevirtual 514	android/content/Intent:getExtras	()Landroid/os/Bundle;
    //   131: ldc_w 516
    //   134: invokevirtual 522	android/os/Bundle:get	(Ljava/lang/String;)Ljava/lang/Object;
    //   137: checkcast 154	android/graphics/Bitmap
    //   140: astore 4
    //   142: aload 4
    //   144: ifnonnull +46 -> 190
    //   147: ldc 28
    //   149: ldc_w 524
    //   152: invokestatic 529	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   155: pop
    //   156: aload_0
    //   157: ldc_w 531
    //   160: invokevirtual 533	org/apache/cordova/CameraLauncher:failPicture	(Ljava/lang/String;)V
    //   163: return
    //   164: astore 4
    //   166: aload 4
    //   168: invokevirtual 536	java/io/IOException:printStackTrace	()V
    //   171: iload 8
    //   173: istore_1
    //   174: goto -86 -> 88
    //   177: astore_3
    //   178: aload_3
    //   179: invokevirtual 536	java/io/IOException:printStackTrace	()V
    //   182: aload_0
    //   183: ldc_w 538
    //   186: invokevirtual 533	org/apache/cordova/CameraLauncher:failPicture	(Ljava/lang/String;)V
    //   189: return
    //   190: aload 4
    //   192: astore_3
    //   193: iload_1
    //   194: ifeq +23 -> 217
    //   197: aload 4
    //   199: astore_3
    //   200: aload_0
    //   201: getfield 424	org/apache/cordova/CameraLauncher:correctOrientation	Z
    //   204: ifeq +13 -> 217
    //   207: aload_0
    //   208: iload_1
    //   209: aload 4
    //   211: aload 7
    //   213: invokespecial 540	org/apache/cordova/CameraLauncher:getRotatedBitmap	(ILandroid/graphics/Bitmap;Lorg/apache/cordova/ExifHelper;)Landroid/graphics/Bitmap;
    //   216: astore_3
    //   217: aload_0
    //   218: aload_3
    //   219: invokevirtual 544	org/apache/cordova/CameraLauncher:processPicture	(Landroid/graphics/Bitmap;)V
    //   222: aload_0
    //   223: iconst_0
    //   224: invokespecial 173	org/apache/cordova/CameraLauncher:checkForDuplicateImage	(I)V
    //   227: aload_3
    //   228: astore 4
    //   230: aload_0
    //   231: iconst_1
    //   232: aload_0
    //   233: getfield 382	org/apache/cordova/CameraLauncher:imageUri	Landroid/net/Uri;
    //   236: aload 5
    //   238: aload 4
    //   240: invokespecial 546	org/apache/cordova/CameraLauncher:cleanup	(ILandroid/net/Uri;Landroid/net/Uri;Landroid/graphics/Bitmap;)V
    //   243: return
    //   244: aload_0
    //   245: getfield 75	org/apache/cordova/CameraLauncher:saveToPhotoAlbum	Z
    //   248: ifeq +109 -> 357
    //   251: new 159	java/io/File
    //   254: dup
    //   255: aload_0
    //   256: invokespecial 548	org/apache/cordova/CameraLauncher:getUriFromMediaStore	()Landroid/net/Uri;
    //   259: aload_0
    //   260: getfield 129	org/apache/cordova/CameraLauncher:cordova	Lorg/apache/cordova/api/CordovaInterface;
    //   263: invokestatic 552	org/apache/cordova/FileHelper:getRealPath	(Landroid/net/Uri;Lorg/apache/cordova/api/CordovaInterface;)Ljava/lang/String;
    //   266: invokespecial 169	java/io/File:<init>	(Ljava/lang/String;)V
    //   269: invokestatic 556	android/net/Uri:fromFile	(Ljava/io/File;)Landroid/net/Uri;
    //   272: astore_3
    //   273: aload_3
    //   274: ifnonnull +10 -> 284
    //   277: aload_0
    //   278: ldc_w 558
    //   281: invokevirtual 533	org/apache/cordova/CameraLauncher:failPicture	(Ljava/lang/String;)V
    //   284: aload_0
    //   285: getfield 252	org/apache/cordova/CameraLauncher:targetHeight	I
    //   288: iconst_m1
    //   289: if_icmpne +108 -> 397
    //   292: aload_0
    //   293: getfield 250	org/apache/cordova/CameraLauncher:targetWidth	I
    //   296: iconst_m1
    //   297: if_icmpne +100 -> 397
    //   300: aload_0
    //   301: getfield 416	org/apache/cordova/CameraLauncher:mQuality	I
    //   304: bipush 100
    //   306: if_icmpne +91 -> 397
    //   309: aload_0
    //   310: getfield 424	org/apache/cordova/CameraLauncher:correctOrientation	Z
    //   313: ifne +84 -> 397
    //   316: aload_0
    //   317: aload_3
    //   318: invokespecial 560	org/apache/cordova/CameraLauncher:writeUncompressedImage	(Landroid/net/Uri;)V
    //   321: aload_0
    //   322: getfield 408	org/apache/cordova/CameraLauncher:callbackContext	Lorg/apache/cordova/api/CallbackContext;
    //   325: aload_3
    //   326: invokevirtual 160	android/net/Uri:toString	()Ljava/lang/String;
    //   329: invokevirtual 563	org/apache/cordova/api/CallbackContext:success	(Ljava/lang/String;)V
    //   332: aload 6
    //   334: astore 5
    //   336: aload_0
    //   337: getfield 408	org/apache/cordova/CameraLauncher:callbackContext	Lorg/apache/cordova/api/CallbackContext;
    //   340: aload_3
    //   341: invokevirtual 160	android/net/Uri:toString	()Ljava/lang/String;
    //   344: invokevirtual 563	org/apache/cordova/api/CallbackContext:success	(Ljava/lang/String;)V
    //   347: aload 5
    //   349: astore 4
    //   351: aload_3
    //   352: astore 5
    //   354: goto -124 -> 230
    //   357: new 159	java/io/File
    //   360: dup
    //   361: aload_0
    //   362: invokespecial 187	org/apache/cordova/CameraLauncher:getTempDirectoryPath	()Ljava/lang/String;
    //   365: new 102	java/lang/StringBuilder
    //   368: dup
    //   369: invokespecial 103	java/lang/StringBuilder:<init>	()V
    //   372: invokestatic 567	java/lang/System:currentTimeMillis	()J
    //   375: invokevirtual 570	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   378: ldc_w 572
    //   381: invokevirtual 112	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   384: invokevirtual 119	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   387: invokespecial 192	java/io/File:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   390: invokestatic 556	android/net/Uri:fromFile	(Ljava/io/File;)Landroid/net/Uri;
    //   393: astore_3
    //   394: goto -121 -> 273
    //   397: aload_0
    //   398: aload_0
    //   399: getfield 382	org/apache/cordova/CameraLauncher:imageUri	Landroid/net/Uri;
    //   402: invokevirtual 160	android/net/Uri:toString	()Ljava/lang/String;
    //   405: invokestatic 166	org/apache/cordova/FileHelper:stripFileProtocol	(Ljava/lang/String;)Ljava/lang/String;
    //   408: invokespecial 510	org/apache/cordova/CameraLauncher:getScaledBitmap	(Ljava/lang/String;)Landroid/graphics/Bitmap;
    //   411: astore 5
    //   413: aload 5
    //   415: astore 4
    //   417: iload_1
    //   418: ifeq +25 -> 443
    //   421: aload 5
    //   423: astore 4
    //   425: aload_0
    //   426: getfield 424	org/apache/cordova/CameraLauncher:correctOrientation	Z
    //   429: ifeq +14 -> 443
    //   432: aload_0
    //   433: iload_1
    //   434: aload 5
    //   436: aload 7
    //   438: invokespecial 540	org/apache/cordova/CameraLauncher:getRotatedBitmap	(ILandroid/graphics/Bitmap;Lorg/apache/cordova/ExifHelper;)Landroid/graphics/Bitmap;
    //   441: astore 4
    //   443: aload_0
    //   444: getfield 129	org/apache/cordova/CameraLauncher:cordova	Lorg/apache/cordova/api/CordovaInterface;
    //   447: invokeinterface 135 1 0
    //   452: invokevirtual 141	android/app/Activity:getContentResolver	()Landroid/content/ContentResolver;
    //   455: aload_3
    //   456: invokevirtual 387	android/content/ContentResolver:openOutputStream	(Landroid/net/Uri;)Ljava/io/OutputStream;
    //   459: astore 5
    //   461: aload 4
    //   463: getstatic 577	android/graphics/Bitmap$CompressFormat:JPEG	Landroid/graphics/Bitmap$CompressFormat;
    //   466: aload_0
    //   467: getfield 416	org/apache/cordova/CameraLauncher:mQuality	I
    //   470: aload 5
    //   472: invokevirtual 581	android/graphics/Bitmap:compress	(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    //   475: pop
    //   476: aload 5
    //   478: invokevirtual 401	java/io/OutputStream:close	()V
    //   481: aload 4
    //   483: astore 5
    //   485: aload_0
    //   486: getfield 412	org/apache/cordova/CameraLauncher:encodingType	I
    //   489: ifne -153 -> 336
    //   492: aload_0
    //   493: getfield 75	org/apache/cordova/CameraLauncher:saveToPhotoAlbum	Z
    //   496: ifeq +32 -> 528
    //   499: aload_3
    //   500: aload_0
    //   501: getfield 129	org/apache/cordova/CameraLauncher:cordova	Lorg/apache/cordova/api/CordovaInterface;
    //   504: invokestatic 552	org/apache/cordova/FileHelper:getRealPath	(Landroid/net/Uri;Lorg/apache/cordova/api/CordovaInterface;)Ljava/lang/String;
    //   507: astore 5
    //   509: aload 7
    //   511: aload 5
    //   513: invokevirtual 584	org/apache/cordova/ExifHelper:createOutFile	(Ljava/lang/String;)V
    //   516: aload 7
    //   518: invokevirtual 587	org/apache/cordova/ExifHelper:writeExifData	()V
    //   521: aload 4
    //   523: astore 5
    //   525: goto -189 -> 336
    //   528: aload_3
    //   529: invokevirtual 590	android/net/Uri:getPath	()Ljava/lang/String;
    //   532: astore 5
    //   534: goto -25 -> 509
    //   537: iload_2
    //   538: ifne +11 -> 549
    //   541: aload_0
    //   542: ldc_w 592
    //   545: invokevirtual 533	org/apache/cordova/CameraLauncher:failPicture	(Ljava/lang/String;)V
    //   548: return
    //   549: aload_0
    //   550: ldc_w 594
    //   553: invokevirtual 533	org/apache/cordova/CameraLauncher:failPicture	(Ljava/lang/String;)V
    //   556: return
    //   557: iload 10
    //   559: ifeq +9 -> 568
    //   562: iload 10
    //   564: iconst_2
    //   565: if_icmpne +520 -> 1085
    //   568: iload_2
    //   569: iconst_m1
    //   570: if_icmpne +496 -> 1066
    //   573: aload_3
    //   574: invokevirtual 597	android/content/Intent:getData	()Landroid/net/Uri;
    //   577: astore 5
    //   579: aload_0
    //   580: getfield 414	org/apache/cordova/CameraLauncher:mediaType	I
    //   583: ifeq +16 -> 599
    //   586: aload_0
    //   587: getfield 408	org/apache/cordova/CameraLauncher:callbackContext	Lorg/apache/cordova/api/CallbackContext;
    //   590: aload 5
    //   592: invokevirtual 160	android/net/Uri:toString	()Ljava/lang/String;
    //   595: invokevirtual 563	org/apache/cordova/api/CallbackContext:success	(Ljava/lang/String;)V
    //   598: return
    //   599: aload_0
    //   600: getfield 252	org/apache/cordova/CameraLauncher:targetHeight	I
    //   603: iconst_m1
    //   604: if_icmpne +43 -> 647
    //   607: aload_0
    //   608: getfield 250	org/apache/cordova/CameraLauncher:targetWidth	I
    //   611: iconst_m1
    //   612: if_icmpne +35 -> 647
    //   615: iload 9
    //   617: iconst_1
    //   618: if_icmpeq +9 -> 627
    //   621: iload 9
    //   623: iconst_2
    //   624: if_icmpne +23 -> 647
    //   627: aload_0
    //   628: getfield 424	org/apache/cordova/CameraLauncher:correctOrientation	Z
    //   631: ifne +16 -> 647
    //   634: aload_0
    //   635: getfield 408	org/apache/cordova/CameraLauncher:callbackContext	Lorg/apache/cordova/api/CallbackContext;
    //   638: aload 5
    //   640: invokevirtual 160	android/net/Uri:toString	()Ljava/lang/String;
    //   643: invokevirtual 563	org/apache/cordova/api/CallbackContext:success	(Ljava/lang/String;)V
    //   646: return
    //   647: aload 5
    //   649: invokevirtual 160	android/net/Uri:toString	()Ljava/lang/String;
    //   652: astore 4
    //   654: aload 4
    //   656: aload_0
    //   657: getfield 129	org/apache/cordova/CameraLauncher:cordova	Lorg/apache/cordova/api/CordovaInterface;
    //   660: invokestatic 601	org/apache/cordova/FileHelper:getMimeType	(Ljava/lang/String;Lorg/apache/cordova/api/CordovaInterface;)Ljava/lang/String;
    //   663: astore_3
    //   664: ldc_w 332
    //   667: aload_3
    //   668: invokevirtual 605	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   671: ifne +30 -> 701
    //   674: ldc_w 607
    //   677: aload_3
    //   678: invokevirtual 605	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   681: ifne +20 -> 701
    //   684: ldc 28
    //   686: ldc_w 524
    //   689: invokestatic 529	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   692: pop
    //   693: aload_0
    //   694: ldc_w 609
    //   697: invokevirtual 533	org/apache/cordova/CameraLauncher:failPicture	(Ljava/lang/String;)V
    //   700: return
    //   701: aconst_null
    //   702: astore_3
    //   703: aload_0
    //   704: aload 4
    //   706: invokespecial 510	org/apache/cordova/CameraLauncher:getScaledBitmap	(Ljava/lang/String;)Landroid/graphics/Bitmap;
    //   709: astore 4
    //   711: aload 4
    //   713: astore_3
    //   714: aload_3
    //   715: ifnonnull +30 -> 745
    //   718: ldc 28
    //   720: ldc_w 524
    //   723: invokestatic 529	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   726: pop
    //   727: aload_0
    //   728: ldc_w 531
    //   731: invokevirtual 533	org/apache/cordova/CameraLauncher:failPicture	(Ljava/lang/String;)V
    //   734: return
    //   735: astore 4
    //   737: aload 4
    //   739: invokevirtual 536	java/io/IOException:printStackTrace	()V
    //   742: goto -28 -> 714
    //   745: aload_3
    //   746: astore 4
    //   748: aload_0
    //   749: getfield 424	org/apache/cordova/CameraLauncher:correctOrientation	Z
    //   752: ifeq +52 -> 804
    //   755: aload_0
    //   756: aload 5
    //   758: invokespecial 611	org/apache/cordova/CameraLauncher:getImageOrientation	(Landroid/net/Uri;)I
    //   761: istore_1
    //   762: aload_3
    //   763: astore 4
    //   765: iload_1
    //   766: ifeq +38 -> 804
    //   769: new 221	android/graphics/Matrix
    //   772: dup
    //   773: invokespecial 222	android/graphics/Matrix:<init>	()V
    //   776: astore 4
    //   778: aload 4
    //   780: iload_1
    //   781: i2f
    //   782: invokevirtual 226	android/graphics/Matrix:setRotate	(F)V
    //   785: aload_3
    //   786: iconst_0
    //   787: iconst_0
    //   788: aload_3
    //   789: invokevirtual 229	android/graphics/Bitmap:getWidth	()I
    //   792: aload_3
    //   793: invokevirtual 232	android/graphics/Bitmap:getHeight	()I
    //   796: aload 4
    //   798: iconst_1
    //   799: invokestatic 236	android/graphics/Bitmap:createBitmap	(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    //   802: astore 4
    //   804: iload 9
    //   806: ifne +23 -> 829
    //   809: aload_0
    //   810: aload 4
    //   812: invokevirtual 544	org/apache/cordova/CameraLauncher:processPicture	(Landroid/graphics/Bitmap;)V
    //   815: aload 4
    //   817: ifnull +8 -> 825
    //   820: aload 4
    //   822: invokevirtual 157	android/graphics/Bitmap:recycle	()V
    //   825: invokestatic 182	java/lang/System:gc	()V
    //   828: return
    //   829: iload 9
    //   831: iconst_1
    //   832: if_icmpeq +9 -> 841
    //   835: iload 9
    //   837: iconst_2
    //   838: if_icmpne -23 -> 815
    //   841: aload_0
    //   842: getfield 252	org/apache/cordova/CameraLauncher:targetHeight	I
    //   845: ifle +206 -> 1051
    //   848: aload_0
    //   849: getfield 250	org/apache/cordova/CameraLauncher:targetWidth	I
    //   852: ifle +199 -> 1051
    //   855: new 102	java/lang/StringBuilder
    //   858: dup
    //   859: invokespecial 103	java/lang/StringBuilder:<init>	()V
    //   862: aload_0
    //   863: invokespecial 187	org/apache/cordova/CameraLauncher:getTempDirectoryPath	()Ljava/lang/String;
    //   866: invokevirtual 112	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   869: ldc_w 613
    //   872: invokevirtual 112	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   875: invokevirtual 119	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   878: astore_3
    //   879: aload 5
    //   881: aload_0
    //   882: getfield 129	org/apache/cordova/CameraLauncher:cordova	Lorg/apache/cordova/api/CordovaInterface;
    //   885: invokestatic 552	org/apache/cordova/FileHelper:getRealPath	(Landroid/net/Uri;Lorg/apache/cordova/api/CordovaInterface;)Ljava/lang/String;
    //   888: astore 5
    //   890: new 238	org/apache/cordova/ExifHelper
    //   893: dup
    //   894: invokespecial 497	org/apache/cordova/ExifHelper:<init>	()V
    //   897: astore 6
    //   899: aload 5
    //   901: ifnull +30 -> 931
    //   904: aload_0
    //   905: getfield 412	org/apache/cordova/CameraLauncher:encodingType	I
    //   908: istore_1
    //   909: iload_1
    //   910: ifne +21 -> 931
    //   913: aload 6
    //   915: aload 5
    //   917: invokevirtual 502	org/apache/cordova/ExifHelper:createInFile	(Ljava/lang/String;)V
    //   920: aload 6
    //   922: invokevirtual 505	org/apache/cordova/ExifHelper:readExifData	()V
    //   925: aload 6
    //   927: invokevirtual 508	org/apache/cordova/ExifHelper:getOrientation	()I
    //   930: pop
    //   931: new 615	java/io/FileOutputStream
    //   934: dup
    //   935: aload_3
    //   936: invokespecial 616	java/io/FileOutputStream:<init>	(Ljava/lang/String;)V
    //   939: astore 7
    //   941: aload 4
    //   943: getstatic 577	android/graphics/Bitmap$CompressFormat:JPEG	Landroid/graphics/Bitmap$CompressFormat;
    //   946: aload_0
    //   947: getfield 416	org/apache/cordova/CameraLauncher:mQuality	I
    //   950: aload 7
    //   952: invokevirtual 581	android/graphics/Bitmap:compress	(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    //   955: pop
    //   956: aload 7
    //   958: invokevirtual 401	java/io/OutputStream:close	()V
    //   961: aload 5
    //   963: ifnull +21 -> 984
    //   966: aload_0
    //   967: getfield 412	org/apache/cordova/CameraLauncher:encodingType	I
    //   970: ifne +14 -> 984
    //   973: aload 6
    //   975: aload_3
    //   976: invokevirtual 584	org/apache/cordova/ExifHelper:createOutFile	(Ljava/lang/String;)V
    //   979: aload 6
    //   981: invokevirtual 587	org/apache/cordova/ExifHelper:writeExifData	()V
    //   984: aload_0
    //   985: getfield 408	org/apache/cordova/CameraLauncher:callbackContext	Lorg/apache/cordova/api/CallbackContext;
    //   988: new 102	java/lang/StringBuilder
    //   991: dup
    //   992: invokespecial 103	java/lang/StringBuilder:<init>	()V
    //   995: ldc_w 618
    //   998: invokevirtual 112	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1001: aload_3
    //   1002: invokevirtual 112	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1005: ldc_w 620
    //   1008: invokevirtual 112	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1011: invokestatic 567	java/lang/System:currentTimeMillis	()J
    //   1014: invokevirtual 570	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   1017: invokevirtual 119	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1020: invokevirtual 563	org/apache/cordova/api/CallbackContext:success	(Ljava/lang/String;)V
    //   1023: goto -208 -> 815
    //   1026: astore_3
    //   1027: aload_3
    //   1028: invokevirtual 621	java/lang/Exception:printStackTrace	()V
    //   1031: aload_0
    //   1032: ldc_w 623
    //   1035: invokevirtual 533	org/apache/cordova/CameraLauncher:failPicture	(Ljava/lang/String;)V
    //   1038: goto -223 -> 815
    //   1041: astore 7
    //   1043: aload 7
    //   1045: invokevirtual 536	java/io/IOException:printStackTrace	()V
    //   1048: goto -117 -> 931
    //   1051: aload_0
    //   1052: getfield 408	org/apache/cordova/CameraLauncher:callbackContext	Lorg/apache/cordova/api/CallbackContext;
    //   1055: aload 5
    //   1057: invokevirtual 160	android/net/Uri:toString	()Ljava/lang/String;
    //   1060: invokevirtual 563	org/apache/cordova/api/CallbackContext:success	(Ljava/lang/String;)V
    //   1063: goto -248 -> 815
    //   1066: iload_2
    //   1067: ifne +11 -> 1078
    //   1070: aload_0
    //   1071: ldc_w 625
    //   1074: invokevirtual 533	org/apache/cordova/CameraLauncher:failPicture	(Ljava/lang/String;)V
    //   1077: return
    //   1078: aload_0
    //   1079: ldc_w 627
    //   1082: invokevirtual 533	org/apache/cordova/CameraLauncher:failPicture	(Ljava/lang/String;)V
    //   1085: return
    //   1086: iload 9
    //   1088: iconst_1
    //   1089: if_icmpeq -845 -> 244
    //   1092: iload 9
    //   1094: iconst_2
    //   1095: if_icmpne -865 -> 230
    //   1098: goto -854 -> 244
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	1101	0	this	CameraLauncher
    //   0	1101	1	paramInt1	int
    //   0	1101	2	paramInt2	int
    //   0	1101	3	paramIntent	Intent
    //   92	51	4	localObject1	Object
    //   164	46	4	localIOException1	IOException
    //   228	484	4	localObject2	Object
    //   735	3	4	localIOException2	IOException
    //   746	196	4	localObject3	Object
    //   95	961	5	localObject4	Object
    //   89	891	6	localObject5	Object
    //   37	920	7	localObject6	Object
    //   1041	3	7	localIOException3	IOException
    //   17	155	8	i	int
    //   14	1082	9	j	int
    //   6	560	10	k	int
    // Exception table:
    //   from	to	target	type
    //   42	88	164	java/io/IOException
    //   30	39	177	java/io/IOException
    //   102	118	177	java/io/IOException
    //   127	142	177	java/io/IOException
    //   147	163	177	java/io/IOException
    //   166	171	177	java/io/IOException
    //   200	217	177	java/io/IOException
    //   217	227	177	java/io/IOException
    //   230	243	177	java/io/IOException
    //   244	273	177	java/io/IOException
    //   277	284	177	java/io/IOException
    //   284	332	177	java/io/IOException
    //   336	347	177	java/io/IOException
    //   357	394	177	java/io/IOException
    //   397	413	177	java/io/IOException
    //   425	443	177	java/io/IOException
    //   443	481	177	java/io/IOException
    //   485	509	177	java/io/IOException
    //   509	521	177	java/io/IOException
    //   528	534	177	java/io/IOException
    //   703	711	735	java/io/IOException
    //   855	899	1026	java/lang/Exception
    //   904	909	1026	java/lang/Exception
    //   913	931	1026	java/lang/Exception
    //   931	961	1026	java/lang/Exception
    //   966	984	1026	java/lang/Exception
    //   984	1023	1026	java/lang/Exception
    //   1043	1048	1026	java/lang/Exception
    //   913	931	1041	java/io/IOException
  }
  
  public void onMediaScannerConnected()
  {
    try
    {
      conn.scanFile(scanMe.toString(), "image/*");
      return;
    }
    catch (IllegalStateException localIllegalStateException)
    {
      LOG.e("CameraLauncher", "Can't scan file in MediaScanner after taking picture");
    }
  }
  
  public void onScanCompleted(String paramString, Uri paramUri)
  {
    conn.disconnect();
  }
  
  public void processPicture(Bitmap paramBitmap)
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    try
    {
      if (paramBitmap.compress(Bitmap.CompressFormat.JPEG, mQuality, localByteArrayOutputStream))
      {
        paramBitmap = new String(Base64.encode(localByteArrayOutputStream.toByteArray(), 2));
        callbackContext.success(paramBitmap);
      }
      return;
    }
    catch (Exception paramBitmap)
    {
      for (;;)
      {
        failPicture("Error compressing image.");
      }
    }
  }
  
  public void takePicture(int paramInt1, int paramInt2)
  {
    numPics = queryImgDB(whichContentStore()).getCount();
    Intent localIntent = new Intent("android.media.action.IMAGE_CAPTURE");
    File localFile = createCaptureFile(paramInt2);
    localIntent.putExtra("output", Uri.fromFile(localFile));
    imageUri = Uri.fromFile(localFile);
    if (cordova != null) {
      cordova.startActivityForResult(this, localIntent, paramInt1 + 32 + 1);
    }
  }
}

/* Location:
 * Qualified Name:     org.apache.cordova.CameraLauncher
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */