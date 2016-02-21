package com.facebook.ads.internal;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.AsyncTask;
import android.util.Log;
import android.widget.ImageView;
import java.net.URL;

public class DownloadImageTask extends AsyncTask {
    private static final String TAG;
    private final ImageView imageView;

    static {
        TAG = DownloadImageTask.class.getSimpleName();
    }

    public DownloadImageTask(ImageView imageView) {
        this.imageView = imageView;
    }

    protected Bitmap doInBackground(String... strArr) {
        String str = strArr[0];
        Bitmap bitmap = null;
        try {
            return BitmapFactory.decodeStream(new URL(str).openStream());
        } catch (Exception e) {
            Log.e(TAG, "Error downloading image: " + str, e);
            return bitmap;
        }
    }

    protected void onPostExecute(Bitmap bitmap) {
        this.imageView.setImageBitmap(bitmap);
    }
}