package me.kiip.internal.f;

import com.millennialmedia.android.MMException;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import com.zeptolab.utils.HTMLEncoder;
import com.zeptolab.zbuild.ZBuildConfig;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.net.ProtocolException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Logger;
import java.util.zip.DataFormatException;
import java.util.zip.Deflater;
import java.util.zip.Inflater;
import java.util.zip.InflaterInputStream;
import me.kiip.internal.d.f;

final class h implements k {
    static final byte[] a;

    static final class a implements b {
        private final DataInputStream a;
        private final DataInputStream b;
        private final boolean c;
        private int d;

        a(InputStream inputStream, boolean z) {
            this.a = new DataInputStream(inputStream);
            this.b = a();
            this.c = z;
        }

        static /* synthetic */ int a_(a aVar, int i) {
            int i2 = aVar.d - i;
            aVar.d = i2;
            return i2;
        }

        private DataInputStream a_() {
            return new DataInputStream(new InflaterInputStream(new InputStream() {
                public void close() {
                    a.this.close();
                }

                public int read() {
                    return me.kiip.internal.d.h.a(this);
                }

                public int read(byte[] bArr, int i, int i2) {
                    int read = a.this.read(bArr, i, Math.min(i2, a.this.d));
                    a.a(a.this, read);
                    return read;
                }
            }, new Inflater() {
                public int inflate(byte[] bArr, int i, int i2) {
                    int inflate = super.inflate(bArr, i, i2);
                    if (inflate != 0 || !needsDictionary()) {
                        return inflate;
                    }
                    setDictionary(a);
                    return super.inflate(bArr, i, i2);
                }
            }));
        }

        private static IOException a_(String str, Object... objArr) {
            throw new IOException(String.format(str, objArr));
        }

        private List a_(int i) {
            int i2 = 0;
            this.d += i;
            try {
                int readInt = this.b.readInt();
                if (readInt * 2 < 0) {
                    Logger.getLogger(getClass().getName()).warning("numberOfPairs < 0: " + readInt);
                    throw a("numberOfPairs < 0", new Object[0]);
                } else {
                    List arrayList = new ArrayList(readInt * 2);
                    while (i2 < readInt) {
                        String b = b();
                        String b2 = b();
                        if (b.length() == 0) {
                            throw a("name.length == 0", new Object[0]);
                        }
                        arrayList.add(b);
                        arrayList.add(b2);
                        i2++;
                    }
                    if (this.d != 0) {
                        Logger.getLogger(getClass().getName()).warning("compressedLimit > 0: " + this.d);
                    }
                    return arrayList;
                }
            } catch (DataFormatException e) {
                throw new IOException(e.getMessage());
            }
        }

        private void a_(me.kiip.internal.f.b.a aVar, int i, int i2) {
            boolean z;
            boolean z2 = true;
            int readInt = this.a.readInt();
            int readInt2 = this.a.readInt();
            short readShort = this.a.readShort();
            int i3 = readInt & Integer.MAX_VALUE;
            readInt2 &= Integer.MAX_VALUE;
            int i4 = (57344 & readShort) >>> 13;
            int i5 = readShort & 255;
            List a = a(i2 - 10);
            z = (i & 1) != 0;
            if ((i & 2) == 0) {
                z2 = false;
            }
            aVar.a(z2, z, i3, readInt2, i4, i5, a);
        }

        private String b() {
            int readInt = this.b.readInt();
            byte[] bArr = new byte[readInt];
            me.kiip.internal.d.h.a(this.b, bArr);
            return new String(bArr, 0, readInt, HTMLEncoder.ENCODE_NAME_DEFAULT);
        }

        private void b(me.kiip.internal.f.b.a aVar, int i, int i2) {
            aVar.a((i & 1) != 0, Integer.MAX_VALUE & this.a.readInt(), a(i2 - 4));
        }

        private void c(me.kiip.internal.f.b.a aVar, int i, int i2) {
            if (i2 != 8) {
                throw a("TYPE_RST_STREAM length: %d != 8", new Object[]{Integer.valueOf(i2)});
            } else {
                int readInt = this.a.readInt() & Integer.MAX_VALUE;
                a a = a.a(this.a.readInt());
                if (a == null) {
                    throw a("TYPE_RST_STREAM unexpected error code: %d", new Object[]{Integer.valueOf(i)});
                } else {
                    aVar.a(readInt, a);
                }
            }
        }

        private void d(me.kiip.internal.f.b.a aVar, int i, int i2) {
            aVar.a(this.a.readInt() & Integer.MAX_VALUE, a(i2 - 4));
        }

        private void e(me.kiip.internal.f.b.a aVar, int i, int i2) {
            if (i2 != 8) {
                throw a("TYPE_WINDOW_UPDATE length: %d != 8", new Object[]{Integer.valueOf(i2)});
            } else {
                aVar.a(this.a.readInt() & Integer.MAX_VALUE, this.a.readInt() & Integer.MAX_VALUE, false);
            }
        }

        private void f(me.kiip.internal.f.b.a aVar, int i, int i2) {
            boolean z = true;
            if (i2 != 4) {
                throw a("TYPE_PING length: %d != 4", new Object[]{Integer.valueOf(i2)});
            }
            int readInt = this.a.readInt();
            if (this.c != (readInt % 2 == 1)) {
                z = false;
            }
            aVar.a(z, readInt, 0);
        }

        private void g(me.kiip.internal.f.b.a aVar, int i, int i2) {
            if (i2 != 8) {
                throw a("TYPE_GOAWAY length: %d != 8", new Object[]{Integer.valueOf(i2)});
            } else {
                int readInt = this.a.readInt() & Integer.MAX_VALUE;
                a c = a.c(this.a.readInt());
                if (c == null) {
                    throw a("TYPE_GOAWAY unexpected error code: %d", new Object[]{Integer.valueOf(i)});
                } else {
                    aVar.b(readInt, c);
                }
            }
        }

        private void h(me.kiip.internal.f.b.a aVar, int i, int i2) {
            boolean z = true;
            int readInt = this.a.readInt();
            if (i2 != readInt * 8 + 4) {
                throw a("TYPE_SETTINGS length: %d != 4 + 8 * %d", new Object[]{Integer.valueOf(i2), Integer.valueOf(readInt)});
            } else {
                g gVar = new g();
                int i3 = 0;
                while (i3 < readInt) {
                    int readInt2 = this.a.readInt();
                    int i4 = (-16777216 & readInt2) >>> 24;
                    gVar.a(readInt2 & 16777215, i4, this.a.readInt());
                    i3++;
                }
                if ((i & 1) == 0) {
                    z = false;
                }
                aVar.a(z, gVar);
            }
        }

        public boolean a_(me.kiip.internal.f.b.a aVar) {
            boolean z = false;
            try {
                int readInt = this.a.readInt();
                int readInt2 = this.a.readInt();
                int i = (-16777216 & readInt2) >>> 24;
                readInt2 &= 16777215;
                int i2;
                if (((Integer.MIN_VALUE & readInt) != 0 ? true : z) != 0) {
                    i2 = (2147418112 & readInt) >>> 16;
                    readInt &= 65535;
                    if (i2 != 3) {
                        throw new ProtocolException("version != 3: " + i2);
                    }
                    switch (readInt) {
                        case GoogleScorer.CLIENT_GAMES:
                            a(aVar, i, readInt2);
                            return true;
                        case GoogleScorer.CLIENT_PLUS:
                            b(aVar, i, readInt2);
                            return true;
                        case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                            c(aVar, i, readInt2);
                            return true;
                        case GoogleScorer.CLIENT_APPSTATE:
                            h(aVar, i, readInt2);
                            return true;
                        case IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:
                            if (readInt2 != 0) {
                                throw a("TYPE_NOOP length: %d != 0", new Object[]{Integer.valueOf(readInt2)});
                            }
                            aVar.a();
                            return true;
                        case IabHelper.BILLING_RESPONSE_RESULT_ERROR:
                            f(aVar, i, readInt2);
                            return true;
                        case GoogleScorer.CLIENT_ALL:
                            g(aVar, i, readInt2);
                            return true;
                        case IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED:
                            d(aVar, i, readInt2);
                            return true;
                        case ZBuildConfig.$minsdk:
                            e(aVar, i, readInt2);
                            return true;
                        case MMException.REQUEST_NOT_PERMITTED:
                            me.kiip.internal.d.h.a(this.a, (long) readInt2);
                            throw new UnsupportedOperationException("TODO");
                        default:
                            throw new IOException("Unexpected frame");
                    }
                } else {
                    i2 = Integer.MAX_VALUE & readInt;
                    if ((i & 1) != 0) {
                        z = true;
                    }
                    aVar.a(z, i2, this.a, readInt2);
                    return true;
                }
            } catch (IOException e) {
                return z;
            }
        }

        public void close() {
            me.kiip.internal.d.h.a(this.a, this.b);
        }
    }

    static final class b implements c {
        private final DataOutputStream a;
        private final ByteArrayOutputStream b;
        private final DataOutputStream c;
        private final boolean d;

        b(OutputStream outputStream, boolean z) {
            this.a = new DataOutputStream(outputStream);
            this.d = z;
            Deflater deflater = new Deflater();
            deflater.setDictionary(a);
            this.b = new ByteArrayOutputStream();
            this.c = new DataOutputStream(f.a().a(this.b, deflater, true));
        }

        private void a(List list) {
            this.b.reset();
            this.c.writeInt(list.size() / 2);
            Iterator it = list.iterator();
            while (it.hasNext()) {
                String str = (String) it.next();
                this.c.writeInt(str.length());
                this.c.write(str.getBytes(HTMLEncoder.ENCODE_NAME_DEFAULT));
            }
            this.c.flush();
        }

        public synchronized void a() {
        }

        public synchronized void a(int i, int i2) {
            this.a.writeInt(-2147287031);
            this.a.writeInt(IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED);
            this.a.writeInt(i);
            this.a.writeInt(i2);
            this.a.flush();
        }

        public synchronized void a(int i, a aVar) {
            if (aVar.p == -1) {
                throw new IllegalArgumentException();
            }
            this.a.writeInt(-2147287037);
            this.a.writeInt(IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED);
            this.a.writeInt(Integer.MAX_VALUE & i);
            this.a.writeInt(aVar.p);
            this.a.flush();
        }

        public synchronized void a(boolean z, int i, int i2) {
            boolean z2 = 1;
            synchronized (this) {
                if (this.d == (i % 2 == 1)) {
                    z2 = false;
                }
                if (z != z2) {
                    throw new IllegalArgumentException("payload != reply");
                }
                this.a.writeInt(-2147287034);
                this.a.writeInt(GoogleScorer.CLIENT_APPSTATE);
                this.a.writeInt(i);
                this.a.flush();
            }
        }

        public synchronized void a(boolean z, int i, byte[] bArr, int i2, int i3) {
            int i4;
            i4 = z ? 1 : 0;
            this.a.writeInt(Integer.MAX_VALUE & i);
            this.a.writeInt(((i4 & 255) << 24) | (16777215 & i3));
            this.a.write(bArr, i2, i3);
        }

        public synchronized void a(boolean z, boolean z2, int i, int i2, int i3, int i4, List list) {
            int i5 = 0;
            synchronized (this) {
                int i6;
                a(list);
                int size = this.b.size() + 10;
                i6 = z ? 1 : 0;
                if (z2) {
                    i5 = GoogleScorer.CLIENT_PLUS;
                }
                i5 |= i6;
                this.a.writeInt(-2147287039);
                this.a.writeInt(((i5 & 255) << 24) | (size & 16777215));
                this.a.writeInt(i & Integer.MAX_VALUE);
                this.a.writeInt(i2 & Integer.MAX_VALUE);
                this.a.writeShort((((i3 & 7) << 13) | 0) | (i4 & 255));
                this.b.writeTo(this.a);
                this.a.flush();
            }
        }

        public synchronized void b_() {
            this.a.flush();
        }

        public synchronized void b_(int i, a aVar) {
            if (aVar.q == -1) {
                throw new IllegalArgumentException();
            }
            this.a.writeInt(-2147287033);
            this.a.writeInt(IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED);
            this.a.writeInt(i);
            this.a.writeInt(aVar.q);
            this.a.flush();
        }

        public void close() {
            me.kiip.internal.d.h.a(this.a, this.c);
        }
    }

    static {
        try {
            a = "\u0000\u0000\u0000\u0007options\u0000\u0000\u0000\u0004head\u0000\u0000\u0000\u0004post\u0000\u0000\u0000\u0003put\u0000\u0000\u0000\u0006delete\u0000\u0000\u0000\u0005trace\u0000\u0000\u0000\u0006accept\u0000\u0000\u0000\u000eaccept-charset\u0000\u0000\u0000\u000faccept-encoding\u0000\u0000\u0000\u000faccept-language\u0000\u0000\u0000\raccept-ranges\u0000\u0000\u0000\u0003age\u0000\u0000\u0000\u0005allow\u0000\u0000\u0000\rauthorization\u0000\u0000\u0000\rcache-control\u0000\u0000\u0000\nconnection\u0000\u0000\u0000\fcontent-base\u0000\u0000\u0000\u0010content-encoding\u0000\u0000\u0000\u0010content-language\u0000\u0000\u0000\u000econtent-length\u0000\u0000\u0000\u0010content-location\u0000\u0000\u0000\u000bcontent-md5\u0000\u0000\u0000\rcontent-range\u0000\u0000\u0000\fcontent-type\u0000\u0000\u0000\u0004date\u0000\u0000\u0000\u0004etag\u0000\u0000\u0000\u0006expect\u0000\u0000\u0000\u0007expires\u0000\u0000\u0000\u0004from\u0000\u0000\u0000\u0004host\u0000\u0000\u0000\bif-match\u0000\u0000\u0000\u0011if-modified-since\u0000\u0000\u0000\rif-none-match\u0000\u0000\u0000\bif-range\u0000\u0000\u0000\u0013if-unmodified-since\u0000\u0000\u0000\rlast-modified\u0000\u0000\u0000\blocation\u0000\u0000\u0000\fmax-forwards\u0000\u0000\u0000\u0006pragma\u0000\u0000\u0000\u0012proxy-authenticate\u0000\u0000\u0000\u0013proxy-authorization\u0000\u0000\u0000\u0005range\u0000\u0000\u0000\u0007referer\u0000\u0000\u0000\u000bretry-after\u0000\u0000\u0000\u0006server\u0000\u0000\u0000\u0002te\u0000\u0000\u0000\u0007trailer\u0000\u0000\u0000\u0011transfer-encoding\u0000\u0000\u0000\u0007upgrade\u0000\u0000\u0000\nuser-agent\u0000\u0000\u0000\u0004vary\u0000\u0000\u0000\u0003via\u0000\u0000\u0000\u0007warning\u0000\u0000\u0000\u0010www-authenticate\u0000\u0000\u0000\u0006method\u0000\u0000\u0000\u0003get\u0000\u0000\u0000\u0006status\u0000\u0000\u0000\u0006200 OK\u0000\u0000\u0000\u0007version\u0000\u0000\u0000\bHTTP/1.1\u0000\u0000\u0000\u0003url\u0000\u0000\u0000\u0006public\u0000\u0000\u0000\nset-cookie\u0000\u0000\u0000\nkeep-alive\u0000\u0000\u0000\u0006origin100101201202205206300302303304305306307402405406407408409410411412413414415416417502504505203 Non-Authoritative Information204 No Content301 Moved Permanently400 Bad Request401 Unauthorized403 Forbidden404 Not Found500 Internal Server Error501 Not Implemented503 Service UnavailableJan Feb Mar Apr May Jun Jul Aug Sept Oct Nov Dec 00:00:00 Mon, Tue, Wed, Thu, Fri, Sat, Sun, GMTchunked,text/html,image/png,image/jpg,image/gif,application/xml,application/xhtml+xml,text/plain,text/javascript,publicprivatemax-age=gzip,deflate,sdchcharset=utf-8charset=iso-8859-1,utf-,*,enq=0.".getBytes(me.kiip.internal.d.h.e.name());
        } catch (UnsupportedEncodingException e) {
            throw new AssertionError();
        }
    }

    h() {
    }

    public b a(InputStream inputStream, boolean z) {
        return new a(inputStream, z);
    }

    public c a(OutputStream outputStream, boolean z) {
        return new b(outputStream, z);
    }
}