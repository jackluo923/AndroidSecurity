package com.google.gson.stream;

import com.admarvel.android.ads.Constants;
import com.inmobi.commons.internal.ApiStatCollector.ApiEventType;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;
import java.io.Writer;

public class JsonWriter implements Closeable, Flushable {
    private static final String[] HTML_SAFE_REPLACEMENT_CHARS;
    private static final String[] REPLACEMENT_CHARS;
    private String deferredName;
    private boolean htmlSafe;
    private String indent;
    private boolean lenient;
    private final Writer out;
    private String separator;
    private boolean serializeNulls;
    private int[] stack;
    private int stackSize;

    static {
        REPLACEMENT_CHARS = new String[128];
        int i = 0;
        while (i <= 31) {
            REPLACEMENT_CHARS[i] = String.format("\\u%04x", new Object[]{Integer.valueOf(i)});
            i++;
        }
        REPLACEMENT_CHARS[34] = "\\\"";
        REPLACEMENT_CHARS[92] = "\\\\";
        REPLACEMENT_CHARS[9] = "\\t";
        REPLACEMENT_CHARS[8] = "\\b";
        REPLACEMENT_CHARS[10] = "\\n";
        REPLACEMENT_CHARS[13] = "\\r";
        REPLACEMENT_CHARS[12] = "\\f";
        HTML_SAFE_REPLACEMENT_CHARS = (String[]) REPLACEMENT_CHARS.clone();
        HTML_SAFE_REPLACEMENT_CHARS[60] = "\\u003c";
        HTML_SAFE_REPLACEMENT_CHARS[62] = "\\u003e";
        HTML_SAFE_REPLACEMENT_CHARS[38] = "\\u0026";
        HTML_SAFE_REPLACEMENT_CHARS[61] = "\\u003d";
        HTML_SAFE_REPLACEMENT_CHARS[39] = "\\u0027";
    }

    public JsonWriter(Writer writer) {
        this.stack = new int[32];
        this.stackSize = 0;
        push(IabHelper.BILLING_RESPONSE_RESULT_ERROR);
        this.separator = ":";
        this.serializeNulls = true;
        if (writer == null) {
            throw new NullPointerException("out == null");
        }
        this.out = writer;
    }

    private void beforeName() {
        int peek = peek();
        if (peek == 5) {
            this.out.write(ApiEventType.API_MRAID_SET_VIDEO_VOLUME);
        } else if (peek != 3) {
            throw new IllegalStateException("Nesting problem.");
        }
        newline();
        replaceTop(GoogleScorer.CLIENT_APPSTATE);
    }

    private void beforeValue(boolean z) {
        switch (peek()) {
            case GoogleScorer.CLIENT_GAMES:
                replaceTop(GoogleScorer.CLIENT_PLUS);
                newline();
            case GoogleScorer.CLIENT_PLUS:
                this.out.append(',');
                newline();
            case GoogleScorer.CLIENT_APPSTATE:
                this.out.append(this.separator);
                replaceTop(IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR);
            case IabHelper.BILLING_RESPONSE_RESULT_ERROR:
                if (this.lenient || z) {
                    replaceTop(GoogleScorer.CLIENT_ALL);
                } else {
                    throw new IllegalStateException("JSON must start with an array or an object.");
                }
            case GoogleScorer.CLIENT_ALL:
                if (!this.lenient) {
                    throw new IllegalStateException("JSON must have only one top-level value.");
                }
                replaceTop(GoogleScorer.CLIENT_ALL);
            default:
                throw new IllegalStateException("Nesting problem.");
        }
    }

    private JsonWriter close(int i, int i2, String str) {
        int peek = peek();
        if (peek != i2 && peek != i) {
            throw new IllegalStateException("Nesting problem.");
        } else if (this.deferredName != null) {
            throw new IllegalStateException("Dangling name: " + this.deferredName);
        } else {
            this.stackSize--;
            if (peek == i2) {
                newline();
            }
            this.out.write(str);
            return this;
        }
    }

    private void newline() {
        if (this.indent != null) {
            this.out.write(Constants.FORMATTER);
            int i = 1;
            int i2 = this.stackSize;
            while (i < i2) {
                this.out.write(this.indent);
                i++;
            }
        }
    }

    private JsonWriter open(int i, String str) {
        beforeValue(true);
        push(i);
        this.out.write(str);
        return this;
    }

    private int peek() {
        if (this.stackSize != 0) {
            return this.stack[this.stackSize - 1];
        }
        throw new IllegalStateException("JsonWriter is closed.");
    }

    private void push(int i) {
        if (this.stackSize == this.stack.length) {
            Object obj = new Object[(this.stackSize * 2)];
            System.arraycopy(this.stack, 0, obj, 0, this.stackSize);
            this.stack = obj;
        }
        int[] iArr = this.stack;
        int i2 = this.stackSize;
        this.stackSize = i2 + 1;
        iArr[i2] = i;
    }

    private void replaceTop(int i) {
        this.stack[this.stackSize - 1] = i;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void string(java.lang.String r8) {
        throw new UnsupportedOperationException("Method not decompiled: com.google.gson.stream.JsonWriter.string(java.lang.String):void");
        /*
        r7 = this;
        r1 = 0;
        r0 = r7.htmlSafe;
        if (r0 == 0) goto L_0x0025;
    L_0x0005:
        r0 = HTML_SAFE_REPLACEMENT_CHARS;
    L_0x0007:
        r2 = r7.out;
        r3 = "\"";
        r2.write(r3);
        r4 = r8.length();
        r3 = r1;
    L_0x0013:
        if (r3 >= r4) goto L_0x0046;
    L_0x0015:
        r2 = r8.charAt(r3);
        r5 = 128; // 0x80 float:1.794E-43 double:6.32E-322;
        if (r2 >= r5) goto L_0x0028;
    L_0x001d:
        r2 = r0[r2];
        if (r2 != 0) goto L_0x002e;
    L_0x0021:
        r2 = r3 + 1;
        r3 = r2;
        goto L_0x0013;
    L_0x0025:
        r0 = REPLACEMENT_CHARS;
        goto L_0x0007;
    L_0x0028:
        r5 = 8232; // 0x2028 float:1.1535E-41 double:4.067E-320;
        if (r2 != r5) goto L_0x003f;
    L_0x002c:
        r2 = "\\u2028";
    L_0x002e:
        if (r1 >= r3) goto L_0x0037;
    L_0x0030:
        r5 = r7.out;
        r6 = r3 - r1;
        r5.write(r8, r1, r6);
    L_0x0037:
        r1 = r7.out;
        r1.write(r2);
        r1 = r3 + 1;
        goto L_0x0021;
    L_0x003f:
        r5 = 8233; // 0x2029 float:1.1537E-41 double:4.0676E-320;
        if (r2 != r5) goto L_0x0021;
    L_0x0043:
        r2 = "\\u2029";
        goto L_0x002e;
    L_0x0046:
        if (r1 >= r4) goto L_0x004f;
    L_0x0048:
        r0 = r7.out;
        r2 = r4 - r1;
        r0.write(r8, r1, r2);
    L_0x004f:
        r0 = r7.out;
        r1 = "\"";
        r0.write(r1);
        return;
        */
    }

    private void writeDeferredName() {
        if (this.deferredName != null) {
            beforeName();
            string(this.deferredName);
            this.deferredName = null;
        }
    }

    public JsonWriter beginArray() {
        writeDeferredName();
        return open(1, "[");
    }

    public JsonWriter beginObject() {
        writeDeferredName();
        return open(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, "{");
    }

    public void close() {
        this.out.close();
        int i = this.stackSize;
        if (i > 1 || (i == 1 && this.stack[i - 1] != 7)) {
            throw new IOException("Incomplete document");
        }
        this.stackSize = 0;
    }

    public JsonWriter endArray() {
        return close(1, GoogleScorer.CLIENT_PLUS, "]");
    }

    public JsonWriter endObject() {
        return close(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR, "}");
    }

    public void flush() {
        if (this.stackSize == 0) {
            throw new IllegalStateException("JsonWriter is closed.");
        }
        this.out.flush();
    }

    public final boolean getSerializeNulls() {
        return this.serializeNulls;
    }

    public final boolean isHtmlSafe() {
        return this.htmlSafe;
    }

    public boolean isLenient() {
        return this.lenient;
    }

    public JsonWriter name(String str) {
        if (str == null) {
            throw new NullPointerException("name == null");
        } else if (this.deferredName != null) {
            throw new IllegalStateException();
        } else if (this.stackSize == 0) {
            throw new IllegalStateException("JsonWriter is closed.");
        } else {
            this.deferredName = str;
            return this;
        }
    }

    public JsonWriter nullValue() {
        if (this.deferredName == null || !this.serializeNulls) {
            this.deferredName = null;
        } else {
            writeDeferredName();
            beforeValue(false);
            this.out.write("null");
        }
        return this;
    }

    public final void setHtmlSafe(boolean z) {
        this.htmlSafe = z;
    }

    public final void setIndent(String str) {
        if (str.length() == 0) {
            this.indent = null;
            this.separator = ":";
        } else {
            this.indent = str;
            this.separator = ": ";
        }
    }

    public final void setLenient(boolean z) {
        this.lenient = z;
    }

    public final void setSerializeNulls(boolean z) {
        this.serializeNulls = z;
    }

    public JsonWriter value(double d) {
        if (Double.isNaN(d) || Double.isInfinite(d)) {
            throw new IllegalArgumentException("Numeric values must be finite, but was " + d);
        }
        writeDeferredName();
        beforeValue(false);
        this.out.append(Double.toString(d));
        return this;
    }

    public JsonWriter value(long j) {
        writeDeferredName();
        beforeValue(false);
        this.out.write(Long.toString(j));
        return this;
    }

    public JsonWriter value(Number number) {
        if (number == null) {
            return nullValue();
        }
        writeDeferredName();
        CharSequence toString = number.toString();
        if (this.lenient || !(toString.equals("-Infinity") || toString.equals("Infinity") || toString.equals("NaN"))) {
            beforeValue(false);
            this.out.append(toString);
            return this;
        } else {
            throw new IllegalArgumentException("Numeric values must be finite, but was " + number);
        }
    }

    public JsonWriter value(String str) {
        if (str == null) {
            return nullValue();
        }
        writeDeferredName();
        beforeValue(false);
        string(str);
        return this;
    }

    public JsonWriter value(boolean z) {
        writeDeferredName();
        beforeValue(false);
        this.out.write(z ? "true" : "false");
        return this;
    }
}