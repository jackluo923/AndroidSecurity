package com.jirbo.adcolony;

import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;

class ADCJSON {
    static ADCStringBuilder buffer;

    static {
        buffer = new ADCStringBuilder();
    }

    ADCJSON() {
    }

    static void discard_space(ADCParseReader aDCParseReader) {
        char peek = aDCParseReader.peek();
        while (aDCParseReader.has_another()) {
            if (peek <= ' ' || peek > '~') {
                aDCParseReader.read();
                peek = aDCParseReader.peek();
            } else {
                return;
            }
        }
    }

    static int hex_character_to_value(int i) {
        if (i >= 48 && i <= 57) {
            return i - 48;
        }
        if (i >= 97 && i <= 102) {
            return i - 97 + 10;
        }
        return (i < 65 || i > 70) ? 0 : i - 65 + 10;
    }

    static Value load(ADCDataFile aDCDataFile) {
        ADCParseReader create_reader = aDCDataFile.create_reader();
        return create_reader == null ? null : parse_value(create_reader);
    }

    static List load_List(ADCDataFile aDCDataFile) {
        Value load = load(aDCDataFile);
        return (load == null || !load.is_List()) ? null : load.to_List();
    }

    static Table load_Table(ADCDataFile aDCDataFile) {
        Value load = load(aDCDataFile);
        return (load == null || !load.is_Table()) ? null : load.to_Table();
    }

    public static void main(String[] strArr) {
        System.out.println("==== ADCJSON Test ====");
        load_Table(new ADCDataFile("test.txt"));
        save(new ADCDataFile("test2.txt"), load(new ADCDataFile("test.txt")));
        save(new ADCDataFile("test3.txt"), load(new ADCDataFile("test2.txt")));
    }

    static Value parse(String str) {
        return str == null ? null : parse_value(new ADCParseReader(str));
    }

    static List parse_List(ADCParseReader aDCParseReader) {
        discard_space(aDCParseReader);
        if (!aDCParseReader.consume('[')) {
            return null;
        }
        discard_space(aDCParseReader);
        List list = new List();
        if (aDCParseReader.consume(']')) {
            return list;
        }
        boolean z = 1;
        while (true) {
            if (i == 0 && !aDCParseReader.consume(',')) {
                break;
            }
            z = 0;
            list.add(parse_value(aDCParseReader));
            discard_space(aDCParseReader);
        }
        return aDCParseReader.consume(']') ? list : null;
    }

    static List parse_List(String str) {
        Value parse = parse(str);
        return (parse == null || !parse.is_List()) ? null : parse.to_List();
    }

    static Value parse_Number(ADCParseReader aDCParseReader) {
        discard_space(aDCParseReader);
        double d = 1.0d;
        if (aDCParseReader.consume('-')) {
            d = -1.0d;
            discard_space(aDCParseReader);
        }
        double d2 = 0.0d;
        int peek = aDCParseReader.peek();
        while (aDCParseReader.has_another() && peek >= 48 && peek <= 57) {
            aDCParseReader.read();
            d2 = d2 * 10.0d + ((double) (peek - 48));
            peek = aDCParseReader.peek();
        }
        boolean z = 0;
        if (aDCParseReader.consume('.')) {
            double d3 = 0.0d;
            double d4 = 0.0d;
            peek = aDCParseReader.peek();
            while (aDCParseReader.has_another() && peek >= 48 && peek <= 57) {
                aDCParseReader.read();
                d3 = d3 * 10.0d + ((double) (peek - 48));
                d4 += 1.0d;
                peek = aDCParseReader.peek();
            }
            d2 += d3 / Math.pow(10.0d, d4);
            peek = 1;
        }
        if (aDCParseReader.consume('e') || aDCParseReader.consume('E')) {
            boolean z2 = 0;
            if (!aDCParseReader.consume('+') && aDCParseReader.consume('-')) {
                z2 = 1;
            }
            double d5 = 0.0d;
            int peek2 = aDCParseReader.peek();
            while (aDCParseReader.has_another() && peek2 >= 48 && peek2 <= 57) {
                aDCParseReader.read();
                d5 = d5 * 10.0d + ((double) (peek2 - 48));
                peek2 = aDCParseReader.peek();
            }
            d2 = i != 0 ? d2 / Math.pow(10.0d, d5) : d2 * Math.pow(10.0d, d5);
        }
        d2 *= d;
        return (i == 0 && d2 == ((double) ((int) d2))) ? new IntegerValue((int) d2) : new RealValue(d2);
    }

    static String parse_String(ADCParseReader aDCParseReader) {
        char c = '\"';
        discard_space(aDCParseReader);
        if (!aDCParseReader.consume('\"') && aDCParseReader.consume('\'')) {
            c = '\'';
        }
        if (!aDCParseReader.has_another()) {
            return AdTrackerConstants.BLANK;
        }
        buffer.clear();
        char read = aDCParseReader.read();
        while (aDCParseReader.has_another() && read != c) {
            if (read == '\\') {
                read = aDCParseReader.read();
                if (read == 'b') {
                    buffer.print('\b');
                } else if (read == 'f') {
                    buffer.print('\f');
                } else if (read == 'n') {
                    buffer.print('\n');
                } else if (read == 'r') {
                    buffer.print('\r');
                } else if (read == 't') {
                    buffer.print('\t');
                } else if (read == 'u') {
                    buffer.print(parse_hex_quad(aDCParseReader));
                } else {
                    buffer.print(read);
                }
            } else {
                buffer.print(read);
            }
            read = aDCParseReader.read();
        }
        return buffer.toString();
    }

    static Table parse_Table(ADCParseReader aDCParseReader) {
        discard_space(aDCParseReader);
        if (!aDCParseReader.consume('{')) {
            return null;
        }
        discard_space(aDCParseReader);
        Table table = new Table();
        if (aDCParseReader.consume('}')) {
            return table;
        }
        boolean z = true;
        while (true) {
            if (i == 0 && !aDCParseReader.consume(',')) {
                break;
            }
            z = 0;
            String parse_identifier = parse_identifier(aDCParseReader);
            discard_space(aDCParseReader);
            if (aDCParseReader.consume(':')) {
                discard_space(aDCParseReader);
                table.set(parse_identifier, parse_value(aDCParseReader));
            } else {
                table.set(parse_identifier, true);
            }
            discard_space(aDCParseReader);
        }
        return aDCParseReader.consume('}') ? table : null;
    }

    static Table parse_Table(String str) {
        Value parse = parse(str);
        return (parse == null || !parse.is_Table()) ? null : parse.to_Table();
    }

    static char parse_hex_quad(ADCParseReader aDCParseReader) {
        int i = 0;
        int i2 = 0;
        while (i2 < 4) {
            if (aDCParseReader.has_another()) {
                i = (i << 4) | hex_character_to_value(aDCParseReader.read());
            }
            i2++;
        }
        return (char) i;
    }

    static String parse_identifier(ADCParseReader aDCParseReader) {
        discard_space(aDCParseReader);
        int peek = aDCParseReader.peek();
        if (peek == 34 || peek == 39) {
            return parse_String(aDCParseReader);
        }
        buffer.clear();
        boolean z = 0;
        while (i == 0 && aDCParseReader.has_another()) {
            if (peek < 97 || peek > 122) {
                if (!((peek >= 65 && peek <= 90) || peek == 95 || peek == 36)) {
                    z = 1;
                }
            }
            aDCParseReader.read();
            buffer.print((char) peek);
            peek = aDCParseReader.peek();
        }
        return buffer.toString();
    }

    static Value parse_value(ADCParseReader aDCParseReader) {
        discard_space(aDCParseReader);
        char peek = aDCParseReader.peek();
        if (peek == '{') {
            return parse_Table(aDCParseReader);
        }
        if (peek == '[') {
            return parse_List(aDCParseReader);
        }
        if (peek == '-') {
            return parse_Number(aDCParseReader);
        }
        if (peek >= '0' && peek <= '9') {
            return parse_Number(aDCParseReader);
        }
        String parse_String;
        if (peek == '\"' || peek == '\'') {
            parse_String = parse_String(aDCParseReader);
            if (parse_String.length() == 0) {
                return new StringValue(AdTrackerConstants.BLANK);
            }
            peek = parse_String.charAt(0);
            if (peek == 't' && parse_String.equals("true")) {
                return ADCData.true_value;
            }
            if (peek == 'f' && parse_String.equals("false")) {
                return ADCData.false_value;
            }
            return (peek == 'n' && parse_String.equals("null")) ? ADCData.null_value : new StringValue(parse_String);
        } else {
            if (peek < 'a' || peek > 'z') {
                if (!((peek >= 'A' && peek <= 'Z') || peek == '_' || peek == '$')) {
                    return null;
                }
            }
            parse_String = parse_identifier(aDCParseReader);
            if (parse_String.length() == 0) {
                return new StringValue(AdTrackerConstants.BLANK);
            }
            peek = parse_String.charAt(0);
            if (peek == 't' && parse_String.equals("true")) {
                return ADCData.true_value;
            }
            if (peek == 'f' && parse_String.equals("false")) {
                return ADCData.false_value;
            }
            return (peek == 'n' && parse_String.equals("null")) ? ADCData.null_value : new StringValue(parse_String);
        }
    }

    static void save(ADCDataFile aDCDataFile, List list) {
        ADCWriter create_writer = aDCDataFile.create_writer();
        if (list != null) {
            list.print_json(create_writer);
            create_writer.println();
        } else {
            ADCLog.debug.println((Object)"Saving empty property list.");
            create_writer.println("[]");
        }
        create_writer.close();
    }

    static void save(ADCDataFile aDCDataFile, Table table) {
        ADCWriter create_writer = aDCDataFile.create_writer();
        if (table != null) {
            table.print_json(create_writer);
            create_writer.println();
        } else {
            ADCLog.debug.println((Object)"Saving empty property table.");
            create_writer.println("{}");
        }
        create_writer.close();
    }

    static void save(ADCDataFile aDCDataFile, Value value) {
        ADCWriter create_writer = aDCDataFile.create_writer();
        if (value == null) {
            create_writer.println("null");
        } else {
            value.print_json(create_writer);
            create_writer.println();
        }
        create_writer.close();
    }
}