package com.pocketools.currency;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.util.Log;
import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;

public class URLFetcher {
    public static Bitmap getBitmap(String url) {
        Bitmap bitmap = null;
        try {
            return BitmapFactory.decodeStream(new URL(url).openStream());
        } catch (MalformedURLException e) {
            Log.e("Currency Converter", "MalformedURLException");
            return bitmap;
        } catch (IOException e2) {
            Log.e("Currency Converter", "IOException");
            return bitmap;
        } catch (Exception e3) {
            Log.e("Currency Converter", "Exception");
            return bitmap;
        }
    }

    public static String getString(String url) {
        String str = null;
        try {
            URL http_url = new URL(url);
            http_url.openConnection();
            BufferedInputStream bis = new BufferedInputStream(http_url.openStream());
            ByteArrayOutputStream buf = new ByteArrayOutputStream();
            int result = bis.read();
            while (result != -1) {
                buf.write((byte) result);
                result = bis.read();
            }
            return buf.toString();
        } catch (MalformedURLException e) {
            Log.e("Currency Converter", "MalformedURLException");
            return str;
        } catch (IOException e2) {
            Log.e("Currency Converter", "IOException");
            return str;
        } catch (Exception e3) {
            Log.e("Currency Converter", "Exception");
            return str;
        }
    }
}