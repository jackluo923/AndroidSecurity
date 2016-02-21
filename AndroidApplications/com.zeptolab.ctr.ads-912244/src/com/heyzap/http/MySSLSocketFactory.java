package com.heyzap.http;

import java.net.Socket;
import java.security.KeyStore;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;
import org.apache.http.conn.ssl.SSLSocketFactory;

public class MySSLSocketFactory extends SSLSocketFactory {
    SSLContext sslContext;

    public MySSLSocketFactory(KeyStore keyStore) {
        super(keyStore);
        this.sslContext = SSLContext.getInstance("TLS");
        r rVar = new r(this);
        this.sslContext.init(null, new TrustManager[]{rVar}, null);
    }

    public static SSLSocketFactory getFixedSocketFactory() {
        try {
            SSLSocketFactory mySSLSocketFactory = new MySSLSocketFactory(getKeystore());
            mySSLSocketFactory.setHostnameVerifier(SSLSocketFactory.ALLOW_ALL_HOSTNAME_VERIFIER);
            return mySSLSocketFactory;
        } catch (Throwable th) {
            th.printStackTrace();
            return SSLSocketFactory.getSocketFactory();
        }
    }

    public static KeyStore getKeystore() {
        KeyStore instance;
        try {
            instance = KeyStore.getInstance(KeyStore.getDefaultType());
            try {
                instance.load(null, null);
            } catch (Throwable th) {
                th = th;
                th.printStackTrace();
                return instance;
            }
        } catch (Throwable th2) {
            instance = null;
            Throwable th3 = th2;
            th3.printStackTrace();
            return instance;
        }
        return instance;
    }

    public Socket createSocket() {
        return this.sslContext.getSocketFactory().createSocket();
    }

    public Socket createSocket(Socket socket, String str, int i, boolean z) {
        return this.sslContext.getSocketFactory().createSocket(socket, str, i, z);
    }
}