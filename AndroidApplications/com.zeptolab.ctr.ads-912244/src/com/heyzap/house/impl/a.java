package com.heyzap.house.impl;

import com.heyzap.house.request.FetchRequest;
import com.heyzap.house.request.FetchRequest.OnFetchResponse;
import com.heyzap.internal.Logger;
import java.util.List;

final class a implements OnFetchResponse {
    a() {
    }

    public void onFetchResponse(List list, FetchRequest fetchRequest, Throwable th) {
        Logger.log("(WARNING) No fetch callback handler registered.");
    }
}