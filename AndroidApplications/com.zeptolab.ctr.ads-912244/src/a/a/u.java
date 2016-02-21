package a.a;

public abstract class u extends b {
    protected final String methodName;
    protected final String moduleClass;

    public u(String str, boolean z, String str2, String str3) {
        super(str, null, z, str2 + "." + str3 + "()");
        this.moduleClass = str2;
        this.methodName = str3;
    }

    public abstract Object get();

    public String toString() {
        return getClass().getName() + "[key=" + this.provideKey + " method=" + this.moduleClass + "." + this.methodName + "()" + "]";
    }
}