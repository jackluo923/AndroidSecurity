package com.admarvel.android.ads;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import com.admarvel.android.util.Logging;
import com.google.android.gms.drive.DriveFile;
import com.google.android.gms.games.GamesStatusCodes;
import com.heyzap.http.AsyncHttpClient;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import java.util.zip.GZIPInputStream;

public class AdMarvelLocalFileContentProvider extends ContentProvider {

    private static class a {
        public byte[] a;
        public int b;

        private a() {
            this.a = null;
            this.b = 0;
        }
    }

    public int delete(Uri uri, String str, String[] strArr) {
        throw new UnsupportedOperationException("Not supported by this provider");
    }

    public String getType(Uri uri) {
        throw new UnsupportedOperationException("Not supported by this provider");
    }

    public Uri insert(Uri uri, ContentValues contentValues) {
        throw new UnsupportedOperationException("Not supported by this provider");
    }

    public boolean onCreate() {
        return true;
    }

    public ParcelFileDescriptor openFile(Uri uri, String str) {
        int i = 0;
        String replace = uri.getPath().replace("content://" + getContext().getPackageName() + ".AdMarvelLocalFileContentProvider", AdTrackerConstants.BLANK);
        if (replace != null) {
            if (replace.equals("/mraid.js") || replace.equals("mraid.js")) {
                try {
                    String str2 = AdTrackerConstants.BLANK;
                    HttpURLConnection httpURLConnection = (HttpURLConnection) new URL("http://admarvel.s3.amazonaws.com/js/admarvel_mraid_v2_complete.js").openConnection();
                    httpURLConnection.setRequestMethod("GET");
                    httpURLConnection.setDoOutput(false);
                    httpURLConnection.setDoInput(true);
                    httpURLConnection.setUseCaches(false);
                    httpURLConnection.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
                    httpURLConnection.setRequestProperty("Content-Length", "0");
                    httpURLConnection.setConnectTimeout(GamesStatusCodes.STATUS_REQUEST_UPDATE_PARTIAL_SUCCESS);
                    httpURLConnection.setReadTimeout(AsyncHttpClient.DEFAULT_SOCKET_TIMEOUT);
                    int responseCode = httpURLConnection.getResponseCode();
                    int contentLength = httpURLConnection.getContentLength();
                    Logging.log("Mraid Connection Status Code: " + responseCode);
                    Logging.log("Mraid Content Length: " + contentLength);
                    if (responseCode == 200) {
                        InputStream gZIPInputStream;
                        String str3;
                        InputStream inputStream = (InputStream) httpURLConnection.getContent();
                        gZIPInputStream = (!AsyncHttpClient.ENCODING_GZIP.equals(httpURLConnection.getContentEncoding()) || Version.getAndroidSDKVersion() >= 9) ? inputStream : new GZIPInputStream(inputStream);
                        List arrayList = new ArrayList();
                        int i2 = 0;
                        responseCode = 8192;
                        while (responseCode != -1) {
                            byte[] bArr = new byte[8192];
                            responseCode = gZIPInputStream.read(bArr, 0, AsyncHttpClient.DEFAULT_SOCKET_BUFFER_SIZE);
                            if (responseCode > 0) {
                                a aVar = new a();
                                aVar.a = bArr;
                                aVar.b = responseCode;
                                i2 += responseCode;
                                arrayList.add(aVar);
                            }
                        }
                        gZIPInputStream.close();
                        if (i2 > 0) {
                            Object obj = new Object[i2];
                            responseCode = 0;
                            while (responseCode < arrayList.size()) {
                                a aVar2 = (a) arrayList.get(responseCode);
                                System.arraycopy(aVar2.a, 0, obj, i, aVar2.b);
                                i += aVar2.b;
                                responseCode++;
                            }
                            str3 = new String(obj);
                        } else {
                            str3 = str2;
                        }
                        FileOutputStream openFileOutput = getContext().openFileOutput("admarvel_mraid.js", 0);
                        try {
                            openFileOutput.write(str3.getBytes());
                            openFileOutput.close();
                        } catch (IOException e) {
                            e.printStackTrace();
                        }
                        return ParcelFileDescriptor.open(new File("/data/data/" + getContext().getPackageName() + "/files", "admarvel_mraid.js"), DriveFile.MODE_READ_ONLY);
                    }
                } catch (IOException e2) {
                    e2.printStackTrace();
                }
            }
            File file = new File(new File(AdMarvelView.a), AdMarvelUtils.PATH + replace);
            if (file.exists()) {
                Logging.log("AdMarvelLocalFileContentProvider::openFile: " + file.getAbsolutePath());
                ParcelFileDescriptor open = ParcelFileDescriptor.open(file, DriveFile.MODE_READ_ONLY);
                if (open.getStatSize() > 0) {
                    return open;
                }
            }
        }
        return null;
    }

    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        throw new UnsupportedOperationException("Not supported by this provider");
    }

    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        throw new UnsupportedOperationException("Not supported by this provider");
    }
}