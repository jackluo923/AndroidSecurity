package com.google.android.gms.drive.metadata.internal;

import android.os.Bundle;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.drive.metadata.CollectionMetadataField;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import org.json.JSONArray;
import org.json.JSONException;

public class i extends CollectionMetadataField {
    public i(String str, int i) {
        super(str, i);
    }

    public static final Collection as(String str) {
        if (str == null) {
            return null;
        }
        Collection arrayList = new ArrayList();
        JSONArray jSONArray = new JSONArray(str);
        int i = 0;
        while (i < jSONArray.length()) {
            arrayList.add(jSONArray.getString(i));
            i++;
        }
        return Collections.unmodifiableCollection(arrayList);
    }

    protected Collection a(DataHolder dataHolder, int i, int i2) {
        try {
            return as(dataHolder.getString(getName(), i, i2));
        } catch (JSONException e) {
            throw new IllegalStateException("DataHolder supplied invalid JSON", e);
        }
    }

    protected void a(Bundle bundle, Collection collection) {
        bundle.putStringArrayList(getName(), new ArrayList(collection));
    }

    protected /* synthetic */ Object b(DataHolder dataHolder, int i, int i2) {
        return a(dataHolder, i, i2);
    }

    protected /* synthetic */ Object e(Bundle bundle) {
        return j(bundle);
    }

    protected Collection j(Bundle bundle) {
        return bundle.getStringArrayList(getName());
    }
}