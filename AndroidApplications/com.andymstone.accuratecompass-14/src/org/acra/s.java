package org.acra;

enum s extends ReportField {
    s(String str, int i) {
        super(str, i, null);
    }

    public boolean containsKeyValuePairs() {
        return true;
    }
}