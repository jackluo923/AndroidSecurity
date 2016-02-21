package me.kiip.internal.d;

public abstract class e implements Runnable {
    private final String a;

    public e(String str, Object... objArr) {
        this.a = String.format(str, objArr);
    }

    protected abstract void a();

    public final void run() {
        String name = Thread.currentThread().getName();
        Thread.currentThread().setName(this.a);
        a();
        Thread.currentThread().setName(name);
    }
}