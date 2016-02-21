package com.wopnersoft.unitconverter.plus.e;

// compiled from: ProGuard
public final class a {
    private long a;
    private long b;
    private long c;
    private int d;

    public a() {
        this.d = 1;
        this.a = 0;
        this.b = 0;
        this.c = 0;
    }

    public a(double d, double d2) {
        this.d = 1;
        if (d < 0.0d) {
            this.d = -1;
            d *= -1.0d;
        } else {
            this.d = 1;
        }
        a(d, d2);
    }

    private void a_(double d, double d2) {
        double d3 = Double.MAX_VALUE;
        this.a = 0;
        if (b.a(d, 0.0d).booleanValue()) {
            this.b = 0;
            this.c = 0;
        } else if (d >= 9.223372036854776E18d) {
            this.b = 0;
            this.c = 0;
        } else {
            double abs;
            double d4 = 1.0d;
            double d5 = 0.0d;
            double d6 = d;
            double d7 = 1.0d;
            double d8 = 0.0d;
            while (d3 > d2) {
                long j = (long) d6;
                double d9 = ((double) j) * d8 + d4;
                d3 = ((double) j) * d7 + d5;
                if (d3 <= 9.223372036854776E18d && d9 <= 9.223372036854776E18d) {
                    double d10;
                    long j2;
                    double d11;
                    abs = Math.abs(d - d3 / d9);
                    if (abs <= d2) {
                        long round = Math.round(d6);
                        d10 = ((double) round) * d8 + d4;
                        d4 = ((double) round) * d7 + d5;
                        if (d10 < 9.223372036854776E18d && d4 < 9.223372036854776E18d) {
                            d3 = Math.abs(d - d4 / d10);
                            abs = d4;
                            d4 = d10;
                            j2 = round;
                            d10 = d6 - ((double) j2);
                            if (d10 <= 2.938736052218037E-39d) {
                                d7 = d4;
                                break;
                            } else {
                                d5 = d7;
                                d6 = 1.0d / d10;
                                d7 = abs;
                                d11 = d4;
                                d4 = d8;
                                d8 = d11;
                            }
                        }
                    }
                    d4 = d9;
                    j2 = j;
                    d11 = abs;
                    abs = d3;
                    d3 = d11;
                    d10 = d6 - ((double) j2);
                    if (d10 <= 2.938736052218037E-39d) {
                        d7 = d4;
                        break;
                    } else {
                        d5 = d7;
                        d6 = 1.0d / d10;
                        d7 = abs;
                        d11 = d4;
                        d4 = d8;
                        d8 = d11;
                    }
                }
                this.b = (long) d3;
                this.c = (long) d9;
                return;
            }
            abs = d7;
            d7 = d8;
            this.b = (long) abs;
            this.c = (long) d7;
        }
    }

    public void a_() {
        if (this.b != 0 && this.c != 0) {
            long j = this.b / this.c;
            this.a += j;
            j = this.b - j * this.c;
            long j2 = this.c;
            if (j != 0) {
                long a = b.a(j, j2);
                this.b = j / a;
                this.c = j2 / a;
            } else {
                this.b = 0;
                this.c = j2;
            }
        }
    }

    public String toString() {
        if (this.a == 0) {
            return new StringBuilder(String.valueOf(((long) this.d) * this.b)).append("/").append(this.c).toString();
        }
        String str = (((long) this.d) * this.a);
        return this.b != 0 ? new StringBuilder(String.valueOf(str)).append(" ").append(this.b).append("/").append(this.c).toString() : str;
    }
}