package com.jirbo.adcolony;

import com.brightcove.player.event.Event;
import com.brightcove.player.util.ErrorUtil;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;

class ADCZoneState {
    int play_order_index;
    int session_play_count;
    int skipped_plays;
    String uuid;

    ADCZoneState() {
        this.uuid = AdTrackerConstants.BLANK;
    }

    ADCZoneState(String str) {
        this.uuid = AdTrackerConstants.BLANK;
        this.uuid = str;
    }

    boolean parse(Table table) {
        if (table == null) {
            return false;
        }
        this.uuid = table.get_String(Event.UUID, ErrorUtil.ERROR);
        this.skipped_plays = table.get_Integer("skipped_plays");
        this.play_order_index = table.get_Integer("play_order_index");
        return true;
    }

    Table to_Table() {
        Table table = new Table();
        table.set(Event.UUID, this.uuid);
        table.set("skipped_plays", this.skipped_plays);
        table.set("play_order_index", this.play_order_index);
        return table;
    }
}