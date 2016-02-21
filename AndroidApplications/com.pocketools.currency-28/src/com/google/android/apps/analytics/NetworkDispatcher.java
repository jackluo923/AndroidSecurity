package com.google.android.apps.analytics;

import android.os.Build;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.HandlerThread;
import android.util.Log;
import com.google.android.apps.analytics.Dispatcher.Callbacks;
import com.pocketools.currency.PocketCurrency;
import java.io.IOException;
import java.util.Collections;
import java.util.LinkedList;
import java.util.Locale;
import org.apache.http.Header;
import org.apache.http.HttpEntityEnclosingRequest;
import org.apache.http.HttpException;
import org.apache.http.HttpHost;
import org.apache.http.ParseException;
import org.apache.http.entity.StringEntity;
import org.apache.http.message.BasicHttpEntityEnclosingRequest;

class NetworkDispatcher implements Dispatcher {
    private static final String GOOGLE_ANALYTICS_HOST_NAME = "www.google-analytics.com";
    private static final int GOOGLE_ANALYTICS_HOST_PORT = 80;
    private static final int MAX_EVENTS_PER_PIPELINE = 30;
    private static final int MAX_GET_LENGTH = 2036;
    private static final int MAX_POST_LENGTH = 8192;
    private static final int MAX_SEQUENTIAL_REQUESTS = 5;
    private static final long MIN_RETRY_INTERVAL = 2;
    private static final String USER_AGENT_TEMPLATE = "%s/%s (Linux; U; Android %s; %s-%s; %s Build/%s)";
    private DispatcherThread dispatcherThread;
    private boolean dryRun;
    private final HttpHost googleAnalyticsHost;
    private final String userAgent;

    private static class DispatcherThread extends HandlerThread {
        private final Callbacks callbacks;
        private AsyncDispatchTask currentTask;
        volatile Handler handlerExecuteOnDispatcherThread;
        private int lastStatusCode;
        private int maxEventsPerRequest;
        private final NetworkDispatcher parent;
        private final PipelinedRequester pipelinedRequester;
        private final RequesterCallbacks requesterCallBacks;
        private long retryInterval;
        private final String userAgent;

        private class AsyncDispatchTask implements Runnable {
            private final LinkedList<Hit> hits;

            public AsyncDispatchTask(Hit[] hitArr) {
                this.hits = new LinkedList();
                Collections.addAll(this.hits, hitArr);
            }

            private void dispatchSomePendingHits(boolean z) throws IOException, ParseException, HttpException {
                if (GoogleAnalyticsTracker.getInstance().getDebug() && z) {
                    Log.v(GoogleAnalyticsTracker.LOG_TAG, "dispatching hits in dry run mode");
                }
                int i = 0;
                while (i < this.hits.size() && i < DispatcherThread.this.maxEventsPerRequest) {
                    String str;
                    String str2;
                    HttpEntityEnclosingRequest basicHttpEntityEnclosingRequest;
                    String addQueueTimeParameter = Utils.addQueueTimeParameter(((Hit) this.hits.get(i)).hitString, System.currentTimeMillis());
                    int indexOf = addQueueTimeParameter.indexOf(63);
                    if (indexOf < 0) {
                        str = PocketCurrency.AD_MOB_KEYWORD_HINT;
                        str2 = addQueueTimeParameter;
                    } else {
                        str = indexOf > 0 ? addQueueTimeParameter.substring(0, indexOf) : PocketCurrency.AD_MOB_KEYWORD_HINT;
                        if (indexOf < addQueueTimeParameter.length() - 2) {
                            String str3 = addQueueTimeParameter.substring(indexOf + 1);
                            str2 = str;
                            str = str3;
                        } else {
                            str2 = str;
                            str = PocketCurrency.AD_MOB_KEYWORD_HINT;
                        }
                    }
                    if (str.length() < 2036) {
                        basicHttpEntityEnclosingRequest = new BasicHttpEntityEnclosingRequest("GET", addQueueTimeParameter);
                    } else {
                        HttpEntityEnclosingRequest basicHttpEntityEnclosingRequest2 = new BasicHttpEntityEnclosingRequest("POST", "/p" + str2);
                        basicHttpEntityEnclosingRequest2.addHeader("Content-Length", Integer.toString(str.length()));
                        basicHttpEntityEnclosingRequest2.addHeader("Content-Type", "text/plain");
                        basicHttpEntityEnclosingRequest2.setEntity(new StringEntity(str));
                        basicHttpEntityEnclosingRequest = basicHttpEntityEnclosingRequest2;
                    }
                    addQueueTimeParameter = DispatcherThread.this.parent.googleAnalyticsHost.getHostName();
                    if (DispatcherThread.this.parent.googleAnalyticsHost.getPort() != 80) {
                        addQueueTimeParameter = addQueueTimeParameter + ":" + DispatcherThread.this.parent.googleAnalyticsHost.getPort();
                    }
                    basicHttpEntityEnclosingRequest.addHeader("Host", addQueueTimeParameter);
                    basicHttpEntityEnclosingRequest.addHeader("User-Agent", DispatcherThread.this.userAgent);
                    if (GoogleAnalyticsTracker.getInstance().getDebug()) {
                        StringBuffer stringBuffer = new StringBuffer();
                        Header[] allHeaders = basicHttpEntityEnclosingRequest.getAllHeaders();
                        int length = allHeaders.length;
                        int i2 = 0;
                        while (i2 < length) {
                            stringBuffer.append(allHeaders[i2].toString()).append("\n");
                            i2++;
                        }
                        stringBuffer.append(basicHttpEntityEnclosingRequest.getRequestLine().toString()).append("\n");
                        Log.i(GoogleAnalyticsTracker.LOG_TAG, stringBuffer.toString());
                    }
                    if (str.length() > 8192) {
                        Log.w(GoogleAnalyticsTracker.LOG_TAG, "Hit too long (> 8192 bytes)--not sent");
                        DispatcherThread.this.requesterCallBacks.requestSent();
                    } else if (z) {
                        DispatcherThread.this.requesterCallBacks.requestSent();
                    } else {
                        DispatcherThread.this.pipelinedRequester.addRequest(basicHttpEntityEnclosingRequest);
                    }
                    i++;
                }
                if (!z) {
                    DispatcherThread.this.pipelinedRequester.sendRequests();
                }
            }

            public Hit removeNextHit() {
                return (Hit) this.hits.poll();
            }

            public void run() {
                DispatcherThread.this.currentTask = this;
                int i = 0;
                while (i < 5 && this.hits.size() > 0) {
                    long j = 0;
                    try {
                        if (DispatcherThread.this.lastStatusCode == 500 || DispatcherThread.this.lastStatusCode == 503) {
                            j = (long) (Math.random() * ((double) DispatcherThread.this.retryInterval));
                            if (DispatcherThread.this.retryInterval < 256) {
                                DispatcherThread.access$630(DispatcherThread.this, MIN_RETRY_INTERVAL);
                            }
                        } else {
                            DispatcherThread.this.retryInterval = MIN_RETRY_INTERVAL;
                        }
                        Thread.sleep(j * 1000);
                        dispatchSomePendingHits(DispatcherThread.this.parent.isDryRun());
                        i++;
                    } catch (InterruptedException e) {
                        Log.w(GoogleAnalyticsTracker.LOG_TAG, "Couldn't sleep.", e);
                    } catch (IOException e2) {
                        Log.w(GoogleAnalyticsTracker.LOG_TAG, "Problem with socket or streams.", e2);
                    } catch (HttpException e3) {
                        Log.w(GoogleAnalyticsTracker.LOG_TAG, "Problem with http streams.", e3);
                    }
                }
                DispatcherThread.this.pipelinedRequester.finishedCurrentRequests();
                DispatcherThread.this.callbacks.dispatchFinished();
                DispatcherThread.this.currentTask = null;
            }
        }

        private class RequesterCallbacks implements Callbacks {
            private RequesterCallbacks() {
            }

            public void pipelineModeChanged(boolean z) {
                if (z) {
                    DispatcherThread.this.maxEventsPerRequest = MAX_EVENTS_PER_PIPELINE;
                } else {
                    DispatcherThread.this.maxEventsPerRequest = 1;
                }
            }

            public void requestSent() {
                if (DispatcherThread.this.currentTask != null) {
                    Hit removeNextHit = DispatcherThread.this.currentTask.removeNextHit();
                    if (removeNextHit != null) {
                        DispatcherThread.this.callbacks.hitDispatched(removeNextHit.hitId);
                    }
                }
            }

            public void serverError(int i) {
                DispatcherThread.this.lastStatusCode = i;
            }
        }

        private DispatcherThread(Callbacks callbacks, PipelinedRequester pipelinedRequester, String str, NetworkDispatcher networkDispatcher) {
            super("DispatcherThread");
            this.maxEventsPerRequest = 30;
            this.currentTask = null;
            this.callbacks = callbacks;
            this.userAgent = str;
            this.pipelinedRequester = pipelinedRequester;
            this.requesterCallBacks = new RequesterCallbacks(null);
            this.pipelinedRequester.installCallbacks(this.requesterCallBacks);
            this.parent = networkDispatcher;
        }

        private DispatcherThread(Callbacks callbacks, String str, NetworkDispatcher networkDispatcher) {
            this(callbacks, new PipelinedRequester(networkDispatcher.googleAnalyticsHost), str, networkDispatcher);
        }

        static /* synthetic */ long access$630(DispatcherThread dispatcherThread, long j) {
            long j2 = dispatcherThread.retryInterval * j;
            dispatcherThread.retryInterval = j2;
            return j2;
        }

        public void dispatchHits(Hit[] hitArr) {
            if (this.handlerExecuteOnDispatcherThread != null) {
                this.handlerExecuteOnDispatcherThread.post(new AsyncDispatchTask(hitArr));
            }
        }

        protected void onLooperPrepared() {
            this.handlerExecuteOnDispatcherThread = new Handler();
        }
    }

    public NetworkDispatcher() {
        this(GoogleAnalyticsTracker.PRODUCT, GoogleAnalyticsTracker.VERSION);
    }

    public NetworkDispatcher(String str, String str2) {
        this(str, str2, GOOGLE_ANALYTICS_HOST_NAME, 80);
    }

    NetworkDispatcher(String str, String str2, String str3, int i) {
        this.dryRun = false;
        this.googleAnalyticsHost = new HttpHost(str3, i);
        Locale locale = Locale.getDefault();
        String str4 = USER_AGENT_TEMPLATE;
        Object[] objArr = new Object[7];
        objArr[0] = str;
        objArr[1] = str2;
        objArr[2] = VERSION.RELEASE;
        objArr[3] = locale.getLanguage() != null ? locale.getLanguage().toLowerCase() : "en";
        objArr[4] = locale.getCountry() != null ? locale.getCountry().toLowerCase() : PocketCurrency.AD_MOB_KEYWORD_HINT;
        objArr[5] = Build.MODEL;
        objArr[6] = Build.ID;
        this.userAgent = String.format(str4, objArr);
    }

    public void dispatchHits(Hit[] hitArr) {
        if (this.dispatcherThread != null) {
            this.dispatcherThread.dispatchHits(hitArr);
        }
    }

    String getUserAgent() {
        return this.userAgent;
    }

    public void init(Callbacks callbacks) {
        stop();
        this.dispatcherThread = new DispatcherThread((Callbacks)this.userAgent, (String)this, (NetworkDispatcher)null);
        this.dispatcherThread.start();
    }

    public void init(Callbacks callbacks, PipelinedRequester pipelinedRequester, HitStore hitStore) {
        stop();
        this.dispatcherThread = new DispatcherThread(pipelinedRequester, this.userAgent, this, null);
        this.dispatcherThread.start();
    }

    public boolean isDryRun() {
        return this.dryRun;
    }

    public void setDryRun(boolean z) {
        this.dryRun = z;
    }

    public void stop() {
        if (this.dispatcherThread != null && this.dispatcherThread.getLooper() != null) {
            this.dispatcherThread.getLooper().quit();
            this.dispatcherThread = null;
        }
    }

    void waitForThreadLooper() {
        this.dispatcherThread.getLooper();
        while (this.dispatcherThread.handlerExecuteOnDispatcherThread == null) {
            Thread.yield();
        }
    }
}