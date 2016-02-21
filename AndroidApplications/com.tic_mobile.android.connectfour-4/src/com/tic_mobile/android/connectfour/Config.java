package com.tic_mobile.android.connectfour;

public class Config {
    public static final int ACTIVITY_ID_ABOUT = 1;
    public static final int ACTIVITY_ID_GAME = 2;
    public static final int ACTIVITY_ID_MAIN = 3;
    public static final int ACTIVITY_ID_OPTIONS = 4;
    public static final int ACTIVITY_ID_SPLASH = 5;
    public static final int ACTIVITY_ID_STATS = 6;
    public static final String ACTIVITY_NAME_ABOUT = "com.tic_mobile.android.connectfour.activities.AboutScreen";
    public static final String ACTIVITY_NAME_GAME = "com.tic_mobile.android.connectfour.activities.GameScreen";
    public static final String ACTIVITY_NAME_MAIN = "com.tic_mobile.android.connectfour.activities.MainScreen";
    public static final String ACTIVITY_NAME_OPTIONS = "com.tic_mobile.android.connectfour.activities.OptionsScreen";
    public static final String ACTIVITY_NAME_SPLASH = "com.tic_mobile.android.connectfour.activities.SplashScreen";
    public static final String ACTIVITY_NAME_STATS = "com.tic_mobile.android.connectfour.activities.StatisticsScreen";
    public static final String LOG_TAG = "com.tic_mobile.android.connectfour";
    public static final String PACKAGE_NAME = "com.tic_mobile.android.connectfour";
    private static boolean splashShown;

    static {
        splashShown = false;
    }

    public static boolean getSplashShown() {
        return splashShown;
    }

    public static void setSplashShown(boolean splashShown) {
        splashShown = splashShown;
    }
}