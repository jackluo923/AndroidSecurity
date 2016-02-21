package com.admarvel.android.ads;

import android.content.Context;
import android.os.AsyncTask;
import android.os.Environment;
import com.admarvel.android.util.Logging;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.net.URL;
import java.net.URLConnection;
import org.apache.http.util.ByteArrayBuffer;

class h extends AsyncTask {
    private final WeakReference a;
    private final WeakReference b;
    private final File c;

    public h(Context context, AdMarvelInternalWebView adMarvelInternalWebView, File file) {
        this.a = new WeakReference(context);
        this.c = file;
        this.b = new WeakReference(adMarvelInternalWebView);
    }

    private void a(String str, File file) {
        URL url = new URL(str);
        long currentTimeMillis = System.currentTimeMillis();
        Logging.log("download begining");
        Logging.log("download url:" + url);
        Logging.log("downloaded file name:" + file.getName());
        URLConnection openConnection = url.openConnection();
        if (!isCancelled()) {
            BufferedInputStream bufferedInputStream = new BufferedInputStream(openConnection.getInputStream());
            ByteArrayBuffer byteArrayBuffer = new ByteArrayBuffer(50);
            do {
                int read = bufferedInputStream.read();
                if (read != -1) {
                    byteArrayBuffer.append((byte) read);
                } else {
                    Logging.log(Environment.getExternalStorageState());
                    if (!isCancelled()) {
                        file.getParentFile().mkdirs();
                        if (!isCancelled()) {
                            FileOutputStream fileOutputStream = new FileOutputStream(file);
                            fileOutputStream.write(byteArrayBuffer.toByteArray());
                            fileOutputStream.close();
                            Logging.log("download ready in" + ((System.currentTimeMillis() - currentTimeMillis) / 1000) + " sec");
                            return;
                        } else {
                            return;
                        }
                    } else {
                        return;
                    }
                }
            } while (!isCancelled());
        }
    }

    protected Object doInBackground(Object... objArr) {
        AdMarvelInternalWebView adMarvelInternalWebView;
        Context context = (Context) this.a.get();
        if (context != null) {
            String str = (String) objArr[0];
            String str2 = (String) objArr[1];
            int intValue = ((Integer) objArr[2]).intValue();
            try {
                String str3 = new URL(str).getFile().split("\\?")[0];
                File file = new File(this.c, "/data/com.admarvel.android.admarvelcachedads/cachedads" + str3);
                File file2 = new File(this.c, "/data/com.admarvel.android.admarvelcachedads/cachedads" + str3 + ".tmp");
                Logging.log("file: " + file.getAbsolutePath());
                Logging.log("tmpfile: " + file2.getAbsolutePath());
                if (!file.exists()) {
                    if (file2.exists()) {
                        file2.delete();
                    }
                    a(str, file2);
                    file2.renameTo(file);
                } else if (System.currentTimeMillis() - file.lastModified() > ((long) intValue)) {
                    file.delete();
                    if (file2.exists()) {
                        file2.delete();
                    }
                    a(str, file2);
                    file2.renameTo(file);
                }
                AdMarvelInternalWebView adMarvelInternalWebView2 = (AdMarvelInternalWebView) this.b.get();
                if (adMarvelInternalWebView2 != null) {
                    adMarvelInternalWebView2.loadUrl("javascript:" + str2 + "(true,\"" + str + "\", \"" + ("content://" + context.getPackageName() + ".AdMarvelLocalFileContentProvider" + "/cachedads" + str3) + "\")");
                }
            } catch (RuntimeException e) {
                adMarvelInternalWebView = (AdMarvelInternalWebView) this.b.get();
                if (adMarvelInternalWebView != null) {
                    adMarvelInternalWebView.loadUrl("javascript:" + str2 + "(false,\"" + str + "\", \"\")");
                }
            } catch (IOException e2) {
                adMarvelInternalWebView = (AdMarvelInternalWebView) this.b.get();
                if (adMarvelInternalWebView != null) {
                    adMarvelInternalWebView.loadUrl("javascript:" + str2 + "(false,\"" + str + "\", \"\")");
                }
            } catch (Exception e3) {
                adMarvelInternalWebView = (AdMarvelInternalWebView) this.b.get();
                if (adMarvelInternalWebView != null) {
                    adMarvelInternalWebView.loadUrl("javascript:" + str2 + "(false,\"" + str + "\", \"\")");
                }
            }
        }
        return null;
    }
}