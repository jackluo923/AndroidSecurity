package com.heyzap.http;

import android.util.Log;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;
import org.apache.http.Header;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpResponseException;

public abstract class BinaryHttpResponseHandler extends AsyncHttpResponseHandler {
    private static final String LOG_TAG = "BinaryHttpResponseHandler";
    private String[] mAllowedContentTypes;

    public BinaryHttpResponseHandler() {
        this.mAllowedContentTypes = new String[]{"image/jpeg", "image/png"};
    }

    public BinaryHttpResponseHandler(String[] strArr) {
        this.mAllowedContentTypes = new String[]{"image/jpeg", "image/png"};
        if (strArr != null) {
            this.mAllowedContentTypes = strArr;
        } else {
            Log.e(LOG_TAG, "Constructor passed allowedContentTypes was null !");
        }
    }

    public String[] getAllowedContentTypes() {
        return this.mAllowedContentTypes;
    }

    public abstract void onFailure(int i, Header[] headerArr, byte[] bArr, Throwable th);

    public abstract void onSuccess(int i, Header[] headerArr, byte[] bArr);

    public final void sendResponseMessage(HttpResponse httpResponse) {
        int i = 0;
        StatusLine statusLine = httpResponse.getStatusLine();
        Header[] headers = httpResponse.getHeaders("Content-Type");
        if (headers.length != 1) {
            sendFailureMessage(statusLine.getStatusCode(), httpResponse.getAllHeaders(), null, new HttpResponseException(statusLine.getStatusCode(), "None, or more than one, Content-Type Header found!"));
        } else {
            Header header = headers[0];
            String[] allowedContentTypes = getAllowedContentTypes();
            int length = allowedContentTypes.length;
            int i2 = 0;
            while (i2 < length) {
                String str = allowedContentTypes[i2];
                try {
                    if (Pattern.matches(str, header.getValue())) {
                        i = 1;
                    }
                } catch (PatternSyntaxException e) {
                    Log.e(LOG_TAG, "Given pattern is not valid: " + str, e);
                }
                i2++;
            }
            if (i == 0) {
                sendFailureMessage(statusLine.getStatusCode(), httpResponse.getAllHeaders(), null, new HttpResponseException(statusLine.getStatusCode(), "Content-Type not allowed!"));
            } else {
                super.sendResponseMessage(httpResponse);
            }
        }
    }
}