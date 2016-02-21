package me.kiip.internal.a;

public class d implements p {
    private int a;
    private int b;
    private final int c;
    private final float d;

    public d() {
        this(2500, 1, 1.0f);
    }

    public d(int i, int i2, float f) {
        this.a = i;
        this.c = i2;
        this.d = f;
    }

    public int a() {
        return this.a;
    }

    public void a(s sVar) {
        this.b++;
        this.a = (int) (((float) this.a) + ((float) this.a) * this.d);
        if (!c()) {
            throw sVar;
        }
    }

    public int b() {
        return this.b;
    }

    protected boolean c() {
        return this.b <= this.c;
    }
}