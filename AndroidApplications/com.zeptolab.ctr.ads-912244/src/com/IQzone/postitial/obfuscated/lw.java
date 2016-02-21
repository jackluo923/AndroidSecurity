package com.IQzone.postitial.obfuscated;

import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.ProtocolException;
import java.net.URL;

public class lw extends pp {
    private static final ql a;
    private final String b;

    static {
        a = new ql();
    }

    public lw(String str) {
        this.b = String.format("http://%spssvc.iqzone.com/e.asmx", new Object[]{str});
    }

    private HttpURLConnection a() {
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(this.b).openConnection();
            httpURLConnection.setRequestMethod("POST");
            httpURLConnection.setDoOutput(true);
            httpURLConnection.setRequestProperty("Content-Type", "text/xml");
            return httpURLConnection;
        } catch (ProtocolException e) {
            ql qlVar = a;
            throw new om("<ConnectionFactoryLoader><2>, Protocol Exception");
        } catch (MalformedURLException e2) {
            qlVar = a;
            throw new om("<ConnectionFactoryLoader><4>, Malformed URL");
        } catch (IOException e3) {
            qlVar = a;
            throw new om("<ConnectionFactoryLoader><6>, IOException");
        }
    }

    public final /* bridge */ /* synthetic */ Object a(Object obj) {
        return a();
    }
}