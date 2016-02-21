package com.google.android.gms.common.data;

import java.util.ArrayList;

public final class FreezableUtils {
    public static ArrayList freeze(ArrayList arrayList) {
        ArrayList arrayList2 = new ArrayList(arrayList.size());
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            arrayList2.add(((Freezable) arrayList.get(i)).freeze());
            i++;
        }
        return arrayList2;
    }

    public static ArrayList freeze(Freezable[] freezableArr) {
        ArrayList arrayList = new ArrayList(freezableArr.length);
        int i = 0;
        while (i < freezableArr.length) {
            arrayList.add(freezableArr[i].freeze());
            i++;
        }
        return arrayList;
    }
}