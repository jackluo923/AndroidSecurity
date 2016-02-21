package com.inmobi.re.controller.util;

import android.content.Context;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.net.Uri;
import com.inmobi.commons.internal.Base64;
import com.inmobi.commons.internal.Log;
import com.inmobi.re.configs.Initializer;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.io.ByteArrayOutputStream;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public class ImageProcessing {
    public static String convertMediaUriToPath(Uri uri, Context context) {
        Cursor query = context.getContentResolver().query(uri, new String[]{"_data"}, null, null, null);
        int columnIndexOrThrow = query.getColumnIndexOrThrow("_data");
        query.moveToFirst();
        String string = query.getString(columnIndexOrThrow);
        query.close();
        return string;
    }

    public static String getBase64EncodedImage(Bitmap bitmap, Context context) {
        OutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        bitmap.compress(CompressFormat.JPEG, getDefaultImgQuality(context), byteArrayOutputStream);
        return Base64.encodeToString(byteArrayOutputStream.toByteArray(), GoogleScorer.CLIENT_PLUS);
    }

    public static Bitmap getCompressedBitmap(String str, Context context) {
        Bitmap bitmap = null;
        try {
            Bitmap createScaledBitmap;
            int defaultImgHeight = getDefaultImgHeight(context) * getDefaultImgWidth(context);
            InputStream fileInputStream = new FileInputStream(str);
            Options options = new Options();
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeStream(fileInputStream, null, options);
            fileInputStream.close();
            int i = 1;
            while (((double) (options.outWidth * options.outHeight)) * (1.0d / Math.pow((double) i, 2.0d)) > ((double) defaultImgHeight)) {
                i++;
            }
            InputStream fileInputStream2 = new FileInputStream(str);
            if (i > 1) {
                i--;
                Options options2 = new Options();
                options2.inSampleSize = i;
                Bitmap decodeStream = BitmapFactory.decodeStream(fileInputStream2, null, options2);
                i = decodeStream.getHeight();
                int width = decodeStream.getWidth();
                double sqrt = Math.sqrt(((double) defaultImgHeight) / (((double) width) / ((double) i)));
                createScaledBitmap = Bitmap.createScaledBitmap(decodeStream, (int) ((sqrt / ((double) i)) * ((double) width)), (int) sqrt, true);
                decodeStream.recycle();
                System.gc();
            } else {
                createScaledBitmap = BitmapFactory.decodeStream(fileInputStream2);
            }
            fileInputStream2.close();
            Log.debug(Constants.RENDERING_LOG_TAG, "bitmap size - width: " + createScaledBitmap.getWidth() + ", height: " + createScaledBitmap.getHeight());
            return createScaledBitmap;
        } catch (IOException e) {
            Throwable th = e;
            Log.debug(Constants.RENDERING_LOG_TAG, th.getMessage(), th);
            return bitmap;
        }
    }

    public static int getDefaultImgHeight(Context context) {
        return Initializer.getConfigParams().getPicHeight();
    }

    public static int getDefaultImgQuality(Context context) {
        return Initializer.getConfigParams().getPicQuality();
    }

    public static int getDefaultImgWidth(Context context) {
        return Initializer.getConfigParams().getPicWidth();
    }
}