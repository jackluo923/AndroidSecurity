package com.jirbo.adcolony;

class ADCStringBuilder extends ADCWriter {
    StringBuilder buffer;

    ADCStringBuilder() {
        this.buffer = new StringBuilder();
    }

    public static void main(String[] strArr) {
        ADCStringBuilder aDCStringBuilder = new ADCStringBuilder();
        aDCStringBuilder.println("A king who was mad at the time");
        aDCStringBuilder.println("Declared limerick writing a crime");
        aDCStringBuilder.indent += 2;
        aDCStringBuilder.println("So late in the night");
        aDCStringBuilder.println("All the poets would write");
        aDCStringBuilder.indent -= 2;
        aDCStringBuilder.println("Verses without any rhyme or meter");
        aDCStringBuilder.println();
        aDCStringBuilder.indent += 4;
        aDCStringBuilder.println("David\nGerrold");
        aDCStringBuilder.indent += 2;
        aDCStringBuilder.println(4.0d);
        aDCStringBuilder.indent += 2;
        aDCStringBuilder.println(0.0d);
        aDCStringBuilder.indent += 2;
        aDCStringBuilder.println(-100023.0d);
        aDCStringBuilder.indent += 2;
        aDCStringBuilder.println(-6);
        aDCStringBuilder.indent += 2;
        aDCStringBuilder.println(0);
        aDCStringBuilder.indent += 2;
        aDCStringBuilder.println(234);
        aDCStringBuilder.indent += 2;
        aDCStringBuilder.println(Long.MIN_VALUE);
        aDCStringBuilder.indent += 2;
        aDCStringBuilder.println(true);
        aDCStringBuilder.indent += 2;
        aDCStringBuilder.println(false);
        aDCStringBuilder.indent += 2;
        System.out.println(aDCStringBuilder);
    }

    void clear() {
        this.buffer.setLength(0);
        this.indent = 0;
    }

    public String toString() {
        return this.buffer.toString();
    }

    void write(char c) {
        this.buffer.append(c);
    }
}