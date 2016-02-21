package me.kiip.internal.e;

import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.SecureCacheResponse;
import java.net.URL;
import java.security.Permission;
import java.security.Principal;
import java.security.cert.Certificate;
import java.util.List;
import java.util.Map;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import me.kiip.internal.c.g;

public final class i extends HttpsURLConnection {
    private final a a;

    private final class a extends g {
        private a(URL url, g gVar) {
            super(url, gVar);
        }

        public HttpURLConnection a_() {
            return i.this;
        }

        public SecureCacheResponse e() {
            return this.c instanceof h ? (SecureCacheResponse) this.c.l() : null;
        }
    }

    public i(URL url, g gVar) {
        super(url);
        this.a = new a(url, gVar, null);
    }

    private SSLSocket b() {
        if (this.a.c == null || this.a.c.f == -1) {
            throw new IllegalStateException("Connection has not yet been established");
        } else if (this.a.c instanceof h) {
            return ((h) this.a.c).u();
        } else {
            return null;
        }
    }

    public e a() {
        return this.a.b();
    }

    public void addRequestProperty(String str, String str2) {
        this.a.addRequestProperty(str, str2);
    }

    public void connect() {
        this.connected = true;
        this.a.connect();
    }

    public void disconnect() {
        this.a.disconnect();
    }

    public boolean getAllowUserInteraction() {
        return this.a.getAllowUserInteraction();
    }

    public String getCipherSuite() {
        SecureCacheResponse e = this.a.e();
        if (e != null) {
            return e.getCipherSuite();
        }
        SSLSocket b = b();
        return b != null ? b.getSession().getCipherSuite() : null;
    }

    public int getConnectTimeout() {
        return this.a.getConnectTimeout();
    }

    public Object getContent() {
        return this.a.getContent();
    }

    public Object getContent(Class[] clsArr) {
        return this.a.getContent(clsArr);
    }

    public String getContentEncoding() {
        return this.a.getContentEncoding();
    }

    public int getContentLength() {
        return this.a.getContentLength();
    }

    public String getContentType() {
        return this.a.getContentType();
    }

    public long getDate() {
        return this.a.getDate();
    }

    public boolean getDefaultUseCaches() {
        return this.a.getDefaultUseCaches();
    }

    public boolean getDoInput() {
        return this.a.getDoInput();
    }

    public boolean getDoOutput() {
        return this.a.getDoOutput();
    }

    public InputStream getErrorStream() {
        return this.a.getErrorStream();
    }

    public long getExpiration() {
        return this.a.getExpiration();
    }

    public String getHeaderField(int i) {
        return this.a.getHeaderField(i);
    }

    public String getHeaderField(String str) {
        return this.a.getHeaderField(str);
    }

    public long getHeaderFieldDate(String str, long j) {
        return this.a.getHeaderFieldDate(str, j);
    }

    public int getHeaderFieldInt(String str, int i) {
        return this.a.getHeaderFieldInt(str, i);
    }

    public String getHeaderFieldKey(int i) {
        return this.a.getHeaderFieldKey(i);
    }

    public Map getHeaderFields() {
        return this.a.getHeaderFields();
    }

    public HostnameVerifier getHostnameVerifier() {
        return this.a.a.h();
    }

    public long getIfModifiedSince() {
        return this.a.getIfModifiedSince();
    }

    public InputStream getInputStream() {
        return this.a.getInputStream();
    }

    public boolean getInstanceFollowRedirects() {
        return this.a.getInstanceFollowRedirects();
    }

    public long getLastModified() {
        return this.a.getLastModified();
    }

    public Certificate[] getLocalCertificates() {
        SecureCacheResponse e = this.a.e();
        if (e != null) {
            List localCertificateChain = e.getLocalCertificateChain();
            return localCertificateChain != null ? (Certificate[]) localCertificateChain.toArray(new Certificate[localCertificateChain.size()]) : null;
        } else {
            SSLSocket b = b();
            return b != null ? b.getSession().getLocalCertificates() : null;
        }
    }

    public Principal getLocalPrincipal() {
        SecureCacheResponse e = this.a.e();
        if (e != null) {
            return e.getLocalPrincipal();
        }
        SSLSocket b = b();
        return b != null ? b.getSession().getLocalPrincipal() : null;
    }

    public OutputStream getOutputStream() {
        return this.a.getOutputStream();
    }

    public Principal getPeerPrincipal() {
        SecureCacheResponse e = this.a.e();
        if (e != null) {
            return e.getPeerPrincipal();
        }
        SSLSocket b = b();
        return b != null ? b.getSession().getPeerPrincipal() : null;
    }

    public Permission getPermission() {
        return this.a.getPermission();
    }

    public int getReadTimeout() {
        return this.a.getReadTimeout();
    }

    public String getRequestMethod() {
        return this.a.getRequestMethod();
    }

    public Map getRequestProperties() {
        return this.a.getRequestProperties();
    }

    public String getRequestProperty(String str) {
        return this.a.getRequestProperty(str);
    }

    public int getResponseCode() {
        return this.a.getResponseCode();
    }

    public String getResponseMessage() {
        return this.a.getResponseMessage();
    }

    public SSLSocketFactory getSSLSocketFactory() {
        return this.a.a.g();
    }

    public Certificate[] getServerCertificates() {
        SecureCacheResponse e = this.a.e();
        if (e != null) {
            List serverCertificateChain = e.getServerCertificateChain();
            return serverCertificateChain != null ? (Certificate[]) serverCertificateChain.toArray(new Certificate[serverCertificateChain.size()]) : null;
        } else {
            SSLSocket b = b();
            return b != null ? b.getSession().getPeerCertificates() : null;
        }
    }

    public URL getURL() {
        return this.a.getURL();
    }

    public boolean getUseCaches() {
        return this.a.getUseCaches();
    }

    public void setAllowUserInteraction(boolean z) {
        this.a.setAllowUserInteraction(z);
    }

    public void setChunkedStreamingMode(int i) {
        this.a.setChunkedStreamingMode(i);
    }

    public void setConnectTimeout(int i) {
        this.a.setConnectTimeout(i);
    }

    public void setDefaultUseCaches(boolean z) {
        this.a.setDefaultUseCaches(z);
    }

    public void setDoInput(boolean z) {
        this.a.setDoInput(z);
    }

    public void setDoOutput(boolean z) {
        this.a.setDoOutput(z);
    }

    public void setFixedLengthStreamingMode(int i) {
        this.a.setFixedLengthStreamingMode(i);
    }

    public void setHostnameVerifier(HostnameVerifier hostnameVerifier) {
        this.a.a.a(hostnameVerifier);
    }

    public void setIfModifiedSince(long j) {
        this.a.setIfModifiedSince(j);
    }

    public void setInstanceFollowRedirects(boolean z) {
        this.a.setInstanceFollowRedirects(z);
    }

    public void setReadTimeout(int i) {
        this.a.setReadTimeout(i);
    }

    public void setRequestMethod(String str) {
        this.a.setRequestMethod(str);
    }

    public void setRequestProperty(String str, String str2) {
        this.a.setRequestProperty(str, str2);
    }

    public void setSSLSocketFactory(SSLSocketFactory sSLSocketFactory) {
        this.a.a.a(sSLSocketFactory);
    }

    public void setUseCaches(boolean z) {
        this.a.setUseCaches(z);
    }

    public String toString() {
        return this.a.toString();
    }

    public boolean usingProxy() {
        return this.a.usingProxy();
    }
}