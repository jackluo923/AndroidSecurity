package com.mopub.mobileads;

abstract class MraidProperty {
    MraidProperty() {
    }

    private String a(String str) {
        return str != null ? str.replaceAll("[^a-zA-Z0-9_,:\\s\\{\\}\\'\\\"]", "") : "";
    }

    public abstract String a();

    public String toString() {
        return a(a());
    }
}