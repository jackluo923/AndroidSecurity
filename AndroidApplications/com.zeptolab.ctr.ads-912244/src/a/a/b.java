package a.a;

import java.util.Set;
import javax.inject.Provider;

public abstract class b implements a.b, Provider {
    private static final int CYCLE_FREE = 8;
    private static final int DEPENDED_ON = 16;
    protected static final boolean IS_SINGLETON = true;
    private static final int LIBRARY = 32;
    private static final int LINKED = 2;
    protected static final boolean NOT_SINGLETON = false;
    private static final int SINGLETON = 1;
    public static final b UNRESOLVED;
    private static final int VISITING = 4;
    private int bits;
    public final String membersKey;
    public final String provideKey;
    public final Object requiredBy;

    public static class a extends RuntimeException {
        public final String a;

        public a(String str, String str2) {
            super(str2);
            this.a = str;
        }

        public a(String str, String str2, Throwable th) {
            super("Binding for " + str + " was invalid: " + str2, th);
            this.a = str;
        }
    }

    static {
        UNRESOLVED = new c(null, null, false, null);
    }

    protected b(String str, String str2, boolean z, Object obj) {
        if (z && str == null) {
            throw new a(h.d(str2), "is exclusively members injected and therefore cannot be scoped");
        }
        this.provideKey = str;
        this.membersKey = str2;
        this.requiredBy = obj;
        this.bits = z ? SINGLETON : 0;
    }

    public void attach(l lVar) {
    }

    public boolean dependedOn() {
        return (this.bits & 16) != 0 ? IS_SINGLETON : NOT_SINGLETON;
    }

    public Object get() {
        throw new UnsupportedOperationException("No injectable constructor on " + getClass().getName());
    }

    public void getDependencies(Set set, Set set2) {
    }

    public void injectMembers(Object obj) {
    }

    public boolean isCycleFree() {
        return (this.bits & 8) != 0 ? IS_SINGLETON : NOT_SINGLETON;
    }

    public boolean isLinked() {
        return (this.bits & 2) != 0 ? IS_SINGLETON : NOT_SINGLETON;
    }

    boolean isSingleton() {
        return (this.bits & 1) != 0 ? IS_SINGLETON : NOT_SINGLETON;
    }

    public boolean isVisiting() {
        return (this.bits & 4) != 0 ? IS_SINGLETON : NOT_SINGLETON;
    }

    public boolean library() {
        return (this.bits & 32) != 0 ? IS_SINGLETON : NOT_SINGLETON;
    }

    public void setCycleFree(boolean z) {
        this.bits = z ? this.bits | 8 : this.bits & -9;
    }

    public void setDependedOn(boolean z) {
        this.bits = z ? this.bits | 16 : this.bits & -17;
    }

    public void setLibrary(boolean z) {
        this.bits = z ? this.bits | 32 : this.bits & -33;
    }

    void setLinked() {
        this.bits |= 2;
    }

    public void setVisiting(boolean z) {
        this.bits = z ? this.bits | 4 : this.bits & -5;
    }

    public String toString() {
        return getClass().getSimpleName() + "[provideKey=\"" + this.provideKey + "\", memberskey=\"" + this.membersKey + "\"]";
    }
}