package com.jirbo.adcolony;

import java.util.ArrayList;

class ADCZoneStateManager {
    ADCController controller;
    ArrayList data;
    boolean modified;

    ADCZoneStateManager(ADCController aDCController) {
        this.modified = false;
        this.data = new ArrayList();
        this.controller = aDCController;
    }

    int count() {
        return this.data.size();
    }

    ADCZoneState find(String str) {
        ADCZoneState aDCZoneState;
        int size = this.data.size();
        int i = 0;
        while (i < size) {
            aDCZoneState = (ADCZoneState) this.data.get(i);
            if (aDCZoneState.uuid.equals(str)) {
                return aDCZoneState;
            }
            i++;
        }
        this.modified = true;
        aDCZoneState = new ADCZoneState(str);
        this.data.add(aDCZoneState);
        return aDCZoneState;
    }

    ADCZoneState get(int i) {
        return (ADCZoneState) this.data.get(i);
    }

    void load() {
        int i = 0;
        List load_List = ADCJSON.load_List(new ADCDataFile("zone_state.txt"));
        if (load_List != null) {
            this.data.clear();
            int i2 = 0;
            while (i2 < load_List.count()) {
                Table table = load_List.get_Table(i2);
                ADCZoneState aDCZoneState = new ADCZoneState();
                if (aDCZoneState.parse(table)) {
                    this.data.add(aDCZoneState);
                }
                i2++;
            }
        }
        String[] strArr = this.controller.configuration.zone_ids;
        int length = strArr.length;
        while (i < length) {
            find(strArr[i]);
            i++;
        }
    }

    void save() {
        int i = 0;
        ADCLog.dev.println((Object)"Saving zone state...");
        this.modified = false;
        List list = new List();
        String[] strArr = this.controller.configuration.zone_ids;
        int length = strArr.length;
        while (i < length) {
            list.add(find(strArr[i]).to_Table());
            i++;
        }
        ADCJSON.save(new ADCDataFile("zone_state.txt"), list);
        ADCLog.dev.println((Object)"Saved zone state");
    }

    void update() {
        if (this.modified) {
            save();
        }
    }
}