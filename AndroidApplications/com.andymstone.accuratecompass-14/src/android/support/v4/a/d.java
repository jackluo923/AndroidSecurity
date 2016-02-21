package android.support.v4.a;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.andymstone.core.o;

class d extends Handler {
    final /* synthetic */ c a;

    d(c cVar, Looper looper) {
        this.a = cVar;
        super(looper);
    }

    public void handleMessage(Message message) {
        switch (message.what) {
            case o.MyAlertDialog_myAlertDialogAccentColor:
                c.a(this.a);
            default:
                super.handleMessage(message);
        }
    }
}