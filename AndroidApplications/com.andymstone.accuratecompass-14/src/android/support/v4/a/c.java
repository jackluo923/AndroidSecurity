package android.support.v4.a;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.os.Handler;
import android.util.Log;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Set;

public class c {
    private static final Object f;
    private static c g;
    private final Context a;
    private final HashMap b;
    private final HashMap c;
    private final ArrayList d;
    private final Handler e;

    static {
        f = new Object();
    }

    private c(Context context) {
        this.b = new HashMap();
        this.c = new HashMap();
        this.d = new ArrayList();
        this.a = context;
        this.e = new d(this, context.getMainLooper());
    }

    public static c a(Context context) {
        c cVar;
        synchronized (f) {
            if (g == null) {
                g = new c(context.getApplicationContext());
            }
            cVar = g;
        }
        return cVar;
    }

    private void a() {
        while (true) {
            synchronized (this.b) {
                int size = this.d.size();
                if (size <= 0) {
                    return;
                } else {
                    e[] eVarArr = new e[size];
                    this.d.toArray(eVarArr);
                    this.d.clear();
                    int i = 0;
                    while (i < eVarArr.length) {
                        e eVar = eVarArr[i];
                        int i2 = 0;
                        while (i2 < eVar.b.size()) {
                            ((f) eVar.b.get(i2)).b.onReceive(this.a, eVar.a);
                            i2++;
                        }
                        i++;
                    }
                }
            }
        }
    }

    public void a(BroadcastReceiver broadcastReceiver) {
        synchronized (this.b) {
            ArrayList arrayList = (ArrayList) this.b.remove(broadcastReceiver);
            if (arrayList == null) {
            } else {
                int i = 0;
                while (i < arrayList.size()) {
                    IntentFilter intentFilter = (IntentFilter) arrayList.get(i);
                    int i2 = 0;
                    while (i2 < intentFilter.countActions()) {
                        String action = intentFilter.getAction(i2);
                        ArrayList arrayList2 = (ArrayList) this.c.get(action);
                        if (arrayList2 != null) {
                            int i3 = 0;
                            while (i3 < arrayList2.size()) {
                                int i4;
                                if (((f) arrayList2.get(i3)).b == broadcastReceiver) {
                                    arrayList2.remove(i3);
                                    i4 = i3 - 1;
                                } else {
                                    i4 = i3;
                                }
                                i3 = i4 + 1;
                            }
                            if (arrayList2.size() <= 0) {
                                this.c.remove(action);
                            }
                        }
                        i2++;
                    }
                    i++;
                }
            }
        }
    }

    public void a(BroadcastReceiver broadcastReceiver, IntentFilter intentFilter) {
        synchronized (this.b) {
            f fVar = new f(intentFilter, broadcastReceiver);
            ArrayList arrayList = (ArrayList) this.b.get(broadcastReceiver);
            if (arrayList == null) {
                arrayList = new ArrayList(1);
                this.b.put(broadcastReceiver, arrayList);
            }
            arrayList.add(intentFilter);
            int i = 0;
            while (i < intentFilter.countActions()) {
                String action = intentFilter.getAction(i);
                arrayList = (ArrayList) this.c.get(action);
                if (arrayList == null) {
                    arrayList = new ArrayList(1);
                    this.c.put(action, arrayList);
                }
                arrayList.add(fVar);
                i++;
            }
        }
    }

    public boolean a(Intent intent) {
        synchronized (this.b) {
            String action = intent.getAction();
            String resolveTypeIfNeeded = intent.resolveTypeIfNeeded(this.a.getContentResolver());
            Uri data = intent.getData();
            String scheme = intent.getScheme();
            Set categories = intent.getCategories();
            int i = (intent.getFlags() & 8) != 0 ? 1 : 0;
            if (i != 0) {
                Log.v("LocalBroadcastManager", "Resolving type " + resolveTypeIfNeeded + " scheme " + scheme + " of intent " + intent);
            }
            ArrayList arrayList = (ArrayList) this.c.get(intent.getAction());
            if (arrayList != null) {
                if (i != 0) {
                    Log.v("LocalBroadcastManager", "Action list: " + arrayList);
                }
                ArrayList arrayList2 = null;
                int i2 = 0;
                while (i2 < arrayList.size()) {
                    ArrayList arrayList3;
                    f fVar = (f) arrayList.get(i2);
                    if (i != 0) {
                        Log.v("LocalBroadcastManager", "Matching against filter " + fVar.a);
                    }
                    if (fVar.c) {
                        if (i != 0) {
                            Log.v("LocalBroadcastManager", "  Filter's target already added");
                            arrayList3 = arrayList2;
                        }
                        arrayList3 = arrayList2;
                    } else {
                        int match = fVar.a.match(action, resolveTypeIfNeeded, scheme, data, categories, "LocalBroadcastManager");
                        if (match >= 0) {
                            if (i != 0) {
                                Log.v("LocalBroadcastManager", "  Filter matched!  match=0x" + Integer.toHexString(match));
                            }
                            arrayList3 = arrayList2 == null ? new ArrayList() : arrayList2;
                            arrayList3.add(fVar);
                            fVar.c = true;
                        } else {
                            if (i != 0) {
                                String str;
                                switch (match) {
                                    case -4:
                                        str = "category";
                                        break;
                                    case -3:
                                        str = "action";
                                        break;
                                    case -2:
                                        str = "data";
                                        break;
                                    case -1:
                                        str = "type";
                                        break;
                                    default:
                                        str = "unknown reason";
                                        break;
                                }
                                Log.v("LocalBroadcastManager", "  Filter did not match: " + str);
                            }
                            arrayList3 = arrayList2;
                        }
                    }
                    i2++;
                    arrayList2 = arrayList3;
                }
                if (arrayList2 != null) {
                    int i3 = 0;
                    while (i3 < arrayList2.size()) {
                        ((f) arrayList2.get(i3)).c = false;
                        i3++;
                    }
                    this.d.add(new e(intent, arrayList2));
                    if (!this.e.hasMessages(1)) {
                        this.e.sendEmptyMessage(1);
                    }
                    return true;
                }
            }
            return false;
        }
    }
}