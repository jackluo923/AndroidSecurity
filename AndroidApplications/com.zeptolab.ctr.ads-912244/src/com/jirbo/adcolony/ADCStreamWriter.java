package com.jirbo.adcolony;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;

class ADCStreamWriter extends ADCWriter {
    static final int buffer_size = 1024;
    byte[] buffer;
    int dx;
    String filepath;
    OutputStream out;
    int position;
    int x;

    ADCStreamWriter(String str) {
        this.buffer = new byte[1024];
        this.position = 0;
        this.filepath = str;
        if (log_level != 0) {
            this.dx = 23;
            this.x = this.dx;
        }
        try {
            if (!(controller == null || controller.storage == null)) {
                controller.storage.validate_storage_paths();
            }
            this.out = new FileOutputStream(str);
        } catch (IOException e) {
            on_error(e);
        }
    }

    ADCStreamWriter(String str, OutputStream outputStream) {
        this.buffer = new byte[1024];
        this.position = 0;
        this.filepath = str;
        this.out = outputStream;
    }

    public static void main(String[] strArr) {
        ADCStreamWriter aDCStreamWriter = new ADCStreamWriter("test.txt");
        aDCStreamWriter.println("A king who was mad at the time");
        aDCStreamWriter.println("Declared limerick writing a crime");
        aDCStreamWriter.indent += 2;
        aDCStreamWriter.println("So late in the night");
        aDCStreamWriter.println("All the poets would write");
        aDCStreamWriter.indent -= 2;
        aDCStreamWriter.println("Verses without any rhyme or meter");
        aDCStreamWriter.println();
        aDCStreamWriter.indent += 4;
        aDCStreamWriter.println("David\nGerrold");
        aDCStreamWriter.indent += 2;
        aDCStreamWriter.println(4.0d);
        aDCStreamWriter.indent += 2;
        aDCStreamWriter.println(0.0d);
        aDCStreamWriter.indent += 2;
        aDCStreamWriter.println(-100023.0d);
        aDCStreamWriter.indent += 2;
        aDCStreamWriter.println(-6);
        aDCStreamWriter.indent += 2;
        aDCStreamWriter.println(0);
        aDCStreamWriter.indent += 2;
        aDCStreamWriter.println(234);
        aDCStreamWriter.indent += 2;
        aDCStreamWriter.println(Long.MIN_VALUE);
        aDCStreamWriter.indent += 2;
        aDCStreamWriter.println(true);
        aDCStreamWriter.indent += 2;
        aDCStreamWriter.println(false);
        aDCStreamWriter.indent += 2;
        aDCStreamWriter.close();
    }

    void close() {
        OutputStream outputStream = null;
        flush();
        try {
            if (this.out != null) {
                this.out.close();
                this.out = null;
            }
        } catch (IOException e) {
            IOException iOException = e;
            this.out = outputStream;
            on_error(iOException);
        }
    }

    void flush() {
        if (this.position > 0 && this.out != null) {
            try {
                this.out.write(this.buffer, 0, this.position);
                this.position = 0;
                this.out.flush();
            } catch (IOException e) {
                IOException iOException = e;
                this.position = 0;
                on_error(iOException);
            }
        }
    }

    void on_error(IOException iOException) {
        ADCLog.error.print("Error writing \"").print(this.filepath).println((Object)"\":");
        ADCLog.error.println(iOException.toString());
        close();
    }

    void write(char c) {
        this.buffer[this.position] = (byte) (this.x ^ c);
        this.x += this.dx;
        int i = this.position + 1;
        this.position = i;
        if (i == 1024) {
            flush();
        }
    }
}