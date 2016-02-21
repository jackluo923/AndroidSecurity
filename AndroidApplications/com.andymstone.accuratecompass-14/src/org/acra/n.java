package org.acra;

enum n extends ReportField {
    n(String str, int i) {
        super(str, i, null);
    }

    public boolean containsKeyValuePairs() {
        return true;
    }
}