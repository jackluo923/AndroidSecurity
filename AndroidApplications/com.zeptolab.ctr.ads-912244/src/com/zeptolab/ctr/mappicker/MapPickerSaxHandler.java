package com.zeptolab.ctr.mappicker;

import com.brightcove.player.model.Video.Fields;
import java.util.ArrayList;
import org.xml.sax.Attributes;
import org.xml.sax.helpers.DefaultHandler;

public class MapPickerSaxHandler extends DefaultHandler {
    ArrayList files;

    public MapPickerSaxHandler() {
        this.files = new ArrayList();
    }

    public String[] getMaps() {
        return (String[]) this.files.toArray(new String[this.files.size()]);
    }

    public void startElement(String str, String str2, String str3, Attributes attributes) {
        if (str2.equals("file")) {
            this.files.add(attributes.getValue(Fields.NAME));
        }
    }
}