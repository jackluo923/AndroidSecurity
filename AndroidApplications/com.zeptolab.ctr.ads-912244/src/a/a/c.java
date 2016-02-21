package a.a;

final class c extends b {
    c(String str, String str2, boolean z, Object obj) {
        super(str, str2, z, obj);
    }

    public Object get() {
        throw new AssertionError("Unresolved binding should never be called to inject.");
    }

    public void injectMembers(Object obj) {
        throw new AssertionError("Unresolved binding should never be called to inject.");
    }
}