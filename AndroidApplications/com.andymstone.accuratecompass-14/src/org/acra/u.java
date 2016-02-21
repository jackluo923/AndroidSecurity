package org.acra;

enum u extends ReportField {
    u(String str, int i) {
        super(str, i, null);
    }

    public boolean containsKeyValuePairs() {
        return true;
    }
}