package android.support.v4.widget;

import android.database.ContentObserver;
import android.os.Handler;

// compiled from: ProGuard
class c extends ContentObserver {
    final /* synthetic */ a a;

    public c(a aVar) {
        this.a = aVar;
        super(new Handler());
    }

    public boolean deliverSelfNotifications() {
        return true;
    }

    public void onChange(boolean z) {
        this.a.onContentChanged();
    }
}