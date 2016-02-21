package me.kiip.internal.c;

import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

final class d {
    private final ThreadPoolExecutor a;
    private final Map b;

    d() {
        this.a = new ThreadPoolExecutor(8, 8, 60, TimeUnit.SECONDS, new LinkedBlockingQueue());
        this.b = new LinkedHashMap();
    }
}