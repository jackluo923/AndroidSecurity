package org.acra;

enum o extends ReportField {
    o(String str, int i) {
        super(str, i, null);
    }

    public boolean containsKeyValuePairs() {
        return true;
    }
}