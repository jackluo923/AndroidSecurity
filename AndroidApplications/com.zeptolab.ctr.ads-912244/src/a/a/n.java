package a.a;

public abstract class n {
    private final q a;

    public n() {
        this.a = new o(this);
    }

    public abstract b a(String str, String str2, ClassLoader classLoader, boolean z);

    public abstract r a(Class cls);

    protected Class a(Object obj, String str) {
        if (obj == null) {
            obj = ClassLoader.getSystemClassLoader();
        }
        return (Class) ((q) this.a.b(obj)).b(str);
    }

    protected Object a(String str, ClassLoader classLoader) {
        try {
            Class a = a(classLoader, str);
            return a == Void.class ? null : a.newInstance();
        } catch (InstantiationException e) {
            throw new RuntimeException("Failed to initialize " + str, e);
        } catch (IllegalAccessException e2) {
            throw new RuntimeException("Failed to initialize " + str, e2);
        }
    }

    public abstract w b(Class cls);
}