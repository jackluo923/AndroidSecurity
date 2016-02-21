package android.support.v4.widget;

import android.database.ContentObserver;
import android.os.Handler;

final class b extends ContentObserver {
    final /* synthetic */ a a;

    public b(a aVar) {
        this.a = aVar;
        super(new Handler());
    }

    public final boolean deliverSelfNotifications() {
        return true;
    }

    public final void onChange(boolean z) {
        this.a.onContentChanged();
    }
}