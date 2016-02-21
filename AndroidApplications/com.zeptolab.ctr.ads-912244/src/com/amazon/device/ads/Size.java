package com.amazon.device.ads;

class Size {
    private final int a;
    private final int b;

    public Size(int i, int i2) {
        this.a = i;
        this.b = i2;
    }

    public Size(String str) {
        int max;
        int i = 0;
        if (str != null) {
            String[] split = str.split("x");
            if (split != null && split.length == 2) {
                max = Math.max(a(split[0], 0), 0);
                i = Math.max(a(split[1], 0), 0);
                this.a = max;
                this.b = i;
            }
        }
        max = 0;
        this.a = max;
        this.b = i;
    }

    private static int a(String str, int i) {
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException e) {
            return i;
        }
    }

    public int getHeight() {
        return this.b;
    }

    public int getWidth() {
        return this.a;
    }

    public String toString() {
        return this.a + "x" + this.b;
    }
}