package com.jirbo.adcolony;

import com.brightcove.player.event.Event;
import com.brightcove.player.model.Video.Fields;
import com.inmobi.commons.analytics.db.AnalyticsEvent;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.inmobi.commons.internal.ApiStatCollector.ApiEventType;
import com.zeptolab.ctr.ads.R;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.zbuild.ZBuildConfig;
import java.util.ArrayList;
import java.util.HashMap;

public class ADCData {
    static Value false_value;
    static Value null_value;
    static Value true_value;

    static class Value {
        Value() {
        }

        boolean is_Integer() {
            return false;
        }

        boolean is_List() {
            return false;
        }

        boolean is_Logical() {
            return false;
        }

        boolean is_Number() {
            return is_Real() || is_Integer();
        }

        boolean is_Real() {
            return false;
        }

        boolean is_String() {
            return false;
        }

        boolean is_Table() {
            return false;
        }

        boolean is_compact() {
            return true;
        }

        boolean is_null() {
            return false;
        }

        void print_json(ADCWriter aDCWriter) {
        }

        void print_json(ADCWriter aDCWriter, String str) {
            aDCWriter.print('\"');
            int length = str.length();
            int i = 0;
            while (i < length) {
                char charAt = str.charAt(i);
                switch (charAt) {
                    case IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED:
                        aDCWriter.print("\\b");
                        break;
                    case ZBuildConfig.$minsdk:
                        aDCWriter.print("\\t");
                        break;
                    case R.styleable.MapAttrs_uiZoomControls:
                        aDCWriter.print("\\n");
                        break;
                    case R.styleable.MapAttrs_useViewLifecycle:
                        aDCWriter.print("\\f");
                        break;
                    case R.styleable.MapAttrs_zOrderOnTop:
                        aDCWriter.print("\\r");
                        break;
                    case ApiEventType.API_MRAID_UNMUTE_AUDIO:
                        aDCWriter.print("\\\"");
                        break;
                    case ApiEventType.API_MRAID_PAUSE_VIDEO:
                        aDCWriter.print("\\/");
                        break;
                    case '\\':
                        aDCWriter.print("\\\\");
                        break;
                    default:
                        if (charAt < ' ' || charAt > '~') {
                            aDCWriter.print("\\u");
                            char c = charAt;
                            int i2 = 0;
                            while (i2 < 4) {
                                int i3 = (i >> 12) & 15;
                                i <<= 4;
                                if (i3 <= 9) {
                                    aDCWriter.print((long) i3);
                                } else {
                                    aDCWriter.print((char) (i3 - 10 + 97));
                                }
                                i2++;
                            }
                        } else {
                            aDCWriter.print(charAt);
                        }
                        break;
                }
                i++;
            }
            aDCWriter.print('\"');
        }

        public String toString() {
            return to_json();
        }

        int to_Integer() {
            return 0;
        }

        List to_List() {
            return null;
        }

        boolean to_Logical() {
            return false;
        }

        double to_Real() {
            return 0.0d;
        }

        String to_String() {
            return to_json();
        }

        Table to_Table() {
            return null;
        }

        String to_json() {
            ADCWriter aDCStringBuilder = new ADCStringBuilder();
            print_json(aDCStringBuilder);
            return aDCStringBuilder.toString();
        }
    }

    static class FalseValue extends Value {
        FalseValue() {
        }

        boolean is_Logical() {
            return true;
        }

        void print_json(ADCWriter aDCWriter) {
            aDCWriter.print("false");
        }

        String to_String() {
            return "false";
        }
    }

    static class IntegerValue extends Value {
        int value;

        IntegerValue(int i) {
            this.value = i;
        }

        boolean is_Integer() {
            return true;
        }

        void print_json(ADCWriter aDCWriter) {
            aDCWriter.print((long) this.value);
        }

        int to_Integer() {
            return this.value;
        }

        double to_Real() {
            return (double) this.value;
        }
    }

    static class List extends Value {
        ArrayList data;

        List() {
            this.data = new ArrayList();
        }

        List add(double d) {
            add(new RealValue(d));
            return this;
        }

        List add(int i) {
            add(new IntegerValue(i));
            return this;
        }

        List add(Value value) {
            this.data.add(value);
            return this;
        }

        List add(String str) {
            add(new StringValue(str));
            return this;
        }

        List add(boolean z) {
            add(z ? true_value : false_value);
            return this;
        }

        List add_all(List list) {
            int i = 0;
            while (i < list.count()) {
                add((Value) list.data.get(i));
                i++;
            }
            return this;
        }

        void clear() {
            this.data.clear();
        }

        int count() {
            return this.data.size();
        }

        int get_Integer(int i) {
            return get_Integer(i, 0);
        }

        int get_Integer(int i, int i2) {
            Value value = (Value) this.data.get(i);
            return (value == null || !value.is_Number()) ? i2 : value.to_Integer();
        }

        List get_List(int i) {
            List list = get_List(i, null);
            return list != null ? list : new List();
        }

        List get_List(int i, List list) {
            Value value = (Value) this.data.get(i);
            return (value == null || !value.is_List()) ? list : value.to_List();
        }

        boolean get_Logical(int i) {
            return get_Logical(i, false);
        }

        boolean get_Logical(int i, boolean z) {
            Value value = (Value) this.data.get(i);
            if (value == null) {
                return z;
            }
            return (value.is_Logical() || value.is_String()) ? value.to_Logical() : z;
        }

        double get_Real(int i) {
            return get_Real(i, 0.0d);
        }

        double get_Real(int i, double d) {
            Value value = (Value) this.data.get(i);
            return (value == null || !value.is_Number()) ? d : value.to_Real();
        }

        String get_String(int i) {
            return get_String(i, AdTrackerConstants.BLANK);
        }

        String get_String(int i, String str) {
            Value value = (Value) this.data.get(i);
            return (value == null || !value.is_String()) ? str : value.to_String();
        }

        Table get_Table(int i) {
            Table table = get_Table(i, null);
            return table != null ? table : new Table();
        }

        Table get_Table(int i, Table table) {
            Value value = (Value) this.data.get(i);
            return (value == null || !value.is_Table()) ? table : value.to_Table();
        }

        boolean is_List() {
            return true;
        }

        boolean is_compact() {
            return this.data.size() == 0 || (this.data.size() == 1 && ((Value) this.data.get(0)).is_compact());
        }

        void print_json(ADCWriter aDCWriter) {
            int size = this.data.size();
            if (size == 0) {
                aDCWriter.print("[]");
            } else if (size == 1 && ((Value) this.data.get(0)).is_compact()) {
                aDCWriter.print("[");
                ((Value) this.data.get(0)).print_json(aDCWriter);
                aDCWriter.print("]");
            } else {
                aDCWriter.println("[");
                aDCWriter.indent += 2;
                int i = 0;
                boolean z = true;
                while (i < size) {
                    boolean z2;
                    if (i != 0) {
                        z2 = false;
                    } else {
                        aDCWriter.println(',');
                        int i2 = i;
                    }
                    ((Value) this.data.get(i)).print_json(aDCWriter);
                    i++;
                    z = z2;
                }
                aDCWriter.println();
                aDCWriter.indent -= 2;
                aDCWriter.print("]");
            }
        }

        Value remove_last() {
            return (Value) this.data.remove(this.data.size() - 1);
        }

        List to_List() {
            return this;
        }
    }

    static class NullValue extends Value {
        NullValue() {
        }

        boolean is_null() {
            return true;
        }

        void print_json(ADCWriter aDCWriter) {
            aDCWriter.print("null");
        }

        String to_String() {
            return "null";
        }
    }

    static class RealValue extends Value {
        double value;

        RealValue(double d) {
            this.value = d;
        }

        boolean is_Real() {
            return true;
        }

        void print_json(ADCWriter aDCWriter) {
            aDCWriter.print(this.value);
        }

        int to_Integer() {
            return (int) this.value;
        }

        double to_Real() {
            return this.value;
        }
    }

    static class StringValue extends Value {
        String value;

        StringValue(String str) {
            this.value = str;
        }

        boolean is_String() {
            return true;
        }

        void print_json(ADCWriter aDCWriter) {
            print_json(aDCWriter, this.value);
        }

        int to_Integer() {
            return (int) to_Real();
        }

        boolean to_Logical() {
            String toLowerCase = this.value.toLowerCase();
            return toLowerCase.equals("true") || toLowerCase.equals("yes");
        }

        double to_Real() {
            try {
                return Double.parseDouble(this.value);
            } catch (NumberFormatException e) {
                return 0.0d;
            }
        }

        String to_String() {
            return this.value;
        }
    }

    static class Table extends Value {
        HashMap data;
        ArrayList keys;

        Table() {
            this.data = new HashMap();
            this.keys = new ArrayList();
        }

        boolean contains(String str) {
            return this.data.containsKey(str);
        }

        int count() {
            return this.keys.size();
        }

        int get_Integer(String str) {
            return get_Integer(str, 0);
        }

        int get_Integer(String str, int i) {
            Value value = (Value) this.data.get(str);
            return (value == null || !value.is_Number()) ? i : value.to_Integer();
        }

        List get_List(String str) {
            List list = get_List(str, null);
            return list != null ? list : new List();
        }

        List get_List(String str, List list) {
            Value value = (Value) this.data.get(str);
            return (value == null || !value.is_List()) ? list : value.to_List();
        }

        boolean get_Logical(String str) {
            return get_Logical(str, false);
        }

        boolean get_Logical(String str, boolean z) {
            Value value = (Value) this.data.get(str);
            if (value == null) {
                return z;
            }
            return (value.is_Logical() || value.is_String()) ? value.to_Logical() : z;
        }

        double get_Real(String str) {
            return get_Real(str, 0.0d);
        }

        double get_Real(String str, double d) {
            Value value = (Value) this.data.get(str);
            return (value == null || !value.is_Number()) ? d : value.to_Real();
        }

        String get_String(String str) {
            return get_String(str, AdTrackerConstants.BLANK);
        }

        String get_String(String str, String str2) {
            Value value = (Value) this.data.get(str);
            return (value == null || !value.is_String()) ? str2 : value.to_String();
        }

        ArrayList get_StringList(String str) {
            ArrayList arrayList = get_StringList(str, null);
            return arrayList == null ? new ArrayList() : arrayList;
        }

        ArrayList get_StringList(String str, ArrayList arrayList) {
            List list = get_List(str);
            if (list != null) {
                arrayList = new ArrayList();
                int i = 0;
                while (i < list.count()) {
                    String str2 = list.get_String(i);
                    if (str2 != null) {
                        arrayList.add(str2);
                    }
                    i++;
                }
            }
            return arrayList;
        }

        Table get_Table(String str) {
            Table table = get_Table(str, null);
            return table != null ? table : new Table();
        }

        Table get_Table(String str, Table table) {
            Value value = (Value) this.data.get(str);
            return (value == null || !value.is_Table()) ? table : value.to_Table();
        }

        boolean is_Table() {
            return true;
        }

        boolean is_compact() {
            return this.data.size() < 0 || (this.data.size() == 1 && ((Value) this.data.get(this.keys.get(0))).is_compact());
        }

        String key_at(int i) {
            return (String) this.keys.get(i);
        }

        void print_json(ADCWriter aDCWriter) {
            int size = this.keys.size();
            if (size == 0) {
                aDCWriter.print("{}");
            } else if (size == 1 && ((Value) this.data.get(this.keys.get(0))).is_compact()) {
                aDCWriter.print("{");
                str = (String) this.keys.get(0);
                value = (Value) this.data.get(str);
                print_json(aDCWriter, str);
                aDCWriter.print(':');
                value.print_json(aDCWriter);
                aDCWriter.print("}");
            } else {
                aDCWriter.println("{");
                aDCWriter.indent += 2;
                int i = 0;
                boolean z = true;
                while (i < size) {
                    boolean z2;
                    if (i != 0) {
                        z2 = false;
                    } else {
                        aDCWriter.println(',');
                        int i2 = i;
                    }
                    str = (String) this.keys.get(i);
                    value = (Value) this.data.get(str);
                    print_json(aDCWriter, str);
                    aDCWriter.print(':');
                    if (!value.is_compact()) {
                        aDCWriter.println();
                    }
                    value.print_json(aDCWriter);
                    i++;
                    z = z2;
                }
                aDCWriter.println();
                aDCWriter.indent -= 2;
                aDCWriter.print("}");
            }
        }

        void set(String str, double d) {
            set(str, new RealValue(d));
        }

        void set(String str, int i) {
            set(str, new IntegerValue(i));
        }

        void set(String str, Value value) {
            if (!this.data.containsKey(str)) {
                this.keys.add(str);
            }
            this.data.put(str, value);
        }

        void set(String str, String str2) {
            set(str, new StringValue(str2));
        }

        void set(String str, boolean z) {
            set(str, z ? true_value : false_value);
        }

        Table to_Table() {
            return this;
        }
    }

    static class TrueValue extends Value {
        TrueValue() {
        }

        boolean is_Logical() {
            return true;
        }

        void print_json(ADCWriter aDCWriter) {
            aDCWriter.print("true");
        }

        int to_Integer() {
            return 1;
        }

        boolean to_Logical() {
            return true;
        }

        double to_Real() {
            return 1.0d;
        }

        String to_String() {
            return "true";
        }
    }

    static {
        true_value = new TrueValue();
        false_value = new FalseValue();
        null_value = new NullValue();
    }

    public static void main(String[] strArr) {
        System.out.println("==== ADCData Test ====");
        Table table = new Table();
        table.set("one", 1);
        table.set(AnalyticsEvent.TYPE_TAG_TRANSACTION, 3.14d);
        table.set(Fields.NAME, "\"Abe Pralle\"");
        table.set(Event.LIST, new List());
        table.set("subtable", new Table());
        table.get_Table("subtable").set("five", (int)IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR);
        System.out.println("LIST:" + table.get_List(Event.LIST));
        table.get_List(Event.LIST).add((int)IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE);
        System.out.println(table);
        System.out.println(table.get_Integer("one"));
        System.out.println(table.get_Real("one"));
        System.out.println(table.get_Integer(AnalyticsEvent.TYPE_TAG_TRANSACTION));
        System.out.println(table.get_Real(AnalyticsEvent.TYPE_TAG_TRANSACTION));
        System.out.println(table.get_String(Fields.NAME));
        System.out.println(table.get_Real(Fields.NAME));
        System.out.println(table.get_Integer(Fields.NAME));
        System.out.println(table.get_List(Event.LIST));
        System.out.println(table.get_List("list2"));
        System.out.println(table.get_List("subtable"));
        System.out.println(table.get_Table("subtable"));
        System.out.println(table.get_Table("subtable2"));
        System.out.println(table.get_Table(Event.LIST));
    }
}