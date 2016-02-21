package com.heyzap.http;

import android.util.Log;
import com.zeptolab.utils.HTMLEncoder;
import java.io.UnsupportedEncodingException;
import org.apache.http.Header;

public abstract class TextHttpResponseHandler extends AsyncHttpResponseHandler {
    private static final String LOG_TAG = "TextHttpResponseHandler";

    public TextHttpResponseHandler() {
        this(HTMLEncoder.ENCODE_NAME_DEFAULT);
    }

    public TextHttpResponseHandler(String str) {
        setCharset(str);
    }

    public static String getResponseString(byte[] bArr, String str) {
        if (bArr == null) {
            return null;
        }
        try {
            return new String(bArr, str);
        } catch (UnsupportedEncodingException e) {
            Log.e(LOG_TAG, "Encoding response into string failed", e);
            return null;
        }
    }

    public abstract void onFailure(int i, Header[] headerArr, String str, Throwable th);

    public void onFailure(int i, Header[] headerArr, byte[] bArr, Throwable th) {
        onFailure(i, headerArr, getResponseString(bArr, getCharset()), th);
    }

    public abstract void onSuccess(int i, Header[] headerArr, String str);

    public void onSuccess(int i, Header[] headerArr, byte[] bArr) {
        onSuccess(i, headerArr, getResponseString(bArr, getCharset()));
    }
}