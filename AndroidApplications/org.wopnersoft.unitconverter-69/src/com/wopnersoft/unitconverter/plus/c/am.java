package com.wopnersoft.unitconverter.plus.c;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

// compiled from: ProGuard
class am {
    private final Set a;
    private final Map b;
    private final Map c;

    am(Set set, Map map, Map map2) {
        this.a = set;
        this.b = map;
        this.c = map2;
    }

    private boolean a(char c) {
        return Character.isDigit(c) || c == ',' || c == '.';
    }

    private boolean b(char c) {
        return c == 'e' || c == 'E';
    }

    private boolean b(String str) {
        if (this.a != null) {
            Iterator it = this.a.iterator();
            while (it.hasNext()) {
                if (str.equals((String) it.next())) {
                    return true;
                }
            }
        }
        return false;
    }

    private boolean c(char c) {
        Iterator it = this.c.keySet().iterator();
        while (it.hasNext()) {
            if (((String) it.next()).indexOf(c) != -1) {
                return true;
            }
        }
        return false;
    }

    private boolean c(String str) {
        return this.b.containsKey(str);
    }

    private boolean d(String str) {
        Iterator it = this.c.keySet().iterator();
        while (it.hasNext()) {
            if (((String) it.next()).startsWith(str)) {
                return true;
            }
        }
        return false;
    }

    List a(String str) {
        List arrayList = new ArrayList();
        char[] toCharArray = str.toCharArray();
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        while (i4 < toCharArray.length) {
            char c = toCharArray[i4];
            if (c != ' ') {
                int i5;
                Object agVar;
                StringBuilder stringBuilder;
                int i6;
                if (Character.isDigit(c)) {
                    stringBuilder = new StringBuilder(1);
                    stringBuilder.append(c);
                    int i7 = 1;
                    boolean z = 0;
                    boolean z2 = 0;
                    while (toCharArray.length > i4 + i7) {
                        if (!a(toCharArray[i4 + i7])) {
                            if (!b(toCharArray[i4 + i7])) {
                                if (i5 != 0) {
                                    if (toCharArray[i4 + i7] != '-' && toCharArray[i4 + i7] != '+') {
                                        break;
                                    }
                                    stringBuilder.append(toCharArray[i4 + i7]);
                                    z = 0;
                                } else {
                                    break;
                                }
                            } else if (i6 != 0) {
                                throw new ao("Number can have only one notation separator 'e/E'");
                            } else {
                                stringBuilder.append(toCharArray[i4 + i7]);
                                z = 1;
                                z2 = 1;
                            }
                        } else {
                            stringBuilder.append(toCharArray[i4 + i7]);
                            z = 0;
                        }
                        i7++;
                    }
                    i4 += i7 - 1;
                    agVar = new ag(stringBuilder.toString());
                    i5 = i3;
                    i3 = i2;
                    i2 = i;
                } else if (Character.isLetter(c) || c == '_') {
                    stringBuilder = new StringBuilder();
                    stringBuilder.append(c);
                    i6 = 1;
                    while (toCharArray.length > i4 + i6) {
                        if (!Character.isLetter(toCharArray[i4 + i6]) && !Character.isDigit(toCharArray[i4 + i6]) && toCharArray[i4 + i6] != '_') {
                            break;
                        }
                        i5 = i6 + 1;
                        stringBuilder.append(toCharArray[i6 + i4]);
                        i6 = i5;
                    }
                    toString = stringBuilder.toString();
                    if (b(toString)) {
                        i4 += i6 - 1;
                        agVar = new ap(toString);
                        i5 = i3;
                        i3 = i2;
                        i2 = i;
                    } else if (c(toString)) {
                        i4 = i6 - 1 + i4;
                        ae aeVar = new ae(toString, (d) this.b.get(toString));
                        i5 = i3;
                        i3 = i2;
                        i2 = i;
                    } else {
                        throw new ao(str, c, i4 + 1);
                    }
                } else if (c(c)) {
                    StringBuilder stringBuilder2 = new StringBuilder();
                    stringBuilder2.append(c);
                    i6 = 1;
                    while (toCharArray.length > i4 + i6 && c(toCharArray[i4 + i6]) && d(new StringBuilder(String.valueOf(stringBuilder2.toString())).append(toCharArray[i4 + i6]).toString())) {
                        stringBuilder2.append(toCharArray[i4 + i6]);
                        i6++;
                    }
                    toString = stringBuilder2.toString();
                    if (this.c.containsKey(toString)) {
                        i4 = i6 - 1 + i4;
                        ah ahVar = new ah(toString, (e) this.c.get(toString));
                        i5 = i3;
                        i3 = i2;
                        i2 = i;
                    } else {
                        throw new ao(str, c, i4 + 1);
                    }
                } else if (c == '(') {
                    i5 = i + 1;
                    agVar = new ai(String.valueOf(c));
                    i = i3;
                    i3 = i2;
                    i2 = i5;
                    i5 = i;
                } else if (c == '{') {
                    i5 = i2 + 1;
                    agVar = new ai(String.valueOf(c));
                    i2 = i;
                    i = i5;
                    i5 = i3;
                    i3 = i;
                } else if (c == '[') {
                    i5 = i3 + 1;
                    agVar = new ai(String.valueOf(c));
                    i3 = i2;
                    i2 = i;
                } else if (c == ')') {
                    i5 = i - 1;
                    agVar = new ai(String.valueOf(c));
                    i = i3;
                    i3 = i2;
                    i2 = i5;
                    i5 = i;
                } else if (c == '}') {
                    i5 = i2 - 1;
                    agVar = new ai(String.valueOf(c));
                    i2 = i;
                    i = i5;
                    i5 = i3;
                    i3 = i;
                } else if (c == ']') {
                    i5 = i3 - 1;
                    agVar = new ai(String.valueOf(c));
                    i3 = i2;
                    i2 = i;
                } else {
                    throw new ao(str, c, i4 + 1);
                }
                arrayList.add(agVar);
                i = i2;
                i2 = i3;
                i3 = i5;
            }
            i4++;
        }
        if (i2 == 0) {
            if (((i3 != 0 ? 1 : 0) | (i != 0 ? 1 : 0)) == 0) {
                return arrayList;
            }
        }
        StringBuilder stringBuilder3 = new StringBuilder();
        stringBuilder3.append("There are ");
        boolean z3 = 1;
        if (i != 0) {
            stringBuilder3.append(new StringBuilder(String.valueOf(Math.abs(i))).append(" unmatched parantheses ").toString());
            z3 = 0;
        }
        if (i2 != 0) {
            if (i4 == 0) {
                stringBuilder3.append(" and ");
            }
            stringBuilder3.append(new StringBuilder(String.valueOf(Math.abs(i2))).append(" unmatched curly brackets ").toString());
            z3 = 0;
        }
        if (i3 != 0) {
            if (i4 == 0) {
                stringBuilder3.append(" and ");
            }
            stringBuilder3.append(new StringBuilder(String.valueOf(Math.abs(i3))).append(" unmatched square brackets ").toString());
        }
        stringBuilder3.append(new StringBuilder("in expression '").append(str).append("'").toString());
        throw new ao(stringBuilder3.toString());
    }
}