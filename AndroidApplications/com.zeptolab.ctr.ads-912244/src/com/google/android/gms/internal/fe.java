package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

public class fe implements SafeParcelable {
    public static final ff CREATOR;
    private final HashMap CE;
    private final ArrayList CF;
    private final String CG;
    private final int wj;

    public static class a implements SafeParcelable {
        public static final fg CREATOR;
        final ArrayList CH;
        final String className;
        final int versionCode;

        static {
            CREATOR = new fg();
        }

        a(int i, String str, ArrayList arrayList) {
            this.versionCode = i;
            this.className = str;
            this.CH = arrayList;
        }

        a(String str, HashMap hashMap) {
            this.versionCode = 1;
            this.className = str;
            this.CH = b(hashMap);
        }

        private static ArrayList b(HashMap hashMap) {
            if (hashMap == null) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            Iterator it = hashMap.keySet().iterator();
            while (it.hasNext()) {
                String str = (String) it.next();
                arrayList.add(new com.google.android.gms.internal.fe.b(str, (com.google.android.gms.internal.fb.a) hashMap.get(str)));
            }
            return arrayList;
        }

        public int describeContents() {
            fg fgVar = CREATOR;
            return 0;
        }

        HashMap eE() {
            HashMap hashMap = new HashMap();
            int size = this.CH.size();
            int i = 0;
            while (i < size) {
                com.google.android.gms.internal.fe.b bVar = (com.google.android.gms.internal.fe.b) this.CH.get(i);
                hashMap.put(bVar.eX, bVar.CI);
                i++;
            }
            return hashMap;
        }

        public void writeToParcel(Parcel parcel, int i) {
            fg fgVar = CREATOR;
            fg.a(this, parcel, i);
        }
    }

    public static class b implements SafeParcelable {
        public static final fd CREATOR;
        final com.google.android.gms.internal.fb.a CI;
        final String eX;
        final int versionCode;

        static {
            CREATOR = new fd();
        }

        b(int i, String str, com.google.android.gms.internal.fb.a aVar) {
            this.versionCode = i;
            this.eX = str;
            this.CI = aVar;
        }

        b(String str, com.google.android.gms.internal.fb.a aVar) {
            this.versionCode = 1;
            this.eX = str;
            this.CI = aVar;
        }

        public int describeContents() {
            fd fdVar = CREATOR;
            return 0;
        }

        public void writeToParcel(Parcel parcel, int i) {
            fd fdVar = CREATOR;
            fd.a(this, parcel, i);
        }
    }

    static {
        CREATOR = new ff();
    }

    fe(int i, ArrayList arrayList, String str) {
        this.wj = i;
        this.CF = null;
        this.CE = b(arrayList);
        this.CG = (String) er.f(str);
        eA();
    }

    public fe(Class cls) {
        this.wj = 1;
        this.CF = null;
        this.CE = new HashMap();
        this.CG = cls.getCanonicalName();
    }

    private static HashMap b(ArrayList arrayList) {
        HashMap hashMap = new HashMap();
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            a aVar = (a) arrayList.get(i);
            hashMap.put(aVar.className, aVar.eE());
            i++;
        }
        return hashMap;
    }

    public void a(Class cls, HashMap hashMap) {
        this.CE.put(cls.getCanonicalName(), hashMap);
    }

    public HashMap ao(String str) {
        return (HashMap) this.CE.get(str);
    }

    public boolean b(Class cls) {
        return this.CE.containsKey(cls.getCanonicalName());
    }

    public int describeContents() {
        ff ffVar = CREATOR;
        return 0;
    }

    public void eA() {
        Iterator it = this.CE.keySet().iterator();
        while (it.hasNext()) {
            HashMap hashMap = (HashMap) this.CE.get((String) it.next());
            Iterator it2 = hashMap.keySet().iterator();
            while (it2.hasNext()) {
                ((com.google.android.gms.internal.fb.a) hashMap.get((String) it2.next())).a(this);
            }
        }
    }

    public void eB() {
        Iterator it = this.CE.keySet().iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            HashMap hashMap = (HashMap) this.CE.get(str);
            HashMap hashMap2 = new HashMap();
            Iterator it2 = hashMap.keySet().iterator();
            while (it2.hasNext()) {
                String str2 = (String) it2.next();
                hashMap2.put(str2, ((com.google.android.gms.internal.fb.a) hashMap.get(str2)).eq());
            }
            this.CE.put(str, hashMap2);
        }
    }

    ArrayList eC() {
        ArrayList arrayList = new ArrayList();
        Iterator it = this.CE.keySet().iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            arrayList.add(new a(str, (HashMap) this.CE.get(str)));
        }
        return arrayList;
    }

    public String eD() {
        return this.CG;
    }

    int getVersionCode() {
        return this.wj;
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        Iterator it = this.CE.keySet().iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            stringBuilder.append(str).append(":\n");
            HashMap hashMap = (HashMap) this.CE.get(str);
            Iterator it2 = hashMap.keySet().iterator();
            while (it2.hasNext()) {
                String str2 = (String) it2.next();
                stringBuilder.append("  ").append(str2).append(": ");
                stringBuilder.append(hashMap.get(str2));
            }
        }
        return stringBuilder.toString();
    }

    public void writeToParcel(Parcel parcel, int i) {
        ff ffVar = CREATOR;
        ff.a(this, parcel, i);
    }
}