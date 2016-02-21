package android.support.v4.app;

import android.os.Handler;
import android.os.Message;
import com.andymstone.core.o;

class j extends Handler {
    final /* synthetic */ i a;

    j(i iVar) {
        this.a = iVar;
    }

    public void handleMessage(Message message) {
        switch (message.what) {
            case o.MyAlertDialog_myAlertDialogAccentColor:
                if (this.a.f) {
                    this.a.a(false);
                }
            case o.MyAlertDialog_myAlertDialogButtonDrawable:
                this.a.a();
                this.a.b.e();
            default:
                super.handleMessage(message);
        }
    }
}