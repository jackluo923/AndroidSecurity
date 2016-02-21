package org.acra;

enum r extends ReportField {
    r(String str, int i) {
        super(str, i, null);
    }

    public boolean containsKeyValuePairs() {
        return true;
    }
}