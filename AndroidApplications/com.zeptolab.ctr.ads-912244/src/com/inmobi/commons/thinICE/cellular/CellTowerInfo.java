package com.inmobi.commons.thinICE.cellular;

public final class CellTowerInfo {
    public String id;
    public int signalStrength;

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(getClass().getSimpleName()).append("[");
        stringBuilder.append("id=").append(this.id).append(", ");
        stringBuilder.append("ss=").append(this.signalStrength).append(", ");
        stringBuilder.append("]");
        return stringBuilder.toString();
    }
}