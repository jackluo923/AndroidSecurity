package com.heyzap.http;

import android.util.Log;
import com.brightcove.player.model.Video.Fields;
import com.heyzap.http.RequestParams.StreamWrapper;
import com.inmobi.commons.analytics.db.AnalyticsSQLiteHelper;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.inmobi.commons.internal.ApiStatCollector.ApiEventType;
import com.zeptolab.ctr.ads.R;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.zbuild.ZBuildConfig;
import java.io.BufferedOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.zip.GZIPOutputStream;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.message.BasicHeader;

class q implements HttpEntity {
    private static final String a = "JsonStreamerEntity";
    private static final UnsupportedOperationException b;
    private static final int c = 2048;
    private static final StringBuilder d;
    private static final byte[] e;
    private static final byte[] f;
    private static final byte[] g;
    private static final byte[] h;
    private static final byte[] i;
    private static final byte[] j;
    private static final byte[] k;
    private static final Header l;
    private static final Header m;
    private static final String n = "application/octet-stream";
    private final Map o;
    private final Map p;
    private final Header q;

    static {
        b = new UnsupportedOperationException("Unsupported operation in this implementation.");
        d = new StringBuilder(2764);
        e = "true".getBytes();
        f = "false".getBytes();
        g = "null".getBytes();
        h = a(Fields.NAME);
        i = a(AnalyticsSQLiteHelper.EVENT_LIST_TYPE);
        j = a("contents");
        k = a("_elapsed");
        l = new BasicHeader("Content-Type", WebRequest.CONTENT_TYPE_JSON);
        m = new BasicHeader("Content-Encoding", AsyncHttpClient.ENCODING_GZIP);
    }

    public q(boolean z) {
        this.o = new HashMap();
        this.p = new HashMap();
        this.q = z ? m : null;
    }

    static byte[] a(String str) {
        if (str == null) {
            return g;
        }
        d.append('\"');
        int length = str.length();
        int i = -1;
        while (true) {
            int i2 = i + 1;
            if (i2 < length) {
                char charAt = str.charAt(i2);
                switch (charAt) {
                    case IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED:
                        d.append("\\b");
                        break;
                    case ZBuildConfig.$minsdk:
                        d.append("\\t");
                        break;
                    case R.styleable.MapAttrs_uiZoomControls:
                        d.append("\\n");
                        break;
                    case R.styleable.MapAttrs_useViewLifecycle:
                        d.append("\\f");
                        break;
                    case R.styleable.MapAttrs_zOrderOnTop:
                        d.append("\\r");
                        break;
                    case ApiEventType.API_MRAID_UNMUTE_AUDIO:
                        d.append("\\\"");
                        break;
                    case '\\':
                        d.append("\\\\");
                        break;
                    default:
                        if (charAt < '\u0000' || charAt > '\u001f') {
                            if ((charAt < '\u007f' || charAt > '\u009f') && (charAt < '\u2000' || charAt > '\u20ff')) {
                                d.append(charAt);
                            }
                        }
                        String toHexString = Integer.toHexString(charAt);
                        d.append("\\u");
                        int length2 = 4 - toHexString.length();
                        i = 0;
                        while (i < length2) {
                            d.append('0');
                            i++;
                        }
                        d.append(toHexString.toUpperCase(Locale.US));
                        break;
                }
                i = i2;
            } else {
                d.append('\"');
                byte[] bytes = d.toString().getBytes();
                d.setLength(0);
                return bytes;
            }
        }
    }

    public void a(String str, InputStream inputStream, String str2, String str3) {
        if (str3 == null) {
            str3 = n;
        }
        this.p.put(str, new StreamWrapper(inputStream, str2, str3));
    }

    public void a(String str, Object obj) {
        this.o.put(str, obj);
    }

    public void consumeContent() {
    }

    public InputStream getContent() {
        throw b;
    }

    public Header getContentEncoding() {
        return this.q;
    }

    public long getContentLength() {
        return -1;
    }

    public Header getContentType() {
        return l;
    }

    public boolean isChunked() {
        return false;
    }

    public boolean isRepeatable() {
        return false;
    }

    public boolean isStreaming() {
        return false;
    }

    public void writeTo(OutputStream outputStream) {
        if (outputStream == null) {
            throw new IllegalStateException("Output stream cannot be null.");
        }
        OutputStream gZIPOutputStream;
        long currentTimeMillis = System.currentTimeMillis();
        gZIPOutputStream = this.q != null ? new GZIPOutputStream(new BufferedOutputStream(outputStream), 2048) : new BufferedOutputStream(outputStream);
        gZIPOutputStream.write(123);
        Iterator it = this.o.keySet().iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            gZIPOutputStream.write(a(str));
            gZIPOutputStream.write(58);
            Object obj = this.o.get(str);
            if (obj instanceof Boolean) {
                gZIPOutputStream.write(((Boolean) obj).booleanValue() ? e : f);
            } else if (obj instanceof Long) {
                gZIPOutputStream.write((((Number) obj).longValue() + AdTrackerConstants.BLANK).getBytes());
            } else if (obj instanceof Double) {
                gZIPOutputStream.write((((Number) obj).doubleValue() + AdTrackerConstants.BLANK).getBytes());
            } else if (obj instanceof Float) {
                gZIPOutputStream.write((((Number) obj).floatValue() + AdTrackerConstants.BLANK).getBytes());
            } else if (obj instanceof Integer) {
                gZIPOutputStream.write((((Number) obj).intValue() + AdTrackerConstants.BLANK).getBytes());
            } else {
                gZIPOutputStream.write(obj.toString().getBytes());
            }
            gZIPOutputStream.write(ApiEventType.API_MRAID_SET_VIDEO_VOLUME);
        }
        byte[] bArr = new byte[2048];
        Iterator it2 = this.p.keySet().iterator();
        while (it2.hasNext()) {
            str = (String) it2.next();
            StreamWrapper streamWrapper = (StreamWrapper) this.p.get(str);
            gZIPOutputStream.write(a(str));
            gZIPOutputStream.write(58);
            gZIPOutputStream.write(123);
            gZIPOutputStream.write(h);
            gZIPOutputStream.write(58);
            gZIPOutputStream.write(a(streamWrapper.name));
            gZIPOutputStream.write(ApiEventType.API_MRAID_SET_VIDEO_VOLUME);
            gZIPOutputStream.write(i);
            gZIPOutputStream.write(58);
            gZIPOutputStream.write(a(streamWrapper.contentType));
            gZIPOutputStream.write(ApiEventType.API_MRAID_SET_VIDEO_VOLUME);
            gZIPOutputStream.write(j);
            gZIPOutputStream.write(58);
            gZIPOutputStream.write(ApiEventType.API_MRAID_UNMUTE_AUDIO);
            Base64OutputStream base64OutputStream = new Base64OutputStream(gZIPOutputStream, 18);
            while (true) {
                int read = streamWrapper.inputStream.read(bArr);
                if (read == -1) {
                    break;
                }
                base64OutputStream.write(bArr, 0, read);
            }
            base64OutputStream.close();
            gZIPOutputStream.write(ApiEventType.API_MRAID_UNMUTE_AUDIO);
            gZIPOutputStream.write(125);
            gZIPOutputStream.write(ApiEventType.API_MRAID_SET_VIDEO_VOLUME);
        }
        gZIPOutputStream.write(k);
        gZIPOutputStream.write(58);
        long currentTimeMillis2 = System.currentTimeMillis() - currentTimeMillis;
        gZIPOutputStream.write((currentTimeMillis2 + "}").getBytes());
        Log.i(a, "Uploaded JSON in " + Math.floor((double) (currentTimeMillis2 / 1000)) + " seconds");
        gZIPOutputStream.flush();
        gZIPOutputStream.close();
    }
}