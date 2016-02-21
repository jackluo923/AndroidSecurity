package com.inmobi.commons.db;

public class ColumnData {
    private boolean a;
    private boolean b;
    private boolean c;
    private ColumnType d;

    public enum ColumnType {
        INTEGER,
        VARCHAR,
        REAL,
        TEXT;

        static {
            INTEGER = new com.inmobi.commons.db.ColumnData.ColumnType("INTEGER", 0);
            VARCHAR = new com.inmobi.commons.db.ColumnData.ColumnType("VARCHAR", 1);
            REAL = new com.inmobi.commons.db.ColumnData.ColumnType("REAL", 2);
            TEXT = new com.inmobi.commons.db.ColumnData.ColumnType("TEXT", 3);
            a = new com.inmobi.commons.db.ColumnData.ColumnType[]{INTEGER, VARCHAR, REAL, TEXT};
        }
    }

    public ColumnData() {
        this.a = false;
        this.b = false;
        this.c = false;
    }

    public ColumnType getDataType() {
        return this.d;
    }

    public boolean isAutoIncrement() {
        return this.b;
    }

    public boolean isMandatory() {
        return this.c;
    }

    public boolean isPrimaryKey() {
        return this.a;
    }

    public void setAutoIncrement(boolean z) {
        this.b = z;
    }

    public void setDataType(ColumnType columnType) {
        this.d = columnType;
    }

    public void setMandatory(boolean z) {
        this.c = z;
    }

    public void setPrimaryKey(boolean z) {
        this.a = z;
    }
}