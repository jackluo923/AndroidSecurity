package com.admarvel.android.util;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.os.AsyncTask;
import android.os.Build.VERSION;
import android.os.Handler;
import android.util.Log;
import android.view.View;
import com.admarvel.android.ads.AdFetcher;
import com.admarvel.android.ads.AdMarvelUtils;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.inmobi.commons.cache.ProductCacheConfig;
import com.millennialmedia.android.MMException;
import com.zeptolab.utils.HTMLEncoder;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.io.RandomAccessFile;
import java.io.UnsupportedEncodingException;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.UUID;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class a {
    private static volatile a b;
    private static WeakReference f;
    PrintWriter a;
    private int c;
    private File d;
    private File e;
    private String g;

    private class a implements Runnable {
        private final String b;
        private final int c;

        public a(String str, int i) {
            this.b = str;
            this.c = i;
        }

        public void run() {
            try {
                new com.admarvel.android.util.a.b(a.this, this.b).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Integer[]{Integer.valueOf(this.c)});
            } catch (Exception e) {
                Logging.log(Log.getStackTraceString(e));
            }
        }
    }

    public class b extends AsyncTask {
        private final String b;
        private final String c;

        public b(String str) {
            this.c = str;
            this.b = this.c + ".zip";
        }

        protected String a(Integer... numArr) {
            String str = null;
            try {
                int intValue = numArr[0].intValue();
                File[] listFiles = a.this.e.listFiles();
                if (listFiles == null || listFiles.length == 0) {
                    return str;
                }
                int a;
                int i;
                int b = intValue > a.this.c ? a.this.c : intValue;
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                int length = listFiles.length;
                intValue = 0;
                while (intValue < length) {
                    arrayList2.add(listFiles[intValue]);
                    intValue++;
                }
                Context context = (Context) f.get();
                String str2 = a.this.e.getAbsolutePath() + "/log_";
                String str3 = a.this.e.getAbsolutePath() + "/ss_";
                String str4 = a.this.e.getAbsolutePath() + "/sse_";
                String str5 = a.this.e.getAbsolutePath() + "/ssr_";
                if (context != null) {
                    a = a.this.c(context);
                    i = 0;
                    while (true) {
                        length = i + 1;
                        if (i == b) {
                            break;
                        }
                        if (a <= 0) {
                            a = a.this.c;
                        }
                        File file = new File(str2 + a + ".txt");
                        if (file.exists()) {
                            arrayList.add(file.getAbsolutePath());
                        }
                        file = new File(str3 + a + ".jpg");
                        if (file.exists()) {
                            arrayList.add(file.getAbsolutePath());
                        }
                        file = new File(str4 + a + ".jpg");
                        if (file.exists()) {
                            arrayList.add(file.getAbsolutePath());
                        }
                        file = new File(str5 + a + ".jpg");
                        if (file.exists()) {
                            arrayList.add(file.getAbsolutePath());
                        }
                        a--;
                        i = length;
                    }
                }
                String[] strArr = new String[arrayList.size()];
                Iterator it = arrayList.iterator();
                a = 0;
                while (it.hasNext()) {
                    i = a + 1;
                    strArr[a] = (String) it.next();
                    a = i;
                }
                String str6 = a.this.e.getAbsolutePath() + "/" + this.b;
                new c(strArr, str6).a();
                String str7 = ("http://sdk-rh.admarvel.com/adhistory/upload?" + "platform=android") + "&deviceid=" + OptionalUtils.getId(context);
                a.this.a((((context != null ? str7 + "&appid=" + context.getPackageName() : str7) + "&zipguid=" + this.c) + "&timestamp=" + System.currentTimeMillis()) + AdFetcher.lastAdRequestPostString, str6);
                return str6;
            } catch (Exception e) {
                e.printStackTrace();
                return str;
            }
        }

        protected void a(String str) {
            super.onPostExecute(str);
        }

        protected /* synthetic */ Object doInBackground(Object[] objArr) {
            return a((Integer[]) objArr);
        }

        protected /* synthetic */ void onPostExecute(Object obj) {
            a((String) obj);
        }

        protected void onPreExecute() {
            super.onPreExecute();
        }
    }

    private a(Context context) {
        this.c = 20;
        this.g = "admarvel_adHistory";
        this.a = null;
        if (context == null) {
            f = null;
        } else {
            f = new WeakReference(context);
            Context context2 = (Context) f.get();
            try {
                this.d = context2.getDir("Admarvel", 0);
                this.e = new File(this.d, this.g);
            } catch (Exception e) {
                e.printStackTrace();
            }
            if (this.e != null) {
                if (this.e.mkdir()) {
                    a(context2, 0);
                }
                File[] listFiles = this.e.listFiles(new FilenameFilter() {
                    public boolean accept(File file, String str) {
                        return str.toLowerCase().endsWith(".zip");
                    }
                });
                if (listFiles != null && listFiles.length > 0) {
                    int length = listFiles.length;
                    int i = 0;
                    while (i < length) {
                        listFiles[i].delete();
                        i++;
                    }
                }
            }
        }
    }

    private synchronized void a_(Context context, int i) {
        Editor edit = context.getSharedPreferences("Ad_history_counter", 0).edit();
        edit.putInt("ad_dump_count", i);
        edit.commit();
    }

    private void a_(String str, String str2) {
        File file;
        Throwable th;
        File file2 = null;
        try {
            file = new File(str2);
            try {
                f fVar = new f(str, "utf-8");
                fVar.a("fileUpload", file);
                fVar.a();
                if (file != null && !file.delete()) {
                    Logging.log("Unable to delete AdHistory zip file");
                }
            } catch (Exception e) {
                th = e;
                Logging.log(Log.getStackTraceString(th));
                if (file != null && !file.delete()) {
                    Logging.log("Unable to delete AdHistory zip file");
                }
            }
        } catch (Exception e2) {
            th = e2;
            file = file2;
            try {
                Logging.log(Log.getStackTraceString(th));
            } catch (Throwable th2) {
                th = th2;
                Logging.log("Unable to delete AdHistory zip file");
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            file = file2;
            if (!(file == null || file.delete())) {
                Logging.log("Unable to delete AdHistory zip file");
            }
            throw th;
        }
    }

    private double b() {
        double d = 0.0d;
        try {
            RandomAccessFile randomAccessFile = new RandomAccessFile("/proc/meminfo", "r");
            Matcher matcher = Pattern.compile("(\\d+)").matcher(randomAccessFile.readLine());
            String str = AdTrackerConstants.BLANK;
            while (matcher.find()) {
                str = matcher.group(1);
            }
            randomAccessFile.close();
            return Double.parseDouble(str);
        } catch (IOException e) {
            e.printStackTrace();
            return d;
        } catch (Exception e2) {
            e2.printStackTrace();
            return d;
        }
    }

    public static a b(Context context) {
        if (b == null && context != null) {
            b = new a(context);
        }
        f = new WeakReference(context);
        return b;
    }

    private void b(int i) {
        try {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("/sse_");
            stringBuilder.append(i);
            stringBuilder.append(".jpg");
            File file = new File(this.e.getAbsolutePath() + stringBuilder);
            if (file != null && file.exists()) {
                file.delete();
            }
            stringBuilder = new StringBuilder();
            stringBuilder.append("/ssr_");
            stringBuilder.append(i);
            stringBuilder.append(".jpg");
            file = new File(this.e.getAbsolutePath() + stringBuilder);
            if (file != null && file.exists()) {
                file.delete();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private synchronized int c(Context context) {
        return context.getSharedPreferences("Ad_history_counter", 0).getInt("ad_dump_count", 0);
    }

    private boolean d(Context context) {
        double b;
        try {
            b = b();
            if (b > 0.0d) {
                b /= 1024.0d;
                return d != -1.0d && d < 450.0d;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        b = -1.0d;
    }

    private boolean e(Context context) {
        return VERSION.SDK_INT < 10 ? true : d(context);
    }

    public synchronized int a_(Context context) {
        int i;
        SharedPreferences sharedPreferences = context.getSharedPreferences("Ad_history_counter", 0);
        i = sharedPreferences.getInt("ad_dump_count", 0) % this.c + 1;
        Editor edit = sharedPreferences.edit();
        edit.putInt("ad_dump_count", i);
        edit.commit();
        return i;
    }

    public String a_(int i) {
        String toString = UUID.randomUUID().toString();
        if (AdMarvelUtils.getAndroidSDKVersion() >= 11) {
            new Handler().post(new a(this, toString, i));
        } else {
            new b(this, toString).execute(new Integer[]{Integer.valueOf(i)});
        }
        return toString;
    }

    public synchronized void a_(String str) {
        Bitmap bitmap;
        try {
            Context context = (Context) f.get();
            if (context instanceof Activity) {
                if (e(context)) {
                    Logging.log("AdHistory Capture: Screen Dump discarded");
                } else {
                    bitmap = null;
                    try {
                        View rootView = ((Activity) context).getWindow().getDecorView().findViewById(16908290).findViewById(16908290).getRootView();
                        if (rootView != null) {
                            Boolean valueOf = Boolean.valueOf(rootView.isDrawingCacheEnabled());
                            rootView.setDrawingCacheEnabled(true);
                            OutputStream fileOutputStream = new FileOutputStream(this.e.getAbsolutePath() + str);
                            if (fileOutputStream != null) {
                                if (((Activity) context).getResources().getDisplayMetrics().density > 1.0f) {
                                    if (!rootView.getDrawingCache().compress(CompressFormat.JPEG, MMException.REQUEST_BAD_RESPONSE, fileOutputStream)) {
                                        Logging.log("AdHistory Capture: Screen Dump failed");
                                    }
                                } else if (!rootView.getDrawingCache().compress(CompressFormat.JPEG, ProductCacheConfig.DEFAULT_INTERVAL, fileOutputStream)) {
                                    Logging.log("AdHistory Capture: Screen Dump failed");
                                }
                                fileOutputStream.flush();
                                fileOutputStream.close();
                                if (!valueOf.booleanValue()) {
                                    rootView.setDrawingCacheEnabled(false);
                                }
                            }
                            if (bitmap != null) {
                                bitmap.recycle();
                            }
                        } else if (bitmap != null) {
                            bitmap.recycle();
                        }
                    } catch (FileNotFoundException e) {
                        Logging.log(e.getMessage());
                        if (bitmap != null) {
                            bitmap.recycle();
                        }
                    } catch (IOException e2) {
                        Logging.log(e2.getMessage());
                        if (bitmap != null) {
                            bitmap.recycle();
                        }
                    } catch (Exception e3) {
                        e3.printStackTrace();
                        if (bitmap != null) {
                            bitmap.recycle();
                        }
                    } catch (OutOfMemoryError e4) {
                        e4.printStackTrace();
                        AdMarvelUtils.disableLogDump();
                        if (bitmap != null) {
                            bitmap.recycle();
                        }
                    }
                }
            }
        } catch (Throwable th) {
        }
    }

    public void a_(String str, int i) {
        if (f != null && f.get() != null) {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("/log_");
            stringBuilder.append(i);
            stringBuilder.append(".txt");
            try {
                this.a = new PrintWriter(this.e.getAbsolutePath() + stringBuilder.toString(), HTMLEncoder.ENCODE_NAME_DEFAULT);
            } catch (FileNotFoundException e) {
                e.printStackTrace();
            } catch (UnsupportedEncodingException e2) {
                e2.printStackTrace();
            }
            if (this.a != null) {
                this.a.print(str);
                this.a.close();
            }
            stringBuilder = new StringBuilder();
            stringBuilder.append("/ss_");
            stringBuilder.append(i);
            stringBuilder.append(".jpg");
            a(stringBuilder.toString());
            b(i);
        }
    }
}