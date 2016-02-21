package com.inmobi.commons.thinICE.icedatacollector;

import com.admarvel.android.ads.Constants;
import com.inmobi.commons.thinICE.cellular.CellOperatorInfo;
import com.inmobi.commons.thinICE.cellular.CellTowerInfo;
import com.inmobi.commons.thinICE.location.LocationInfo;
import com.inmobi.commons.thinICE.wifi.WifiInfo;
import com.millennialmedia.android.MMException;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

public final class Sample {
    public CellOperatorInfo cellOperator;
    public CellTowerInfo connectedCellTowerInfo;
    public WifiInfo connectedWifiAp;
    public HashMap lastKnownLocations;
    public long utc;
    public List visibleWifiAp;
    public int zoneOffset;

    Sample() {
        Calendar instance = Calendar.getInstance();
        this.utc = instance.getTimeInMillis();
        this.zoneOffset = instance.get(MMException.REQUEST_NOT_PERMITTED) + instance.get(MMException.REQUEST_BAD_RESPONSE);
    }

    public String toString() {
        Iterator it;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(getClass().getSimpleName()).append("[\n");
        stringBuilder.append("-- utc: ").append(this.utc).append(Constants.FORMATTER);
        stringBuilder.append("-- zoneOffset: ").append(this.zoneOffset).append(Constants.FORMATTER);
        stringBuilder.append("-- cell operator: ").append(this.cellOperator).append(Constants.FORMATTER);
        stringBuilder.append("-- connected wifi access point: ").append(this.connectedWifiAp).append(Constants.FORMATTER);
        stringBuilder.append("-- last known locations:");
        if (this.lastKnownLocations == null) {
            stringBuilder.append(" null\n");
        } else {
            stringBuilder.append(Constants.FORMATTER);
            it = this.lastKnownLocations.values().iterator();
            while (it.hasNext()) {
                stringBuilder.append("   + ").append((LocationInfo) it.next()).append(Constants.FORMATTER);
            }
        }
        stringBuilder.append("-- visible wifi aps:");
        if (this.visibleWifiAp == null) {
            stringBuilder.append(" null\n");
        } else {
            stringBuilder.append(Constants.FORMATTER);
            it = this.visibleWifiAp.iterator();
            while (it.hasNext()) {
                stringBuilder.append("   + ").append((WifiInfo) it.next()).append(Constants.FORMATTER);
            }
        }
        stringBuilder.append("-- connected serving cell tower: ").append(this.connectedCellTowerInfo).append(Constants.FORMATTER);
        stringBuilder.append("]");
        return stringBuilder.toString();
    }
}