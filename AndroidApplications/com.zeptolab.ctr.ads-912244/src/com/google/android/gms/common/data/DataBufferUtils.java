package com.google.android.gms.common.data;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.Iterator;

public final class DataBufferUtils {
    private DataBufferUtils() {
    }

    public static ArrayList freezeAndClose(DataBuffer dataBuffer) {
        ArrayList arrayList = new ArrayList(dataBuffer.getCount());
        Iterator it = dataBuffer.iterator();
        while (it.hasNext()) {
            arrayList.add(((Freezable) it.next()).freeze());
        }
        dataBuffer.close();
        return arrayList;
    }

    public static boolean hasNextPage(DataBuffer dataBuffer) {
        Bundle metadata = dataBuffer.getMetadata();
        return metadata != null && metadata.getString("next_page_token") != null;
    }

    public static boolean hasPrevPage(DataBuffer dataBuffer) {
        Bundle metadata = dataBuffer.getMetadata();
        return metadata != null && metadata.getString("prev_page_token") != null;
    }
}