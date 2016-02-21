package android.support.v4.a;

import android.content.BroadcastReceiver;
import android.content.IntentFilter;

class f {
    final IntentFilter a;
    final BroadcastReceiver b;
    boolean c;

    f(IntentFilter intentFilter, BroadcastReceiver broadcastReceiver) {
        this.a = intentFilter;
        this.b = broadcastReceiver;
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder(128);
        stringBuilder.append("Receiver{");
        stringBuilder.append(this.b);
        stringBuilder.append(" filter=");
        stringBuilder.append(this.a);
        stringBuilder.append("}");
        return stringBuilder.toString();
    }
}