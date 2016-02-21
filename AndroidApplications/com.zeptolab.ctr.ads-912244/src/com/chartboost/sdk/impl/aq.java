package com.chartboost.sdk.impl;

import com.inmobi.commons.analytics.db.AnalyticsSQLiteHelper;
import com.millennialmedia.android.MMException;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import java.lang.reflect.Array;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.regex.Pattern;

public class aq implements an {
    protected au a;

    private void a(String str, int i, byte[] bArr) {
        a((byte) 5, str);
        int length = bArr.length;
        if (i == 2) {
            length += 4;
        }
        this.a.c(length);
        this.a.write(i);
        if (i == 2) {
            this.a.c(length - 4);
        }
        length = this.a.a();
        this.a.write(bArr);
        af.a(this.a.a() - length, bArr.length);
    }

    private void a(String str, Iterable iterable) {
        a((byte) 4, str);
        int a = this.a.a();
        this.a.c(0);
        Iterator it = iterable.iterator();
        int i = 0;
        while (it.hasNext()) {
            b(String.valueOf(i), it.next());
            i++;
        }
        this.a.write(0);
        this.a.a(a, this.a.a() - a);
    }

    private void a(String str, String str2, byte b) {
        a(b, str);
        b(str2);
    }

    private void a(String str, Map map) {
        a((byte) 3, str);
        int a = this.a.a();
        this.a.c(0);
        Iterator it = map.entrySet().iterator();
        while (it.hasNext()) {
            Entry entry = (Entry) it.next();
            b(entry.getKey().toString(), entry.getValue());
        }
        this.a.write(0);
        this.a.a(a, this.a.a() - a);
    }

    private void a(String str, Pattern pattern) {
        a((byte) 11, str);
        c(pattern.pattern());
        c(al.a(pattern.flags()));
    }

    private void c(String str, Object obj) {
        a((byte) 4, str);
        int a = this.a.a();
        this.a.c(0);
        int length = Array.getLength(obj);
        int i = 0;
        while (i < length) {
            b(String.valueOf(i), Array.get(obj, i));
            i++;
        }
        this.a.write(0);
        this.a.a(a, this.a.a() - a);
    }

    private void d(String str) {
        a((byte) -1, str);
    }

    private void e(String str) {
        a(Byte.MAX_VALUE, str);
    }

    public void a() {
        this.a = null;
    }

    protected void a(int i, String str) {
        this.a.write(i);
        c(str);
    }

    public void a(au auVar) {
        if (this.a != null) {
            throw new IllegalStateException("in the middle of something");
        }
        this.a = auVar;
    }

    protected void a(String str) {
        a((byte) 10, str);
    }

    protected void a(String str, ax axVar) {
        a((byte) 17, str);
        this.a.c(axVar.b());
        this.a.c(axVar.a());
    }

    protected void a(String str, ay ayVar) {
        a(str, ayVar.a(), ayVar.b());
    }

    protected void a(String str, az azVar) {
        a((byte) 13, str);
        this.a.a();
        b(azVar.a());
    }

    protected void a(String str, ba baVar) {
        a((byte) 15, str);
        int a = this.a.a();
        this.a.c(0);
        b(baVar.a());
        b(baVar.b());
        this.a.a(a, this.a.a() - a);
    }

    protected void a(String str, bd bdVar) {
        a((byte) 7, str);
        this.a.d(bdVar.c());
        this.a.d(bdVar.d());
        this.a.d(bdVar.e());
    }

    protected void a(String str, be beVar) {
        a(str, beVar.a(), (byte) 14);
    }

    protected void a(String str, Boolean bool) {
        a((byte) 8, str);
        this.a.write(bool.booleanValue() ? 1 : 0);
    }

    protected void a(String str, Number number) {
        if (number instanceof Integer || number instanceof Short || number instanceof Byte || number instanceof AtomicInteger) {
            a((byte) 16, str);
            this.a.c(number.intValue());
        } else if (number instanceof Long || number instanceof AtomicLong) {
            a((byte) 18, str);
            this.a.a(number.longValue());
        } else if (number instanceof Float || number instanceof Double) {
            a((byte) 1, str);
            this.a.a(number.doubleValue());
        } else {
            throw new IllegalArgumentException("can't serialize " + number.getClass());
        }
    }

    protected void a(String str, String str2) {
        a(str, str2, (byte) 2);
    }

    protected void a(String str, Date date) {
        a((byte) 9, str);
        this.a.a(date.getTime());
    }

    protected void a(String str, UUID uuid) {
        a((byte) 5, str);
        this.a.c(MMException.REQUEST_NOT_PERMITTED);
        this.a.write((int)IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE);
        this.a.a(uuid.getMostSignificantBits());
        this.a.a(uuid.getLeastSignificantBits());
    }

    protected void a(String str, byte[] bArr) {
        a(str, 0, bArr);
    }

    protected boolean a(String str, ao aoVar) {
        return false;
    }

    protected boolean a(String str, Object obj) {
        return false;
    }

    public byte[] a(ao aoVar) {
        au atVar = new at();
        a(atVar);
        b(aoVar);
        a();
        return atVar.c();
    }

    public int b(ao aoVar) {
        return b(null, aoVar);
    }

    protected int b(String str, ao aoVar) {
        if (aoVar == null) {
            throw new NullPointerException("can't save a null object");
        }
        int a = this.a.a();
        byte b = aoVar instanceof List ? (byte) 4 : (byte) 3;
        if (a(str, aoVar)) {
            return this.a.a() - a;
        }
        if (str != null) {
            a(b, str);
        }
        int a2 = this.a.a();
        this.a.c(0);
        List list = null;
        int i = (b == (byte) 3 && str == null) ? 1 : false;
        if (b == (byte) 3) {
            if (i != 0 && aoVar.b(AnalyticsSQLiteHelper.GENERAL_ID)) {
                b(AnalyticsSQLiteHelper.GENERAL_ID, aoVar.a(AnalyticsSQLiteHelper.GENERAL_ID));
            }
            Object a3 = aoVar.a("_transientFields");
            if (a3 instanceof List) {
                list = (List) a3;
            }
        }
        if (aoVar instanceof Map) {
            Iterator it = ((Map) aoVar).entrySet().iterator();
            while (it.hasNext()) {
                Entry entry = (Entry) it.next();
                if (i == 0 || !((String) entry.getKey()).equals(AnalyticsSQLiteHelper.GENERAL_ID)) {
                    if (list == null || !list.contains(entry.getKey())) {
                        b((String) entry.getKey(), entry.getValue());
                    }
                }
            }
        } else {
            Iterator it2 = aoVar.keySet().iterator();
            while (it2.hasNext()) {
                String str2 = (String) it2.next();
                if (i == 0 || !str2.equals(AnalyticsSQLiteHelper.GENERAL_ID)) {
                    if (list == null || !list.contains(str2)) {
                        b(str2, aoVar.a(str2));
                    }
                }
            }
        }
        this.a.write(0);
        this.a.a(a2, this.a.a() - a2);
        return this.a.a() - a;
    }

    protected void b(String str) {
        int a = this.a.a();
        this.a.c(0);
        this.a.a(a, c(str));
    }

    protected void b(String str, Object obj) {
        if (!str.equals("_transientFields")) {
            if (str.equals("$where") && obj instanceof String) {
                a((byte) 13, str);
                b(obj.toString());
            } else {
                Object a = al.a(obj);
                if (a == null) {
                    a(str);
                } else if (a instanceof Date) {
                    a(str, (Date) a);
                } else if (a instanceof Number) {
                    a(str, (Number) a);
                } else if (a instanceof Character) {
                    a(str, a.toString());
                } else if (a instanceof String) {
                    a(str, a.toString());
                } else if (a instanceof bd) {
                    a(str, (bd) a);
                } else if (a instanceof ao) {
                    b(str, (ao) a);
                } else if (a instanceof Boolean) {
                    a(str, (Boolean) a);
                } else if (a instanceof Pattern) {
                    a(str, (Pattern) a);
                } else if (a instanceof Map) {
                    a(str, (Map) a);
                } else if (a instanceof Iterable) {
                    a(str, (Iterable) a);
                } else if (a instanceof byte[]) {
                    a(str, (byte[]) a);
                } else if (a instanceof ay) {
                    a(str, (ay) a);
                } else if (a instanceof UUID) {
                    a(str, (UUID) a);
                } else if (a.getClass().isArray()) {
                    c(str, a);
                } else if (a instanceof be) {
                    a(str, (be) a);
                } else if (a instanceof ax) {
                    a(str, (ax) a);
                } else if (a instanceof ba) {
                    a(str, (ba) a);
                } else if (a instanceof az) {
                    a(str, (az) a);
                } else if (a instanceof aa) {
                    ao arVar = new ar();
                    arVar.a("$ref", ((aa) a).b());
                    arVar.a("$id", ((aa) a).a());
                    b(str, arVar);
                } else if (a instanceof bc) {
                    d(str);
                } else if (a instanceof bb) {
                    e(str);
                } else if (!a(str, a)) {
                    throw new IllegalArgumentException("can't serialize " + a.getClass());
                }
            }
        }
    }

    protected int c(String str) {
        int length = str.length();
        int i = 0;
        int i2 = 0;
        while (i < length) {
            int codePointAt = Character.codePointAt(str, i);
            if (codePointAt < 128) {
                this.a.write((byte) codePointAt);
                i2++;
            } else if (codePointAt < 2048) {
                this.a.write((byte) (codePointAt >> 6 + 192));
                this.a.write((byte) (codePointAt & 63 + 128));
                i2 += 2;
            } else if (codePointAt < 65536) {
                this.a.write((byte) (codePointAt >> 12 + 224));
                this.a.write((byte) ((codePointAt >> 6) & 63 + 128));
                this.a.write((byte) (codePointAt & 63 + 128));
                i2 += 3;
            } else {
                this.a.write((byte) (codePointAt >> 18 + 240));
                this.a.write((byte) ((codePointAt >> 12) & 63 + 128));
                this.a.write((byte) ((codePointAt >> 6) & 63 + 128));
                this.a.write((byte) (codePointAt & 63 + 128));
                i2 += 4;
            }
            i += Character.charCount(codePointAt);
        }
        this.a.write(0);
        return i2 + 1;
    }
}