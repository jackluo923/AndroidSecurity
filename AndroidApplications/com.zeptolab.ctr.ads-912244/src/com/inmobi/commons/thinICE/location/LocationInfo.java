package com.inmobi.commons.thinICE.location;

public final class LocationInfo {
    public float accuracy;
    public double latitude;
    public double longitude;
    public String provider;
    public long time;

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(getClass().getSimpleName()).append("[");
        stringBuilder.append("time=").append(this.time).append(", ");
        stringBuilder.append("provider=").append(this.provider).append(", ");
        stringBuilder.append("latitude=").append(this.latitude).append(", ");
        stringBuilder.append("longitude=").append(this.longitude).append(", ");
        stringBuilder.append("accuracy=").append(this.accuracy);
        stringBuilder.append("]");
        return stringBuilder.toString();
    }
}