package com.wopnersoft.unitconverter.plus;

import android.content.Context;
import android.content.res.Resources;
import android.database.Cursor;
import android.support.v4.c.f;
import com.wopnersoft.unitconverter.plus.a.d;
import com.wopnersoft.unitconverter.plus.a.m;
import com.wopnersoft.unitconverter.plus.b.x;
import com.wopnersoft.unitconverter.plus.converter.CurrencyConverter;
import com.wopnersoft.unitconverter.plus.converter.DistanceUnitConverter;
import com.wopnersoft.unitconverter.plus.converter.FuelConsumptionUnitConverter;
import com.wopnersoft.unitconverter.plus.converter.GenericStaticConverter;
import com.wopnersoft.unitconverter.plus.converter.NumberUnitConverter;
import com.wopnersoft.unitconverter.plus.converter.SpeedUnitConverter;
import com.wopnersoft.unitconverter.plus.converter.TemperatureUnitConverter;
import com.wopnersoft.unitconverter.plus.converter.WeightUnitConverter;
import com.wopnersoft.unitconverter.plus.d.a;
import com.wopnersoft.unitconverter.plus.d.b;
import com.wopnersoft.unitconverter.plus.specialized.AD590Converter;
import com.wopnersoft.unitconverter.plus.specialized.DecimalToFractionConverter;
import com.wopnersoft.unitconverter.plus.specialized.FractionToDecimalConverter;
import com.wopnersoft.unitconverter.plus.specialized.GasMarkConverter;
import com.wopnersoft.unitconverter.plus.specialized.RingSizeConverter;
import com.wopnersoft.unitconverter.plus.specialized.ShoeSizeMenConverter;
import com.wopnersoft.unitconverter.plus.specialized.ShoeSizeWomenConverter;
import com.wopnersoft.unitconverter.plus.specialized.SpecializedConverterMenu;
import com.wopnersoft.unitconverter.plus.specialized.dBmToWattConverter;
import com.wopnersoft.unitconverter.plus.util.aa;
import com.wopnersoft.unitconverter.plus.util.au;
import java.util.HashMap;
import java.util.Map;

// compiled from: ProGuard
public final class UnitConverterApplication extends x {
    public static final long[] a;
    public static final int[] b;
    public static final int[] c;
    public static final Class[] d;
    public static final int[] e;
    public static final String[] f;
    private static String m;
    private Map h;
    private f i;
    private f j;
    private Resources k;
    private Boolean l;

    static {
        a = new long[]{1, 4194304, 2, 4, 8, 1073741824, 16, 1048576, 32, 64, 8388608, 128, 16777216, 33554432, 256, 4294967296L, 512, 268435456, 2147483648L, 1024, 2048, 4096, 67108864, 134217728, 2097152, 8589934592L, 8192, 16384, 32768, 65536, 536870912, 131072, 262144, 524288, 150, 151, 152, 154, 153, 158, 159, 161, 131};
        b = new int[]{2131362745, 2131362731, 2131362732, 2131362733, 2131362737, 2131362738, 2131362739, 2131362740, 2131362741, 2131362742, 2131362743, 2131362744, 2131362746, 2131362747, 2131362748, 2131362749, 2131362750, 2131362751, 2131362752, 2131362756, 2131362757, 2131362758, 2131362759, 2131362760, 2131362761, 2131362762, 2131362775, 2131362776, 2131362777, 2131362778, 2131362779, 2131362780, 2131362781, 2131362763, 2131362766, 2131362768, 2131362767, 2131362769, 2131362764, 2131362772, 2131362773, 2131362774, 2131362754};
        c = new int[]{2131362694, 2131362680, 2131362681, 2131362682, 2131362686, 2131362687, 2131362688, 2131362689, 2131362690, 2131362691, 2131362692, 2131362693, 2131362695, 2131362696, 2131362697, 2131362698, 2131362699, 2131362700, 2131362701, 2131362705, 2131362706, 2131362707, 2131362708, 2131362709, 2131362710, 2131362711, 2131362724, 2131362725, 2131362726, 2131362727, 2131362728, 2131362729, 2131362730, 2131362712, 2131362715, 2131362717, 2131362716, 2131362718, 2131362713, 2131362721, 2131362722, 2131362723, 2131362703};
        d = new Class[]{FavoriteConverterMenu.class, GenericStaticConverter.class, GenericStaticConverter.class, GenericStaticConverter.class, GenericStaticConverter.class, GenericStaticConverter.class, CurrencyConverter.class, GenericStaticConverter.class, GenericStaticConverter.class, DistanceUnitConverter.class, GenericStaticConverter.class, GenericStaticConverter.class, GenericStaticConverter.class, GenericStaticConverter.class, GenericStaticConverter.class, GenericStaticConverter.class, FuelConsumptionUnitConverter.class, GenericStaticConverter.class, GenericStaticConverter.class, NumberUnitConverter.class, GenericStaticConverter.class, GenericStaticConverter.class, GenericStaticConverter.class, GenericStaticConverter.class, GenericStaticConverter.class, GenericStaticConverter.class, TemperatureUnitConverter.class, GenericStaticConverter.class, GenericStaticConverter.class, SpeedUnitConverter.class, GenericStaticConverter.class, GenericStaticConverter.class, WeightUnitConverter.class, SpecializedConverterMenu.class, dBmToWattConverter.class, FractionToDecimalConverter.class, DecimalToFractionConverter.class, GasMarkConverter.class, AD590Converter.class, ShoeSizeMenConverter.class, ShoeSizeWomenConverter.class, RingSizeConverter.class, UnitConverterConvertMenu.class};
        e = new int[]{2130837649, 2130837624, 2130837625, 2130837626, 2130837637, 2130837638, 2130837640, 2130837641, 2130837644, 2130837646, 2130837647, 2130837648, 2130837650, 2130837651, 2130837652, 2130837654, 2130837655, 2130837679, 2130837682, 2130837683, 2130837684, 2130837685, 2130837686, 2130837687, 2130837688, 2130837695, 2130837703, 2130837704, 2130837705, 2130837707, 2130837708, 2130837709, 2130837710, 2130837696, 2130837642, 2130837653, 2130837643, 2130837656, 2130837703, 2130837694, 2130837694, 2130837691, 2130837639};
        f = new String[]{"favorite_icon", "acceleration_lin_icon", "angle_icon", "area_icon", "computer_icon", "computer_jedec_icon", "currency_icon", "data_transfer_rate_icon", "density_icon", "distance_icon", "electric_current_icon", "energy_icon", "flow_rate_mass_icon", "flow_rate_volume_icon", "force_icon", "frequency_icon", "fuel_icon", "illuminance_icon", "luminance_icon", "number_icon", "power_icon", "pressure_icon", "radiation_absorbed_dose_icon", "radiation_equiv_dose_icon", "radioactivity_icon", "sound_icon", "temperature_icon", "time_icon", "torque_icon", "velocity_icon", "viscosity_kin_icon", "volume_icon", "weight_icon", "specialized_icon", "dbmwatt_icon", "fractiondecimal_icon", "decimalfraction_icon", "gas_mark_icon", "temperature_icon", "shoe_men_icon", "shoe_men_icon", "ring_icon", "converter_icon"};
        m = "TUlJQklqQU5CZ2txaGtpRzl3MEJBUUVGQUFPQ0FROEFNSUlCQ2dLQ0FRRUFwWmpHQVhOb0RESG1MMHZzM014aWJFTkFpbEg1ZERJeDNiR3FRUGNqQmVEWWNtR0dCbHhrYnozYzB6ZkcxRU8rYVhYQ1pZdzVpd2xveFJSR25pZkg2VHZHWHFYU0ozbFR2Z1pvT2VoZk9OZjFHekhlTmM1MlhScXFQcEgxSGhoTTJaZXNPMGg3bVV5MVVYR1dMMHlEbjBiZ0RHR3NFbVV5TUV3eXJZL0tPYXpHVWhYWHhnRjBPejcwSkFJTDY2dGpWb0xzUnNYK2I0R0hYR01WWmRGK0d5MFZiRHpIS2RuTklHNy9laWkzYXphMEprMTA5TmhEOS9YZ1hrK0RKZU5PY3c2Sms3eUxHcVRoUTFtSUlWc1RFNFJYa0V5WGsyN0hpSDlaNnZwOThZakl2NEt6VWllMm9oNGdPd1dXU2s0d1pzdytHTFRST0tMYjJEYU52NHlTNXdJREFRQUI=";
    }

    public UnitConverterApplication() {
        this.l = Boolean.valueOf(false);
    }

    public final int a(long j) {
        if (this.i.b(j) >= 0) {
            return ((Integer) this.i.a(j)).intValue();
        }
        a("UnitConverterApplication", new StringBuilder("getIndexforVal - value not found: ").append(j).toString());
        return -1;
    }

    public final long a(Class cls) {
        if (this.h.containsKey(cls)) {
            return ((Long) this.h.get(cls)).longValue();
        }
        a("UnitConverterApplication", new StringBuilder("getValforClass - class not found: ").append(cls).toString() == null ? "null" : cls.getName());
        return -1;
    }

    public d a(Context context) {
        if (context == null) {
            context = this;
        }
        return new d(context, b.b(m));
    }

    public String a(Class cls, String str) {
        long a = a(cls);
        if (a == -1) {
            return null;
        }
        return this.g.getString(String.valueOf(a).concat(str), null);
    }

    public void a() {
        au auVar;
        au auVar2 = null;
        aa aaVar = null;
        try {
            auVar = new au(this);
            try {
                auVar.a();
                aa aaVar2 = new aa(this);
                try {
                    aaVar2.a();
                    Cursor c = auVar.c();
                    if (c != null && c.moveToFirst()) {
                        int columnIndex = c.getColumnIndex("fav_cat");
                        int columnIndex2 = c.getColumnIndex("from_name");
                        int columnIndex3 = c.getColumnIndex("to_name");
                        int columnIndex4 = c.getColumnIndex("input_val");
                        int columnIndex5 = c.getColumnIndex("from_value");
                        int columnIndex6 = c.getColumnIndex("to_value");
                        HashMap hashMap = new HashMap();
                        int i = 0;
                        while (i < d.length) {
                            HashMap hashMap2 = hashMap;
                            hashMap2.put(getString(b[i]), Long.valueOf(a[i]));
                            i++;
                        }
                        do {
                            if (hashMap.containsKey(c.getString(columnIndex))) {
                                aaVar2.a(((Long) hashMap.get(c.getString(columnIndex))).longValue(), c.getString(columnIndex2), c.getDouble(columnIndex5), c.getString(columnIndex3), c.getDouble(columnIndex6), c.getDouble(columnIndex4));
                            }
                        } while (c.moveToNext());
                    }
                    if (!(c == null || c.isClosed())) {
                        c.close();
                    }
                    if (auVar != null) {
                        auVar.b();
                    }
                    if (aaVar2 != null) {
                        aaVar2.b();
                    }
                } catch (Exception e) {
                    auVar2 = auVar;
                    aa aaVar3 = aaVar2;
                    exception = e;
                    aaVar = aaVar3;
                } catch (Throwable th) {
                    aaVar = aaVar2;
                    th = th;
                }
            } catch (Exception e2) {
                exception = e2;
                auVar2 = auVar;
                b("Error upgrading favs", exception.getMessage());
                if (auVar2 != null) {
                    auVar2.b();
                }
                if (aaVar != null) {
                    aaVar.b();
                }
            } catch (Throwable th2) {
                th = th2;
                if (auVar != null) {
                    auVar.b();
                }
                if (aaVar != null) {
                    aaVar.b();
                }
                throw th;
            }
        } catch (Exception e3) {
            exception = e3;
            try {
                Exception exception2;
                b("Error upgrading favs", exception2.getMessage());
                if (auVar2 != null) {
                    auVar2.b();
                }
                if (aaVar != null) {
                    aaVar.b();
                }
            } catch (Throwable th3) {
                th = th3;
                auVar = auVar2;
                if (auVar != null) {
                    auVar.b();
                }
                if (aaVar != null) {
                    aaVar.b();
                }
                throw th;
            }
        } catch (Throwable th4) {
            Throwable th5 = th4;
            auVar = auVar2;
            if (auVar != null) {
                auVar.b();
            }
            if (aaVar != null) {
                aaVar.b();
            }
            throw th5;
        }
    }

    public void a(Boolean bool) {
        this.l = bool;
    }

    public void a(Class cls, String str, String str2) {
        long a = a(cls);
        if (a > -1) {
            this.g.edit().putString(String.valueOf(a).concat(str2), str).commit();
        }
    }

    public boolean a(m mVar) {
        return "71E6809FE5FD7".equalsIgnoreCase(mVar.c());
    }

    public Boolean b() {
        return this.l;
    }

    public final Class b(long j) {
        if (this.j.b(j) >= 0) {
            return (Class) this.j.a(j);
        }
        a("UnitConverterApplication", new StringBuilder("getClassforVal - value not found: ").append(j).toString());
        return null;
    }

    public final Map b(Class cls) {
        return d(a(cls));
    }

    public void b(Class cls, String str) {
        a(cls, str, "_from");
    }

    public final String c(long j) {
        if (this.i.b(j) < 0) {
            a("UnitConverterApplication", new StringBuilder("getNameforVal - value not found: ").append(j).toString());
            return "";
        } else {
            return this.k.getString(b[((Integer) this.i.a(j)).intValue()]);
        }
    }

    public String c(Class cls) {
        return a(cls, "_from");
    }

    public void c(Class cls, String str) {
        a(cls, str, "_to");
    }

    public String d(Class cls) {
        return a(cls, "_to");
    }

    public final Map d(long j) {
        int[] a = a.a(j);
        double[] b = a.b(j);
        if (a == null || b == null) {
            throw new RuntimeException(getString(2131362067));
        }
        Map hashMap = new HashMap(a.length + 1);
        int length = a.length;
        int i = 0;
        while (i < length) {
            hashMap.put(getString(a[i]), Double.valueOf(b[i]));
            i++;
        }
        return hashMap;
    }

    public void onCreate() {
        super.onCreate();
        this.k = getResources();
        com.wopnersoft.unitconverter.plus.d.f.a(this);
        this.h = new HashMap(64);
        this.i = new f(64);
        this.j = new f(64);
        int i = 0;
        while (i < d.length) {
            long j = a[i];
            this.h.put(d[i], Long.valueOf(a[i]));
            this.i.b(j, Integer.valueOf(i));
            this.j.b(j, d[i]);
            i++;
        }
    }
}