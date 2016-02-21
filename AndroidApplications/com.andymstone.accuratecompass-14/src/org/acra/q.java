package org.acra;

enum q extends ReportField {
    q(String str, int i) {
        super(str, i, null);
    }

    public boolean containsKeyValuePairs() {
        return true;
    }
}