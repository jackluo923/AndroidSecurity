package com.zeptolab.ctr;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager.NameNotFoundException;
import com.google.android.gms.cast.Cast;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.zeptolab.zbuild.ZBuildConfig;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public class CtrPreferences {
    private static CtrPreferences instance;
    private static Object lock;
    private Map allProps;
    private GameView currentGV;
    private Editor ed;
    private ThreadPoolExecutor exe;
    private boolean freshLaunch;
    private boolean freshUpdateLaunch;
    private ArrayList gvclisteners;
    private SharedPreferences pref;

    class AnonymousClass_1 implements Runnable {
        final /* synthetic */ boolean val$commit;
        final /* synthetic */ String val$key;

        AnonymousClass_1(String str, boolean z) {
            this.val$key = str;
            this.val$commit = z;
        }

        public void run() {
            CtrPreferences.this.ed.remove(this.val$key);
            if (this.val$commit) {
                CtrPreferences.this.ed.commit();
            }
        }
    }

    class AnonymousClass_2 implements Runnable {
        final /* synthetic */ boolean val$commit;
        final /* synthetic */ ArrayList val$keys;

        AnonymousClass_2(ArrayList arrayList, boolean z) {
            this.val$keys = arrayList;
            this.val$commit = z;
        }

        public void run() {
            Iterator it = this.val$keys.iterator();
            while (it.hasNext()) {
                CtrPreferences.this.ed.remove((String) it.next());
            }
            if (this.val$commit) {
                CtrPreferences.this.ed.commit();
            }
        }
    }

    class AnonymousClass_3 implements Runnable {
        final /* synthetic */ boolean val$commit;
        final /* synthetic */ String val$key;
        final /* synthetic */ int val$val;

        AnonymousClass_3(String str, int i, boolean z) {
            this.val$key = str;
            this.val$val = i;
            this.val$commit = z;
        }

        public void run() {
            CtrPreferences.this.ed.putInt(this.val$key, this.val$val);
            if (this.val$commit) {
                CtrPreferences.this.ed.commit();
            }
        }
    }

    class AnonymousClass_4 implements Runnable {
        final /* synthetic */ boolean val$commit;
        final /* synthetic */ String val$key;
        final /* synthetic */ long val$val;

        AnonymousClass_4(String str, long j, boolean z) {
            this.val$key = str;
            this.val$val = j;
            this.val$commit = z;
        }

        public void run() {
            CtrPreferences.this.ed.putLong(this.val$key, this.val$val);
            if (this.val$commit) {
                CtrPreferences.this.ed.commit();
            }
        }
    }

    class AnonymousClass_5 implements Runnable {
        final /* synthetic */ boolean val$commit;
        final /* synthetic */ String val$key;
        final /* synthetic */ float val$val;

        AnonymousClass_5(String str, float f, boolean z) {
            this.val$key = str;
            this.val$val = f;
            this.val$commit = z;
        }

        public void run() {
            CtrPreferences.this.ed.putFloat(this.val$key, this.val$val);
            if (this.val$commit) {
                CtrPreferences.this.ed.commit();
            }
        }
    }

    class AnonymousClass_6 implements Runnable {
        final /* synthetic */ boolean val$commit;
        final /* synthetic */ String val$key;
        final /* synthetic */ boolean val$val;

        AnonymousClass_6(String str, boolean z, boolean z2) {
            this.val$key = str;
            this.val$val = z;
            this.val$commit = z2;
        }

        public void run() {
            CtrPreferences.this.ed.putBoolean(this.val$key, this.val$val);
            if (this.val$commit) {
                CtrPreferences.this.ed.commit();
            }
        }
    }

    class AnonymousClass_7 implements Runnable {
        final /* synthetic */ boolean val$commit;
        final /* synthetic */ String val$key;
        final /* synthetic */ String val$val;

        AnonymousClass_7(String str, String str2, boolean z) {
            this.val$key = str;
            this.val$val = str2;
            this.val$commit = z;
        }

        public void run() {
            CtrPreferences.this.ed.putString(this.val$key, this.val$val);
            if (this.val$commit) {
                CtrPreferences.this.ed.commit();
            }
        }
    }

    public enum GameView {
        GAME,
        MENU
    }

    public static interface GameViewChangedListener {
        void gameViewChanged(com.zeptolab.ctr.CtrPreferences.GameView gameView);
    }

    static {
        lock = new Object();
    }

    private CtrPreferences() {
        this.gvclisteners = new ArrayList();
        this.currentGV = null;
        this.freshLaunch = false;
        this.freshUpdateLaunch = false;
        int i = 1;
        this.exe = new ThreadPoolExecutor(1, i, 59, TimeUnit.SECONDS, new LinkedBlockingQueue());
        try {
            this.pref = CtrApp.getInstance().getSharedPreferences(ZBuildConfig.prefs_name, 0);
            this.allProps = new HashMap();
            Map all = this.pref.getAll();
            if (all != null) {
                Iterator it = all.entrySet().iterator();
                while (it.hasNext()) {
                    Entry entry = (Entry) it.next();
                    this.allProps.put(entry.getKey(), entry.getValue());
                }
            }
            this.ed = this.pref.edit();
            try {
                String str = "lastVersionLaunched";
                long j = (long) CtrApp.getInstance().getPackageManager().getPackageInfo(CtrApp.getInstance().getPackageName(), Cast.MAX_NAMESPACE_LENGTH).versionCode;
                long intForKey = (long) getIntForKey(str);
                if (intForKey == 0) {
                    this.freshLaunch = true;
                } else if (intForKey < j) {
                    this.freshUpdateLaunch = true;
                }
                setIntforKey(str, (int) j, true);
            } catch (Exception e) {
                e.printStackTrace();
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public static CtrPreferences getInstance() {
        CtrPreferences ctrPreferences;
        synchronized (lock) {
            if (instance == null) {
                instance = new CtrPreferences();
            }
            ctrPreferences = instance;
        }
        return ctrPreferences;
    }

    public void addGameViewChangedListener(GameViewChangedListener gameViewChangedListener) {
        this.gvclisteners.add(gameViewChangedListener);
    }

    public void deleteKey(String str, boolean z) {
        this.allProps.remove(str);
        this.exe.execute(new AnonymousClass_1(str, z));
    }

    public void deleteKeysStartWith(String str, boolean z) {
        ArrayList arrayList = new ArrayList();
        Iterator it = this.allProps.entrySet().iterator();
        while (it.hasNext()) {
            String str2 = (String) ((Entry) it.next()).getKey();
            if (str2.startsWith(str)) {
                arrayList.add(str2);
            }
        }
        it = arrayList.iterator();
        while (it.hasNext()) {
            this.allProps.remove((String) it.next());
        }
        this.exe.execute(new AnonymousClass_2(arrayList, z));
    }

    public void flush() {
        while (this.exe.getTaskCount() != this.exe.getCompletedTaskCount()) {
            try {
                Thread.sleep(500);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public void gameViewChanged(String str) {
        GameView gameView;
        String toLowerCase = str.toLowerCase();
        if (toLowerCase.equals("game")) {
            gameView = GameView.GAME;
        } else if (toLowerCase.equals("menu")) {
            gameView = GameView.MENU;
        } else {
            throw new RuntimeException("gameViewChanged but nameOfView is undefined");
        }
        if (this.currentGV != gameView) {
            Iterator it = this.gvclisteners.iterator();
            while (it.hasNext()) {
                ((GameViewChangedListener) it.next()).gameViewChanged(gameView);
            }
            this.currentGV = gameView;
        }
    }

    public Map getAllProps() {
        return this.allProps;
    }

    public boolean getBooleanForKey(String str) {
        Object obj = this.allProps.get(str);
        return (obj == null || !(obj instanceof Boolean)) ? false : ((Boolean) obj).booleanValue();
    }

    public float getFloatForKey(String str) {
        return getFloatForKey(str, BitmapDescriptorFactory.HUE_RED);
    }

    public float getFloatForKey(String str, float f) {
        Object obj = this.allProps.get(str);
        return (obj == null || !(obj instanceof Number)) ? f : ((Number) obj).floatValue();
    }

    public int getIntForKey(String str) {
        return getIntForKey(str, 0);
    }

    public int getIntForKey(String str, int i) {
        Object obj = this.allProps.get(str);
        return (obj == null || !(obj instanceof Number)) ? i : ((Number) obj).intValue();
    }

    public long getLongForKey(String str) {
        return getLongForKey(str, 0);
    }

    public long getLongForKey(String str, long j) {
        Object obj = this.allProps.get(str);
        return (obj == null || !(obj instanceof Number)) ? j : ((Number) obj).longValue();
    }

    public boolean getPackageInstalled(String str) {
        try {
            CtrApp.getInstance().getPackageManager().getPackageInfo(str, Cast.MAX_NAMESPACE_LENGTH);
            return true;
        } catch (NameNotFoundException e) {
            return false;
        }
    }

    public SharedPreferences getSharedPrefs() {
        return this.pref;
    }

    public String getStringForKey(String str) {
        Object obj = this.allProps.get(str);
        return obj != null ? obj.toString() : AdTrackerConstants.BLANK;
    }

    public String getStringForKey(String str, String str2) {
        Object obj = this.allProps.get(str);
        return obj != null ? obj.toString() : str2;
    }

    public boolean isCtr2PackageInstalled() {
        Iterator it = CtrApp.getInstance().getPackageManager().getInstalledPackages(0).iterator();
        while (it.hasNext()) {
            if (((PackageInfo) it.next()).packageName.startsWith("com.zeptolab.ctr2")) {
                return true;
            }
        }
        return false;
    }

    public boolean isFreshLaunch() {
        return this.freshLaunch;
    }

    public boolean isFreshUpdateLaunch() {
        return this.freshUpdateLaunch;
    }

    public void savePreferences() {
        this.exe.execute(new Runnable() {
            public void run() {
                CtrPreferences.this.ed.commit();
            }
        });
    }

    public void setAllProps(Map map, String[] strArr) {
        if (map != null) {
            int length = strArr.length;
            int i = 0;
            while (i < length) {
                Object obj = strArr[i];
                Object obj2 = this.allProps.get(obj);
                if (obj2 != null) {
                    map.put(obj, obj2);
                } else {
                    map.remove(obj);
                }
                i++;
            }
            this.allProps.clear();
            this.ed.clear();
            Iterator it = map.entrySet().iterator();
            while (it.hasNext()) {
                Entry entry = (Entry) it.next();
                String str = (String) entry.getKey();
                Object value = entry.getValue();
                if (value instanceof Integer) {
                    setIntforKey(str, ((Integer) value).intValue(), false);
                } else if (value instanceof Float) {
                    setFloatforKey(str, ((Float) value).floatValue(), false);
                } else if (value instanceof Boolean) {
                    setBooleanforKey(str, ((Boolean) value).booleanValue(), false);
                } else if (value instanceof String) {
                    setStringforKey(str, (String) value, false);
                }
            }
            savePreferences();
        }
    }

    public void setBooleanforKey(String str, boolean z, boolean z2) {
        this.allProps.put(str, Boolean.valueOf(z));
        this.exe.execute(new AnonymousClass_6(str, z, z2));
    }

    public void setFloatforKey(String str, float f, boolean z) {
        this.allProps.put(str, Float.valueOf(f));
        this.exe.execute(new AnonymousClass_5(str, f, z));
    }

    public void setIntforKey(String str, int i, boolean z) {
        this.allProps.put(str, Integer.valueOf(i));
        this.exe.execute(new AnonymousClass_3(str, i, z));
    }

    public void setLongforKey(String str, long j, boolean z) {
        this.allProps.put(str, Long.valueOf(j));
        this.exe.execute(new AnonymousClass_4(str, j, z));
    }

    public void setStringforKey(String str, String str2, boolean z) {
        this.allProps.put(str, str2);
        this.exe.execute(new AnonymousClass_7(str, str2, z));
    }
}