package com.inmobi.commons.thinICE.wifi;

import java.util.List;

public interface WifiScanListener {
    void onResultsReceived(List list);

    void onTimeout();
}