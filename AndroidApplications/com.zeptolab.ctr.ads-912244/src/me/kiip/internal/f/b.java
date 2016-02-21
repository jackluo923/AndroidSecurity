package me.kiip.internal.f;

import java.io.Closeable;
import java.io.InputStream;
import java.util.List;

public interface b extends Closeable {

    public static interface a {
        void a_();

        void a_(int i, int i2);

        void a_(int i, int i2, boolean z);

        void a_(int i, List list);

        void a_(int i, a aVar);

        void a_(boolean z, int i, int i2);

        void a_(boolean z, int i, InputStream inputStream, int i2);

        void a_(boolean z, int i, List list);

        void a_(boolean z, g gVar);

        void a_(boolean z, boolean z2, int i, int i2, int i3, int i4, List list);

        void b(int i, a aVar);
    }

    boolean a(a aVar);
}