package com.jirbo.adcolony;

import java.io.File;
import java.io.IOException;

class ADCDataFile {
    static byte[] buffer;
    String filepath;

    static {
        buffer = new byte[1024];
    }

    ADCDataFile(String str) {
        this.filepath = controller.storage.data_path + str;
    }

    ADCParseReader create_reader() {
        try {
            return new ADCParseReader(new ADCStreamReader(this.filepath));
        } catch (IOException e) {
            return null;
        }
    }

    ADCStreamWriter create_writer() {
        return new ADCStreamWriter(this.filepath);
    }

    void delete() {
        new File(this.filepath).delete();
    }

    void save(String str) {
        ADCStreamWriter create_writer = create_writer();
        int length = str.length();
        int i = 0;
        while (i < length) {
            create_writer.write(str.charAt(i));
            i++;
        }
        create_writer.close();
    }
}