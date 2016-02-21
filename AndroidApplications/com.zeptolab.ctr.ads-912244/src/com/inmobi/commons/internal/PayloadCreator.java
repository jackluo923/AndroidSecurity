package com.inmobi.commons.internal;

import android.content.Context;
import java.util.List;

public interface PayloadCreator {
    String toPayloadString(List list, List list2, Context context);
}