package com.admarvel.android.nativeads;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.AsyncTask;
import android.widget.ImageView;
import com.admarvel.android.util.Logging;
import java.lang.ref.WeakReference;
import java.net.URL;

public class AdMarvelNativeImage {
    private int height;
    private String imageUrl;
    private int width;

    private class a extends AsyncTask {
        private final ImageView b;
        private final WeakReference c;

        public a(ImageView imageView) {
            this.b = imageView;
            this.c = new WeakReference(imageView);
        }

        protected Bitmap a_(String... strArr) {
            String str = strArr[0];
            Bitmap bitmap = null;
            try {
                return BitmapFactory.decodeStream(new URL(str).openStream());
            } catch (Exception e) {
                Logging.log("Error downloading image: " + str + " " + e);
                return bitmap;
            }
        }

        protected void a_(Bitmap bitmap) {
            ((ImageView) this.c.get()).setImageBitmap(bitmap);
        }

        protected /* synthetic */ Object doInBackground(Object[] objArr) {
            return a((String[]) objArr);
        }

        protected /* synthetic */ void onPostExecute(Object obj) {
            a((Bitmap) obj);
        }
    }

    public void downloadAndDisplayImage(ImageView imageView) {
        new a(imageView).execute(new String[]{getImageUrl()});
    }

    public int getHeight() {
        return this.height;
    }

    public String getImageUrl() {
        return this.imageUrl;
    }

    public int getWidth() {
        return this.width;
    }

    public void setHeight(int i) {
        this.height = i;
    }

    public void setImageUrl(String str) {
        this.imageUrl = str;
    }

    public void setWidth(int i) {
        this.width = i;
    }
}