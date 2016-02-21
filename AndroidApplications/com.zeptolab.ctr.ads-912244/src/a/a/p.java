package a.a;

class p extends q {
    final /* synthetic */ ClassLoader a;
    final /* synthetic */ o b;

    p(o oVar, ClassLoader classLoader) {
        this.b = oVar;
        this.a = classLoader;
    }

    protected Class a(String str) {
        try {
            return this.a.loadClass(str);
        } catch (ClassNotFoundException e) {
            return Void.class;
        }
    }
}