package me.kiip.internal.e;

import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.zeptolab.ctr.ads.R;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import com.zeptolab.zbuild.ZBuildConfig;
import java.io.InputStream;
import java.net.ProtocolException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.TreeMap;
import me.kiip.internal.d.h;

public final class l {
    private static final Comparator a;
    private final List b;
    private String c;
    private String d;
    private int e;
    private int f;
    private String g;

    static {
        a = new Comparator() {
            public int a(String str, String str2) {
                if (str == str2) {
                    return 0;
                }
                if (str == null) {
                    return -1;
                }
                return str2 == null ? 1 : String.CASE_INSENSITIVE_ORDER.compare(str, str2);
            }

            public /* synthetic */ int compare(Object obj, Object obj2) {
                return a((String) obj, (String) obj2);
            }
        };
    }

    public l() {
        this.b = new ArrayList(20);
        this.e = 1;
        this.f = -1;
    }

    public l(l lVar) {
        this.b = new ArrayList(20);
        this.e = 1;
        this.f = -1;
        this.b.addAll(lVar.b);
        this.c = lVar.c;
        this.d = lVar.d;
        this.e = lVar.e;
        this.f = lVar.f;
        this.g = lVar.g;
    }

    public static l a(InputStream inputStream) {
        l lVar;
        do {
            lVar = new l();
            lVar.b(h.c(inputStream));
            a(inputStream, lVar);
        } while (lVar.c() == 100);
        return lVar;
    }

    public static l a(List list) {
        String str = null;
        if (list.size() % 2 != 0) {
            throw new IllegalArgumentException("Unexpected name value block: " + list);
        }
        l lVar = new l();
        int i = 0;
        String str2 = null;
        while (i < list.size()) {
            String str3 = (String) list.get(i);
            String str4 = (String) list.get(i + 1);
            int i2 = 0;
            while (i2 < str4.length()) {
                int indexOf = str4.indexOf(0, i2);
                if (indexOf == -1) {
                    indexOf = str4.length();
                }
                String substring = str4.substring(i2, indexOf);
                if (!":status".equals(str3)) {
                    if (":version".equals(str3)) {
                        str = substring;
                        substring = str2;
                    } else {
                        lVar.b.add(str3);
                        lVar.b.add(substring);
                        substring = str2;
                    }
                }
                str2 = substring;
                i2 = indexOf + 1;
            }
            i += 2;
        }
        if (str2 == null) {
            throw new ProtocolException("Expected ':status' header not present");
        } else if (str == null) {
            throw new ProtocolException("Expected ':version' header not present");
        } else {
            lVar.b(str + " " + str2);
            return lVar;
        }
    }

    public static l a(Map map, boolean z) {
        if (z) {
            l lVar = new l();
            Iterator it = map.entrySet().iterator();
            while (it.hasNext()) {
                Entry entry = (Entry) it.next();
                String str = (String) entry.getKey();
                List list = (List) entry.getValue();
                if (str != null) {
                    Iterator it2 = list.iterator();
                    while (it2.hasNext()) {
                        lVar.c(str, (String) it2.next());
                    }
                } else if (!list.isEmpty()) {
                    lVar.b((String) list.get(list.size() - 1));
                }
            }
            return lVar;
        } else {
            throw new UnsupportedOperationException();
        }
    }

    public static void a(InputStream inputStream, l lVar) {
        while (true) {
            String c = h.c(inputStream);
            if (c.length() != 0) {
                lVar.c(c);
            } else {
                return;
            }
        }
    }

    private void c(String str, String str2) {
        this.b.add(str);
        this.b.add(str2.trim());
    }

    public String a() {
        return this.d;
    }

    public String a(int i) {
        int i2 = i * 2;
        return (i2 < 0 || i2 >= this.b.size()) ? null : (String) this.b.get(i2);
    }

    public Map a(boolean z) {
        Map treeMap = new TreeMap(a);
        int i = 0;
        while (i < this.b.size()) {
            String str = (String) this.b.get(i);
            String str2 = (String) this.b.get(i + 1);
            List arrayList = new ArrayList();
            List list = (List) treeMap.get(str);
            if (list != null) {
                arrayList.addAll(list);
            }
            arrayList.add(str2);
            treeMap.put(str, Collections.unmodifiableList(arrayList));
            i += 2;
        }
        if (z && this.d != null) {
            treeMap.put(null, Collections.unmodifiableList(Collections.singletonList(this.d)));
        } else if (this.c != null) {
            treeMap.put(null, Collections.unmodifiableList(Collections.singletonList(this.c)));
        }
        return Collections.unmodifiableMap(treeMap);
    }

    public l a(Set set) {
        l lVar = new l();
        int i = 0;
        while (i < this.b.size()) {
            String str = (String) this.b.get(i);
            if (set.contains(str)) {
                lVar.a(str, (String) this.b.get(i + 1));
            }
            i += 2;
        }
        return lVar;
    }

    public void a(String str) {
        this.c = str.trim();
    }

    public void a(String str, String str2) {
        if (str == null) {
            throw new IllegalArgumentException("fieldname == null");
        } else if (str2 == null) {
            throw new IllegalArgumentException("value == null");
        } else if (str.length() != 0 && str.indexOf(0) == -1 && str2.indexOf(0) == -1) {
            c(str, str2);
        } else {
            throw new IllegalArgumentException("Unexpected header: " + str + ": " + str2);
        }
    }

    public void a(String str, String str2, String str3, String str4, String str5) {
        a(":method", str);
        a(":scheme", str5);
        a(":path", str2);
        a(":version", str3);
        a(":host", str4);
    }

    public void a(String str, List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            a(str, (String) it.next());
        }
    }

    public int b() {
        return this.e != -1 ? this.e : 1;
    }

    public String b(int i) {
        int i2 = i * 2 + 1;
        return (i2 < 0 || i2 >= this.b.size()) ? null : (String) this.b.get(i2);
    }

    public void b(String str) {
        if (this.g != null) {
            throw new IllegalStateException("statusLine is already set");
        }
        int i = str.length() > 13 ? 1 : 0;
        if (str.startsWith("HTTP/1.") && str.length() >= 12 && str.charAt(IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED) == ' ' && (i == 0 || str.charAt(R.styleable.MapAttrs_useViewLifecycle) == ' ')) {
            int charAt = str.charAt(GoogleScorer.CLIENT_ALL) - 48;
            if (charAt < 0 || charAt > 9) {
                throw new ProtocolException("Unexpected status line: " + str);
            }
            try {
                int parseInt = Integer.parseInt(str.substring(ZBuildConfig.$minsdk, R.styleable.MapAttrs_useViewLifecycle));
                this.g = i != 0 ? str.substring(R.styleable.MapAttrs_zOrderOnTop) : AdTrackerConstants.BLANK;
                this.f = parseInt;
                this.d = str;
                this.e = charAt;
            } catch (NumberFormatException e) {
                throw new ProtocolException("Unexpected status line: " + str);
            }
        } else {
            throw new ProtocolException("Unexpected status line: " + str);
        }
    }

    public void b(String str, String str2) {
        d(str);
        a(str, str2);
    }

    public int c() {
        return this.f;
    }

    public void c(String str) {
        int indexOf = str.indexOf(":");
        if (indexOf == -1) {
            c(AdTrackerConstants.BLANK, str);
        } else {
            c(str.substring(0, indexOf), str.substring(indexOf + 1));
        }
    }

    public String d() {
        return this.g;
    }

    public void d(String str) {
        int i = 0;
        while (i < this.b.size()) {
            if (str.equalsIgnoreCase((String) this.b.get(i))) {
                this.b.remove(i);
                this.b.remove(i);
            }
            i += 2;
        }
    }

    public int e() {
        return this.b.size() / 2;
    }

    public String e(String str) {
        int i = this.b.size() - 2;
        while (i >= 0) {
            if (str.equalsIgnoreCase((String) this.b.get(i))) {
                return (String) this.b.get(i + 1);
            }
            i -= 2;
        }
        return null;
    }

    public byte[] f() {
        StringBuilder stringBuilder = new StringBuilder(256);
        stringBuilder.append(this.c).append("\r\n");
        int i = 0;
        while (i < this.b.size()) {
            stringBuilder.append((String) this.b.get(i)).append(": ").append((String) this.b.get(i + 1)).append("\r\n");
            i += 2;
        }
        stringBuilder.append("\r\n");
        return stringBuilder.toString().getBytes("ISO-8859-1");
    }

    public List g() {
        Set hashSet = new HashSet();
        List arrayList = new ArrayList();
        int i = 0;
        while (i < this.b.size()) {
            String toLowerCase = ((String) this.b.get(i)).toLowerCase(Locale.US);
            String str = (String) this.b.get(i + 1);
            if (!(toLowerCase.equals("connection") || toLowerCase.equals("host") || toLowerCase.equals("keep-alive") || toLowerCase.equals("proxy-connection") || toLowerCase.equals("transfer-encoding"))) {
                if (hashSet.add(toLowerCase)) {
                    arrayList.add(toLowerCase);
                    arrayList.add(str);
                } else {
                    int i2 = 0;
                    while (i2 < arrayList.size()) {
                        if (toLowerCase.equals(arrayList.get(i2))) {
                            arrayList.set(i2 + 1, ((String) arrayList.get(i2 + 1)) + "\u0000" + str);
                            break;
                        } else {
                            i2 += 2;
                        }
                    }
                }
            }
            i += 2;
        }
        return arrayList;
    }
}