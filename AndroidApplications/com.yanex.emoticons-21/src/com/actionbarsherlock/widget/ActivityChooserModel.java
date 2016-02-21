package com.actionbarsherlock.widget;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.database.DataSetObservable;
import android.os.Handler;
import android.text.TextUtils;
import android.util.Log;
import android.util.Xml;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

class ActivityChooserModel extends DataSetObservable {
    private static final String ATTRIBUTE_ACTIVITY = "activity";
    private static final String ATTRIBUTE_TIME = "time";
    private static final String ATTRIBUTE_WEIGHT = "weight";
    private static final boolean DEBUG = false;
    private static final int DEFAULT_ACTIVITY_INFLATION = 5;
    private static final float DEFAULT_HISTORICAL_RECORD_WEIGHT = 1.0f;
    public static final String DEFAULT_HISTORY_FILE_NAME = "activity_choser_model_history.xml";
    public static final int DEFAULT_HISTORY_MAX_LENGTH = 50;
    private static final String HISTORY_FILE_EXTENSION = ".xml";
    private static final int INVALID_INDEX = -1;
    private static final String LOG_TAG;
    private static final Executor SERIAL_EXECUTOR;
    private static final String TAG_HISTORICAL_RECORD = "historical-record";
    private static final String TAG_HISTORICAL_RECORDS = "historical-records";
    private static final Map sDataModelRegistry;
    private static final Object sRegistryLock;
    private final List mActivites;
    private OnChooseActivityListener mActivityChoserModelPolicy;
    private ActivitySorter mActivitySorter;
    private boolean mCanReadHistoricalData;
    private final Context mContext;
    private final Handler mHandler;
    private final List mHistoricalRecords;
    private boolean mHistoricalRecordsChanged;
    private final String mHistoryFileName;
    private int mHistoryMaxSize;
    private final Object mInstanceLock;
    private Intent mIntent;
    private boolean mReadShareHistoryCalled;

    public interface ActivityChooserModelClient {
        void setActivityChooserModel(ActivityChooserModel activityChooserModel);
    }

    public final class ActivityResolveInfo implements Comparable {
        public final ResolveInfo resolveInfo;
        public float weight;

        public ActivityResolveInfo(ResolveInfo resolveInfo) {
            this.resolveInfo = resolveInfo;
        }

        public final int compareTo(com.actionbarsherlock.widget.ActivityChooserModel.ActivityResolveInfo activityResolveInfo) {
            return Float.floatToIntBits(activityResolveInfo.weight) - Float.floatToIntBits(this.weight);
        }

        public final boolean equals(com.actionbarsherlock.widget.ActivityChooserModel.ActivityResolveInfo activityResolveInfo) {
            if (this == activityResolveInfo) {
                return true;
            }
            if (activityResolveInfo == null) {
                return false;
            }
            if (getClass() != activityResolveInfo.getClass()) {
                return false;
            }
            activityResolveInfo = activityResolveInfo;
            return Float.floatToIntBits(this.weight) == Float.floatToIntBits(activityResolveInfo.weight);
        }

        public final int hashCode() {
            return Float.floatToIntBits(this.weight) + 31;
        }

        public final String toString() {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("[");
            stringBuilder.append("resolveInfo:").append(this.resolveInfo.toString());
            stringBuilder.append("; weight:").append(new BigDecimal((double) this.weight));
            stringBuilder.append("]");
            return stringBuilder.toString();
        }
    }

    public interface ActivitySorter {
        void sort(Intent intent, List list, List list2);
    }

    final class DefaultSorter implements com.actionbarsherlock.widget.ActivityChooserModel.ActivitySorter {
        private static final float WEIGHT_DECAY_COEFFICIENT = 0.95f;
        private final Map mPackageNameToActivityMap;

        private DefaultSorter() {
            this.mPackageNameToActivityMap = new HashMap();
        }

        public final void sort(Intent intent, List list, List list2) {
            Map map = this.mPackageNameToActivityMap;
            map.clear();
            int size = list.size();
            int i = 0;
            while (i < size) {
                com.actionbarsherlock.widget.ActivityChooserModel.ActivityResolveInfo activityResolveInfo = (com.actionbarsherlock.widget.ActivityChooserModel.ActivityResolveInfo) list.get(i);
                activityResolveInfo.weight = 0.0f;
                map.put(activityResolveInfo.resolveInfo.activityInfo.packageName, activityResolveInfo);
                i++;
            }
            int size2 = list2.size() - 1;
            float f = DEFAULT_HISTORICAL_RECORD_WEIGHT;
            int i2 = size2;
            while (i2 >= 0) {
                float f2;
                com.actionbarsherlock.widget.ActivityChooserModel.HistoricalRecord historicalRecord = (com.actionbarsherlock.widget.ActivityChooserModel.HistoricalRecord) list2.get(i2);
                activityResolveInfo = (com.actionbarsherlock.widget.ActivityChooserModel.ActivityResolveInfo) map.get(historicalRecord.activity.getPackageName());
                if (activityResolveInfo != null) {
                    activityResolveInfo.weight = historicalRecord.weight * f + activityResolveInfo.weight;
                    f2 = 0.95f * f;
                } else {
                    f2 = f;
                }
                i2--;
                f = f2;
            }
            Collections.sort(list);
        }
    }

    public final class HistoricalRecord {
        public final ComponentName activity;
        public final long time;
        public final float weight;

        public HistoricalRecord(ComponentName componentName, long j, float f) {
            this.activity = componentName;
            this.time = j;
            this.weight = f;
        }

        public HistoricalRecord(String str, long j, float f) {
            this(ComponentName.unflattenFromString(str), j, f);
        }

        public final boolean equals(com.actionbarsherlock.widget.ActivityChooserModel.HistoricalRecord historicalRecord) {
            if (this == historicalRecord) {
                return true;
            }
            if (historicalRecord == null) {
                return false;
            }
            if (getClass() != historicalRecord.getClass()) {
                return false;
            }
            historicalRecord = historicalRecord;
            if (this.activity == null) {
                if (historicalRecord.activity != null) {
                    return false;
                }
            } else if (!this.activity.equals(historicalRecord.activity)) {
                return false;
            }
            if (this.time != historicalRecord.time) {
                return false;
            }
            return Float.floatToIntBits(this.weight) == Float.floatToIntBits(historicalRecord.weight);
        }

        public final int hashCode() {
            return ((((this.activity == null ? 0 : this.activity.hashCode()) + 31) * 31) + ((int) (this.time ^ (this.time >>> 32)))) * 31 + Float.floatToIntBits(this.weight);
        }

        public final String toString() {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("[");
            stringBuilder.append("; activity:").append(this.activity);
            stringBuilder.append("; time:").append(this.time);
            stringBuilder.append("; weight:").append(new BigDecimal((double) this.weight));
            stringBuilder.append("]");
            return stringBuilder.toString();
        }
    }

    final class HistoryLoader implements Runnable {
        private HistoryLoader() {
        }

        public final void run() {
            try {
                InputStream openFileInput = ActivityChooserModel.this.mContext.openFileInput(ActivityChooserModel.this.mHistoryFileName);
                try {
                    XmlPullParser newPullParser = Xml.newPullParser();
                    newPullParser.setInput(openFileInput, null);
                    int i = 0;
                    while (i != 1 && i != 2) {
                        i = newPullParser.next();
                    }
                    if (TAG_HISTORICAL_RECORDS.equals(newPullParser.getName())) {
                        Collection arrayList = new ArrayList();
                        while (true) {
                            int next = newPullParser.next();
                            if (next == 1) {
                                synchronized (ActivityChooserModel.this.mInstanceLock) {
                                    Collection linkedHashSet = new LinkedHashSet(arrayList);
                                    List access$600 = ActivityChooserModel.this.mHistoricalRecords;
                                    int i2 = access$600.size() - 1;
                                    while (i2 >= 0) {
                                        linkedHashSet.add((com.actionbarsherlock.widget.ActivityChooserModel.HistoricalRecord) access$600.get(i2));
                                        i2--;
                                    }
                                    if (access$600.size() == linkedHashSet.size()) {
                                        if (openFileInput != null) {
                                            try {
                                                openFileInput.close();
                                                return;
                                            } catch (IOException e) {
                                            }
                                        } else {
                                            return;
                                        }
                                    } else {
                                        access$600.clear();
                                        access$600.addAll(linkedHashSet);
                                        ActivityChooserModel.this.mHistoricalRecordsChanged = true;
                                        ActivityChooserModel.this.mHandler.post(new Runnable() {
                                            public void run() {
                                                HistoryLoader.this.this$0.pruneExcessiveHistoricalRecordsLocked();
                                                HistoryLoader.this.this$0.sortActivities();
                                            }
                                        });
                                        if (openFileInput != null) {
                                            try {
                                                openFileInput.close();
                                                return;
                                            } catch (IOException e2) {
                                            }
                                        } else {
                                            return;
                                        }
                                    }
                                }
                            } else if (!(next == 3 || next == 4)) {
                                if (TAG_HISTORICAL_RECORD.equals(newPullParser.getName())) {
                                    arrayList.add(new com.actionbarsherlock.widget.ActivityChooserModel.HistoricalRecord(newPullParser.getAttributeValue(null, ATTRIBUTE_ACTIVITY), Long.parseLong(newPullParser.getAttributeValue(null, ATTRIBUTE_TIME)), Float.parseFloat(newPullParser.getAttributeValue(null, ATTRIBUTE_WEIGHT))));
                                } else {
                                    throw new XmlPullParserException("Share records file not well-formed.");
                                }
                            }
                        }
                    } else {
                        throw new XmlPullParserException("Share records file does not start with historical-records tag.");
                    }
                } catch (XmlPullParserException e3) {
                    Log.e(LOG_TAG, new StringBuilder("Error reading historical recrod file: ").append(ActivityChooserModel.this.mHistoryFileName).toString(), e3);
                    if (openFileInput != null) {
                        try {
                            openFileInput.close();
                        } catch (IOException e4) {
                        }
                    }
                } catch (IOException e5) {
                    Log.e(LOG_TAG, new StringBuilder("Error reading historical recrod file: ").append(ActivityChooserModel.this.mHistoryFileName).toString(), e5);
                    if (openFileInput != null) {
                        try {
                            openFileInput.close();
                        } catch (IOException e6) {
                        }
                    }
                }
            } catch (FileNotFoundException e7) {
            }
        }
    }

    final class HistoryPersister implements Runnable {
        private HistoryPersister() {
        }

        public final void run() {
            synchronized (ActivityChooserModel.this.mInstanceLock) {
                List arrayList = new ArrayList(ActivityChooserModel.this.mHistoricalRecords);
            }
            try {
                OutputStream openFileOutput = ActivityChooserModel.this.mContext.openFileOutput(ActivityChooserModel.this.mHistoryFileName, 0);
                XmlSerializer newSerializer = Xml.newSerializer();
                try {
                    newSerializer.setOutput(openFileOutput, null);
                    newSerializer.startDocument("UTF-8", Boolean.valueOf(true));
                    newSerializer.startTag(null, TAG_HISTORICAL_RECORDS);
                    int size = arrayList.size();
                    int i = 0;
                    while (i < size) {
                        com.actionbarsherlock.widget.ActivityChooserModel.HistoricalRecord historicalRecord = (com.actionbarsherlock.widget.ActivityChooserModel.HistoricalRecord) arrayList.remove(0);
                        newSerializer.startTag(null, TAG_HISTORICAL_RECORD);
                        newSerializer.attribute(null, ATTRIBUTE_ACTIVITY, historicalRecord.activity.flattenToString());
                        newSerializer.attribute(null, ATTRIBUTE_TIME, String.valueOf(historicalRecord.time));
                        newSerializer.attribute(null, ATTRIBUTE_WEIGHT, String.valueOf(historicalRecord.weight));
                        newSerializer.endTag(null, TAG_HISTORICAL_RECORD);
                        i++;
                    }
                    newSerializer.endTag(null, TAG_HISTORICAL_RECORDS);
                    newSerializer.endDocument();
                    if (openFileOutput != null) {
                        try {
                            openFileOutput.close();
                        } catch (IOException e) {
                        }
                    }
                } catch (Throwable th) {
                    if (openFileOutput != null) {
                        try {
                            openFileOutput.close();
                        } catch (IOException e2) {
                        }
                    }
                }
            } catch (FileNotFoundException e3) {
                Log.e(LOG_TAG, new StringBuilder("Error writing historical recrod file: ").append(ActivityChooserModel.this.mHistoryFileName).toString(), e3);
            }
        }
    }

    public interface OnChooseActivityListener {
        boolean onChooseActivity(ActivityChooserModel activityChooserModel, Intent intent);
    }

    static {
        LOG_TAG = ActivityChooserModel.class.getSimpleName();
        sRegistryLock = new Object();
        sDataModelRegistry = new HashMap();
        SERIAL_EXECUTOR = Executors.newSingleThreadExecutor();
    }

    private ActivityChooserModel(Context context, String str) {
        this.mInstanceLock = new Object();
        this.mActivites = new ArrayList();
        this.mHistoricalRecords = new ArrayList();
        this.mActivitySorter = new DefaultSorter(null);
        this.mHistoryMaxSize = 50;
        this.mCanReadHistoricalData = true;
        this.mReadShareHistoryCalled = false;
        this.mHistoricalRecordsChanged = true;
        this.mHandler = new Handler();
        this.mContext = context.getApplicationContext();
        if (TextUtils.isEmpty(str) || str.endsWith(HISTORY_FILE_EXTENSION)) {
            this.mHistoryFileName = str;
        } else {
            this.mHistoryFileName = str + HISTORY_FILE_EXTENSION;
        }
    }

    private boolean addHisoricalRecord(HistoricalRecord historicalRecord) {
        boolean add;
        synchronized (this.mInstanceLock) {
            add = this.mHistoricalRecords.add(historicalRecord);
            if (add) {
                this.mHistoricalRecordsChanged = true;
                pruneExcessiveHistoricalRecordsLocked();
                persistHistoricalData();
                sortActivities();
            }
        }
        return add;
    }

    public static ActivityChooserModel get(Context context, String str) {
        ActivityChooserModel activityChooserModel;
        synchronized (sRegistryLock) {
            activityChooserModel = (ActivityChooserModel) sDataModelRegistry.get(str);
            if (activityChooserModel == null) {
                activityChooserModel = new ActivityChooserModel(context, str);
                sDataModelRegistry.put(str, activityChooserModel);
            }
            activityChooserModel.readHistoricalData();
        }
        return activityChooserModel;
    }

    private void loadActivitiesLocked() {
        this.mActivites.clear();
        if (this.mIntent != null) {
            List queryIntentActivities = this.mContext.getPackageManager().queryIntentActivities(this.mIntent, 0);
            int size = queryIntentActivities.size();
            int i = 0;
            while (i < size) {
                this.mActivites.add(new ActivityResolveInfo((ResolveInfo) queryIntentActivities.get(i)));
                i++;
            }
            sortActivities();
        } else {
            notifyChanged();
        }
    }

    private void persistHistoricalData() {
        synchronized (this.mInstanceLock) {
            if (!this.mReadShareHistoryCalled) {
                throw new IllegalStateException("No preceding call to #readHistoricalData");
            } else if (this.mHistoricalRecordsChanged) {
                this.mHistoricalRecordsChanged = false;
                this.mCanReadHistoricalData = true;
                if (!TextUtils.isEmpty(this.mHistoryFileName)) {
                    SERIAL_EXECUTOR.execute(new HistoryPersister(null));
                }
            }
        }
    }

    private void pruneExcessiveHistoricalRecordsLocked() {
        List list = this.mHistoricalRecords;
        int size = list.size() - this.mHistoryMaxSize;
        if (size > 0) {
            this.mHistoricalRecordsChanged = true;
            int i = 0;
            while (i < size) {
                list.remove(0);
                i++;
            }
        }
    }

    private void readHistoricalData() {
        synchronized (this.mInstanceLock) {
            if (this.mCanReadHistoricalData && this.mHistoricalRecordsChanged) {
                this.mCanReadHistoricalData = false;
                this.mReadShareHistoryCalled = true;
                if (!TextUtils.isEmpty(this.mHistoryFileName)) {
                    SERIAL_EXECUTOR.execute(new HistoryLoader(null));
                }
            }
        }
    }

    private void sortActivities() {
        synchronized (this.mInstanceLock) {
            if (!(this.mActivitySorter == null || this.mActivites.isEmpty())) {
                this.mActivitySorter.sort(this.mIntent, this.mActivites, Collections.unmodifiableList(this.mHistoricalRecords));
                notifyChanged();
            }
        }
    }

    public Intent chooseActivity(int i) {
        ActivityResolveInfo activityResolveInfo = (ActivityResolveInfo) this.mActivites.get(i);
        ComponentName componentName = new ComponentName(activityResolveInfo.resolveInfo.activityInfo.packageName, activityResolveInfo.resolveInfo.activityInfo.name);
        Intent intent = new Intent(this.mIntent);
        intent.setComponent(componentName);
        if (this.mActivityChoserModelPolicy != null) {
            if (this.mActivityChoserModelPolicy.onChooseActivity(this, new Intent(intent))) {
                return null;
            }
        }
        addHisoricalRecord(new HistoricalRecord(componentName, System.currentTimeMillis(), 1.0f));
        return intent;
    }

    public ResolveInfo getActivity(int i) {
        ResolveInfo resolveInfo;
        synchronized (this.mInstanceLock) {
            resolveInfo = ((ActivityResolveInfo) this.mActivites.get(i)).resolveInfo;
        }
        return resolveInfo;
    }

    public int getActivityCount() {
        int size;
        synchronized (this.mInstanceLock) {
            size = this.mActivites.size();
        }
        return size;
    }

    public int getActivityIndex(ResolveInfo resolveInfo) {
        List list = this.mActivites;
        int size = list.size();
        int i = 0;
        while (i < size) {
            if (((ActivityResolveInfo) list.get(i)).resolveInfo == resolveInfo) {
                return i;
            }
            i++;
        }
        return INVALID_INDEX;
    }

    public ResolveInfo getDefaultActivity() {
        synchronized (this.mInstanceLock) {
            if (this.mActivites.isEmpty()) {
                return null;
            } else {
                ResolveInfo resolveInfo = ((ActivityResolveInfo) this.mActivites.get(0)).resolveInfo;
                return resolveInfo;
            }
        }
    }

    public int getHistoryMaxSize() {
        int i;
        synchronized (this.mInstanceLock) {
            i = this.mHistoryMaxSize;
        }
        return i;
    }

    public int getHistorySize() {
        int size;
        synchronized (this.mInstanceLock) {
            size = this.mHistoricalRecords.size();
        }
        return size;
    }

    public Intent getIntent() {
        Intent intent;
        synchronized (this.mInstanceLock) {
            intent = this.mIntent;
        }
        return intent;
    }

    public void setActivitySorter(ActivitySorter activitySorter) {
        synchronized (this.mInstanceLock) {
            if (this.mActivitySorter == activitySorter) {
            } else {
                this.mActivitySorter = activitySorter;
                sortActivities();
            }
        }
    }

    public void setDefaultActivity(int i) {
        ActivityResolveInfo activityResolveInfo = (ActivityResolveInfo) this.mActivites.get(i);
        ActivityResolveInfo activityResolveInfo2 = (ActivityResolveInfo) this.mActivites.get(0);
        addHisoricalRecord(new HistoricalRecord(new ComponentName(activityResolveInfo.resolveInfo.activityInfo.packageName, activityResolveInfo.resolveInfo.activityInfo.name), System.currentTimeMillis(), activityResolveInfo2 != null ? activityResolveInfo2.weight - activityResolveInfo.weight + 5.0f : DEFAULT_HISTORICAL_RECORD_WEIGHT));
    }

    public void setHistoryMaxSize(int i) {
        synchronized (this.mInstanceLock) {
            if (this.mHistoryMaxSize == i) {
            } else {
                this.mHistoryMaxSize = i;
                pruneExcessiveHistoricalRecordsLocked();
                sortActivities();
            }
        }
    }

    public void setIntent(Intent intent) {
        synchronized (this.mInstanceLock) {
            if (this.mIntent == intent) {
            } else {
                this.mIntent = intent;
                loadActivitiesLocked();
            }
        }
    }

    public void setOnChooseActivityListener(OnChooseActivityListener onChooseActivityListener) {
        this.mActivityChoserModelPolicy = onChooseActivityListener;
    }
}