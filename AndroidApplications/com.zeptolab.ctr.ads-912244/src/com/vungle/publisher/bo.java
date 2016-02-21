package com.vungle.publisher;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.vungle.log.Logger;
import com.vungle.publisher.net.http.HttpTransaction;
import com.vungle.publisher.net.http.HttpTransaction.a;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.net.HttpURLConnection;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public abstract class bo implements Parcelable {
    private static final Pattern a;

    static {
        a = Pattern.compile("\\bcharset=([\\w\\-]+)\\b");
    }

    public static String a(HttpURLConnection httpURLConnection) {
        Reader reader = null;
        boolean z = 1;
        try {
            String group;
            int i;
            InputStream inputStream;
            Reader inputStreamReader;
            StringBuilder stringBuilder;
            char[] cArr;
            int responseCode = httpURLConnection.getResponseCode();
            CharSequence contentType = httpURLConnection.getContentType();
            if (contentType != null) {
                Matcher matcher = a.matcher(contentType);
                if (matcher.find()) {
                    group = matcher.group(1);
                    Logger.v(Logger.NETWORK_TAG, new StringBuilder("response character set: ").append(group).toString());
                    if (responseCode / 100 > 3) {
                        i = 0;
                    }
                    inputStream = i == 0 ? httpURLConnection.getInputStream() : httpURLConnection.getErrorStream();
                    if (TextUtils.isEmpty(group)) {
                        group = "ISO-8859-1";
                    }
                    inputStreamReader = new InputStreamReader(inputStream, group);
                    try {
                        stringBuilder = new StringBuilder();
                        cArr = new char[8192];
                        while (true) {
                            i = inputStreamReader.read(cArr);
                            if (i > 0) {
                                break;
                                break;
                            } else {
                                stringBuilder.append(cArr, 0, i);
                            }
                        }
                        group = stringBuilder.toString();
                        Logger.d(Logger.NETWORK_TAG, new StringBuilder("response body: ").append(group).toString());
                        try {
                            inputStreamReader.close();
                        } catch (IOException e) {
                            Logger.w(Logger.NETWORK_TAG, new StringBuilder("error closing input stream ").append(httpURLConnection.getURL()).toString(), e);
                        }
                        if (httpURLConnection != null) {
                            httpURLConnection.disconnect();
                        }
                        return group;
                    } catch (Throwable th) {
                        th = th;
                        reader = inputStreamReader;
                        if (reader != null) {
                            try {
                                reader.close();
                            } catch (IOException e2) {
                                Logger.w(Logger.NETWORK_TAG, new StringBuilder("error closing input stream ").append(httpURLConnection.getURL()).toString(), e2);
                            }
                        }
                        if (httpURLConnection != null) {
                            httpURLConnection.disconnect();
                        }
                        throw th;
                    }
                }
            }
            Reader reader2 = reader;
            Logger.v(Logger.NETWORK_TAG, new StringBuilder("response character set: ").append(group).toString());
            if (responseCode / 100 > 3) {
                i = 0;
            }
            if (i == 0) {
            }
            if (TextUtils.isEmpty(group)) {
                group = "ISO-8859-1";
            }
            inputStreamReader = new InputStreamReader(inputStream, group);
            stringBuilder = new StringBuilder();
            cArr = new char[8192];
            while (true) {
                i = inputStreamReader.read(cArr);
                if (i > 0) {
                    break;
                    break;
                } else {
                    stringBuilder.append(cArr, 0, i);
                }
            }
            group = stringBuilder.toString();
            Logger.d(Logger.NETWORK_TAG, new StringBuilder("response body: ").append(group).toString());
            inputStreamReader.close();
            if (httpURLConnection != null) {
                httpURLConnection.disconnect();
            }
            return group;
        } catch (Throwable th2) {
            Throwable th3;
            th3 = th2;
            if (reader != null) {
                reader.close();
            }
            if (httpURLConnection != null) {
                httpURLConnection.disconnect();
            }
            throw th3;
        }
    }

    public static boolean a(int i) {
        return b(i) || i == 603 || i == 408;
    }

    public static boolean b(int i) {
        return i / 100 == 5 || i == 602;
    }

    public bo b(Parcel parcel) {
        return this;
    }

    public abstract void b(HttpTransaction httpTransaction, bn bnVar, a aVar);

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
    }
}