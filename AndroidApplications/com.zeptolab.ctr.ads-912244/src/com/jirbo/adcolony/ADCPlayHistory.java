package com.jirbo.adcolony;

import com.inmobi.commons.ads.cache.AdDatabaseHelper;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

class ADCPlayHistory {
    ADCController controller;
    boolean loaded;
    boolean modified;
    HashMap play_counts;
    ArrayList play_events;
    HashMap reward_credit;

    static class PlayEvent {
        int ad_id;
        String session_id;
        double timestamp;
        String zone_id;

        PlayEvent(String str, double d, String str2, int i) {
            this.session_id = str;
            this.timestamp = d;
            this.zone_id = str2;
            this.ad_id = i;
        }
    }

    ADCPlayHistory(ADCController aDCController) {
        this.play_events = new ArrayList();
        this.play_counts = new HashMap();
        this.reward_credit = new HashMap();
        this.modified = false;
        this.loaded = false;
        this.controller = aDCController;
    }

    int ad_daily_play_count(int i) {
        return ad_interval_play_count(i, 86400.0d);
    }

    int ad_half_year_play_count(int i) {
        return ad_interval_play_count(i, 1.5768E7d);
    }

    synchronized int ad_interval_play_count(int i, double d) {
        int i2;
        double current_time = ADCUtil.current_time() - d;
        i2 = 0;
        int i3 = this.play_events.size() - 1;
        while (i3 >= 0 && ((PlayEvent) this.play_events.get(i3)).timestamp >= current_time) {
            i3--;
            i2 = i == ((PlayEvent) this.play_events.get(i3)).ad_id ? i2 + 1 : i2;
        }
        return i2;
    }

    int ad_monthly_play_count(int i) {
        return ad_interval_play_count(i, 2628000.0d);
    }

    int ad_weekly_play_count(int i) {
        return ad_interval_play_count(i, 604800.0d);
    }

    void add_play_event(String str, int i) {
        ADCLog.dev.println((Object)"Adding play event to play history");
        this.modified = true;
        this.play_events.add(new PlayEvent(this.controller.session_manager.current_session_id, ADCUtil.current_time(), str, i));
        Object obj = (Integer) this.play_counts.get(Integer.valueOf(i));
        ADCLog.dev.print("Got play count of ").print(obj).println((Object)" for this ad");
        if (obj == null) {
            this.play_counts.put(Integer.valueOf(i), Integer.valueOf(1));
        } else {
            this.play_counts.put(Integer.valueOf(i), Integer.valueOf(obj.intValue() + 1));
        }
    }

    void configure() {
        load();
        this.modified = false;
    }

    int get_reward_credit(String str) {
        Integer num = (Integer) this.reward_credit.get(str);
        return num == null ? 0 : num.intValue();
    }

    void load() {
        int i = 0;
        active = true;
        if (!this.loaded || ((PlayEvent) this.play_events.get(this.play_events.size() - 1)).session_id != this.controller.session_manager.current_session_id) {
            Table load_Table = ADCJSON.load_Table(new ADCDataFile("play_history_info.txt"));
            if (load_Table != null) {
                Table table;
                this.play_events.clear();
                this.reward_credit = new HashMap();
                Table table2 = load_Table.get_Table("reward_credit");
                int i2 = 0;
                while (i2 < table2.count()) {
                    String key_at = table2.key_at(i2);
                    this.reward_credit.put(key_at, Integer.valueOf(table2.get_Integer(key_at)));
                    i2++;
                }
                List list = load_Table.get_List("play_events");
                int i3 = 0;
                while (i3 < list.count()) {
                    table = list.get_Table(i3);
                    double d = table.get_Real(AdDatabaseHelper.COLUMN_TIMESTAMP);
                    String str = table.get_String("zone_id");
                    int i4 = table.get_Integer("ad_id");
                    if (!(d == 0.0d || str == null || i4 == 0)) {
                        this.play_events.add(new PlayEvent(null, d, str, i4));
                    }
                    i3++;
                }
                this.play_counts = new HashMap();
                table = load_Table.get_Table("play_counts");
                while (i < table.count()) {
                    int parseInt = Integer.parseInt(table.key_at(i));
                    this.play_counts.put(Integer.valueOf(parseInt), Integer.valueOf(table.get_Integer(AdTrackerConstants.BLANK + parseInt)));
                    i++;
                }
                this.loaded = true;
            }
        }
    }

    void save() {
        Value list = new List();
        Table table = new Table();
        Value table2 = new Table();
        double current_time = ADCUtil.current_time() - 2678400.0d;
        int i = this.play_events.size() - 1;
        while (i >= 0) {
            PlayEvent playEvent = (PlayEvent) this.play_events.get(i);
            if (playEvent.timestamp < current_time) {
                break;
            }
            Value table3 = new Table();
            table3.set("zone_id", playEvent.zone_id);
            table3.set("ad_id", playEvent.ad_id);
            table3.set(AdDatabaseHelper.COLUMN_TIMESTAMP, playEvent.timestamp);
            list.add(table3);
            i--;
        }
        table.set("play_events", list);
        Iterator it = this.play_counts.keySet().iterator();
        while (it.hasNext()) {
            int intValue = ((Integer) it.next()).intValue();
            table2.set(AdTrackerConstants.BLANK + intValue, ((Integer) this.play_counts.get(Integer.valueOf(intValue))).intValue());
        }
        table.set("play_counts", table2);
        list = new Table();
        if (this.reward_credit.size() > 0) {
            Iterator it2 = this.reward_credit.keySet().iterator();
            while (it2.hasNext()) {
                String str = (String) it2.next();
                list.set(str, ((Integer) this.reward_credit.get(str)).intValue());
            }
        }
        table.set("reward_credit", list);
        ADCLog.dev.print("Saving play history");
        ADCJSON.save(new ADCDataFile("play_history_info.txt"), table);
    }

    void set_reward_credit(String str, int i) {
        this.reward_credit.put(str, Integer.valueOf(i));
        this.modified = true;
    }

    void update() {
        if (this.modified) {
            this.modified = false;
            save();
        }
    }

    int zone_daily_play_count(String str) {
        return zone_interval_play_count(str, 86400.0d);
    }

    synchronized int zone_interval_play_count(String str, double d) {
        int i;
        double current_time = ADCUtil.current_time() - d;
        i = 0;
        int i2 = this.play_events.size() - 1;
        while (i2 >= 0 && ((PlayEvent) this.play_events.get(i2)).timestamp >= current_time) {
            i2--;
            i = str.equals(((PlayEvent) this.play_events.get(i2)).zone_id) ? i + 1 : i;
        }
        return i;
    }

    synchronized int zone_session_play_count(String str) {
        int i = 0;
        synchronized (this) {
            String str2 = this.controller.session_manager.current_session_id;
            int i2 = this.play_events.size() - 1;
            boolean z = false;
            while (i2 >= 0 && this.play_events.get(i2) != null && ((PlayEvent) this.play_events.get(i2)).session_id != null) {
                int i3;
                boolean z2;
                if (((PlayEvent) this.play_events.get(i2)).session_id.equals(str2)) {
                    z = 1;
                    if (((PlayEvent) this.play_events.get(i2)).zone_id.equals(str)) {
                        i3 = i + 1;
                        z2 = true;
                    }
                    i3 = i;
                    z2 = z;
                } else {
                    if (i != 0) {
                        break;
                    }
                    i3 = i;
                    z2 = z;
                }
                i2--;
                z = z2;
                i = i3;
            }
        }
        return i;
    }
}