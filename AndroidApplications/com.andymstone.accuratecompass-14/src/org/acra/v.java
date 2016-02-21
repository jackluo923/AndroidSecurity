package org.acra;

enum v extends ReportField {
    v(String str, int i) {
        super(str, i, null);
    }

    public boolean containsKeyValuePairs() {
        return true;
    }
}