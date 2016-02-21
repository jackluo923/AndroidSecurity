package com.wopnersoft.unitconverter.plus.e;

import com.actionbarsherlock.R;
import java.text.ParseException;
import java.util.Arrays;
import java.util.List;

// compiled from: ProGuard
public class c {
    private static final List a;
    private static final List b;
    private static final List c;
    private final boolean d;

    static {
        a = Arrays.asList(new Integer[]{Integer.valueOf(1000), Integer.valueOf(500), Integer.valueOf(100), Integer.valueOf(ActivityChooserModel.DEFAULT_HISTORY_MAX_LENGTH), Integer.valueOf(R.styleable.SherlockTheme_actionBarItemBackground), Integer.valueOf(R.styleable.SherlockTheme_actionBarStyle), Integer.valueOf(1)});
        b = Arrays.asList(new Character[]{Character.valueOf('M'), Character.valueOf('D'), Character.valueOf('C'), Character.valueOf('L'), Character.valueOf('X'), Character.valueOf('V'), Character.valueOf('I')});
        c = Arrays.asList(new String[]{"M", "D", "C", "L", "X", "V", "I"});
    }

    public c() {
        this.d = false;
    }

    public int a(String str) {
        String toUpperCase = str.toUpperCase();
        int i = 0;
        int i2 = 0;
        while (i < toUpperCase.length()) {
            int indexOf = b.indexOf(Character.valueOf(toUpperCase.charAt(i)));
            if (indexOf == -1) {
                throw new ParseException(new StringBuilder("Illegal character: ").append(toUpperCase.charAt(i)).toString(), i);
            }
            boolean z;
            if (i < toUpperCase.length() - 1) {
                int i3;
                int indexOf2 = b.indexOf(Character.valueOf(toUpperCase.charAt(i + 1)));
                i3 = indexOf2 < indexOf;
                z = i3 == 0;
                if (this.d && i3 != 0 && indexOf - indexOf2 > 2) {
                    throw new ParseException("Cannot increase by more than one numeral at a time in strict mode", i);
                } else if (indexOf % 2 != 0) {
                    throw new ParseException("Cannot subtract V, L, D, or other 5-based numerals in strict mode", i);
                }
                if (i3 != 0 && i < toUpperCase.length() - 2) {
                    if ((b.indexOf(Character.valueOf(toUpperCase.charAt(i + 2))) < indexOf2) != 0) {
                        throw new ParseException("Cannot have two increasing numerals interface a row", i);
                    }
                }
            } else {
                z = true;
            }
            i2 = i != 0 ? i2 + ((Integer) a.get(b.indexOf(Character.valueOf(toUpperCase.charAt(i))))).intValue() : i2 - ((Integer) a.get(b.indexOf(Character.valueOf(toUpperCase.charAt(i))))).intValue();
            i++;
        }
        return i2;
    }

    public String a(long j) {
        StringBuilder stringBuilder = new StringBuilder();
        int i = 0;
        while (i < a.size()) {
            long intValue = j / ((long) ((Integer) a.get(i)).intValue());
            long intValue2 = j % ((long) ((Integer) a.get(i)).intValue());
            if (i < a.size() - 2 && intValue2 / ((long) ((Integer) a.get(i + 2)).intValue()) == 9 && i % 2 == 0) {
                int i2 = 1;
            } else {
                boolean z = false;
            }
            if (i == 0 || intValue != 4) {
                int i3 = 0;
                while (((long) i3) < intValue) {
                    stringBuilder.append((String) c.get(i));
                    i3++;
                }
                j -= intValue * ((long) ((Integer) a.get(i)).intValue());
                if (i2 != 0) {
                    stringBuilder.append((String) c.get(i + 2));
                    stringBuilder.append((String) c.get(i));
                    j -= (long) (((Integer) a.get(i + 2)).intValue() * 9);
                }
            } else {
                stringBuilder.append((String) c.get(i));
                stringBuilder.append((String) c.get(i - 1));
                j -= ((long) ((Integer) a.get(i)).intValue()) * intValue;
            }
            i++;
        }
        return stringBuilder.toString();
    }
}