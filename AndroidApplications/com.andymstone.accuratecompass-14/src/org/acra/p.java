package org.acra;

enum p extends ReportField {
    p(String str, int i) {
        super(str, i, null);
    }

    public boolean containsKeyValuePairs() {
        return true;
    }
}