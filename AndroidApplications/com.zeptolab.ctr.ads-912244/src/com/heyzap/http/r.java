package com.heyzap.http;

import java.security.cert.X509Certificate;
import javax.net.ssl.X509TrustManager;

class r implements X509TrustManager {
    final /* synthetic */ MySSLSocketFactory a;

    r(MySSLSocketFactory mySSLSocketFactory) {
        this.a = mySSLSocketFactory;
    }

    public void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) {
    }

    public void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) {
    }

    public X509Certificate[] getAcceptedIssuers() {
        return null;
    }
}