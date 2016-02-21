package me.kiip.internal.f;

import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import com.zeptolab.zbuild.ZBuildConfig;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.List;
import me.kiip.internal.d.h;

final class d implements k {

    static final class a implements b {
        private final DataInputStream a;

        a(InputStream inputStream) {
            this.a = new DataInputStream(inputStream);
        }

        private static IOException a_(String str, Object... objArr) {
            throw new IOException(String.format(str, objArr));
        }

        private void a_(me.kiip.internal.f.b.a aVar, int i, int i2, int i3) {
            aVar.a((i & 1) != 0, i3, this.a, i2);
        }

        private void b(me.kiip.internal.f.b.a aVar, int i, int i2, int i3) {
            if (i2 != 4) {
                throw a("TYPE_PRIORITY length: %d != 4", new Object[]{Integer.valueOf(i2)});
            } else if (i3 == 0) {
                throw a("TYPE_PRIORITY streamId == 0", new Object[0]);
            } else {
                aVar.a(i3, this.a.readInt() & Integer.MAX_VALUE);
            }
        }

        private void c(me.kiip.internal.f.b.a aVar, int i, int i2, int i3) {
            if (i2 != 4) {
                throw a("TYPE_RST_STREAM length: %d != 4", new Object[]{Integer.valueOf(i2)});
            } else if (i3 == 0) {
                throw a("TYPE_RST_STREAM streamId == 0", new Object[0]);
            } else {
                a b = a.b(this.a.readInt());
                if (b == null) {
                    throw a("TYPE_RST_STREAM unexpected error code: %d", new Object[]{Integer.valueOf(i)});
                } else {
                    aVar.a(i3, b);
                }
            }
        }

        private void d(me.kiip.internal.f.b.a aVar, int i, int i2, int i3) {
            if (i2 % 8 != 0) {
                throw a("TYPE_SETTINGS length %% 8 != 0: %s", new Object[]{Integer.valueOf(i2)});
            } else if (i3 != 0) {
                throw a("TYPE_SETTINGS streamId != 0", new Object[0]);
            } else {
                g gVar = new g();
                int i4 = 0;
                while (i4 < i2) {
                    gVar.a(this.a.readInt() & 16777215, 0, this.a.readInt());
                    i4 += 8;
                }
                aVar.a(false, gVar);
            }
        }

        private void e(me.kiip.internal.f.b.a aVar, int i, int i2, int i3) {
        }

        private void f(me.kiip.internal.f.b.a aVar, int i, int i2, int i3) {
            boolean z = true;
            if (i2 != 8) {
                throw a("TYPE_PING length != 8: %s", new Object[]{Integer.valueOf(i2)});
            } else if (i3 != 0) {
                throw a("TYPE_PING streamId != 0", new Object[0]);
            } else {
                int readInt = this.a.readInt();
                int readInt2 = this.a.readInt();
                if ((i & 1) == 0) {
                    z = false;
                }
                aVar.a(z, readInt, readInt2);
            }
        }

        private void g(me.kiip.internal.f.b.a aVar, int i, int i2, int i3) {
            if (i2 < 8) {
                throw a("TYPE_GOAWAY length < 8: %s", new Object[]{Integer.valueOf(i2)});
            } else {
                int readInt = this.a.readInt();
                int i4 = i2 - 8;
                a b = a.b(this.a.readInt());
                if (b == null) {
                    throw a("TYPE_RST_STREAM unexpected error code: %d", new Object[]{Integer.valueOf(i)});
                } else if (h.a(this.a, (long) i4) != ((long) i4)) {
                    throw new IOException("TYPE_GOAWAY opaque data was truncated");
                } else {
                    aVar.b(readInt, b);
                }
            }
        }

        private void h(me.kiip.internal.f.b.a aVar, int i, int i2, int i3) {
            aVar.a(i3, Integer.MAX_VALUE & this.a.readInt(), (i & 1) != 0);
        }

        public boolean a_(me.kiip.internal.f.b.a aVar) {
            try {
                int readInt = this.a.readInt();
                int i = 65535 & readInt;
                int i2 = (16711680 & readInt) >> 16;
                readInt = (readInt & -16777216) >> 24;
                int readInt2 = this.a.readInt() & Integer.MAX_VALUE;
                switch (i2) {
                    case IabHelper.BILLING_RESPONSE_RESULT_OK:
                        a(aVar, readInt, i, readInt2);
                        return true;
                    case GoogleScorer.CLIENT_PLUS:
                        b(aVar, readInt, i, readInt2);
                        return true;
                    case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                        c(aVar, readInt, i, readInt2);
                        return true;
                    case GoogleScorer.CLIENT_APPSTATE:
                        d(aVar, readInt, i, readInt2);
                        return true;
                    case IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:
                        e(aVar, readInt, i, readInt2);
                        return true;
                    case IabHelper.BILLING_RESPONSE_RESULT_ERROR:
                        f(aVar, readInt, i, readInt2);
                        return true;
                    case GoogleScorer.CLIENT_ALL:
                        g(aVar, readInt, i, readInt2);
                        return true;
                    case ZBuildConfig.$minsdk:
                        h(aVar, readInt, i, readInt2);
                        return true;
                    default:
                        throw new UnsupportedOperationException("TODO");
                }
            } catch (IOException e) {
                return false;
            }
        }

        public void close() {
            this.a.close();
        }
    }

    static final class b implements c {
        private final DataOutputStream a;

        b(OutputStream outputStream) {
            this.a = new DataOutputStream(outputStream);
        }

        public synchronized void a() {
            throw new UnsupportedOperationException("TODO");
        }

        public synchronized void a(int i, int i2) {
            throw new UnsupportedOperationException("TODO");
        }

        public synchronized void a(int i, a aVar) {
            throw new UnsupportedOperationException("TODO");
        }

        public synchronized void a(boolean z, int i, int i2) {
            throw new UnsupportedOperationException("TODO");
        }

        public synchronized void a(boolean z, int i, byte[] bArr, int i2, int i3) {
            throw new UnsupportedOperationException("TODO");
        }

        public synchronized void a(boolean z, boolean z2, int i, int i2, int i3, int i4, List list) {
            throw new UnsupportedOperationException("TODO");
        }

        public synchronized void b_() {
            this.a.flush();
        }

        public synchronized void b_(int i, a aVar) {
            throw new UnsupportedOperationException("TODO");
        }

        public void close() {
            this.a.close();
        }
    }

    d() {
    }

    public b a(InputStream inputStream, boolean z) {
        return new a(inputStream);
    }

    public c a(OutputStream outputStream, boolean z) {
        return new b(outputStream);
    }
}