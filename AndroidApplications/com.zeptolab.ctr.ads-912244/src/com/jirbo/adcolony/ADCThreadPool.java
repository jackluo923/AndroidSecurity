package com.jirbo.adcolony;

import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import java.util.ArrayList;
import java.util.Iterator;

class ADCThreadPool {
    static ArrayList all_threads;
    static ArrayList idle_threads;
    static String mutex;
    static ArrayList pending_runnables;
    static volatile boolean shutting_down;
    static ArrayList working_runnables;

    static class ReusableThread extends Thread {
        Runnable target;

        ReusableThread() {
        }

        public void run() {
            while (true) {
                if (this.target != null) {
                    try {
                        this.target.run();
                    } catch (RuntimeException e) {
                        RuntimeException runtimeException = e;
                        ADC.log_error("Exception caught in reusable thread.");
                        ADC.log_error(runtimeException + AdTrackerConstants.BLANK);
                        runtimeException.printStackTrace();
                    }
                    this.target = null;
                }
                if (!shutting_down) {
                    synchronized (this) {
                        try {
                            synchronized (mutex) {
                                idle_threads.add(this);
                            }
                            try {
                                wait();
                            } catch (InterruptedException e2) {
                            }
                        } catch (Throwable th) {
                        }
                    }
                } else {
                    return;
                }
            }
        }
    }

    static {
        mutex = new String("mutex");
        idle_threads = new ArrayList();
        all_threads = new ArrayList();
        pending_runnables = new ArrayList();
        working_runnables = new ArrayList();
    }

    ADCThreadPool() {
    }

    static void reset() {
        stop();
        synchronized (mutex) {
            pending_runnables.clear();
        }
        start();
    }

    static void run(Runnable runnable) {
        synchronized (mutex) {
            if (shutting_down) {
                pending_runnables.add(runnable);
            } else {
                ReusableThread reusableThread;
                int size = idle_threads.size();
                reusableThread = size > 0 ? (ReusableThread) idle_threads.remove(size - 1) : null;
                if (reusableThread == null) {
                    ReusableThread reusableThread2 = new ReusableThread();
                    synchronized (mutex) {
                        all_threads.add(reusableThread2);
                    }
                    reusableThread2.target = runnable;
                    reusableThread2.start();
                } else {
                    synchronized (reusableThread) {
                        reusableThread.target = runnable;
                        reusableThread.notify();
                    }
                }
            }
        }
    }

    static void start() {
        synchronized (mutex) {
            shutting_down = false;
            working_runnables.clear();
            working_runnables.addAll(pending_runnables);
            pending_runnables.clear();
            all_threads.clear();
        }
        Iterator it = working_runnables.iterator();
        while (it.hasNext()) {
            run((Runnable) it.next());
        }
    }

    static void stop() {
        synchronized (mutex) {
            try {
                shutting_down = true;
                Iterator it = idle_threads.iterator();
                while (it.hasNext()) {
                    ReusableThread reusableThread = (ReusableThread) it.next();
                    synchronized (reusableThread) {
                        reusableThread.notify();
                    }
                }
                synchronized (mutex) {
                    idle_threads.clear();
                }
            } catch (Throwable th) {
            }
        }
    }
}