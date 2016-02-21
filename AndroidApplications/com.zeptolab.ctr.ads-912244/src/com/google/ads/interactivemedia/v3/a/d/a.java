package com.google.ads.interactivemedia.v3.a.d;

import com.google.ads.interactivemedia.v3.a.b.a.d;
import com.google.ads.interactivemedia.v3.a.b.e;
import com.inmobi.androidsdk.IMBrowserActivity;
import com.inmobi.commons.internal.ApiStatCollector.ApiEventType;
import com.millennialmedia.android.MMException;
import com.zeptolab.ctr.ads.R;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import com.zeptolab.zbuild.ZBuildConfig;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.Reader;

public class a implements Closeable {
    private static final char[] a;
    private final Reader b;
    private boolean c;
    private final char[] d;
    private int e;
    private int f;
    private int g;
    private int h;
    private int i;
    private long j;
    private int k;
    private String l;
    private int[] m;
    private int n;

    static {
        a = ")]}'\n".toCharArray();
        e.a = new e() {
            public final void a(a aVar) {
                if (aVar instanceof d) {
                    ((d) aVar).o();
                } else {
                    int a = aVar.i;
                    if (a == 0) {
                        a = aVar.o();
                    }
                    if (a == 13) {
                        aVar.i = ZBuildConfig.$minsdk;
                    } else if (a == 12) {
                        aVar.i = IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED;
                    } else if (a == 14) {
                        aVar.i = R.styleable.MapAttrs_uiZoomControls;
                    } else {
                        throw new IllegalStateException(new StringBuilder("Expected a name but was ").append(aVar.f()).append("  at line ").append((aVar.g + 1)).append(" column ").append(aVar.t()).toString());
                    }
                }
            }
        };
    }

    public a(Reader reader) {
        this.c = false;
        this.d = new char[1024];
        this.e = 0;
        this.f = 0;
        this.g = 0;
        this.h = 0;
        this.i = 0;
        this.m = new int[32];
        this.n = 0;
        int[] iArr = this.m;
        int i = this.n;
        this.n = i + 1;
        iArr[i] = 6;
        if (reader == null) {
            throw new NullPointerException("in == null");
        }
        this.b = reader;
    }

    private IOException a_(String str) {
        throw new d(str + " at line " + (this.g + 1) + " column " + t());
    }

    private void a_(int i) {
        if (this.n == this.m.length) {
            Object obj = new Object[(this.n * 2)];
            System.arraycopy(this.m, 0, obj, 0, this.n);
            this.m = obj;
        }
        int[] iArr = this.m;
        int i2 = this.n;
        this.n = i2 + 1;
        iArr[i2] = i;
    }

    private boolean a_(char c) {
        switch (c) {
            case ZBuildConfig.$minsdk:
            case R.styleable.MapAttrs_uiZoomControls:
            case R.styleable.MapAttrs_useViewLifecycle:
            case R.styleable.MapAttrs_zOrderOnTop:
            case ApiEventType.API_MRAID_PLAY_AUDIO:
            case ApiEventType.API_MRAID_SET_VIDEO_VOLUME:
            case ':':
            case '[':
            case ']':
            case '{':
            case '}':
                return false;
            case ApiEventType.API_MRAID_IS_AUDIO_MUTED:
            case ApiEventType.API_MRAID_PAUSE_VIDEO:
            case ';':
            case '=':
            case '\\':
                u();
                return false;
            default:
                return true;
        }
    }

    private int b(boolean z) {
        char[] cArr = this.d;
        int i = this.e;
        int i2 = this.f;
        while (true) {
            if (i == i2) {
                this.e = i;
                if (b(1)) {
                    i = this.e;
                    i2 = this.f;
                } else if (!z) {
                    return -1;
                } else {
                    throw new EOFException(new StringBuilder("End of input at line ").append(this.g + 1).append(" column ").append(t()).toString());
                }
            }
            int i3 = i + 1;
            char c = cArr[i];
            if (c == '\n') {
                this.g++;
                this.h = i3;
                i = i3;
            } else if (c == ' ' || c == '\r' || c == '\t') {
                i = i3;
            } else if (c == '/') {
                boolean b;
                this.e = i3;
                if (i3 == i2) {
                    this.e--;
                    b = b((int)GoogleScorer.CLIENT_PLUS);
                    this.e++;
                    if (!b) {
                        return c;
                    }
                }
                u();
                switch (cArr[this.e]) {
                    case ApiEventType.API_MRAID_UNMUTE_VIDEO:
                        this.e++;
                        String str = "*/";
                        while (true) {
                            if (this.e + str.length() <= this.f || b(str.length())) {
                                if (this.d[this.e] == '\n') {
                                    this.g++;
                                    this.h = this.e + 1;
                                } else {
                                    i2 = 0;
                                    while (i2 < str.length()) {
                                        if (this.d[this.e + i2] == str.charAt(i2)) {
                                            i2++;
                                        }
                                    }
                                    b = true;
                                }
                                this.e++;
                            } else {
                                b = false;
                            }
                            if (i2 == 0) {
                                throw a("Unterminated comment");
                            }
                            i = this.e + 2;
                            i2 = this.f;
                        }
                        break;
                    case ApiEventType.API_MRAID_PAUSE_VIDEO:
                        this.e++;
                        v();
                        i = this.e;
                        i2 = this.f;
                        break;
                    default:
                        return c;
                }
            } else if (c == '#') {
                this.e = i3;
                u();
                v();
                i = this.e;
                i2 = this.f;
            } else {
                this.e = i3;
                return c;
            }
        }
    }

    private String b(char c) {
        char[] cArr = this.d;
        StringBuilder stringBuilder = new StringBuilder();
        while (true) {
            int i = this.e;
            int i2 = this.f;
            int i3 = i;
            while (i3 < i2) {
                int i4 = i3 + 1;
                char c2 = cArr[i3];
                if (c2 == c) {
                    this.e = i4;
                    stringBuilder.append(cArr, i, i4 - i - 1);
                    return stringBuilder.toString();
                } else if (c2 == '\\') {
                    this.e = i4;
                    stringBuilder.append(cArr, i, i4 - i - 1);
                    stringBuilder.append(w());
                    break;
                } else {
                    if (c2 == '\n') {
                        this.g++;
                        this.h = i4;
                    }
                    i3 = i4;
                }
            }
            stringBuilder.append(cArr, i, i3 - i);
            this.e = i3;
            if (!b(1)) {
                throw a("Unterminated string");
            }
        }
    }

    private boolean b(int i) {
        Object obj = this.d;
        this.h -= this.e;
        if (this.f != this.e) {
            this.f -= this.e;
            System.arraycopy(obj, this.e, obj, 0, this.f);
        } else {
            this.f = 0;
        }
        this.e = 0;
        do {
            int read = this.b.read(obj, this.f, obj.length - this.f);
            if (read == -1) {
                return false;
            }
            this.f = read + this.f;
            if (this.g == 0 && this.h == 0 && this.f > 0 && obj[0] == '\ufeff') {
                this.e++;
                this.h++;
                i++;
            }
        } while (this.f < i);
        return true;
    }

    private void c(char c) {
        char[] cArr = this.d;
        while (true) {
            int i = this.e;
            int i2 = this.f;
            while (i < i2) {
                int i3 = i + 1;
                char c2 = cArr[i];
                if (c2 == c) {
                    this.e = i3;
                    return;
                } else if (c2 == '\\') {
                    this.e = i3;
                    w();
                    break;
                } else {
                    if (c2 == '\n') {
                        this.g++;
                        this.h = i3;
                    }
                    i = i3;
                }
            }
            this.e = i;
            if (!b(1)) {
                throw a("Unterminated string");
            }
        }
    }

    private int o() {
        int b;
        int i = this.m[this.n - 1];
        if (i == 1) {
            this.m[this.n - 1] = 2;
        } else if (i == 2) {
            switch (b(true)) {
                case ApiEventType.API_MRAID_SET_VIDEO_VOLUME:
                    break;
                case 59:
                    u();
                    break;
                case 93:
                    this.i = 4;
                    return 4;
                default:
                    throw a("Unterminated array");
            }
        } else if (i == 3 || i == 5) {
            this.m[this.n - 1] = 4;
            if (i == 5) {
                switch (b(true)) {
                    case ApiEventType.API_MRAID_SET_VIDEO_VOLUME:
                        break;
                    case 59:
                        u();
                        break;
                    case 125:
                        this.i = 2;
                        return 2;
                    default:
                        throw a("Unterminated object");
                }
            }
            b = b(true);
            switch (b) {
                case ApiEventType.API_MRAID_UNMUTE_AUDIO:
                    this.i = 13;
                    return R.styleable.MapAttrs_zOrderOnTop;
                case ApiEventType.API_MRAID_PAUSE_AUDIO:
                    u();
                    this.i = 12;
                    return R.styleable.MapAttrs_useViewLifecycle;
                case 125:
                    if (i != 5) {
                        this.i = 2;
                        return 2;
                    } else {
                        throw a("Expected name");
                    }
                default:
                    u();
                    this.e--;
                    if (a((char) b)) {
                        this.i = 14;
                        return MMException.REQUEST_NOT_FILLED;
                    } else {
                        throw a("Expected name");
                    }
            }
        } else if (i == 4) {
            this.m[this.n - 1] = 5;
            switch (b(true)) {
                case 58:
                    break;
                case 61:
                    u();
                    if ((this.e < this.f || b(1)) && this.d[this.e] == '>') {
                        this.e++;
                    }
                    break;
                default:
                    throw a("Expected ':'");
            }
        } else if (i == 6) {
            if (this.c) {
                b(true);
                this.e--;
                if (this.e + a.length <= this.f || b(a.length)) {
                    b = 0;
                    while (b < a.length) {
                        if (this.d[this.e + b] != a[b]) {
                            break;
                        }
                        b++;
                    }
                    this.e += a.length;
                }
            }
            this.m[this.n - 1] = 7;
        } else if (i == 7) {
            if (b(false) == -1) {
                this.i = 17;
                return ZBuildConfig.$targetsdk;
            } else {
                u();
                this.e--;
            }
        } else if (i == 8) {
            throw new IllegalStateException("JsonReader is closed");
        }
        switch (b(true)) {
            case ApiEventType.API_MRAID_UNMUTE_AUDIO:
                if (this.n == 1) {
                    u();
                }
                this.i = 9;
                return ZBuildConfig.$minsdk;
            case ApiEventType.API_MRAID_PAUSE_AUDIO:
                u();
                this.i = 8;
                return IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED;
            case ApiEventType.API_MRAID_SET_VIDEO_VOLUME:
            case 59:
                if (i == 1 || i == 2) {
                    u();
                    this.e--;
                    this.i = 7;
                    return 7;
                } else {
                    throw a("Unexpected value");
                }
            case 91:
                this.i = 3;
                return IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE;
            case 93:
                if (i == 1) {
                    this.i = 4;
                    return 4;
                }
                u();
                this.e--;
                this.i = 7;
                return 7;
            case 123:
                this.i = 1;
                return 1;
            default:
                this.e--;
                if (this.n == 1) {
                    u();
                }
                b = q();
                if (b != 0) {
                    return b;
                }
                b = r();
                if (b != 0) {
                    return b;
                }
                if (a(this.d[this.e])) {
                    u();
                    this.i = 10;
                    return R.styleable.MapAttrs_uiZoomControls;
                } else {
                    throw a("Expected value");
                }
        }
    }

    private int q() {
        String str;
        int i;
        char c = this.d[this.e];
        String str2;
        if (c == 't' || c == 'T') {
            str = "true";
            str2 = "TRUE";
            i = IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR;
        } else if (c == 'f' || c == 'F') {
            str = "false";
            str2 = "FALSE";
            i = IabHelper.BILLING_RESPONSE_RESULT_ERROR;
        } else if (c != 'n' && c != 'N') {
            return 0;
        } else {
            str = "null";
            str2 = "NULL";
            i = GoogleScorer.CLIENT_ALL;
        }
        int length = str.length();
        int i2 = 1;
        while (i2 < length) {
            if (this.e + i2 >= this.f && !b(i2 + 1)) {
                return 0;
            }
            char c2 = this.d[this.e + i2];
            if (c2 != str.charAt(i2) && c2 != str.charAt(i2)) {
                return 0;
            }
            i2++;
        }
        if ((this.e + length < this.f || b(length + 1)) && a(this.d[this.e + length])) {
            return 0;
        }
        this.e += length;
        this.i = i;
        return i;
    }

    private int r() {
        char[] cArr = this.d;
        long j = 0;
        boolean z = 0;
        int i = 1;
        boolean z2 = 0;
        int i2 = 0;
        int i3 = this.f;
        int i4 = this.e;
        while (true) {
            int i5;
            boolean z3;
            long j2;
            int i6;
            if (i4 + i2 == i3 && i2 == cArr.length) {
                return 0;
            }
            if (b(i2 + 1)) {
                i4 = this.e;
                i3 = this.f;
            } else if (i5 == 2 && i != 0 && (j != Long.MIN_VALUE || i != 0)) {
                if (i == 0) {
                    j = -j;
                }
                this.j = j;
                this.e += i2;
                this.i = 15;
                return MMException.REQUEST_BAD_RESPONSE;
            } else if (i5 != 2 && i5 != 4 && i5 != 7) {
                return 0;
            } else {
                this.k = i2;
                this.i = 16;
                return MMException.REQUEST_NOT_PERMITTED;
            }
            char c = cArr[i4 + i2];
            switch (c) {
                case ApiEventType.API_MRAID_IS_VIDEO_MUTED:
                    if (i5 != 5) {
                        return 0;
                    }
                    z3 = IabHelper.BILLING_RESPONSE_RESULT_ERROR;
                    i5 = i;
                    i = i;
                    j2 = j;
                    break;
                case ApiEventType.API_MRAID_GET_VIDEO_VOLUME:
                    if (i5 == 0) {
                        z3 = 1;
                        i6 = i;
                        i = 1;
                        i5 = i6;
                        j2 = j;
                    } else if (i5 != 5) {
                        return 0;
                    } else {
                        z3 = IabHelper.BILLING_RESPONSE_RESULT_ERROR;
                        i5 = i;
                        i = i;
                        j2 = j;
                    }
                    break;
                case ApiEventType.API_MRAID_SEEK_VIDEO:
                    if (i5 != 2) {
                        return 0;
                    }
                    z3 = IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE;
                    i5 = i;
                    i = i;
                    j2 = j;
                    break;
                case 'E':
                case IMBrowserActivity.INTERSTITIAL_ACTIVITY:
                    if (i5 != 2 && i5 != 4) {
                        return 0;
                    }
                    z3 = IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR;
                    i5 = i;
                    i = i;
                    j2 = j;
                    break;
                default:
                    if (c >= '0' && c <= '9') {
                        if (i5 == 1 || i5 == 0) {
                            j = (long) (-(c - 48));
                            z3 = GoogleScorer.CLIENT_PLUS;
                            i5 = i;
                            i = i;
                            j2 = j;
                        } else if (i5 == 2) {
                            if (j == 0) {
                                return 0;
                            }
                            long j3 = 10 * j - ((long) (c - 48));
                            i = (j > -922337203685477580L || (j == -922337203685477580L && j3 < j)) ? 1 : 0;
                            i &= i;
                            i = i;
                            j2 = j3;
                            i6 = i5;
                            i5 = i;
                            i = i6;
                        } else if (i5 == 3) {
                            z3 = GoogleScorer.CLIENT_APPSTATE;
                            i5 = i;
                            i = i;
                            j2 = j;
                        } else if (i5 == 5 || i5 == 6) {
                            z3 = GoogleScorer.CLIENT_ALL;
                            i5 = i;
                            i = i;
                            j2 = j;
                        } else {
                            i = i5;
                            i5 = i;
                            i = i;
                            j2 = j;
                        }
                    }
                    if (a(c)) {
                        return 0;
                    }
                    this.k = i2;
                    this.i = 16;
                    return MMException.REQUEST_NOT_PERMITTED;
            }
            i2++;
            i6 = i5;
            z2 = z3;
            int i7 = i;
            i = i6;
            j = j2;
            int i8 = i7;
        }
    }

    private String s() {
        StringBuilder stringBuilder = null;
        int i = 0;
        while (true) {
            String str;
            if (this.e + i < this.f) {
                switch (this.d[this.e + i]) {
                    case ZBuildConfig.$minsdk:
                    case R.styleable.MapAttrs_uiZoomControls:
                    case R.styleable.MapAttrs_useViewLifecycle:
                    case R.styleable.MapAttrs_zOrderOnTop:
                    case ApiEventType.API_MRAID_PLAY_AUDIO:
                    case ApiEventType.API_MRAID_SET_VIDEO_VOLUME:
                    case ':':
                    case '[':
                    case ']':
                    case '{':
                    case '}':
                        break;
                    case ApiEventType.API_MRAID_IS_AUDIO_MUTED:
                    case ApiEventType.API_MRAID_PAUSE_VIDEO:
                    case ';':
                    case '=':
                    case '\\':
                        u();
                        break;
                    default:
                        i++;
                        break;
                }
            } else if (i >= this.d.length) {
                if (stringBuilder == null) {
                    stringBuilder = new StringBuilder();
                }
                stringBuilder.append(this.d, this.e, i);
                this.e = i + this.e;
                i = b(1) ? 0 : 0;
            } else if (b(i + 1)) {
            }
            if (stringBuilder == null) {
                str = new String(this.d, this.e, i);
            } else {
                stringBuilder.append(this.d, this.e, i);
                str = stringBuilder.toString();
            }
            this.e = i + this.e;
            return str;
        }
    }

    private int t() {
        return this.e - this.h + 1;
    }

    private void u() {
        if (!this.c) {
            throw a("Use JsonReader.setLenient(true) to accept malformed JSON");
        }
    }

    private void v() {
        char c;
        do {
            if (this.e < this.f || b(1)) {
                char[] cArr = this.d;
                int i = this.e;
                this.e = i + 1;
                c = cArr[i];
                if (c == '\n') {
                    this.g++;
                    this.h = this.e;
                    return;
                }
            } else {
                return;
            }
        } while (c != '\r');
    }

    private char w() {
        if (this.e != this.f || b(1)) {
            char[] cArr = this.d;
            int i = this.e;
            this.e = i + 1;
            char c = cArr[i];
            switch (c) {
                case R.styleable.MapAttrs_uiZoomControls:
                    this.g++;
                    this.h = this.e;
                    return c;
                case 'b':
                    return '\b';
                case IMBrowserActivity.EXPAND_ACTIVITY:
                    return '\f';
                case 'n':
                    return '\n';
                case 'r':
                    return '\r';
                case 't':
                    return '\t';
                case 'u':
                    if (this.e + 4 <= this.f || b((int)GoogleScorer.CLIENT_APPSTATE)) {
                        int i2 = this.e;
                        int i3 = i2 + 4;
                        int i4 = i2;
                        c = '\u0000';
                        i = i4;
                        while (i < i3) {
                            char c2 = this.d[i];
                            c = (char) (c << 4);
                            if (c2 >= '0' && c2 <= '9') {
                                c = (char) (c + c2 - 48);
                            } else if (c2 < 'a' || c2 > 'f') {
                                if (c2 >= 'A' && c2 <= 'F') {
                                    c = (char) (c + c2 - 65 + 10);
                                }
                                throw new NumberFormatException(new StringBuilder("\\u").append(new String(this.d, this.e, 4)).toString());
                            } else {
                                c = (char) (c + c2 - 97 + 10);
                            }
                            i++;
                        }
                        this.e += 4;
                        return c;
                    } else {
                        throw a("Unterminated escape sequence");
                    }
                default:
                    return c;
            }
        } else {
            throw a("Unterminated escape sequence");
        }
    }

    public void a_() {
        int i = this.i;
        if (i == 0) {
            i = o();
        }
        if (i == 3) {
            a(1);
            this.i = 0;
        } else {
            throw new IllegalStateException(new StringBuilder("Expected BEGIN_ARRAY but was ").append(f()).append(" at line ").append(this.g + 1).append(" column ").append(t()).toString());
        }
    }

    public final void a_(boolean z) {
        this.c = z;
    }

    public void b() {
        int i = this.i;
        if (i == 0) {
            i = o();
        }
        if (i == 4) {
            this.n--;
            this.i = 0;
        } else {
            throw new IllegalStateException(new StringBuilder("Expected END_ARRAY but was ").append(f()).append(" at line ").append(this.g + 1).append(" column ").append(t()).toString());
        }
    }

    public void c() {
        int i = this.i;
        if (i == 0) {
            i = o();
        }
        if (i == 1) {
            a((int)IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE);
            this.i = 0;
        } else {
            throw new IllegalStateException(new StringBuilder("Expected BEGIN_OBJECT but was ").append(f()).append(" at line ").append(this.g + 1).append(" column ").append(t()).toString());
        }
    }

    public void close() {
        this.i = 0;
        this.m[0] = 8;
        this.n = 1;
        this.b.close();
    }

    public void d() {
        int i = this.i;
        if (i == 0) {
            i = o();
        }
        if (i == 2) {
            this.n--;
            this.i = 0;
        } else {
            throw new IllegalStateException(new StringBuilder("Expected END_OBJECT but was ").append(f()).append(" at line ").append(this.g + 1).append(" column ").append(t()).toString());
        }
    }

    public boolean e() {
        int i = this.i;
        if (i == 0) {
            i = o();
        }
        return i != 2 && i != 4;
    }

    public b f() {
        int i = this.i;
        if (i == 0) {
            i = o();
        }
        switch (i) {
            case GoogleScorer.CLIENT_GAMES:
                return b.c;
            case GoogleScorer.CLIENT_PLUS:
                return b.d;
            case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                return b.a;
            case GoogleScorer.CLIENT_APPSTATE:
                return b.b;
            case IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:
            case IabHelper.BILLING_RESPONSE_RESULT_ERROR:
                return b.h;
            case GoogleScorer.CLIENT_ALL:
                return b.i;
            case IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED:
            case ZBuildConfig.$minsdk:
            case R.styleable.MapAttrs_uiZoomControls:
            case R.styleable.MapAttrs_uiZoomGestures:
                return b.f;
            case R.styleable.MapAttrs_useViewLifecycle:
            case R.styleable.MapAttrs_zOrderOnTop:
            case MMException.REQUEST_NOT_FILLED:
                return b.e;
            case MMException.REQUEST_BAD_RESPONSE:
            case MMException.REQUEST_NOT_PERMITTED:
                return b.g;
            case ZBuildConfig.$targetsdk:
                return b.j;
            default:
                throw new AssertionError();
        }
    }

    public String g() {
        String s;
        int i = this.i;
        if (i == 0) {
            i = o();
        }
        if (i == 14) {
            s = s();
        } else if (i == 12) {
            s = b('\'');
        } else if (i == 13) {
            s = b('\"');
        } else {
            throw new IllegalStateException(new StringBuilder("Expected a name but was ").append(f()).append(" at line ").append(this.g + 1).append(" column ").append(t()).toString());
        }
        this.i = 0;
        return s;
    }

    public String h() {
        String s;
        int i = this.i;
        if (i == 0) {
            i = o();
        }
        if (i == 10) {
            s = s();
        } else if (i == 8) {
            s = b('\'');
        } else if (i == 9) {
            s = b('\"');
        } else if (i == 11) {
            s = this.l;
            this.l = null;
        } else if (i == 15) {
            s = Long.toString(this.j);
        } else if (i == 16) {
            s = new String(this.d, this.e, this.k);
            this.e += this.k;
        } else {
            throw new IllegalStateException(new StringBuilder("Expected a string but was ").append(f()).append(" at line ").append(this.g + 1).append(" column ").append(t()).toString());
        }
        this.i = 0;
        return s;
    }

    public boolean i() {
        int i = this.i;
        if (i == 0) {
            i = o();
        }
        if (i == 5) {
            this.i = 0;
            return true;
        } else if (i == 6) {
            this.i = 0;
            return false;
        } else {
            throw new IllegalStateException(new StringBuilder("Expected a boolean but was ").append(f()).append(" at line ").append(this.g + 1).append(" column ").append(t()).toString());
        }
    }

    public void j() {
        int i = this.i;
        if (i == 0) {
            i = o();
        }
        if (i == 7) {
            this.i = 0;
        } else {
            throw new IllegalStateException(new StringBuilder("Expected null but was ").append(f()).append(" at line ").append(this.g + 1).append(" column ").append(t()).toString());
        }
    }

    public double k() {
        int i = this.i;
        if (i == 0) {
            i = o();
        }
        if (i == 15) {
            this.i = 0;
            return (double) this.j;
        } else {
            if (i == 16) {
                this.l = new String(this.d, this.e, this.k);
                this.e += this.k;
            } else if (i == 8 || i == 9) {
                this.l = b(i == 8 ? '\'' : '\"');
            } else if (i == 10) {
                this.l = s();
            } else if (i != 11) {
                throw new IllegalStateException(new StringBuilder("Expected a double but was ").append(f()).append(" at line ").append(this.g + 1).append(" column ").append(t()).toString());
            }
            this.i = 11;
            double parseDouble = Double.parseDouble(this.l);
            if (this.c || !(Double.isNaN(parseDouble) || Double.isInfinite(parseDouble))) {
                this.l = null;
                this.i = 0;
                return parseDouble;
            } else {
                throw new d(new StringBuilder("JSON forbids NaN and infinities: ").append(parseDouble).append(" at line ").append(this.g + 1).append(" column ").append(t()).toString());
            }
        }
    }

    public long l() {
        int i = this.i;
        if (i == 0) {
            i = o();
        }
        if (i == 15) {
            this.i = 0;
            return this.j;
        } else {
            long parseLong;
            if (i == 16) {
                this.l = new String(this.d, this.e, this.k);
                this.e += this.k;
            } else if (i == 8 || i == 9) {
                this.l = b(i == 8 ? '\'' : '\"');
                try {
                    parseLong = Long.parseLong(this.l);
                    this.i = 0;
                    return parseLong;
                } catch (NumberFormatException e) {
                }
            } else {
                throw new IllegalStateException(new StringBuilder("Expected a long but was ").append(f()).append(" at line ").append(this.g + 1).append(" column ").append(t()).toString());
            }
            this.i = 11;
            double parseDouble = Double.parseDouble(this.l);
            parseLong = (long) parseDouble;
            if (((double) parseLong) != parseDouble) {
                throw new NumberFormatException(new StringBuilder("Expected a long but was ").append(this.l).append(" at line ").append(this.g + 1).append(" column ").append(t()).toString());
            }
            this.l = null;
            this.i = 0;
            return parseLong;
        }
    }

    public int m() {
        int i = this.i;
        if (i == 0) {
            i = o();
        }
        if (i == 15) {
            i = (int) this.j;
            if (this.j != ((long) i)) {
                throw new NumberFormatException(new StringBuilder("Expected an int but was ").append(this.j).append(" at line ").append(this.g + 1).append(" column ").append(t()).toString());
            }
            this.i = 0;
            return i;
        } else {
            if (i == 16) {
                this.l = new String(this.d, this.e, this.k);
                this.e += this.k;
            } else if (i == 8 || i == 9) {
                this.l = b(i == 8 ? '\'' : '\"');
                try {
                    i = Integer.parseInt(this.l);
                    this.i = 0;
                    return i;
                } catch (NumberFormatException e) {
                }
            } else {
                throw new IllegalStateException(new StringBuilder("Expected an int but was ").append(f()).append(" at line ").append(this.g + 1).append(" column ").append(t()).toString());
            }
            this.i = 11;
            double parseDouble = Double.parseDouble(this.l);
            i = (int) parseDouble;
            if (((double) i) != parseDouble) {
                throw new NumberFormatException(new StringBuilder("Expected an int but was ").append(this.l).append(" at line ").append(this.g + 1).append(" column ").append(t()).toString());
            }
            this.l = null;
            this.i = 0;
            return i;
        }
    }

    public void n() {
        int i = 0;
        do {
            int i2 = this.i;
            if (i2 == 0) {
                i2 = o();
            }
            if (i2 == 3) {
                a(1);
                i++;
            } else if (i2 == 1) {
                a((int)IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE);
                i++;
            } else if (i2 == 4) {
                this.n--;
                i--;
            } else if (i2 == 2) {
                this.n--;
                i--;
            } else if (i2 == 14 || i2 == 10) {
                do {
                    i2 = 0;
                    while (this.e + i2 < this.f) {
                        switch (this.d[this.e + i2]) {
                            case ZBuildConfig.$minsdk:
                            case R.styleable.MapAttrs_uiZoomControls:
                            case R.styleable.MapAttrs_useViewLifecycle:
                            case R.styleable.MapAttrs_zOrderOnTop:
                            case ApiEventType.API_MRAID_PLAY_AUDIO:
                            case ApiEventType.API_MRAID_SET_VIDEO_VOLUME:
                            case ':':
                            case '[':
                            case ']':
                            case '{':
                            case '}':
                                break;
                            case ApiEventType.API_MRAID_IS_AUDIO_MUTED:
                            case ApiEventType.API_MRAID_PAUSE_VIDEO:
                            case ';':
                            case '=':
                            case '\\':
                                u();
                                break;
                            default:
                                i2++;
                                break;
                        }
                        this.e = i2 + this.e;
                    }
                    this.e = i2 + this.e;
                } while (b(1));
            } else if (i2 == 8 || i2 == 12) {
                c('\'');
            } else if (i2 == 9 || i2 == 13) {
                c('\"');
            } else if (i2 == 16) {
                this.e += this.k;
            }
            this.i = 0;
        } while (i != 0);
    }

    public final boolean p() {
        return this.c;
    }

    public String toString() {
        return getClass().getSimpleName() + " at line " + (this.g + 1) + " column " + t();
    }
}