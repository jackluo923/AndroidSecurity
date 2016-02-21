package com.vungle.publisher.net.http;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import com.vungle.log.Logger;
import com.vungle.publisher.VungleService;
import com.vungle.publisher.ad.AdPreparer;
import com.vungle.publisher.am.b;
import com.vungle.publisher.bn;
import com.vungle.publisher.bo;
import com.vungle.publisher.cj;
import com.vungle.publisher.g;
import com.vungle.publisher.inject.Injector;
import com.vungle.publisher.net.http.HttpTransaction.a;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import javax.inject.Inject;
import javax.inject.Provider;
import javax.inject.Singleton;

public class DownloadHttpResponseHandler extends MaxRetryAgeHttpResponseHandler {
    public static final Creator CREATOR;
    public String a;
    public String b;
    public b c;
    @Inject
    AdPreparer d;
    @Inject
    cj e;

    @Singleton
    public static class Creator implements android.os.Parcelable.Creator {
        @Inject
        Provider a;

        public /* synthetic */ Object createFromParcel(Parcel parcel) {
            return ((DownloadHttpResponseHandler) this.a.get()).a(parcel);
        }

        public /* bridge */ /* synthetic */ Object[] newArray(int i) {
            return new DownloadHttpResponseHandler[i];
        }
    }

    @Singleton
    public static class Factory {
        @Inject
        public Provider a;

        Factory() {
        }
    }

    static {
        CREATOR = (Creator) Injector.getInstance().a.a(Creator.class);
    }

    DownloadHttpResponseHandler() {
    }

    protected final DownloadHttpResponseHandler a(Parcel parcel) {
        ClassLoader classLoader = DownloadHttpResponseHandler.class.getClassLoader();
        super.b(parcel);
        this.a = parcel.readString();
        this.b = parcel.readString();
        this.c = (b) parcel.readParcelable(classLoader);
        return this;
    }

    protected final void a() {
        this.e.b(new g());
    }

    protected final void a(HttpTransaction httpTransaction, bn bnVar, a aVar) {
        InputStream inputStream;
        OutputStream outputStream = null;
        boolean z = 1;
        try {
            HttpURLConnection httpURLConnection = bnVar.b;
            inputStream = httpURLConnection.getInputStream();
            try {
                OutputStream fileOutputStream;
                File file = new File(this.b);
                File parentFile = file.getParentFile();
                boolean z2;
                if (parentFile == null) {
                    Logger.w(Logger.FILE_TAG, "null directory path");
                    z2 = false;
                } else if (parentFile.mkdirs()) {
                    Logger.d(Logger.FILE_TAG, new StringBuilder("created directory: ").append(parentFile).toString());
                    z2 = true;
                } else if (parentFile.isDirectory()) {
                    Logger.v(Logger.FILE_TAG, new StringBuilder("directory exists: ").append(parentFile).toString());
                    z2 = true;
                } else {
                    Logger.d(Logger.FILE_TAG, new StringBuilder("unable to create directory: ").append(parentFile).toString());
                    z2 = false;
                }
                if (i == 0 || !parentFile.canWrite()) {
                    Logger.d(Logger.FILE_TAG, new StringBuilder("directory not writeable: ").append(parentFile).toString());
                    z = false;
                } else {
                    Logger.v(Logger.FILE_TAG, new StringBuilder("directory is writeable: ").append(parentFile).toString());
                }
                if (i != 0) {
                    Logger.d(Logger.NETWORK_TAG, new StringBuilder("downloading to: ").append(this.b).toString());
                    byte[] bArr = new byte[8192];
                    fileOutputStream = new FileOutputStream(file);
                    int i2 = 0;
                    while (true) {
                        try {
                            int read = inputStream.read(bArr);
                            if (read > 0) {
                                i2 += read;
                                fileOutputStream.write(bArr, 0, read);
                            } else {
                                fileOutputStream.flush();
                                read = httpURLConnection.getContentLength();
                                if (read < 0 || read == i2) {
                                    Logger.d(Logger.NETWORK_TAG, new StringBuilder("download complete: ").append(this.b).append(", size: ").append(i2).toString());
                                    AdPreparer adPreparer = this.d;
                                    String str = this.a;
                                    Parcelable parcelable = this.c;
                                    Logger.d(Logger.PREPARE_TAG, new StringBuilder("sending process ").append(parcelable).append(" request for ad ").append(str).toString());
                                    Intent a = adPreparer.a();
                                    a.putExtra(VungleService.AD_ID_EXTRA_KEY, str);
                                    a.putExtra(VungleService.VIEWABLE_TYPE_EXTRA_KEY, parcelable);
                                    a.putExtra(VungleService.VIEWABLE_SIZE_EXTRA_KEY, i2);
                                    adPreparer.a.startService(a);
                                } else {
                                    Logger.w(Logger.NETWORK_TAG, new StringBuilder("download size mismatch: ").append(this.b).append(", expected size: ").append(read).append(", actual size: ").append(i2).toString());
                                    a();
                                }
                            }
                        } catch (Throwable th) {
                            outputStream = fileOutputStream;
                            th = th;
                        }
                    }
                } else {
                    Logger.w(Logger.NETWORK_TAG, new StringBuilder("could not create or directory not writeable: ").append(file).toString());
                    a();
                    fileOutputStream = outputStream;
                }
                HttpRequest httpRequest = httpTransaction.a;
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (IOException e) {
                        Logger.d(Logger.NETWORK_TAG, httpRequest + ": error closing input stream", e);
                    }
                }
                if (fileOutputStream != null) {
                    try {
                        fileOutputStream.close();
                    } catch (IOException e2) {
                        Logger.d(Logger.NETWORK_TAG, httpRequest + ": error closing output stream", e2);
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                HttpRequest httpRequest2 = httpTransaction.a;
                if (inputStream != null) {
                    inputStream.close();
                }
                if (outputStream != null) {
                    outputStream.close();
                }
                throw th;
            }
        } catch (Throwable th3) {
            Throwable th4;
            th4 = th3;
            OutputStream outputStream2 = outputStream;
            HttpRequest httpRequest22 = httpTransaction.a;
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException e3) {
                    Logger.d(Logger.NETWORK_TAG, httpRequest22 + ": error closing input stream", e3);
                }
            }
            if (outputStream != null) {
                try {
                    outputStream.close();
                } catch (IOException e4) {
                    Logger.d(Logger.NETWORK_TAG, httpRequest22 + ": error closing output stream", e4);
                }
            }
            throw th4;
        }
    }

    protected final /* synthetic */ bo b(Parcel parcel) {
        return a(parcel);
    }

    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeString(this.a);
        parcel.writeString(this.b);
        parcel.writeParcelable(this.c, i);
    }
}