package com.heyzap.http;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import java.io.IOException;
import java.io.InputStream;
import java.lang.ref.WeakReference;
import java.net.URI;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpResponseException;
import org.apache.http.util.ByteArrayBuffer;

public abstract class AsyncHttpResponseHandler implements ResponseHandlerInterface {
    protected static final int BUFFER_SIZE = 4096;
    protected static final int CANCEL_MESSAGE = 6;
    public static final String DEFAULT_CHARSET = "UTF-8";
    protected static final int FAILURE_MESSAGE = 1;
    protected static final int FINISH_MESSAGE = 3;
    private static final String LOG_TAG = "AsyncHttpResponseHandler";
    protected static final int PROGRESS_MESSAGE = 4;
    protected static final int RETRY_MESSAGE = 5;
    protected static final int START_MESSAGE = 2;
    protected static final int SUCCESS_MESSAGE = 0;
    private Handler handler;
    private Header[] requestHeaders;
    private URI requestURI;
    private String responseCharset;
    private Boolean useSynchronousMode;

    static class a extends Handler {
        private final WeakReference a;

        a(AsyncHttpResponseHandler asyncHttpResponseHandler) {
            this.a = new WeakReference(asyncHttpResponseHandler);
        }

        public void handleMessage(Message message) {
            AsyncHttpResponseHandler asyncHttpResponseHandler = (AsyncHttpResponseHandler) this.a.get();
            if (asyncHttpResponseHandler != null) {
                asyncHttpResponseHandler.handleMessage(message);
            }
        }
    }

    public AsyncHttpResponseHandler() {
        this.responseCharset = DEFAULT_CHARSET;
        this.useSynchronousMode = Boolean.valueOf(true);
        this.requestURI = null;
        this.requestHeaders = null;
        postRunnable(null);
    }

    public String getCharset() {
        return this.responseCharset == null ? DEFAULT_CHARSET : this.responseCharset;
    }

    public Header[] getRequestHeaders() {
        return this.requestHeaders;
    }

    public URI getRequestURI() {
        return this.requestURI;
    }

    byte[] getResponseData(HttpEntity httpEntity) {
        int i = BUFFER_SIZE;
        if (httpEntity != null) {
            InputStream content = httpEntity.getContent();
            if (content != null) {
                long contentLength = httpEntity.getContentLength();
                if (contentLength > 2147483647L) {
                    throw new IllegalArgumentException("HTTP entity too large to be buffered in memory");
                }
                if (contentLength >= 0) {
                    i = (int) contentLength;
                }
                try {
                    ByteArrayBuffer byteArrayBuffer = new ByteArrayBuffer(i);
                    byte[] bArr = new byte[4096];
                    i = 0;
                    while (true) {
                        int read = content.read(bArr);
                        if (read == -1 || Thread.currentThread().isInterrupted()) {
                            content.close();
                            return byteArrayBuffer.toByteArray();
                        } else {
                            i += read;
                            byteArrayBuffer.append(bArr, 0, read);
                            sendProgressMessage(i, (int) contentLength);
                        }
                    }
                } catch (OutOfMemoryError e) {
                    System.gc();
                    throw new IOException("File too large to fit into available memory");
                }
            }
        }
        return null;
    }

    public boolean getUseSynchronousMode() {
        return this.useSynchronousMode.booleanValue();
    }

    protected void handleMessage(Message message) {
        Object[] objArr;
        switch (message.what) {
            case IabHelper.BILLING_RESPONSE_RESULT_OK:
                objArr = (Object[]) message.obj;
                if (objArr != null && objArr.length >= 3) {
                    onSuccess(((Integer) objArr[0]).intValue(), (Header[]) objArr[1], (byte[]) objArr[2]);
                }
            case FAILURE_MESSAGE:
                objArr = (Object[]) message.obj;
                if (objArr != null && objArr.length >= 4) {
                    onFailure(((Integer) objArr[0]).intValue(), (Header[]) objArr[1], (byte[]) objArr[2], (Throwable) objArr[3]);
                }
            case START_MESSAGE:
                onStart();
            case FINISH_MESSAGE:
                onFinish();
            case PROGRESS_MESSAGE:
                objArr = (Object[]) message.obj;
                if (objArr != null && objArr.length >= 2) {
                    try {
                        onProgress(((Integer) objArr[0]).intValue(), ((Integer) objArr[1]).intValue());
                    } catch (Throwable th) {
                    }
                }
            case RETRY_MESSAGE:
                objArr = (Object[]) message.obj;
                if (objArr != null && objArr.length == 1) {
                    onRetry(((Integer) objArr[0]).intValue());
                }
            case CANCEL_MESSAGE:
                onCancel();
            default:
                break;
        }
    }

    protected Message obtainMessage(int i, Object obj) {
        if (this.handler != null) {
            return this.handler.obtainMessage(i, obj);
        }
        Message obtain = Message.obtain();
        if (obtain == null) {
            return obtain;
        }
        obtain.what = i;
        obtain.obj = obj;
        return obtain;
    }

    public void onCancel() {
    }

    public abstract void onFailure(int i, Header[] headerArr, byte[] bArr, Throwable th);

    public void onFinish() {
    }

    public void onProgress(int i, int i2) {
    }

    public void onRetry(int i) {
    }

    public void onStart() {
    }

    public abstract void onSuccess(int i, Header[] headerArr, byte[] bArr);

    protected void postRunnable(Runnable runnable) {
        if ((Looper.myLooper() == null ? FAILURE_MESSAGE : 0) == 0) {
            if (this.handler == null) {
                this.handler = new a(this);
            }
            this.handler.post(runnable);
        } else if (runnable != null) {
            runnable.run();
        }
    }

    public final void sendCancelMessage() {
        sendMessage(obtainMessage(CANCEL_MESSAGE, null));
    }

    public final void sendFailureMessage(int i, Header[] headerArr, byte[] bArr, Throwable th) {
        sendMessage(obtainMessage(FAILURE_MESSAGE, new Object{Integer.valueOf(i), headerArr, bArr, th}));
    }

    public final void sendFinishMessage() {
        sendMessage(obtainMessage(FINISH_MESSAGE, null));
    }

    protected void sendMessage(Message message) {
        if (getUseSynchronousMode() || this.handler == null) {
            handleMessage(message);
        } else if (!Thread.currentThread().isInterrupted()) {
            this.handler.sendMessage(message);
        }
    }

    public final void sendProgressMessage(int i, int i2) {
        sendMessage(obtainMessage(PROGRESS_MESSAGE, new Object{Integer.valueOf(i), Integer.valueOf(i2)}));
    }

    public void sendResponseMessage(HttpResponse httpResponse) {
        if (!Thread.currentThread().isInterrupted()) {
            StatusLine statusLine = httpResponse.getStatusLine();
            byte[] responseData = getResponseData(httpResponse.getEntity());
            if (!Thread.currentThread().isInterrupted()) {
                if (statusLine.getStatusCode() >= 300) {
                    sendFailureMessage(statusLine.getStatusCode(), httpResponse.getAllHeaders(), responseData, new HttpResponseException(statusLine.getStatusCode(), statusLine.getReasonPhrase()));
                } else {
                    sendSuccessMessage(statusLine.getStatusCode(), httpResponse.getAllHeaders(), responseData);
                }
            }
        }
    }

    public final void sendRetryMessage(int i) {
        sendMessage(obtainMessage(RETRY_MESSAGE, new Object{Integer.valueOf(i)}));
    }

    public final void sendStartMessage() {
        sendMessage(obtainMessage(START_MESSAGE, null));
    }

    public final void sendSuccessMessage(int i, Header[] headerArr, byte[] bArr) {
        sendMessage(obtainMessage(0, new Object{Integer.valueOf(i), headerArr, bArr}));
    }

    public void setCharset(String str) {
        this.responseCharset = str;
    }

    public void setRequestHeaders(Header[] headerArr) {
        this.requestHeaders = headerArr;
    }

    public void setRequestURI(URI uri) {
        this.requestURI = uri;
    }

    public void setUseSynchronousMode(boolean z) {
        this.useSynchronousMode = Boolean.valueOf(z);
    }
}