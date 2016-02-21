package com.heyzap.http;

import android.content.Context;
import android.util.Log;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import org.apache.http.Header;
import org.apache.http.HttpEntity;

public abstract class FileAsyncHttpResponseHandler extends AsyncHttpResponseHandler {
    static final /* synthetic */ boolean $assertionsDisabled;
    private static final String LOG_TAG = "FileAsyncHttpResponseHandler";
    private File mFile;

    static {
        $assertionsDisabled = FileAsyncHttpResponseHandler.class.desiredAssertionStatus() ? $assertionsDisabled : true;
    }

    public FileAsyncHttpResponseHandler(Context context) {
        this.mFile = getTemporaryFile(context);
    }

    public FileAsyncHttpResponseHandler(File file) {
        if ($assertionsDisabled || file != null) {
            this.mFile = file;
        } else {
            throw new AssertionError();
        }
    }

    public boolean deleteTargetFile() {
        return (getTargetFile() == null || !getTargetFile().delete()) ? $assertionsDisabled : true;
    }

    protected byte[] getResponseData(HttpEntity httpEntity) {
        int i = 0;
        if (httpEntity != null) {
            InputStream content = httpEntity.getContent();
            long contentLength = httpEntity.getContentLength();
            FileOutputStream fileOutputStream = new FileOutputStream(getTargetFile());
            if (content != null) {
                byte[] bArr = new byte[4096];
                while (true) {
                    int read = content.read(bArr);
                    if (read != -1 && !Thread.currentThread().isInterrupted()) {
                        i += read;
                        fileOutputStream.write(bArr, 0, read);
                        sendProgressMessage(i, (int) contentLength);
                    }
                    content.close();
                    fileOutputStream.flush();
                    fileOutputStream.close();
                }
            }
        }
        return null;
    }

    protected File getTargetFile() {
        if ($assertionsDisabled || this.mFile != null) {
            return this.mFile;
        }
        throw new AssertionError();
    }

    protected File getTemporaryFile(Context context) {
        if ($assertionsDisabled || context != null) {
            try {
                return File.createTempFile("temp_", "_handled", context.getCacheDir());
            } catch (Throwable th) {
                Log.e(LOG_TAG, "Cannot create temporary file", th);
                return null;
            }
        }
        throw new AssertionError();
    }

    public abstract void onFailure(int i, Header[] headerArr, Throwable th, File file);

    public final void onFailure(int i, Header[] headerArr, byte[] bArr, Throwable th) {
        onFailure(i, headerArr, th, getTargetFile());
    }

    public abstract void onSuccess(int i, Header[] headerArr, File file);

    public final void onSuccess(int i, Header[] headerArr, byte[] bArr) {
        onSuccess(i, headerArr, getTargetFile());
    }
}