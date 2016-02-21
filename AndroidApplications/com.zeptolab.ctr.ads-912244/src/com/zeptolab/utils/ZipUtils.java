package com.zeptolab.utils;

import android.app.Activity;
import android.app.Dialog;
import android.content.res.AssetManager;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.util.Log;
import android.view.View;
import android.widget.ImageView;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;

public class ZipUtils {
    private static final String TAG = "ZipUtils";
    private static final String internal = "internal://";
    private static boolean m_isLoggingEnabled;
    private Activity m_activity;
    private AssetManager m_assetManager;

    public class DebugImageRunnable implements Runnable {
        private final Bitmap m_bitmap;

        public DebugImageRunnable(Bitmap bitmap) {
            this.m_bitmap = bitmap;
        }

        public void run() {
            Dialog dialog = new Dialog(ZipUtils.this.m_activity);
            View imageView = new ImageView(ZipUtils.this.m_activity);
            imageView.setImageBitmap(this.m_bitmap);
            dialog.setContentView(imageView);
            dialog.show();
        }
    }

    public class Quad {
        public int height;
        public int width;
        public int x;
        public int y;

        public Quad(int i, int i2, int i3, int i4) {
            this.x = i;
            this.y = i2;
            this.width = i3;
            this.height = i4;
        }
    }

    public class TextureAtlas {
        public byte[] imageData;
        public com.zeptolab.utils.ZipUtils.Quad[] quads;

        public TextureAtlas(int i) {
            this.quads = new com.zeptolab.utils.ZipUtils.Quad[i];
        }
    }

    static {
        m_isLoggingEnabled = false;
    }

    public ZipUtils(Activity activity) {
        this.m_activity = activity;
        this.m_assetManager = this.m_activity.getAssets();
    }

    public static void enableLogging(boolean z) {
        m_isLoggingEnabled = true;
    }

    private static InputStream getInputStream(Activity activity, AssetManager assetManager, String str) {
        try {
            return new FileInputStream(new File(activity.getFilesDir(), str.replace(internal, AdTrackerConstants.BLANK)));
        } catch (Exception e) {
            logWarn(e.getMessage());
            return null;
        }
    }

    private static void logDebug(String str) {
        if (m_isLoggingEnabled) {
            Log.d(TAG, str);
        }
    }

    private static void logError(String str) {
        if (m_isLoggingEnabled) {
            Log.e(TAG, str);
        }
    }

    private static void logInfo(String str) {
        if (m_isLoggingEnabled) {
            Log.i(TAG, str);
        }
    }

    private static void logWarn(String str) {
        if (m_isLoggingEnabled) {
            Log.w(TAG, str);
        }
    }

    private static void quietlyClose(InputStream inputStream) {
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    public boolean hasZipEntry(String str, String str2) {
        boolean z = false;
        if (!(str == null || str2 == null)) {
            InputStream inputStream = null;
            try {
                inputStream = getInputStream(this.m_activity, this.m_assetManager, str);
                ZipInputStream zipInputStream = new ZipInputStream(new BufferedInputStream(inputStream));
                ZipEntry nextEntry;
                do {
                    nextEntry = zipInputStream.getNextEntry();
                    if (nextEntry != null) {
                        if (nextEntry.getName().equalsIgnoreCase(str2)) {
                            break;
                        }
                    } else {
                        break;
                    }
                } while (!nextEntry.getName().toLowerCase().endsWith("/" + str2.toLowerCase()));
                z = true;
                quietlyClose(inputStream);
            } catch (Exception e) {
                Exception exception = e;
                logDebug("Error while reading zip file: " + str);
                exception.printStackTrace();
                quietlyClose(inputStream);
            }
        }
        return z;
    }

    public byte[] loadZip(String str, String str2) {
        if (str == null || str2 == null) {
            return null;
        }
        try {
            byte[] bArr;
            InputStream inputStream = getInputStream(this.m_activity, this.m_assetManager, str);
            try {
                ZipInputStream zipInputStream = new ZipInputStream(new BufferedInputStream(inputStream));
                ZipEntry nextEntry;
                do {
                    nextEntry = zipInputStream.getNextEntry();
                    if (nextEntry != null) {
                        if (nextEntry.getName().equalsIgnoreCase(str2)) {
                            break;
                        }
                    } else {
                        logDebug(String.format("File '%s' is not found in archive '%s'", new Object[]{str2, str}));
                        bArr = new byte[0];
                        quietlyClose(inputStream);
                        return bArr;
                    }
                } while (!nextEntry.getName().toLowerCase().endsWith("/" + str2.toLowerCase()));
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                byte[] bArr2 = new byte[1024];
                while (true) {
                    int read = zipInputStream.read(bArr2);
                    if (read != -1) {
                        byteArrayOutputStream.write(bArr2, 0, read);
                    } else {
                        bArr = byteArrayOutputStream.toByteArray();
                        quietlyClose(inputStream);
                        return bArr;
                    }
                }
            } catch (Exception e) {
                exception = e;
                try {
                    logDebug("Can't load data: " + str);
                    exception.printStackTrace();
                    bArr = new byte[0];
                    quietlyClose(inputStream);
                    return bArr;
                } catch (Throwable th) {
                    th = th;
                    quietlyClose(inputStream);
                    throw th;
                }
            }
        } catch (Exception e2) {
            Exception exception2;
            inputStream = null;
            exception2 = e2;
            logDebug("Can't load data: " + str);
            exception2.printStackTrace();
            bArr = new byte[0];
            quietlyClose(inputStream);
            return bArr;
        } catch (Throwable th2) {
            Throwable th3;
            inputStream = null;
            th3 = th2;
            quietlyClose(inputStream);
            throw th3;
        }
    }

    public Bitmap loadZipBitmap(String str, String str2) {
        Exception exception;
        Throwable th;
        if (str == null || str2 == null) {
            return null;
        }
        try {
            InputStream inputStream = getInputStream(this.m_activity, this.m_assetManager, str);
            try {
                ZipInputStream zipInputStream = new ZipInputStream(new BufferedInputStream(inputStream));
                ZipEntry nextEntry;
                do {
                    nextEntry = zipInputStream.getNextEntry();
                    if (nextEntry != null) {
                        if (nextEntry.getName().equalsIgnoreCase(str2)) {
                            break;
                        }
                    } else {
                        logDebug(String.format("File '%s' is not found in archive '%s'", new Object[]{str2, str}));
                        quietlyClose(inputStream);
                        return null;
                    }
                } while (!nextEntry.getName().toLowerCase().endsWith("/" + str2.toLowerCase()));
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                byte[] bArr = new byte[1024];
                while (true) {
                    int read = zipInputStream.read(bArr);
                    if (read != -1) {
                        byteArrayOutputStream.write(bArr, 0, read);
                    } else {
                        Bitmap decodeByteArray = BitmapFactory.decodeByteArray(byteArrayOutputStream.toByteArray(), 0, byteArrayOutputStream.size());
                        quietlyClose(inputStream);
                        return decodeByteArray;
                    }
                }
            } catch (Exception e) {
                exception = e;
                try {
                    logDebug("Can't load data: " + str);
                    exception.printStackTrace();
                    quietlyClose(inputStream);
                    return null;
                } catch (Throwable th2) {
                    th = th2;
                    quietlyClose(inputStream);
                    throw th;
                }
            }
        } catch (Exception e2) {
            exception = e2;
            inputStream = null;
            logDebug("Can't load data: " + str);
            exception.printStackTrace();
            quietlyClose(inputStream);
            return null;
        } catch (Throwable th3) {
            inputStream = null;
            th = th3;
            quietlyClose(inputStream);
            throw th;
        }
    }

    public byte[] loadZipImage(String str, String str2) {
        Bitmap loadZipBitmap = loadZipBitmap(str, str2);
        if (loadZipBitmap == null) {
            return null;
        }
        OutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        loadZipBitmap.compress(CompressFormat.PNG, 80, byteArrayOutputStream);
        return byteArrayOutputStream.toByteArray();
    }

    public TextureAtlas loadZipImages(String str, String[] strArr) {
        if (str == null || strArr == null || strArr.length == 0) {
            return null;
        }
        List arrayList = new ArrayList();
        int i = 0;
        while (i < strArr.length) {
            Bitmap loadZipBitmap = loadZipBitmap(str, strArr[i]);
            if (loadZipBitmap == null) {
                return null;
            }
            arrayList.add(loadZipBitmap);
            i++;
        }
        Iterator it = arrayList.iterator();
        int i2 = 0;
        int i3 = 0;
        while (it.hasNext()) {
            Bitmap bitmap = (Bitmap) it.next();
            if (bitmap.getWidth() > i2) {
                i2 = bitmap.getWidth();
            }
            i3 = bitmap.getHeight() > i3 ? bitmap.getHeight() : i3;
        }
        int max = Math.max(i2, i3);
        int ceil = (int) Math.ceil(Math.sqrt((double) arrayList.size()));
        i = ceil * max;
        Bitmap createBitmap = Bitmap.createBitmap(i, i, Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        TextureAtlas textureAtlas = new TextureAtlas(arrayList.size());
        int i4 = 0;
        while (i4 < arrayList.size()) {
            int i5 = i4 / ceil;
            i2 = i4 % ceil;
            loadZipBitmap = (Bitmap) arrayList.get(i4);
            canvas.drawBitmap(loadZipBitmap, (float) (i2 * max), (float) (i5 * max), null);
            textureAtlas.quads[i4] = new Quad(i2 * max, i5 * max, loadZipBitmap.getWidth(), loadZipBitmap.getHeight());
            i4++;
        }
        OutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        createBitmap.compress(CompressFormat.PNG, 80, byteArrayOutputStream);
        textureAtlas.imageData = byteArrayOutputStream.toByteArray();
        return textureAtlas;
    }
}