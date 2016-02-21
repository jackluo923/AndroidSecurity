package org.acra;

enum x extends ReportField {
    x(String str, int i) {
        super(str, i, null);
    }

    public boolean containsKeyValuePairs() {
        return true;
    }
}