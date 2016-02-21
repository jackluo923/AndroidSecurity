package com.brightcove.player.management;

import android.util.Log;
import com.brightcove.player.event.AbstractComponent;
import com.brightcove.player.event.Default;
import com.brightcove.player.event.Emits;
import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventEmitter;
import com.brightcove.player.event.EventListener;
import com.brightcove.player.event.EventType;
import com.brightcove.player.event.ListensFor;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

@Emits(events = {})
@ListensFor(events = {"registerPlugin"})
public class BrightcovePluginManager extends AbstractComponent {
    private static final String CRASHLYTICS_LOG = "log";
    private static final String TAG;
    private static String commitIdentifier;
    private static String releaseIdentifier;
    private Class crashlyticsClass;
    private Method crashlyticsLogMethod;
    private boolean isCrashlyticsAvailable;
    OnRegisterPluginListener onRegisterPluginListener;
    private List pluginsInUse;

    protected class OnRegisterPluginListener implements EventListener {
        protected OnRegisterPluginListener() {
        }

        @Default
        public void processEvent(Event event) {
            if (event.properties.containsKey(Event.PLUGIN_NAME)) {
                String str = (String) event.properties.get(Event.PLUGIN_NAME);
                Log.v(TAG, "OnRegisterPluginListener: plugin: " + str);
                if (!BrightcovePluginManager.this.pluginsInUse.contains(str)) {
                    BrightcovePluginManager.this.pluginsInUse.add(str);
                }
            }
        }
    }

    static {
        TAG = BrightcovePluginManager.class.getSimpleName();
        commitIdentifier = AdTrackerConstants.BLANK;
        releaseIdentifier = AdTrackerConstants.BLANK;
    }

    public BrightcovePluginManager(EventEmitter eventEmitter) {
        super(eventEmitter, BrightcovePluginManager.class);
        loadPropertiesInfo();
        Log.d(TAG, "BrightcovePluginManager: git commit SHA: + " + commitIdentifier + ", release: " + releaseIdentifier);
        this.pluginsInUse = new ArrayList();
        initializeListeners();
        checkForCrashlytics();
        generateCrashlyticsMethods();
        crashlyticsLog("Git Commit SHA: " + commitIdentifier);
        crashlyticsLog("Release Number: " + releaseIdentifier);
    }

    protected void checkForCrashlytics() {
        try {
            this.crashlyticsClass = Class.forName("com.crashlytics.android.Crashlytics");
            this.isCrashlyticsAvailable = true;
        } catch (ClassNotFoundException e) {
            Log.i(TAG, "Crashlytics was not found. Logging to console only.");
            this.isCrashlyticsAvailable = false;
        }
    }

    public void crashlyticsLog(String str) {
        Log.d(TAG, "crashlyticsLog: " + str);
        if (this.isCrashlyticsAvailable && this.crashlyticsLogMethod != null) {
            try {
                this.crashlyticsLogMethod.invoke(null, new Object[]{str});
            } catch (IllegalArgumentException e) {
                Log.i(TAG, "crashlyticsLog: Illegal argument exception occurred.");
            } catch (IllegalAccessException e2) {
                Log.i(TAG, "crashlyticsLog: Illegal access exception occurred.");
            } catch (InvocationTargetException e3) {
                Log.i(TAG, "crashlyticsLog: Invocation target exception occurred.");
            }
        }
    }

    protected void generateCrashlyticsMethods() {
        if (this.isCrashlyticsAvailable) {
            try {
                this.crashlyticsLogMethod = this.crashlyticsClass.getMethod(CRASHLYTICS_LOG, new Class[]{String.class});
            } catch (NoSuchMethodException e) {
                Log.i(TAG, "Failed to wrap crashlytics methods.");
            }
        }
    }

    public String getCommitIdentifier() {
        return commitIdentifier;
    }

    public List getPluginsInUse() {
        return this.pluginsInUse;
    }

    public String getReleaseIdentifier() {
        return releaseIdentifier;
    }

    protected void initializeListeners() {
        this.onRegisterPluginListener = new OnRegisterPluginListener();
        addListener(EventType.REGISTER_PLUGIN, this.onRegisterPluginListener);
    }

    protected void loadPropertiesInfo() {
        Properties properties = new Properties();
        try {
            properties.load(BrightcovePluginManager.class.getClassLoader().getResourceAsStream("build-version.properties"));
            commitIdentifier = properties.getProperty("commitSHA");
            releaseIdentifier = properties.getProperty("buildVersion");
        } catch (IOException e) {
            Log.e(TAG, "Failed to load build version properties. Commit and Release numbers will be empty.");
        } catch (NullPointerException e2) {
            Log.e(TAG, "Failed to load build-version.properties");
        }
    }
}