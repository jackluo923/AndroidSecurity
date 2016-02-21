package org.acra;

enum w extends ReportField {
    w(String str, int i) {
        super(str, i, null);
    }

    public boolean containsKeyValuePairs() {
        return true;
    }
}