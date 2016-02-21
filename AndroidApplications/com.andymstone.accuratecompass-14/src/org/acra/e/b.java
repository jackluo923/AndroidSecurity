package org.acra.e;

import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.net.SocketAddress;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.TrustManager;
import org.apache.http.conn.scheme.LayeredSocketFactory;
import org.apache.http.conn.scheme.SocketFactory;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;

public class b implements LayeredSocketFactory, SocketFactory {
    private SSLContext a;

    public b() {
        this.a = null;
    }

    private static SSLContext a() {
        try {
            SSLContext instance = SSLContext.getInstance("TLS");
            instance.init(null, new TrustManager[]{new h()}, null);
            return instance;
        } catch (Exception e) {
            throw new IOException(e.getMessage());
        }
    }

    private SSLContext b_() {
        if (this.a == null) {
            this.a = a();
        }
        return this.a;
    }

    public Socket connectSocket(Socket socket, String str, int i, InetAddress inetAddress, int i2, HttpParams httpParams) {
        int connectionTimeout = HttpConnectionParams.getConnectionTimeout(httpParams);
        int soTimeout = HttpConnectionParams.getSoTimeout(httpParams);
        SocketAddress inetSocketAddress = new InetSocketAddress(str, i);
        SSLSocket sSLSocket = (SSLSocket) (socket != null ? socket : createSocket());
        if (inetAddress != null || i2 > 0) {
            if (i2 < 0) {
                i2 = 0;
            }
            sSLSocket.bind(new InetSocketAddress(inetAddress, i2));
        }
        sSLSocket.connect(inetSocketAddress, connectionTimeout);
        sSLSocket.setSoTimeout(soTimeout);
        return sSLSocket;
    }

    public Socket createSocket() {
        return b().getSocketFactory().createSocket();
    }

    public Socket createSocket(Socket socket, String str, int i, boolean z) {
        return b().getSocketFactory().createSocket(socket, str, i, z);
    }

    public boolean isSecure(Socket socket) {
        return true;
    }
}