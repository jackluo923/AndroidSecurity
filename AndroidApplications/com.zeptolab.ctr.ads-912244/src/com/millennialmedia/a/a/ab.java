package com.millennialmedia.a.a;

import com.inmobi.commons.internal.ApiStatCollector.ApiEventType;
import com.millennialmedia.a.a.b.a;
import com.millennialmedia.a.a.b.s;
import java.math.BigDecimal;
import java.math.BigInteger;

public final class ab extends v {
    private static final Class[] a;
    private Object b;

    static {
        a = new Class[]{Integer.TYPE, Long.TYPE, Short.TYPE, Float.TYPE, Double.TYPE, Byte.TYPE, Boolean.TYPE, Character.TYPE, Integer.class, Long.class, Short.class, Float.class, Double.class, Byte.class, Boolean.class, Character.class};
    }

    public ab(Object obj) {
        a(obj);
    }

    public ab(Object obj) {
        a(obj);
    }

    public ab(Object obj) {
        a(obj);
    }

    ab(Object obj) {
        a(obj);
    }

    public ab(Object obj) {
        a(obj);
    }

    private static boolean a(ab abVar) {
        if (!(abVar.b instanceof Number)) {
            return false;
        }
        Number number = (Number) abVar.b;
        return number instanceof BigInteger || number instanceof Long || number instanceof Integer || number instanceof Short || number instanceof Byte;
    }

    private static boolean b(Object obj) {
        if (obj instanceof String) {
            return true;
        }
        Class cls = obj.getClass();
        Class[] clsArr = a;
        int length = clsArr.length;
        int i = 0;
        while (i < length) {
            if (clsArr[i].isAssignableFrom(cls)) {
                return true;
            }
            i++;
        }
        return false;
    }

    ab a() {
        return this;
    }

    void a(Object obj) {
        if (obj instanceof Character) {
            this.b = String.valueOf(((Character) obj).charValue());
        } else {
            boolean z;
            z = obj instanceof Number || b(obj);
            a.a(z);
            this.b = obj;
        }
    }

    public boolean b() {
        return this.b instanceof Boolean;
    }

    public Number c() {
        return this.b instanceof String ? new s((String) this.b) : (Number) this.b;
    }

    public String d() {
        if (y()) {
            return c().toString();
        }
        return b() ? x().toString() : (String) this.b;
    }

    public double e() {
        return y() ? c().doubleValue() : Double.parseDouble(d());
    }

    public boolean equals(ab abVar) {
        boolean z = 0;
        if (this == abVar) {
            return true;
        }
        if (abVar == null || getClass() != abVar.getClass()) {
            return false;
        }
        abVar = abVar;
        if (this.b == null) {
            return abVar.b == null;
        } else if (a(this) && a(abVar)) {
            return c().longValue() == abVar.c().longValue();
        } else if (!(this.b instanceof Number) || !(abVar.b instanceof Number)) {
            return this.b.equals(abVar.b);
        } else {
            double doubleValue = c().doubleValue();
            double doubleValue2 = abVar.c().doubleValue();
            if (doubleValue == doubleValue2 || (Double.isNaN(doubleValue) && Double.isNaN(doubleValue2))) {
                z = true;
            }
            return z;
        }
    }

    public BigDecimal f() {
        return this.b instanceof BigDecimal ? (BigDecimal) this.b : new BigDecimal(this.b.toString());
    }

    public BigInteger g() {
        return this.b instanceof BigInteger ? (BigInteger) this.b : new BigInteger(this.b.toString());
    }

    public float h() {
        return y() ? c().floatValue() : Float.parseFloat(d());
    }

    public int hashCode() {
        if (this.b == null) {
            return ApiEventType.API_MRAID_ASYNC_PING;
        }
        long longValue;
        if (a(this)) {
            longValue = c().longValue();
            return (int) (longValue ^ (longValue >>> 32));
        } else if (!(this.b instanceof Number)) {
            return this.b.hashCode();
        } else {
            longValue = Double.doubleToLongBits(c().doubleValue());
            return (int) (longValue ^ (longValue >>> 32));
        }
    }

    public long i() {
        return y() ? c().longValue() : Long.parseLong(d());
    }

    public int j() {
        return y() ? c().intValue() : Integer.parseInt(d());
    }

    public byte k() {
        return y() ? c().byteValue() : Byte.parseByte(d());
    }

    public char l() {
        return d().charAt(0);
    }

    public short m() {
        return y() ? c().shortValue() : Short.parseShort(d());
    }

    public boolean n() {
        return b() ? x().booleanValue() : Boolean.parseBoolean(d());
    }

    /* synthetic */ v o() {
        return a();
    }

    Boolean x() {
        return (Boolean) this.b;
    }

    public boolean y() {
        return this.b instanceof Number;
    }

    public boolean z() {
        return this.b instanceof String;
    }
}