package com.heyzap.http;

import android.os.Message;
import android.util.Log;
import java.io.IOException;
import java.io.InputStream;
import org.apache.http.HttpEntity;
import org.apache.http.util.ByteArrayBuffer;

public abstract class DataAsyncHttpResponseHandler extends AsyncHttpResponseHandler {
    private static final String LOG_TAG = "DataAsyncHttpResponseHandler";
    protected static final int PROGRESS_DATA_MESSAGE = 6;

    public static byte[] copyOfRange(byte[] bArr, int i, int i2) {
        if (i > i2) {
            throw new IllegalArgumentException();
        }
        int length = bArr.length;
        if (i < 0 || i > length) {
            throw new ArrayIndexOutOfBoundsException();
        }
        int i3 = i2 - i;
        length = Math.min(i3, length - i);
        Object obj = new Object[i3];
        System.arraycopy(bArr, i, obj, 0, length);
        return obj;
    }

    byte[] getResponseData(HttpEntity httpEntity) {
        if (httpEntity == null) {
            return null;
        }
        InputStream content = httpEntity.getContent();
        if (content == null) {
            return null;
        }
        long contentLength = httpEntity.getContentLength();
        if (contentLength > 2147483647L) {
            throw new IllegalArgumentException("HTTP entity too large to be buffered in memory");
        }
        if (contentLength < 0) {
            contentLength = 4096;
        }
        try {
            ByteArrayBuffer byteArrayBuffer = new ByteArrayBuffer((int) contentLength);
            byte[] bArr = new byte[4096];
            while (true) {
                int read = content.read(bArr);
                if (read == -1 || Thread.currentThread().isInterrupted()) {
                    content.close();
                    return byteArrayBuffer.toByteArray();
                } else {
                    byteArrayBuffer.append(bArr, 0, read);
                    sendProgressDataMessage(copyOfRange(bArr, 0, read));
                }
            }
        } catch (OutOfMemoryError e) {
            System.gc();
            throw new IOException("File too large to fit into available memory");
        }
    }

    protected void handleMessage(Message message) {
        super.handleMessage(message);
        switch (message.what) {
            case PROGRESS_DATA_MESSAGE:
                Object[] objArr = (Object[]) message.obj;
                if (objArr == null || objArr.length < 1) {
                    Log.e(LOG_TAG, "PROGRESS_DATA_MESSAGE didn't got enough params");
                } else {
                    try {
                        onProgressData((byte[]) objArr[0]);
                    } catch (Throwable th) {
                        Log.e(LOG_TAG, "custom onProgressData contains an error", th);
                    }
                }
            default:
                break;
        }
    }

    public void onProgressData(byte[] bArr) {
    }

    public final void sendProgressDataMessage(byte[] bArr) {
        sendMessage(obtainMessage(PROGRESS_DATA_MESSAGE, new Object{bArr}));
    }
}