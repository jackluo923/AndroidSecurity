package a.a;

import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;

public abstract class d {
    private final Map a;

    public d() {
        this.a = new LinkedHashMap();
    }

    public b a(String str) {
        return (b) this.a.get(str);
    }

    protected b a(String str, b bVar) {
        b bVar2 = (b) this.a.put(str, bVar);
        if (bVar2 == null) {
            return null;
        }
        this.a.put(str, bVar2);
        throw new IllegalArgumentException("Duplicate:\n    " + bVar2 + "\n    " + bVar);
    }

    public b a(String str, b bVar) {
        return a(str, bVar);
    }

    public abstract b a(String str, v vVar);

    public final Set a() {
        return this.a.entrySet();
    }

    public String toString() {
        return getClass().getSimpleName() + this.a.toString();
    }
}