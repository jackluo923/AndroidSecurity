package com.wopnersoft.unitconverter.plus.c;

import com.actionbarsherlock.R;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Stack;

// compiled from: ProGuard
abstract class aj {
    static ak a(String str, Map map, Map map2, Map map3) {
        am amVar = new am(map.keySet(), map2, map3);
        StringBuilder stringBuilder = new StringBuilder(str.length());
        Stack stack = new Stack();
        List a = amVar.a(a(str, map3));
        a(a, map3);
        Iterator it = a.iterator();
        while (it.hasNext()) {
            ((al) it.next()).a(stack, stringBuilder);
        }
        while (stack.size() > 0) {
            stringBuilder.append(((al) stack.pop()).b()).append(" ");
        }
        String trim = stringBuilder.toString().trim();
        return new ak(amVar.a(trim), trim, map);
    }

    private static String a(String str, Map map) {
        StringBuilder stringBuilder = new StringBuilder();
        int i = 0;
        int i2 = 0;
        while (i < str.length()) {
            char charAt = str.charAt(i);
            if (Character.isWhitespace(charAt)) {
                i2++;
                stringBuilder.append(charAt);
            } else {
                int i3 = stringBuilder.length() == i2;
                boolean z;
                boolean z2;
                if (stringBuilder.length() <= i2 || !a(stringBuilder.charAt(stringBuilder.length() - 1 - i2), map)) {
                    if (stringBuilder.charAt(stringBuilder.length() - 1 - i2) == '(') {
                        z = true;
                        z2 = false;
                    }
                    z = false;
                    z2 = false;
                } else {
                    z = false;
                    z2 = true;
                }
                switch (charAt) {
                    case R.styleable.SherlockTheme_textAppearanceSearchResultTitle:
                        if (stringBuilder.length() > 0 && i == 0 && i == 0 && i3 == 0) {
                            stringBuilder.append(charAt);
                        }
                        break;
                    case R.styleable.SherlockTheme_listPreferredItemHeightSmall:
                        if (stringBuilder.length() > 0 && i == 0 && i == 0 && i3 == 0) {
                            stringBuilder.append(charAt);
                        } else {
                            stringBuilder.append('\'');
                        }
                        break;
                    default:
                        stringBuilder.append(charAt);
                        break;
                }
                i2 = 0;
            }
            i++;
        }
        return stringBuilder.toString();
    }

    private static void a(List list, Map map) {
        int i = 1;
        while (i < list.size()) {
            al alVar = (al) list.get(i);
            if (!list.get(i - 1) instanceof ag || alVar instanceof ap) {
                throw new ao("Implicit multiplication is not supported. E.g. always use '2*x' instead of '2x'");
            }
            if ((alVar instanceof ai && ((ai) alVar).a()) || alVar instanceof ae) {
                throw new ao("Implicit multiplication is not supported. E.g. always use '2*x' instead of '2x'");
            }
            i++;
        }
    }

    private static boolean a(char c, Map map) {
        Iterator it = map.keySet().iterator();
        while (it.hasNext()) {
            if (((String) it.next()).indexOf(c) != -1) {
                return true;
            }
        }
        return false;
    }
}