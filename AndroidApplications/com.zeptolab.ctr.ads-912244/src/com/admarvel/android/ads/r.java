package com.admarvel.android.ads;

class r {
    r() {
    }

    public String a(String str) {
        StringBuffer stringBuffer = new StringBuffer();
        int i = 0;
        while (true) {
            int indexOf = str.indexOf("&#", i);
            if (indexOf != -1) {
                int indexOf2 = str.indexOf(59, indexOf);
                if (indexOf2 != -1) {
                    int i2 = indexOf + 2;
                    indexOf = -1;
                    while (i2 < indexOf2) {
                        char charAt = str.charAt(i2);
                        if ('0' > charAt || charAt > '9') {
                            break;
                        }
                        indexOf = (indexOf == -1 ? 0 : indexOf * 10) + charAt - 48;
                        i2++;
                    }
                    if (i2 != indexOf2) {
                        indexOf = -1;
                    }
                    if (indexOf != -1) {
                        stringBuffer.append((char) indexOf);
                        i = indexOf2 + 1;
                    } else {
                        while (i < i2) {
                            stringBuffer.append(str.charAt(i));
                            i++;
                        }
                        i = i2;
                    }
                }
            }
            if (stringBuffer.length() == 0) {
                return str;
            }
            stringBuffer.append(str.substring(i, str.length()));
            return stringBuffer.toString();
        }
    }
}