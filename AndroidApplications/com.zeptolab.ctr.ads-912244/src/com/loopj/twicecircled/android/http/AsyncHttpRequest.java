package com.loopj.twicecircled.android.http;

import java.io.IOException;
import java.net.ConnectException;
import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpRequestRetryHandler;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.impl.client.AbstractHttpClient;
import org.apache.http.protocol.HttpContext;

class AsyncHttpRequest implements Runnable {
    private final AbstractHttpClient client;
    private final HttpContext context;
    private int executionCount;
    private boolean isBinaryRequest;
    private final HttpUriRequest request;
    private final AsyncHttpResponseHandler responseHandler;

    public AsyncHttpRequest(AbstractHttpClient abstractHttpClient, HttpContext httpContext, HttpUriRequest httpUriRequest, AsyncHttpResponseHandler asyncHttpResponseHandler) {
        this.client = abstractHttpClient;
        this.context = httpContext;
        this.request = httpUriRequest;
        this.responseHandler = asyncHttpResponseHandler;
        if (asyncHttpResponseHandler instanceof BinaryHttpResponseHandler) {
            this.isBinaryRequest = true;
        }
    }

    private void makeRequest() {
        if (!Thread.currentThread().isInterrupted()) {
            HttpResponse execute = this.client.execute(this.request, this.context);
            if (!Thread.currentThread().isInterrupted() && this.responseHandler != null) {
                this.responseHandler.sendResponseMessage(execute);
            }
        }
    }

    private void makeRequestWithRetries() {
        boolean z = true;
        Throwable th = null;
        HttpRequestRetryHandler httpRequestRetryHandler = this.client.getHttpRequestRetryHandler();
        while (z) {
            try {
                makeRequest();
                return;
            } catch (UnknownHostException e) {
                th = e;
                if (this.responseHandler != null) {
                    this.responseHandler.sendFailureMessage(th, "can't resolve host");
                }
            } catch (SocketException e2) {
                th = e2;
                if (this.responseHandler != null) {
                    this.responseHandler.sendFailureMessage(th, "can't resolve host");
                }
            } catch (SocketTimeoutException e3) {
                th = e3;
                if (this.responseHandler != null) {
                    this.responseHandler.sendFailureMessage(th, "socket time out");
                }
            } catch (IOException e4) {
                th = e4;
                int i = this.executionCount + 1;
                this.executionCount = i;
                z = httpRequestRetryHandler.retryRequest(th, i, this.context);
            } catch (NullPointerException e5) {
                th = new IOException(new StringBuilder("NPE in HttpClient").append(e5.getMessage()).toString());
                i = this.executionCount + 1;
                this.executionCount = i;
                z = httpRequestRetryHandler.retryRequest(th, i, this.context);
            }
        }
        ConnectException connectException = new ConnectException();
        connectException.initCause(th);
        throw connectException;
    }

    public void run() {
        String str = null;
        try {
            if (this.responseHandler != null) {
                this.responseHandler.sendStartMessage();
            }
            makeRequestWithRetries();
            if (this.responseHandler != null) {
                this.responseHandler.sendFinishMessage();
            }
        } catch (IOException e) {
            th = e;
            if (this.responseHandler != null) {
                this.responseHandler.sendFinishMessage();
                Throwable th2;
                if (this.isBinaryRequest) {
                    this.responseHandler.sendFailureMessage(th2, (byte[])str);
                } else {
                    this.responseHandler.sendFailureMessage(th2, str);
                }
            }
        }
    }
}