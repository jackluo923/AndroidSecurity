package org.acra.e;

import java.security.cert.X509Certificate;
import javax.net.ssl.X509TrustManager;

class h implements X509TrustManager {
    h() {
    }

    public void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) {
    }

    public void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) {
    }

    public X509Certificate[] getAcceptedIssuers() {
        return new X509Certificate[0];
    }
}