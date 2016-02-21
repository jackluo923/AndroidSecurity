package org.acra;

enum t extends ReportField {
    t(String str, int i) {
        super(str, i, null);
    }

    public boolean containsKeyValuePairs() {
        return true;
    }
}