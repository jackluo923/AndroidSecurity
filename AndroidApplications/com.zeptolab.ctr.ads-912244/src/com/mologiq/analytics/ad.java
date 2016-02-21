package com.mologiq.analytics;

import java.util.Comparator;
import java.util.Map.Entry;

final class ad implements Comparator {
    final /* synthetic */ boolean a;

    ad(boolean z) {
        this.a = z;
    }

    public int a(Entry entry, Entry entry2) {
        return this.a ? ((Integer) entry.getValue()).compareTo((Integer) entry2.getValue()) : ((Integer) entry2.getValue()).compareTo((Integer) entry.getValue());
    }

    public /* synthetic */ int compare(Object obj, Object obj2) {
        return a((Entry) obj, (Entry) obj2);
    }
}