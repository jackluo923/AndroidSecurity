package com.brightcove.player.model;

import com.brightcove.player.util.ErrorUtil;
import java.util.Map;

public class CuePoint extends MetadataObject implements Comparable {
    private int position;
    private PositionType positionType;
    private String type;

    public enum PositionType {
        BEFORE,
        POINT_IN_TIME,
        AFTER
    }

    public CuePoint(int i, String str, Map map) {
        super(map);
        this.positionType = PositionType.POINT_IN_TIME;
        this.position = i;
        this.type = str;
    }

    public CuePoint(PositionType positionType, String str, Map map) {
        super(map);
        if (positionType == PositionType.POINT_IN_TIME) {
            throw new IllegalArgumentException(ErrorUtil.getMessage(ErrorUtil.OTHER_CONSTRUCTOR));
        }
        this.positionType = positionType;
        this.type = str;
    }

    public int compareTo(CuePoint cuePoint) {
        if (this.positionType == PositionType.BEFORE && cuePoint.positionType != PositionType.BEFORE) {
            return -1;
        }
        if (this.positionType == PositionType.AFTER && cuePoint.positionType != PositionType.AFTER) {
            return 1;
        }
        if (this.positionType == PositionType.POINT_IN_TIME && cuePoint.positionType == PositionType.BEFORE) {
            return 1;
        }
        if (cuePoint.positionType == PositionType.AFTER || this.position < cuePoint.position) {
            return -1;
        }
        if (this.position > cuePoint.position) {
            return 1;
        }
        return 0;
    }

    public int getPosition() {
        if (this.positionType == PositionType.POINT_IN_TIME) {
            return this.position;
        }
        throw new IllegalStateException(String.format(ErrorUtil.getMessage(ErrorUtil.INVALID_POINT_IN_TIME), new Object[]{this.positionType.toString()}));
    }

    public PositionType getPositionType() {
        return this.positionType;
    }

    public String getType() {
        return this.type;
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("CuePoint {");
        stringBuilder.append("position:");
        stringBuilder.append(this.position);
        stringBuilder.append(" positionType:");
        stringBuilder.append(this.positionType == null ? "null" : this.positionType);
        stringBuilder.append(" type:");
        stringBuilder.append(this.type == null ? "null" : this.type);
        stringBuilder.append("}");
        return stringBuilder.toString();
    }
}