package a.a;

import a.a.l.b;
import java.util.Iterator;
import java.util.List;

public final class x implements b {
    public void a(List list) {
        if (!list.isEmpty()) {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("Errors creating object graph:");
            Iterator it = list.iterator();
            while (it.hasNext()) {
                stringBuilder.append("\n  ").append((String) it.next());
            }
            throw new IllegalStateException(stringBuilder.toString());
        }
    }
}