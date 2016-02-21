package com.wopnersoft.unitconverter.plus.c;

// compiled from: ProGuard
public class ao extends Exception {
    public ao(String str) {
        super(str);
    }

    public ao(String str, char c, int i) {
        super(new StringBuilder("Unable to parse character '").append(String.valueOf(c)).append("' at position ").append(i).append(" in expression '").append(str).append("'").toString());
    }
}