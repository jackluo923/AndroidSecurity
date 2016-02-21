package com.loopj.twicecircled.android.http;

import android.os.Message;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.io.IOException;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpResponseException;
import org.apache.http.entity.BufferedHttpEntity;
import org.apache.http.util.EntityUtils;

public class BinaryHttpResponseHandler extends AsyncHttpResponseHandler {
    private static String[] mAllowedContentTypes;

    static {
        mAllowedContentTypes = new String[]{"image/jpeg", "image/png"};
    }

    public BinaryHttpResponseHandler(String[] strArr) {
        this();
        mAllowedContentTypes = strArr;
    }

    protected void handleFailureMessage(Throwable th, byte[] bArr) {
        onFailure(th, bArr);
    }

    protected void handleMessage(Message message) {
        Object[] objArr;
        switch (message.what) {
            case IabHelper.BILLING_RESPONSE_RESULT_OK:
                objArr = (Object[]) message.obj;
                handleSuccessMessage(((Integer) objArr[0]).intValue(), (byte[]) objArr[1]);
            case GoogleScorer.CLIENT_GAMES:
                objArr = (Object[]) message.obj;
                handleFailureMessage((Throwable) objArr[0], (byte[]) objArr[1]);
            default:
                super.handleMessage(message);
        }
    }

    protected void handleSuccessMessage(int i, byte[] bArr) {
        onSuccess(i, bArr);
    }

    public void onFailure(Throwable th, byte[] bArr) {
        onFailure(th);
    }

    public void onSuccess(int i, byte[] bArr) {
        onSuccess(bArr);
    }

    public void onSuccess(byte[] bArr) {
    }

    protected void sendFailureMessage(Throwable th, byte[] bArr) {
        sendMessage(obtainMessage(1, new Object{th, bArr}));
    }

    void sendResponseMessage(HttpResponse httpResponse) {
        int i = 0;
        StatusLine statusLine = httpResponse.getStatusLine();
        Header[] headers = httpResponse.getHeaders("Content-Type");
        byte[] bArr = (byte[]) null;
        if (headers.length != 1) {
            sendFailureMessage(new HttpResponseException(statusLine.getStatusCode(), "None, or more than one, Content-Type Header found!"), bArr);
        } else {
            Header header = headers[0];
            String[] strArr = mAllowedContentTypes;
            int length = strArr.length;
            int i2 = 0;
            while (i2 < length) {
                if (strArr[i2].equals(header.getValue())) {
                    i = 1;
                }
                i2++;
            }
            if (i == 0) {
                sendFailureMessage(new HttpResponseException(statusLine.getStatusCode(), "Content-Type not allowed!"), bArr);
            } else {
                try {
                    HttpEntity entity = httpResponse.getEntity();
                    bArr = EntityUtils.toByteArray(entity != null ? new BufferedHttpEntity(entity) : null);
                } catch (IOException e) {
                    sendFailureMessage(e, null);
                }
                if (statusLine.getStatusCode() >= 300) {
                    sendFailureMessage(new HttpResponseException(statusLine.getStatusCode(), statusLine.getReasonPhrase()), bArr);
                } else {
                    sendSuccessMessage(statusLine.getStatusCode(), bArr);
                }
            }
        }
    }

    protected void sendSuccessMessage(int i, byte[] bArr) {
        sendMessage(obtainMessage(0, new Object{Integer.valueOf(i), bArr}));
    }
}