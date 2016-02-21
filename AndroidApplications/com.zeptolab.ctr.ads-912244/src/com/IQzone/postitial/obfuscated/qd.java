package com.IQzone.postitial.obfuscated;

import com.zeptolab.utils.HTMLEncoder;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.ProtocolException;
import java.net.URL;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;

public class qd {
    private static final ql a;

    static {
        a = new ql();
    }

    public static String a(URL url, Map map) {
        return new String(a(url, map, 30000));
    }

    public static String a(URL url, Map map, String str) {
        ql qlVar;
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
            httpURLConnection.setRequestMethod("GET");
            httpURLConnection.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
            httpURLConnection.setDoOutput(true);
            httpURLConnection.setDoInput(true);
            httpURLConnection.setReadTimeout(30000);
            Iterator it = map.entrySet().iterator();
            while (it.hasNext()) {
                Entry entry = (Entry) it.next();
                httpURLConnection.addRequestProperty((String) entry.getKey(), (String) entry.getValue());
            }
            httpURLConnection.connect();
            OutputStream outputStream = httpURLConnection.getOutputStream();
            fh.a(new ByteArrayInputStream(str.getBytes(HTMLEncoder.ENCODE_NAME_DEFAULT)), outputStream);
            outputStream.flush();
            outputStream.close();
            if (httpURLConnection.getResponseCode() == 401) {
                throw new pz();
            }
            outputStream = new ByteArrayOutputStream();
            InputStream inputStream = httpURLConnection.getInputStream();
            if (inputStream != null) {
                fh.a(inputStream, outputStream);
                inputStream.close();
                return new String(outputStream.toByteArray());
            } else {
                throw new IOException("<WebUtil><20>Failed to get response");
            }
        } catch (MalformedURLException e) {
            qlVar = a;
            throw new IOException("<WebUtil><22>ERROR:");
        } catch (ProtocolException e2) {
            qlVar = a;
            throw new IOException("<WebUtil><24>Error:");
        } catch (Throwable th) {
        }
    }

    private static byte[] a(URL url, Map map, int i) {
        ql qlVar;
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
            httpURLConnection.setRequestMethod("GET");
            httpURLConnection.setReadTimeout(30000);
            Iterator it = map.entrySet().iterator();
            while (it.hasNext()) {
                Entry entry = (Entry) it.next();
                httpURLConnection.addRequestProperty((String) entry.getKey(), (String) entry.getValue());
            }
            httpURLConnection.connect();
            OutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            InputStream inputStream = httpURLConnection.getInputStream();
            if (httpURLConnection.getResponseCode() == 401) {
                throw new pz();
            } else if (inputStream != null) {
                fh.a(inputStream, byteArrayOutputStream);
                inputStream.close();
                return byteArrayOutputStream.toByteArray();
            } else {
                throw new IOException("<WebUtil><1>Failed to get response");
            }
        } catch (MalformedURLException e) {
            qlVar = a;
            throw new IOException("<WebUtil><3>ERROR:");
        } catch (ProtocolException e2) {
            qlVar = a;
            throw new IOException("<WebUtil><5>Error:");
        }
    }
}