package me.kiip.internal.i;

public class e extends Exception {
    private int a;
    private String b;

    public e(int i, String str, String str2) {
        super(str);
        this.a = i;
        this.b = str2;
    }

    public int a() {
        return this.a;
    }

    public String b() {
        return this.b;
    }
}