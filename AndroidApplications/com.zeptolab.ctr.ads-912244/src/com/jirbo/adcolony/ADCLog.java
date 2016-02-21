package com.jirbo.adcolony;

import com.zeptolab.ctr.scorer.GoogleScorer;

class ADCLog {
    static ADCLog debug;
    static ADCLog dev;
    static ADCLog error;
    static ADCLog info;
    StringBuilder buffer;
    boolean enabled;
    int log_level;

    static {
        dev = new ADCLog(0, false);
        debug = new ADCLog(1, false);
        info = new ADCLog(2, true);
        error = new ADCLog(3, true);
    }

    ADCLog(int i, boolean z) {
        this.buffer = new StringBuilder();
        this.log_level = i;
        this.enabled = z;
    }

    boolean fail(String str) {
        print(str + '\n');
        return false;
    }

    int int_fail(String str) {
        print(str + '\n');
        return 0;
    }

    synchronized ADCLog print(char c) {
        ADCLog aDCLog;
        if (this.enabled) {
            this.buffer.append(c);
            if (c == '\n') {
                ADC.log(this.log_level, this.buffer.toString());
                this.buffer.setLength(0);
            }
            aDCLog = this;
        } else {
            aDCLog = this;
        }
        return aDCLog;
    }

    synchronized ADCLog print(double d) {
        ADCLog aDCLog;
        if (this.enabled) {
            ADCUtil.format(d, GoogleScorer.CLIENT_PLUS, this.buffer);
            aDCLog = this;
        } else {
            aDCLog = this;
        }
        return aDCLog;
    }

    synchronized ADCLog print(int i) {
        ADCLog aDCLog;
        if (this.enabled) {
            this.buffer.append(i);
            aDCLog = this;
        } else {
            aDCLog = this;
        }
        return aDCLog;
    }

    synchronized ADCLog print(Object obj) {
        if (this.enabled) {
            if (obj == null) {
                print("null");
            } else {
                print(obj.toString());
            }
        }
        return this;
    }

    synchronized ADCLog print(String str) {
        ADCLog aDCLog;
        if (this.enabled) {
            if (str == null) {
                this.buffer.append("null");
            } else {
                int length = str.length();
                int i = 0;
                while (i < length) {
                    print(str.charAt(i));
                    i++;
                }
            }
            aDCLog = this;
        } else {
            aDCLog = this;
        }
        return aDCLog;
    }

    synchronized ADCLog print(boolean z) {
        ADCLog aDCLog;
        if (this.enabled) {
            this.buffer.append(z);
            aDCLog = this;
        } else {
            aDCLog = this;
        }
        return aDCLog;
    }

    synchronized ADCLog println() {
        return print('\n');
    }

    synchronized ADCLog println(double d) {
        print(d);
        return print('\n');
    }

    synchronized ADCLog println(int i) {
        print(i);
        return print('\n');
    }

    synchronized ADCLog println(Object obj) {
        print(obj);
        return print('\n');
    }

    synchronized ADCLog println(boolean z) {
        print(z);
        return print('\n');
    }
}