package com.google.android.apps.analytics;

import android.util.Log;
import java.io.IOException;
import java.net.Socket;
import org.apache.http.Header;
import org.apache.http.HttpConnectionMetrics;
import org.apache.http.HttpEntityEnclosingRequest;
import org.apache.http.HttpException;
import org.apache.http.HttpHost;
import org.apache.http.HttpResponse;
import org.apache.http.HttpVersion;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.SocketFactory;
import org.apache.http.impl.DefaultHttpClientConnection;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpParams;

class PipelinedRequester {
    private static final int RECEIVE_BUFFER_SIZE = 8192;
    Callbacks callbacks;
    boolean canPipeline;
    DefaultHttpClientConnection connection;
    HttpHost host;
    int lastStatusCode;
    SocketFactory socketFactory;

    static interface Callbacks {
        void pipelineModeChanged(boolean z);

        void requestSent();

        void serverError(int i);
    }

    public PipelinedRequester(HttpHost httpHost) {
        this(httpHost, new PlainSocketFactory());
    }

    public PipelinedRequester(HttpHost httpHost, SocketFactory socketFactory) {
        this.connection = new DefaultHttpClientConnection();
        this.canPipeline = true;
        this.host = httpHost;
        this.socketFactory = socketFactory;
    }

    private void closeConnection() {
        if (this.connection != null && this.connection.isOpen()) {
            try {
                this.connection.close();
            } catch (IOException e) {
            }
        }
    }

    private void maybeOpenConnection() throws IOException {
        if (this.connection == null || !this.connection.isOpen()) {
            HttpParams basicHttpParams = new BasicHttpParams();
            Socket connectSocket = this.socketFactory.connectSocket(this.socketFactory.createSocket(), this.host.getHostName(), this.host.getPort(), null, 0, basicHttpParams);
            connectSocket.setReceiveBufferSize(RECEIVE_BUFFER_SIZE);
            this.connection.bind(connectSocket, basicHttpParams);
        }
    }

    public void addRequest(HttpEntityEnclosingRequest httpEntityEnclosingRequest) throws HttpException, IOException {
        maybeOpenConnection();
        this.connection.sendRequestHeader(httpEntityEnclosingRequest);
        this.connection.sendRequestEntity(httpEntityEnclosingRequest);
    }

    public void finishedCurrentRequests() {
        closeConnection();
    }

    public void installCallbacks(Callbacks callbacks) {
        this.callbacks = callbacks;
    }

    public void sendRequests() throws IOException, HttpException {
        this.connection.flush();
        HttpConnectionMetrics metrics = this.connection.getMetrics();
        while (metrics.getResponseCount() < metrics.getRequestCount()) {
            HttpResponse receiveResponseHeader = this.connection.receiveResponseHeader();
            if (!receiveResponseHeader.getStatusLine().getProtocolVersion().greaterEquals(HttpVersion.HTTP_1_1)) {
                this.callbacks.pipelineModeChanged(false);
                this.canPipeline = false;
            }
            Header[] headers = receiveResponseHeader.getHeaders("Connection");
            if (headers != null) {
                int length = headers.length;
                int i = 0;
                while (i < length) {
                    if ("close".equalsIgnoreCase(headers[i].getValue())) {
                        this.callbacks.pipelineModeChanged(false);
                        this.canPipeline = false;
                    }
                    i++;
                }
            }
            this.lastStatusCode = receiveResponseHeader.getStatusLine().getStatusCode();
            if (this.lastStatusCode != 200) {
                this.callbacks.serverError(this.lastStatusCode);
                closeConnection();
                return;
            } else {
                this.connection.receiveResponseEntity(receiveResponseHeader);
                receiveResponseHeader.getEntity().consumeContent();
                this.callbacks.requestSent();
                if (GoogleAnalyticsTracker.getInstance().getDebug()) {
                    Log.v(GoogleAnalyticsTracker.LOG_TAG, "HTTP Response Code: " + receiveResponseHeader.getStatusLine().getStatusCode());
                }
                if (!this.canPipeline) {
                    closeConnection();
                    return;
                }
            }
        }
    }
}