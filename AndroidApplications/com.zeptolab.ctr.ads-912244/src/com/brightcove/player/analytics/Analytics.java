package com.brightcove.player.analytics;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.AsyncTask;
import android.os.Build.VERSION;
import android.telephony.TelephonyManager;
import com.brightcove.player.event.AbstractComponent;
import com.brightcove.player.event.Emits;
import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventEmitter;
import com.brightcove.player.event.EventListener;
import com.brightcove.player.event.EventType;
import com.brightcove.player.event.ListensFor;
import com.brightcove.player.media.CuePointFields;
import com.brightcove.player.media.HttpService;
import com.brightcove.player.model.Video;
import com.brightcove.player.util.ErrorUtil;
import com.google.android.gms.tagmanager.DataLayer;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.zeptolab.zbuild.ZBuildConfig;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.net.URISyntaxException;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;

@Emits(events = {"didSetAnalyticsBaseParams", "error"})
@ListensFor(events = {"addAnalyticsBaseParams", "completed", "didSeekTo", "didSetVideo", "progress", "readyToPlay", "setAnalyticsBaseParams"})
public class Analytics extends AbstractComponent {
    private static final String baseURL = "http://metrics.brightcove.com/tracker";
    private static final String defaultName = "BCPlayer for Android";
    private static final String deviceOS = "android";
    private static final String domain = "videocloud";
    private static final int engagementPeriod = 10000;
    private final Map baseParams;
    public String destination;
    private String deviceType;
    private int endTime;
    private boolean hasStarted;
    public String playerName;
    private int startTime;

    public static class Fields {
        public static final String BASE_PARAMS = "baseParams";
        protected static final String DESTINATION = "destination";
        protected static final String DEVICE_OS = "device_os";
        protected static final String DEVICE_OS_VERSION = "device_os_version";
        protected static final String DEVICE_TYPE = "device_type";
        protected static final String DOMAIN = "domain";
        protected static final String EMBED = "embed";
        protected static final String EVENT = "event";
        protected static final String EVENT_VIDEO_COMPLETE = "video_complete";
        protected static final String EVENT_VIDEO_ENGAGEMENT = "video_engagement";
        protected static final String EVENT_VIDEO_IMPRESSION = "video_impression";
        protected static final String EVENT_VIDEO_VIEW = "video_view";
        protected static final String PLAYER_NAME = "player_name";
        protected static final String PUBLISHER_ID = "account";
        protected static final String RANGE = "range";
        protected static final String TIME = "time";
        protected static final String VIDEO_DURATION = "video_duration";
        protected static final String VIDEO_ID = "video";
        protected static final String VIDEO_NAME = "video_name";
    }

    class HttpAsyncTask extends AsyncTask {
        HttpService httpService;

        public HttpAsyncTask() {
            this.httpService = new HttpService(60, 60);
        }

        protected Void doInBackground(Map... mapArr) {
            Map map = mapArr[0];
            Map hashMap = new HashMap();
            Iterator it = map.entrySet().iterator();
            while (it.hasNext()) {
                Entry entry = (Entry) it.next();
                hashMap.put(entry.getKey(), entry.getValue());
            }
            try {
                this.httpService.doGetRequest(HttpService.buildURIWithQueryParameters(baseURL, hashMap));
            } catch (MalformedURLException e) {
                Analytics.this.eventEmitter.emit(ErrorUtil.ERROR, Collections.singletonMap(ErrorUtil.ERROR, e));
            } catch (UnsupportedEncodingException e2) {
                Analytics.this.eventEmitter.emit(ErrorUtil.ERROR, Collections.singletonMap(ErrorUtil.ERROR, e2));
            } catch (URISyntaxException e3) {
                Analytics.this.eventEmitter.emit(ErrorUtil.ERROR, Collections.singletonMap(ErrorUtil.ERROR, e3));
            } catch (IOException e4) {
                Analytics.this.eventEmitter.emit(ErrorUtil.ERROR, Collections.singletonMap(ErrorUtil.ERROR, e4));
            }
            return null;
        }
    }

    public Analytics(EventEmitter eventEmitter, Context context) {
        this(eventEmitter, context, Analytics.class);
    }

    protected Analytics(EventEmitter eventEmitter, Context context, Class cls) {
        super(eventEmitter, cls);
        this.baseParams = new HashMap();
        this.endTime = 0;
        this.startTime = 0;
        this.hasStarted = false;
        this.playerName = defaultName;
        setAppName(context);
        setDestination(context);
        initializeEvents(eventEmitter);
        this.deviceType = getDeviceType(context);
    }

    private void emitDidSetEvent() {
        Map hashMap = new HashMap();
        hashMap.put(Fields.BASE_PARAMS, this.baseParams);
        this.eventEmitter.emit(EventType.DID_SET_ANALYTICS_BASE_PARAMS, hashMap);
    }

    private String getDeviceType(Context context) {
        String str = "tablet";
        if (context == null) {
            return str;
        }
        try {
            return ((TelephonyManager) context.getSystemService(ZBuildConfig.device)).getPhoneType() != 0 ? "mobile" : str;
        } catch (UnsupportedOperationException e) {
            return str;
        } catch (IllegalStateException e2) {
            return str;
        }
    }

    private void initializeEvents(EventEmitter eventEmitter) {
        eventEmitter.on(EventType.ADD_ANALYTICS_BASE_PARAMS, new EventListener() {
            public void processEvent(Event event) {
                Map map = (Map) event.properties.get(com.brightcove.player.analytics.Analytics.Fields.BASE_PARAMS);
                if (map != null) {
                    Analytics.this.baseParams.putAll(map);
                }
                Analytics.this.emitDidSetEvent();
            }
        });
        eventEmitter.on(EventType.SET_ANALYTICS_BASE_PARAMS, new EventListener() {
            public void processEvent(Event event) {
                Map map = (Map) event.properties.get(com.brightcove.player.analytics.Analytics.Fields.BASE_PARAMS);
                if (map != null) {
                    Analytics.this.baseParams.clear();
                    Analytics.this.baseParams.putAll(map);
                }
                Analytics.this.emitDidSetEvent();
            }
        });
        eventEmitter.on(EventType.DID_SET_VIDEO, new EventListener() {
            public void processEvent(Event event) {
                if (Analytics.this.endTime - Analytics.this.startTime > 0) {
                    Analytics.this.sendVideoEngagementRequest(event, Analytics.this.startTime, Analytics.this.endTime);
                }
                Analytics.this.sendVideoAnalyticsRequest(event, "video_impression", null);
                Analytics.this.startTime = Analytics.this.endTime = 0;
                Analytics.this.hasStarted = false;
            }
        });
        eventEmitter.on(EventType.DID_SEEK_TO, new EventListener() {
            public void processEvent(Event event) {
                int integerProperty = event.getIntegerProperty(Event.SEEK_POSITION);
                if (integerProperty > 0 && integerProperty - Analytics.this.endTime > 1000) {
                    Analytics.this.sendVideoEngagementRequest(event, Analytics.this.startTime, Analytics.this.endTime);
                    Analytics.this.startTime = Analytics.this.endTime = integerProperty;
                }
            }
        });
        eventEmitter.on(EventType.PROGRESS, new EventListener() {
            public void processEvent(Event event) {
                Video video = (Video) event.properties.get(Event.VIDEO);
                int integerProperty = event.getIntegerProperty(Event.PLAYHEAD_POSITION);
                if (integerProperty < 0) {
                    return;
                }
                if (Math.abs(Analytics.this.endTime - integerProperty) > 5000) {
                    Analytics.this.sendVideoEngagementRequest(event, Analytics.this.startTime, Analytics.this.endTime);
                    Analytics.this.startTime = Analytics.this.endTime = integerProperty;
                } else {
                    Analytics.this.endTime = integerProperty;
                    if (!(Analytics.this.hasStarted || video == null || Analytics.this.endTime == 0)) {
                        Analytics.this.sendVideoAnalyticsRequest(event, "video_view", null);
                        Analytics.this.hasStarted = true;
                    }
                    if (Analytics.this.endTime - Analytics.this.startTime >= 10000) {
                        Analytics.this.sendVideoEngagementRequest(event, Analytics.this.startTime, Analytics.this.endTime);
                        Analytics.this.startTime = Analytics.this.endTime;
                    }
                }
            }
        });
        eventEmitter.on(EventType.COMPLETED, new EventListener() {
            public void processEvent(Event event) {
                int integerProperty = event.getIntegerProperty(Event.PLAYHEAD_POSITION);
                if (integerProperty >= 0) {
                    Analytics.this.endTime = integerProperty;
                    Analytics.this.sendVideoEngagementRequest(event, Analytics.this.startTime, Analytics.this.endTime);
                    Analytics.this.startTime = Analytics.this.endTime;
                    Analytics.this.sendVideoAnalyticsRequest(event, "video_complete", null);
                }
            }
        });
    }

    private void sendVideoAnalyticsRequest(Event event, String str, Map map) {
        if (map == null) {
            map = new HashMap();
        }
        Video video = (Video) event.properties.get(Event.VIDEO);
        if (video != null) {
            String id = video.getId();
            if (id != AdTrackerConstants.BLANK) {
                map.put(Event.VIDEO, id);
            }
            String stringProperty = video.getStringProperty(com.brightcove.player.model.Video.Fields.PUBLISHER_ID);
            if (!(stringProperty == null || stringProperty == AdTrackerConstants.BLANK)) {
                map.put("account", stringProperty);
            }
        }
        sendAnalyticsRequest(event, str, map);
    }

    private void sendVideoEngagementRequest(Event event, int i, int i2) {
        if (i2 / 1000 - 1 >= i / 1000) {
            Map hashMap = new HashMap();
            hashMap.put("range", String.format("%d..%d", new Object[]{Integer.valueOf(i), Integer.valueOf(i)}));
            sendVideoAnalyticsRequest(event, "video_engagement", hashMap);
        }
    }

    private void setAppName(Context context) {
        if (context != null) {
            Context applicationContext = context.getApplicationContext();
            if (applicationContext != null) {
                PackageManager packageManager = applicationContext.getPackageManager();
                if (packageManager != null) {
                    try {
                        this.playerName = (String) packageManager.getApplicationLabel(packageManager.getApplicationInfo(context.getPackageName(), 0));
                    } catch (NameNotFoundException e) {
                    }
                }
            }
        }
        if (this.playerName == null) {
            this.playerName = defaultName;
        }
    }

    private void setDestination(Context context) {
        this.destination = "market://details?id=" + context.getClass().getPackage().getName();
    }

    @SuppressLint({"NewApi"})
    protected Map sendAnalyticsRequest(Event event, String str, Map map) {
        Map hashMap = new HashMap();
        hashMap.putAll(this.baseParams);
        if (map != null) {
            hashMap.putAll(map);
        }
        if (!hashMap.containsKey("account")) {
            return null;
        }
        Video video = (Video) event.properties.get(Event.VIDEO);
        if (video != null) {
            int duration = video.getDuration();
            String stringProperty = video.getStringProperty(com.brightcove.player.model.Video.Fields.NAME);
            if (duration > 0) {
                hashMap.put("video_duration", AdTrackerConstants.BLANK + (duration / 1000));
            }
            if (!(stringProperty == null || stringProperty == AdTrackerConstants.BLANK)) {
                hashMap.put("video_name", stringProperty);
            }
        }
        hashMap.put(DataLayer.EVENT_KEY, str);
        hashMap.put("domain", domain);
        hashMap.put("device_os", deviceOS);
        hashMap.put("device_type", this.deviceType);
        hashMap.put("device_os_version", VERSION.RELEASE);
        hashMap.put(CuePointFields.TIME, AdTrackerConstants.BLANK + new Date().getTime());
        hashMap.put("embed", this.playerName);
        hashMap.put("player_name", this.playerName);
        hashMap.put("destination", this.destination);
        HttpAsyncTask httpAsyncTask = new HttpAsyncTask();
        HashMap[] hashMapArr = new HashMap[]{hashMap};
        if (VERSION.SDK_INT >= 14) {
            httpAsyncTask.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, hashMapArr);
        } else {
            httpAsyncTask.execute(hashMapArr);
        }
        return hashMap;
    }
}