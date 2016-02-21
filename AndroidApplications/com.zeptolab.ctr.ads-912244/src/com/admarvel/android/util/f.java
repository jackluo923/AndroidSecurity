package com.admarvel.android.util;

import com.google.android.gms.games.GamesStatusCodes;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.List;

public class f {
    private final String a;
    private HttpURLConnection b;
    private String c;
    private OutputStream d;
    private PrintWriter e;

    public f(String str, String str2) {
        this.c = str2;
        this.a = "===" + System.currentTimeMillis() + "===";
        this.b = (HttpURLConnection) new URL(str).openConnection();
        this.b.setUseCaches(false);
        this.b.setDoOutput(true);
        this.b.setDoInput(true);
        this.b.setConnectTimeout(GamesStatusCodes.STATUS_REQUEST_UPDATE_PARTIAL_SUCCESS);
        this.b.setReadTimeout(GamesStatusCodes.STATUS_REQUEST_UPDATE_PARTIAL_SUCCESS);
        this.b.setRequestProperty("Content-Type", "multipart/form-data; boundary=" + this.a);
        this.d = this.b.getOutputStream();
        this.e = new PrintWriter(new OutputStreamWriter(this.d, str2), true);
    }

    public List a() {
        List arrayList = new ArrayList();
        this.e.append("\r\n").flush();
        this.e.append("--" + this.a + "--").append("\r\n");
        this.e.close();
        int responseCode = this.b.getResponseCode();
        if (responseCode == 200) {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(this.b.getInputStream()));
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine != null) {
                    arrayList.add(readLine);
                } else {
                    bufferedReader.close();
                    this.b.disconnect();
                    return arrayList;
                }
            }
        } else {
            throw new IOException("Server returned non-OK status: " + responseCode);
        }
    }

    public void a(String str, File file) {
        String name = file.getName();
        this.e.append("--" + this.a).append("\r\n");
        this.e.append("Content-Disposition: form-data; name=\"" + str + "\"; filename=\"" + name + "\"").append("\r\n");
        this.e.append("Content-Type: " + URLConnection.guessContentTypeFromName(name)).append("\r\n");
        this.e.append("Content-Transfer-Encoding: binary").append("\r\n");
        this.e.append("\r\n");
        this.e.flush();
        FileInputStream fileInputStream = new FileInputStream(file);
        byte[] bArr = new byte[4096];
        while (true) {
            int read = fileInputStream.read(bArr);
            if (read != -1) {
                this.d.write(bArr, 0, read);
            } else {
                this.d.flush();
                fileInputStream.close();
                this.e.append("\r\n");
                this.e.flush();
                return;
            }
        }
    }
}