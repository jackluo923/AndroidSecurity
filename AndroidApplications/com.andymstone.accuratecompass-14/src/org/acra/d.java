package org.acra;

public final class d {
    static final String a;
    public static final ReportField[] b;
    public static final ReportField[] c;

    static {
        a = new StringBuilder("-").append(ReportField.IS_SILENT).toString();
        b = new ReportField[]{ReportField.USER_COMMENT, ReportField.ANDROID_VERSION, ReportField.APP_VERSION_NAME, ReportField.BRAND, ReportField.PHONE_MODEL, ReportField.CUSTOM_DATA, ReportField.STACK_TRACE};
        c = new ReportField[]{ReportField.REPORT_ID, ReportField.APP_VERSION_CODE, ReportField.APP_VERSION_NAME, ReportField.PACKAGE_NAME, ReportField.FILE_PATH, ReportField.PHONE_MODEL, ReportField.BRAND, ReportField.PRODUCT, ReportField.ANDROID_VERSION, ReportField.BUILD, ReportField.TOTAL_MEM_SIZE, ReportField.AVAILABLE_MEM_SIZE, ReportField.CUSTOM_DATA, ReportField.IS_SILENT, ReportField.STACK_TRACE, ReportField.INITIAL_CONFIGURATION, ReportField.CRASH_CONFIGURATION, ReportField.DISPLAY, ReportField.USER_COMMENT, ReportField.USER_EMAIL, ReportField.USER_APP_START_DATE, ReportField.USER_CRASH_DATE, ReportField.DUMPSYS_MEMINFO, ReportField.LOGCAT, ReportField.INSTALLATION_ID, ReportField.DEVICE_FEATURES, ReportField.ENVIRONMENT, ReportField.SHARED_PREFERENCES, ReportField.SETTINGS_SYSTEM, ReportField.SETTINGS_SECURE, ReportField.SETTINGS_GLOBAL};
    }
}