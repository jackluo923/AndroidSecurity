package com.zeptolab.ctr.threading;

import com.zeptolab.ctr.ads.R;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

public class ThreadPoolManager {
    private static final String TAG = "ThreadPoolManager";
    private static ThreadPoolManager m_instance;
    private ExecutorService m_execService;
    private boolean m_isShutdown;
    private ScheduledExecutorService m_scheduledExecService;

    static {
        m_instance = null;
    }

    ThreadPoolManager() {
        this.m_isShutdown = false;
        this.m_execService = Executors.newCachedThreadPool();
        this.m_scheduledExecService = Executors.newScheduledThreadPool(R.styleable.MapAttrs_uiZoomControls);
    }

    public static ThreadPoolManager getInstance() {
        if (m_instance == null || m_instance.m_isShutdown) {
            m_instance = new ThreadPoolManager();
        }
        return m_instance;
    }

    public ScheduledFuture schedule(Runnable runnable, long j) {
        return this.m_scheduledExecService.schedule(runnable, j, TimeUnit.SECONDS);
    }

    public ScheduledFuture scheduleAtFixedRate(Runnable runnable, long j, long j2) {
        return this.m_scheduledExecService.scheduleAtFixedRate(runnable, j, j2, TimeUnit.SECONDS);
    }

    public void shutdown() {
        this.m_isShutdown = true;
        this.m_execService.shutdown();
        this.m_scheduledExecService.shutdown();
    }

    public Future submit(Runnable runnable) {
        return this.m_execService.submit(runnable);
    }
}