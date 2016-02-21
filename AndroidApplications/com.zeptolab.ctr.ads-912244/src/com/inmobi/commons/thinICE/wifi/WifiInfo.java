package com.inmobi.commons.thinICE.wifi;

public final class WifiInfo {
    public long bssid;
    public int ip;
    public int rssi;
    public String ssid;

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(getClass().getSimpleName()).append("[");
        stringBuilder.append("bssid=").append(this.bssid).append(", ");
        stringBuilder.append("ssid=").append(this.ssid).append(", ");
        stringBuilder.append("rssi=").append(this.rssi).append(", ");
        stringBuilder.append("ip=").append(String.format("%d.%d.%d.%d", new Object[]{Integer.valueOf(this.ip & 255), Integer.valueOf((this.ip >> 8) & 255), Integer.valueOf((this.ip >> 16) & 255), Integer.valueOf((this.ip >> 24) & 255)}));
        stringBuilder.append("]");
        return stringBuilder.toString();
    }
}