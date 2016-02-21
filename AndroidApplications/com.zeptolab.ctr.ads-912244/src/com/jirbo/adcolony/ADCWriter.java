package com.jirbo.adcolony;

abstract class ADCWriter {
    boolean beginning_of_line;
    int indent;

    ADCWriter() {
        this.beginning_of_line = true;
        this.indent = 0;
    }

    public static void main(String[] strArr) {
        System.out.println("Test...");
    }

    void indent_if_necessary() {
        if (this.beginning_of_line) {
            this.beginning_of_line = false;
            int i = this.indent;
            while (true) {
                i--;
                if (i >= 0) {
                    write(' ');
                } else {
                    return;
                }
            }
        }
    }

    void print(char c) {
        if (this.beginning_of_line) {
            indent_if_necessary();
        }
        write(c);
        if (c == '\n') {
            this.beginning_of_line = true;
        }
    }

    void print(double d) {
        if (this.beginning_of_line) {
            indent_if_necessary();
        }
        if (Double.isNaN(d) || Double.isInfinite(d)) {
            print("0.0");
        } else {
            if (d < 0.0d) {
                d = -d;
                write('-');
            }
            long pow = (long) Math.pow(10.0d, (double) true);
            long round = Math.round(((double) pow) * d);
            print(round / pow);
            write('.');
            round %= pow;
            if (round == 0) {
                int i = 0;
                while (i < 4) {
                    write('0');
                    i++;
                }
            } else {
                long j = round * 10;
                while (j < pow) {
                    write('0');
                    j *= 10;
                }
                print(round);
            }
        }
    }

    void print(long j) {
        if (this.beginning_of_line) {
            indent_if_necessary();
        }
        if (j == 0) {
            write('0');
        } else if (j == (-j)) {
            print("-9223372036854775808");
        } else if (j < 0) {
            write('-');
            print(-j);
        } else {
            print_recursive(j);
        }
    }

    void print(Object obj) {
        if (this.beginning_of_line) {
            indent_if_necessary();
        }
        if (obj == null) {
            print("null");
        } else {
            print(obj.toString());
        }
    }

    void print(String str) {
        int length = str.length();
        int i = 0;
        while (i < length) {
            print(str.charAt(i));
            i++;
        }
    }

    void print(boolean z) {
        if (z) {
            print("true");
        } else {
            print("false");
        }
    }

    void print_recursive(long j) {
        if (j != 0) {
            print_recursive(j / 10);
            write((char) ((int) (48 + j % 10)));
        }
    }

    void println() {
        print('\n');
    }

    void println(char c) {
        print(c);
        print('\n');
    }

    void println(double d) {
        print(d);
        print('\n');
    }

    void println(long j) {
        print(j);
        print('\n');
    }

    void println(Object obj) {
        print(obj);
        print('\n');
    }

    void println(String str) {
        print(str);
        print('\n');
    }

    void println(boolean z) {
        print(z);
        print('\n');
    }

    abstract void write(char c);
}