package com.millennialmedia.a.a.d;

import com.inmobi.androidsdk.IMBrowserActivity;
import com.inmobi.commons.internal.ApiStatCollector.ApiEventType;
import com.millennialmedia.a.a.b.r;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.Reader;

public class a implements Closeable {
    private static final int A = 6;
    private static final int B = 7;
    private static final char[] a;
    private static final long b = -922337203685477580L;
    private static final int c = 0;
    private static final int d = 1;
    private static final int e = 2;
    private static final int f = 3;
    private static final int g = 4;
    private static final int h = 5;
    private static final int i = 6;
    private static final int j = 7;
    private static final int k = 8;
    private static final int l = 9;
    private static final int m = 10;
    private static final int n = 11;
    private static final int o = 12;
    private static final int p = 13;
    private static final int q = 14;
    private static final int r = 15;
    private static final int s = 16;
    private static final int t = 17;
    private static final int u = 0;
    private static final int v = 1;
    private static final int w = 2;
    private static final int x = 3;
    private static final int y = 4;
    private static final int z = 5;
    private final Reader C;
    private boolean D;
    private final char[] E;
    private int F;
    private int G;
    private int H;
    private int I;
    private int J;
    private long K;
    private int L;
    private String M;
    private int[] N;
    private int O;

    static {
        a = ")]}'\n".toCharArray();
        r.a = new b();
    }

    public a(Reader reader) {
        this.D = false;
        this.E = new char[1024];
        this.F = 0;
        this.G = 0;
        this.H = 0;
        this.I = 0;
        this.J = 0;
        this.N = new int[32];
        this.O = 0;
        int[] iArr = this.N;
        int i = this.O;
        this.O = i + 1;
        iArr[i] = 6;
        if (reader == null) {
            throw new NullPointerException("in == null");
        }
        this.C = reader;
    }

    private void a_(int i) {
        if (this.O == this.N.length) {
            Object obj = new Object[(this.O * 2)];
            System.arraycopy(this.N, u, obj, u, this.O);
            this.N = obj;
        }
        int[] iArr = this.N;
        int i2 = this.O;
        this.O = i2 + 1;
        iArr[i2] = i;
    }

    private boolean a_(char c) {
        switch (c) {
            case l:
            case m:
            case o:
            case p:
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
                w();
                return false;
            default:
                return true;
        }
    }

    private boolean a_(String str) {
        while (true) {
            if (this.F + str.length() > this.G && !b(str.length())) {
                return false;
            }
            if (this.E[this.F] == '\n') {
                this.H++;
                this.I = this.F + 1;
            } else {
                int i = 0;
                while (i < str.length()) {
                    if (this.E[this.F + i] == str.charAt(i)) {
                        i++;
                    }
                }
                return true;
            }
            this.F++;
        }
    }

    private int b(boolean z) {
        char[] cArr = this.E;
        int i = this.F;
        int i2 = this.G;
        while (true) {
            if (i == i2) {
                this.F = i;
                if (b((int)v)) {
                    i = this.F;
                    i2 = this.G;
                } else if (!z) {
                    return -1;
                } else {
                    throw new EOFException("End of input at line " + u() + " column " + v());
                }
            }
            int i3 = i + 1;
            char c = cArr[i];
            if (c == '\n') {
                this.H++;
                this.I = i3;
                i = i3;
            } else if (c == ' ' || c == '\r') {
                i = i3;
            } else if (c == '\t') {
                i = i3;
            } else if (c == '/') {
                this.F = i3;
                if (i3 == i2) {
                    this.F--;
                    boolean b = b((int)w);
                    this.F++;
                    if (!b) {
                        return c;
                    }
                }
                w();
                switch (cArr[this.F]) {
                    case ApiEventType.API_MRAID_UNMUTE_VIDEO:
                        this.F++;
                        if (a("*/")) {
                            i = this.F + 2;
                            i2 = this.G;
                        } else {
                            throw b("Unterminated comment");
                        }
                    case ApiEventType.API_MRAID_PAUSE_VIDEO:
                        this.F++;
                        x();
                        i = this.F;
                        i2 = this.G;
                        break;
                    default:
                        return c;
                }
            } else if (c == '#') {
                this.F = i3;
                w();
                x();
                i = this.F;
                i2 = this.G;
            } else {
                this.F = i3;
                return c;
            }
        }
    }

    private IOException b(String str) {
        throw new f(str + " at line " + u() + " column " + v());
    }

    private String b(char c) {
        char[] cArr = this.E;
        StringBuilder stringBuilder = new StringBuilder();
        do {
            int i = this.F;
            int i2 = this.G;
            int i3 = i;
            while (i3 < i2) {
                int i4 = i3 + 1;
                char c2 = cArr[i3];
                if (c2 == c) {
                    this.F = i4;
                    stringBuilder.append(cArr, i, i4 - i - 1);
                    return stringBuilder.toString();
                } else {
                    if (c2 == '\\') {
                        this.F = i4;
                        stringBuilder.append(cArr, i, i4 - i - 1);
                        stringBuilder.append(y());
                        i = this.F;
                        i2 = this.G;
                        i4 = i;
                    } else if (c2 == '\n') {
                        this.H++;
                        this.I = i4;
                    }
                    i3 = i4;
                }
            }
            stringBuilder.append(cArr, i, i3 - i);
            this.F = i3;
        } while (b((int)v));
        throw b("Unterminated string");
    }

    private boolean b(int i) {
        Object obj = this.E;
        this.I -= this.F;
        if (this.G != this.F) {
            this.G -= this.F;
            System.arraycopy(obj, this.F, obj, u, this.G);
        } else {
            this.G = 0;
        }
        this.F = 0;
        do {
            int read = this.C.read(obj, this.G, obj.length - this.G);
            if (read == -1) {
                return false;
            }
            this.G = read + this.G;
            if (this.H == 0 && this.I == 0 && this.G > 0 && obj[0] == '\ufeff') {
                this.F++;
                this.I++;
                i++;
            }
        } while (this.G < i);
        return true;
    }

    private void c(char c) {
        char[] cArr = this.E;
        do {
            int i = this.F;
            int i2 = this.G;
            int i3 = i;
            while (i3 < i2) {
                i = i3 + 1;
                char c2 = cArr[i3];
                if (c2 == c) {
                    this.F = i;
                    return;
                } else {
                    if (c2 == '\\') {
                        this.F = i;
                        y();
                        i = this.F;
                        i2 = this.G;
                    } else if (c2 == '\n') {
                        this.H++;
                        this.I = i;
                    }
                    i3 = i;
                }
            }
            this.F = i3;
        } while (b((int)v));
        throw b("Unterminated string");
    }

    private int o() {
        int b;
        int i = this.N[this.O - 1];
        if (i == 1) {
            this.N[this.O - 1] = 2;
        } else if (i == 2) {
            switch (b(true)) {
                case ApiEventType.API_MRAID_SET_VIDEO_VOLUME:
                    break;
                case 59:
                    w();
                    break;
                case 93:
                    this.J = 4;
                    return y;
                default:
                    throw b("Unterminated array");
            }
        } else if (i == 3 || i == 5) {
            this.N[this.O - 1] = 4;
            if (i == 5) {
                switch (b(true)) {
                    case ApiEventType.API_MRAID_SET_VIDEO_VOLUME:
                        break;
                    case 59:
                        w();
                        break;
                    case 125:
                        this.J = 2;
                        return 2;
                    default:
                        throw b("Unterminated object");
                }
            }
            b = b(true);
            switch (b) {
                case ApiEventType.API_MRAID_UNMUTE_AUDIO:
                    this.J = 13;
                    return p;
                case ApiEventType.API_MRAID_PAUSE_AUDIO:
                    w();
                    this.J = 12;
                    return o;
                case 125:
                    if (i != 5) {
                        this.J = 2;
                        return 2;
                    } else {
                        throw b("Expected name");
                    }
                default:
                    w();
                    this.F--;
                    if (a((char) b)) {
                        this.J = 14;
                        return q;
                    } else {
                        throw b("Expected name");
                    }
            }
        } else if (i == 4) {
            this.N[this.O - 1] = 5;
            switch (b(true)) {
                case 58:
                    break;
                case 61:
                    w();
                    if ((this.F < this.G || b((int)v)) && this.E[this.F] == '>') {
                        this.F++;
                    }
                    break;
                default:
                    throw b("Expected ':'");
            }
        } else if (i == 6) {
            if (this.D) {
                z();
            }
            this.N[this.O - 1] = 7;
        } else if (i == 7) {
            if (b(false) == -1) {
                this.J = 17;
                return t;
            } else {
                w();
                this.F--;
            }
        } else if (i == 8) {
            throw new IllegalStateException("JsonReader is closed");
        }
        switch (b(true)) {
            case ApiEventType.API_MRAID_UNMUTE_AUDIO:
                if (this.O == 1) {
                    w();
                }
                this.J = 9;
                return l;
            case ApiEventType.API_MRAID_PAUSE_AUDIO:
                w();
                this.J = 8;
                return k;
            case ApiEventType.API_MRAID_SET_VIDEO_VOLUME:
            case 59:
                if (i == 1 || i == 2) {
                    w();
                    this.F--;
                    this.J = 7;
                    return 7;
                } else {
                    throw b("Unexpected value");
                }
            case 91:
                this.J = 3;
                return x;
            case 93:
                if (i == 1) {
                    this.J = 4;
                    return y;
                }
                w();
                this.F--;
                this.J = 7;
                return 7;
            case 123:
                this.J = 1;
                return 1;
            default:
                this.F--;
                if (this.O == 1) {
                    w();
                }
                b = q();
                if (b != 0) {
                    return b;
                }
                b = r();
                if (b != 0) {
                    return b;
                }
                if (a(this.E[this.F])) {
                    w();
                    this.J = 10;
                    return m;
                } else {
                    throw b("Expected value");
                }
        }
    }

    private int q() {
        String str;
        int i;
        char c = this.E[this.F];
        String str2;
        if (c == 't' || c == 'T') {
            str = "true";
            str2 = "TRUE";
            i = z;
        } else if (c == 'f' || c == 'F') {
            str = "false";
            str2 = "FALSE";
            i = i;
        } else if (c != 'n' && c != 'N') {
            return 0;
        } else {
            str = "null";
            str2 = "NULL";
            i = j;
        }
        int length = str.length();
        int i2 = v;
        while (i2 < length) {
            if (this.F + i2 >= this.G && !b(i2 + 1)) {
                return 0;
            }
            char c2 = this.E[this.F + i2];
            if (c2 != str.charAt(i2) && c2 != str.charAt(i2)) {
                return 0;
            }
            i2++;
        }
        if ((this.F + length < this.G || b(length + 1)) && a(this.E[this.F + length])) {
            return 0;
        }
        this.F += length;
        this.J = i;
        return i;
    }

    private int r() {
        char[] cArr = this.E;
        int i = this.F;
        int i2 = this.G;
        long j = 0;
        boolean z = u;
        int i3 = v;
        boolean z2 = u;
        int i4 = 0;
        int i5 = i2;
        i2 = i;
        while (true) {
            int i6;
            if (i2 + i4 == i5 && i4 == cArr.length) {
                return u;
            }
            int i7;
            if (b(i4 + 1)) {
                boolean z3;
                long j2;
                int i8;
                i2 = this.F;
                i5 = this.G;
                char c = cArr[i2 + i4];
                switch (c) {
                    case ApiEventType.API_MRAID_IS_VIDEO_MUTED:
                        if (i7 != 5) {
                            return u;
                        }
                        z3 = i;
                        i7 = i3;
                        i3 = i6;
                        j2 = j;
                        break;
                    case ApiEventType.API_MRAID_GET_VIDEO_VOLUME:
                        if (i7 == 0) {
                            z3 = v;
                            i8 = i3;
                            i3 = 1;
                            i7 = i8;
                            j2 = j;
                        } else if (i7 != 5) {
                            return u;
                        } else {
                            z3 = i;
                            i7 = i3;
                            i3 = i6;
                            j2 = j;
                        }
                        break;
                    case ApiEventType.API_MRAID_SEEK_VIDEO:
                        if (i7 != 2) {
                            return u;
                        }
                        z3 = x;
                        i7 = i3;
                        i3 = i6;
                        j2 = j;
                        break;
                    case 'E':
                    case IMBrowserActivity.INTERSTITIAL_ACTIVITY:
                        if (i7 != 2 && i7 != 4) {
                            return u;
                        }
                        z3 = z;
                        i7 = i3;
                        i3 = i6;
                        j2 = j;
                        break;
                    default:
                        if (c >= '0' && c <= '9') {
                            if (i7 == 1 || i7 == 0) {
                                j = (long) (-(c - 48));
                                z3 = w;
                                i7 = i3;
                                i3 = i6;
                                j2 = j;
                            } else if (i7 == 2) {
                                if (j == 0) {
                                    return u;
                                }
                                long j3 = 10 * j - ((long) (c - 48));
                                i = (j > -922337203685477580L || (j == -922337203685477580L && j3 < j)) ? v : u;
                                i &= i3;
                                i3 = i6;
                                j2 = j3;
                                i8 = i7;
                                i7 = i;
                                i = i8;
                            } else if (i7 == 3) {
                                z3 = y;
                                i7 = i3;
                                i3 = i6;
                                j2 = j;
                            } else if (i7 == 5 || i7 == 6) {
                                z3 = j;
                                i7 = i3;
                                i3 = i6;
                                j2 = j;
                            } else {
                                i = i7;
                                i7 = i3;
                                i3 = i6;
                                j2 = j;
                            }
                        }
                        if (a(c)) {
                            return u;
                        }
                }
                i4++;
                i8 = i7;
                z2 = z3;
                int i9 = i3;
                i3 = i8;
                j = j2;
                i6 = i9;
            }
            if (i7 == 2 && i3 != 0 && (j != Long.MIN_VALUE || i6 != 0)) {
                if (i6 == 0) {
                    j = -j;
                }
                this.K = j;
                this.F += i4;
                this.J = 15;
                return r;
            } else if (i7 != 2 && i7 != 4 && i7 != 7) {
                return u;
            } else {
                this.L = i4;
                this.J = 16;
                return s;
            }
        }
    }

    private String s() {
        StringBuilder stringBuilder = null;
        int i = 0;
        while (true) {
            String str;
            if (this.F + i < this.G) {
                switch (this.E[this.F + i]) {
                    case l:
                    case m:
                    case o:
                    case p:
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
                        w();
                        break;
                    default:
                        i++;
                        break;
                }
            } else if (i >= this.E.length) {
                if (stringBuilder == null) {
                    stringBuilder = new StringBuilder();
                }
                stringBuilder.append(this.E, this.F, i);
                this.F = i + this.F;
                i = b((int)v) ? 0 : 0;
            } else if (b(i + 1)) {
            }
            if (stringBuilder == null) {
                str = new String(this.E, this.F, i);
            } else {
                stringBuilder.append(this.E, this.F, i);
                str = stringBuilder.toString();
            }
            this.F = i + this.F;
            return str;
        }
    }

    private void t() {
        do {
            int i = u;
            while (this.F + i < this.G) {
                switch (this.E[this.F + i]) {
                    case l:
                    case m:
                    case o:
                    case p:
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
                        w();
                        break;
                    default:
                        i++;
                        break;
                }
                this.F = i + this.F;
                return;
            }
            this.F = i + this.F;
        } while (b((int)v));
    }

    private int u() {
        return this.H + 1;
    }

    private int v() {
        return this.F - this.I + 1;
    }

    private void w() {
        if (!this.D) {
            throw b("Use JsonReader.setLenient(true) to accept malformed JSON");
        }
    }

    private void x() {
        char c;
        do {
            if (this.F < this.G || b((int)v)) {
                char[] cArr = this.E;
                int i = this.F;
                this.F = i + 1;
                c = cArr[i];
                if (c == '\n') {
                    this.H++;
                    this.I = this.F;
                    return;
                }
            } else {
                return;
            }
        } while (c != '\r');
    }

    private char y() {
        if (this.F != this.G || b((int)v)) {
            char[] cArr = this.E;
            int i = this.F;
            this.F = i + 1;
            char c = cArr[i];
            switch (c) {
                case m:
                    this.H++;
                    this.I = this.F;
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
                    if (this.F + 4 <= this.G || b((int)y)) {
                        int i2 = this.F;
                        int i3 = i2 + 4;
                        int i4 = i2;
                        c = '\u0000';
                        i = i4;
                        while (i < i3) {
                            char c2 = this.E[i];
                            c = (char) (c << 4);
                            if (c2 >= '0' && c2 <= '9') {
                                c = (char) (c + c2 - 48);
                            } else if (c2 < 'a' || c2 > 'f') {
                                if (c2 >= 'A' && c2 <= 'F') {
                                    c = (char) (c + c2 - 65 + 10);
                                }
                                throw new NumberFormatException("\\u" + new String(this.E, this.F, 4));
                            } else {
                                c = (char) (c + c2 - 97 + 10);
                            }
                            i++;
                        }
                        this.F += 4;
                        return c;
                    } else {
                        throw b("Unterminated escape sequence");
                    }
                default:
                    return c;
            }
        } else {
            throw b("Unterminated escape sequence");
        }
    }

    private void z() {
        b(true);
        this.F--;
        if (this.F + a.length <= this.G || b(a.length)) {
            int i = u;
            while (i < a.length) {
                if (this.E[this.F + i] == a[i]) {
                    i++;
                } else {
                    return;
                }
            }
            this.F += a.length;
        }
    }

    public void a_() {
        int i = this.J;
        if (i == 0) {
            i = o();
        }
        if (i == 3) {
            a((int)v);
            this.J = 0;
        } else {
            throw new IllegalStateException("Expected BEGIN_ARRAY but was " + f() + " at line " + u() + " column " + v());
        }
    }

    public final void a_(boolean z) {
        this.D = z;
    }

    public void b() {
        int i = this.J;
        if (i == 0) {
            i = o();
        }
        if (i == 4) {
            this.O--;
            this.J = 0;
        } else {
            throw new IllegalStateException("Expected END_ARRAY but was " + f() + " at line " + u() + " column " + v());
        }
    }

    public void c() {
        int i = this.J;
        if (i == 0) {
            i = o();
        }
        if (i == 1) {
            a((int)x);
            this.J = 0;
        } else {
            throw new IllegalStateException("Expected BEGIN_OBJECT but was " + f() + " at line " + u() + " column " + v());
        }
    }

    public void close() {
        this.J = 0;
        this.N[0] = 8;
        this.O = 1;
        this.C.close();
    }

    public void d() {
        int i = this.J;
        if (i == 0) {
            i = o();
        }
        if (i == 2) {
            this.O--;
            this.J = 0;
        } else {
            throw new IllegalStateException("Expected END_OBJECT but was " + f() + " at line " + u() + " column " + v());
        }
    }

    public boolean e() {
        int i = this.J;
        if (i == 0) {
            i = o();
        }
        return i != 2 && i != 4;
    }

    public d f() {
        int i = this.J;
        if (i == 0) {
            i = o();
        }
        switch (i) {
            case v:
                return d.c;
            case w:
                return d.d;
            case x:
                return d.a;
            case y:
                return d.b;
            case z:
            case i:
                return d.h;
            case j:
                return d.i;
            case k:
            case l:
            case m:
            case n:
                return d.f;
            case o:
            case p:
            case q:
                return d.e;
            case r:
            case s:
                return d.g;
            case t:
                return d.j;
            default:
                throw new AssertionError();
        }
    }

    public String g() {
        String s;
        int i = this.J;
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
            throw new IllegalStateException("Expected a name but was " + f() + " at line " + u() + " column " + v());
        }
        this.J = 0;
        return s;
    }

    public String h() {
        String s;
        int i = this.J;
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
            s = this.M;
            this.M = null;
        } else if (i == 15) {
            s = Long.toString(this.K);
        } else if (i == 16) {
            s = new String(this.E, this.F, this.L);
            this.F += this.L;
        } else {
            throw new IllegalStateException("Expected a string but was " + f() + " at line " + u() + " column " + v());
        }
        this.J = 0;
        return s;
    }

    public boolean i() {
        int i = this.J;
        if (i == 0) {
            i = o();
        }
        if (i == 5) {
            this.J = 0;
            return true;
        } else if (i == 6) {
            this.J = 0;
            return false;
        } else {
            throw new IllegalStateException("Expected a boolean but was " + f() + " at line " + u() + " column " + v());
        }
    }

    public void j() {
        int i = this.J;
        if (i == 0) {
            i = o();
        }
        if (i == 7) {
            this.J = 0;
        } else {
            throw new IllegalStateException("Expected null but was " + f() + " at line " + u() + " column " + v());
        }
    }

    public double k() {
        int i = this.J;
        if (i == 0) {
            i = o();
        }
        if (i == 15) {
            this.J = 0;
            return (double) this.K;
        } else {
            if (i == 16) {
                this.M = new String(this.E, this.F, this.L);
                this.F += this.L;
            } else if (i == 8 || i == 9) {
                this.M = b(i == 8 ? '\'' : '\"');
            } else if (i == 10) {
                this.M = s();
            } else if (i != 11) {
                throw new IllegalStateException("Expected a double but was " + f() + " at line " + u() + " column " + v());
            }
            this.J = 11;
            double parseDouble = Double.parseDouble(this.M);
            if (this.D || !(Double.isNaN(parseDouble) || Double.isInfinite(parseDouble))) {
                this.M = null;
                this.J = 0;
                return parseDouble;
            } else {
                throw new f("JSON forbids NaN and infinities: " + parseDouble + " at line " + u() + " column " + v());
            }
        }
    }

    public long l() {
        int i = this.J;
        if (i == 0) {
            i = o();
        }
        if (i == 15) {
            this.J = 0;
            return this.K;
        } else {
            long parseLong;
            if (i == 16) {
                this.M = new String(this.E, this.F, this.L);
                this.F += this.L;
            } else if (i == 8 || i == 9) {
                this.M = b(i == 8 ? '\'' : '\"');
                try {
                    parseLong = Long.parseLong(this.M);
                    this.J = 0;
                    return parseLong;
                } catch (NumberFormatException e) {
                }
            } else {
                throw new IllegalStateException("Expected a long but was " + f() + " at line " + u() + " column " + v());
            }
            this.J = 11;
            double parseDouble = Double.parseDouble(this.M);
            parseLong = (long) parseDouble;
            if (((double) parseLong) != parseDouble) {
                throw new NumberFormatException("Expected a long but was " + this.M + " at line " + u() + " column " + v());
            }
            this.M = null;
            this.J = 0;
            return parseLong;
        }
    }

    public int m() {
        int i = this.J;
        if (i == 0) {
            i = o();
        }
        if (i == 15) {
            i = (int) this.K;
            if (this.K != ((long) i)) {
                throw new NumberFormatException("Expected an int but was " + this.K + " at line " + u() + " column " + v());
            }
            this.J = 0;
            return i;
        } else {
            if (i == 16) {
                this.M = new String(this.E, this.F, this.L);
                this.F += this.L;
            } else if (i == 8 || i == 9) {
                this.M = b(i == 8 ? '\'' : '\"');
                try {
                    i = Integer.parseInt(this.M);
                    this.J = 0;
                    return i;
                } catch (NumberFormatException e) {
                }
            } else {
                throw new IllegalStateException("Expected an int but was " + f() + " at line " + u() + " column " + v());
            }
            this.J = 11;
            double parseDouble = Double.parseDouble(this.M);
            i = (int) parseDouble;
            if (((double) i) != parseDouble) {
                throw new NumberFormatException("Expected an int but was " + this.M + " at line " + u() + " column " + v());
            }
            this.M = null;
            this.J = 0;
            return i;
        }
    }

    public void n() {
        int i = 0;
        do {
            int i2 = this.J;
            if (i2 == 0) {
                i2 = o();
            }
            if (i2 == 3) {
                a((int)v);
                i++;
            } else if (i2 == 1) {
                a((int)x);
                i++;
            } else if (i2 == 4) {
                this.O--;
                i--;
            } else if (i2 == 2) {
                this.O--;
                i--;
            } else if (i2 == 14 || i2 == 10) {
                t();
            } else if (i2 == 8 || i2 == 12) {
                c('\'');
            } else if (i2 == 9 || i2 == 13) {
                c('\"');
            } else if (i2 == 16) {
                this.F += this.L;
            }
            this.J = 0;
        } while (i != 0);
    }

    public final boolean p() {
        return this.D;
    }

    public String toString() {
        return getClass().getSimpleName() + " at line " + u() + " column " + v();
    }
}