package com.inmobi.commons.thinICE.cellular;

public final class CellOperatorInfo {
    public static final int MCC_NOT_AVAILABLE = -1;
    public static final int MNC_NOT_AVAILABLE = -1;
    public int currentMcc;
    public int currentMnc;
    public int simMcc;
    public int simMnc;

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(getClass().getSimpleName()).append("[");
        stringBuilder.append("currentMcc=").append(this.currentMcc).append(", ");
        stringBuilder.append("currentMnc=").append(this.currentMnc).append(", ");
        stringBuilder.append("simMcc=").append(this.simMcc).append(", ");
        stringBuilder.append("simMnc=").append(this.simMnc);
        stringBuilder.append("]");
        return stringBuilder.toString();
    }
}