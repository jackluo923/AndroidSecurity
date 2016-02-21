package android.support.v4.content;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.heyzap.house.impl.AbstractActivity;
import com.inmobi.androidsdk.impl.ConfigException;
import com.inmobi.commons.analytics.db.AnalyticsSQLiteHelper;
import com.vungle.sdk.VunglePub.Gender;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Set;

public class LocalBroadcastManager {
    private static final boolean DEBUG = false;
    static final int MSG_EXEC_PENDING_BROADCASTS = 1;
    private static final String TAG = "LocalBroadcastManager";
    private static LocalBroadcastManager mInstance;
    private static final Object mLock;
    private final HashMap mActions;
    private final Context mAppContext;
    private final Handler mHandler;
    private final ArrayList mPendingBroadcasts;
    private final HashMap mReceivers;

    class AnonymousClass_1 extends Handler {
        AnonymousClass_1(Looper looper) {
            super(looper);
        }

        public void handleMessage(Message message) {
            switch (message.what) {
                case MSG_EXEC_PENDING_BROADCASTS:
                    LocalBroadcastManager.this.executePendingBroadcasts();
                default:
                    super.handleMessage(message);
            }
        }
    }

    private static class BroadcastRecord {
        final Intent intent;
        final ArrayList receivers;

        BroadcastRecord(Intent intent, ArrayList arrayList) {
            this.intent = intent;
            this.receivers = arrayList;
        }
    }

    private static class ReceiverRecord {
        boolean broadcasting;
        final IntentFilter filter;
        final BroadcastReceiver receiver;

        ReceiverRecord(IntentFilter intentFilter, BroadcastReceiver broadcastReceiver) {
            this.filter = intentFilter;
            this.receiver = broadcastReceiver;
        }

        public String toString() {
            StringBuilder stringBuilder = new StringBuilder(128);
            stringBuilder.append("Receiver{");
            stringBuilder.append(this.receiver);
            stringBuilder.append(" filter=");
            stringBuilder.append(this.filter);
            stringBuilder.append("}");
            return stringBuilder.toString();
        }
    }

    static {
        mLock = new Object();
    }

    private LocalBroadcastManager(Context context) {
        this.mReceivers = new HashMap();
        this.mActions = new HashMap();
        this.mPendingBroadcasts = new ArrayList();
        this.mAppContext = context;
        this.mHandler = new AnonymousClass_1(context.getMainLooper());
    }

    private void executePendingBroadcasts() {
        while (true) {
            synchronized (this.mReceivers) {
                int size = this.mPendingBroadcasts.size();
                if (size <= 0) {
                    return;
                } else {
                    BroadcastRecord[] broadcastRecordArr = new BroadcastRecord[size];
                    this.mPendingBroadcasts.toArray(broadcastRecordArr);
                    this.mPendingBroadcasts.clear();
                    int i = 0;
                    while (i < broadcastRecordArr.length) {
                        BroadcastRecord broadcastRecord = broadcastRecordArr[i];
                        int i2 = 0;
                        while (i2 < broadcastRecord.receivers.size()) {
                            ((ReceiverRecord) broadcastRecord.receivers.get(i2)).receiver.onReceive(this.mAppContext, broadcastRecord.intent);
                            i2++;
                        }
                        i++;
                    }
                }
            }
        }
    }

    public static LocalBroadcastManager getInstance(Context context) {
        LocalBroadcastManager localBroadcastManager;
        synchronized (mLock) {
            if (mInstance == null) {
                mInstance = new LocalBroadcastManager(context.getApplicationContext());
            }
            localBroadcastManager = mInstance;
        }
        return localBroadcastManager;
    }

    public void registerReceiver(BroadcastReceiver broadcastReceiver, IntentFilter intentFilter) {
        synchronized (this.mReceivers) {
            ReceiverRecord receiverRecord = new ReceiverRecord(intentFilter, broadcastReceiver);
            ArrayList arrayList = (ArrayList) this.mReceivers.get(broadcastReceiver);
            if (arrayList == null) {
                arrayList = new ArrayList(1);
                this.mReceivers.put(broadcastReceiver, arrayList);
            }
            arrayList.add(intentFilter);
            int i = 0;
            while (i < intentFilter.countActions()) {
                String action = intentFilter.getAction(i);
                arrayList = (ArrayList) this.mActions.get(action);
                if (arrayList == null) {
                    arrayList = new ArrayList(1);
                    this.mActions.put(action, arrayList);
                }
                arrayList.add(receiverRecord);
                i++;
            }
        }
    }

    public boolean sendBroadcast(Intent intent) {
        synchronized (this.mReceivers) {
            String action = intent.getAction();
            String resolveTypeIfNeeded = intent.resolveTypeIfNeeded(this.mAppContext.getContentResolver());
            Uri data = intent.getData();
            String scheme = intent.getScheme();
            Set categories = intent.getCategories();
            int i = (intent.getFlags() & 8) != 0 ? 1 : 0;
            if (i != 0) {
                Log.v(TAG, "Resolving type " + resolveTypeIfNeeded + " scheme " + scheme + " of intent " + intent);
            }
            ArrayList arrayList = (ArrayList) this.mActions.get(intent.getAction());
            if (arrayList != null) {
                if (i != 0) {
                    Log.v(TAG, "Action list: " + arrayList);
                }
                ArrayList arrayList2 = null;
                int i2 = 0;
                while (i2 < arrayList.size()) {
                    ArrayList arrayList3;
                    ReceiverRecord receiverRecord = (ReceiverRecord) arrayList.get(i2);
                    if (i != 0) {
                        Log.v(TAG, "Matching against filter " + receiverRecord.filter);
                    }
                    if (receiverRecord.broadcasting) {
                        if (i != 0) {
                            Log.v(TAG, "  Filter's target already added");
                            arrayList3 = arrayList2;
                        }
                        arrayList3 = arrayList2;
                    } else {
                        int match = receiverRecord.filter.match(action, resolveTypeIfNeeded, scheme, data, categories, TAG);
                        if (match >= 0) {
                            if (i != 0) {
                                Log.v(TAG, "  Filter matched!  match=0x" + Integer.toHexString(match));
                            }
                            arrayList3 = arrayList2 == null ? new ArrayList() : arrayList2;
                            arrayList3.add(receiverRecord);
                            receiverRecord.broadcasting = true;
                        } else {
                            if (i != 0) {
                                String str;
                                switch (match) {
                                    case ConfigException.MISSING_CONFIG_KEYBOARD:
                                        str = "category";
                                        break;
                                    case ConfigException.MISSING_CONFIG_CHANGES:
                                        str = AbstractActivity.ACTIVITY_INTENT_ACTION_KEY;
                                        break;
                                    case ConfigException.MISSING_ACTIVITY_DECLARATION:
                                        str = i.a;
                                        break;
                                    case Gender.UNKNOWN:
                                        str = AnalyticsSQLiteHelper.EVENT_LIST_TYPE;
                                        break;
                                    default:
                                        str = "unknown reason";
                                        break;
                                }
                                Log.v(TAG, "  Filter did not match: " + str);
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
                        ((ReceiverRecord) arrayList2.get(i3)).broadcasting = false;
                        i3++;
                    }
                    this.mPendingBroadcasts.add(new BroadcastRecord(intent, arrayList2));
                    if (!this.mHandler.hasMessages(MSG_EXEC_PENDING_BROADCASTS)) {
                        this.mHandler.sendEmptyMessage(MSG_EXEC_PENDING_BROADCASTS);
                    }
                    return true;
                }
            }
            return DEBUG;
        }
    }

    public void sendBroadcastSync(Intent intent) {
        if (sendBroadcast(intent)) {
            executePendingBroadcasts();
        }
    }

    public void unregisterReceiver(BroadcastReceiver broadcastReceiver) {
        synchronized (this.mReceivers) {
            ArrayList arrayList = (ArrayList) this.mReceivers.remove(broadcastReceiver);
            if (arrayList == null) {
            } else {
                int i = 0;
                while (i < arrayList.size()) {
                    IntentFilter intentFilter = (IntentFilter) arrayList.get(i);
                    int i2 = 0;
                    while (i2 < intentFilter.countActions()) {
                        String action = intentFilter.getAction(i2);
                        ArrayList arrayList2 = (ArrayList) this.mActions.get(action);
                        if (arrayList2 != null) {
                            int i3 = 0;
                            while (i3 < arrayList2.size()) {
                                int i4;
                                if (((ReceiverRecord) arrayList2.get(i3)).receiver == broadcastReceiver) {
                                    arrayList2.remove(i3);
                                    i4 = i3 - 1;
                                } else {
                                    i4 = i3;
                                }
                                i3 = i4 + 1;
                            }
                            if (arrayList2.size() <= 0) {
                                this.mActions.remove(action);
                            }
                        }
                        i2++;
                    }
                    i++;
                }
            }
        }
    }
}