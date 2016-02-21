package org.acra.b;

import java.io.IOException;

class j implements Runnable {
    private final /* synthetic */ Process a;

    j(Process process) {
        this.a = process;
    }

    public void run() {
        try {
            do {
            } while (this.a.getErrorStream().read(new byte[8192]) >= 0);
        } catch (IOException e) {
        }
    }
}