package android.support.v4.view;

final class at implements Runnable {
    final /* synthetic */ ViewPager a;

    at(ViewPager viewPager) {
        this.a = viewPager;
    }

    public final void run() {
        ViewPager.a(this.a);
        this.a.c();
    }
}