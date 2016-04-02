.class public Lcom/inmobi/commons/analytics/iat/impl/AdTrackerConstants;
.super Ljava/lang/Object;


# static fields
.field public static final ADTRACKER_ERROR:Ljava/lang/String; = "iatError"

.field public static final ANDROID:Ljava/lang/String; = "and"

.field public static final APPVER:Ljava/lang/String; = "u-appver"

.field public static final APP_ID:Ljava/lang/String; = "mk-siteid"

.field public static final BLANK:Ljava/lang/String; = ""

.field public static final CONNECTIVITY_INTENT_ACTION:Ljava/lang/String; = "android.net.conn.CONNECTIVITY_CHANGE"

.field public static final ERROR:Ljava/lang/String; = "err"

.field public static final ERRORCODE:Ljava/lang/String; = "errcode"

.field public static final ERRORMSG:Ljava/lang/String; = "errmsg"

.field public static final EXCEPTION:I = 0x1a8

.field public static final GOALCOUNT:Ljava/lang/String; = "goalCount"

.field public static final GOALNAME:Ljava/lang/String; = "goalName"

.field public static final GOAL_DOWNLOAD:Ljava/lang/String; = "download"

.field public static final IAT:Ljava/lang/String; = "iat"

.field public static final IATLENGTH:I = 0x7

.field public static final IATNAMESPACE:Ljava/lang/String; = "iatsdk"

.field public static final IAT_DOWNLOAD_INSERT_STATUS:Ljava/lang/String; = "insertStatus"

.field public static final IAT_DOWNLOAD_STATUS:Ljava/lang/String; = "uploadStatus"

.field public static final IAT_LOGGING_TAG:Ljava/lang/String; = "[InMobi]-[AdTracker]-4.4.1"

.field public static final IAT_REFERRER_STATUS:Ljava/lang/String; = "referrerStatus"

.field public static final IMGOAL_FILE:Ljava/lang/String; = "eventlog"

.field public static final IMPREF_FILE:Ljava/lang/String; = "IMAdTrackerStatusUpload"

.field public static final KEY_FIRST_GOAL_SUCCESS:Ljava/lang/String; = "goalPingSuccess"

.field public static final KEY_LIMIT_ADTRACKING:Ljava/lang/String; = "u-id-adt"

.field public static final KEY_REFERRER_FROM_LOGCAT:Ljava/lang/String; = "rlc"

.field public static final KEY_REF_WAIT:Ljava/lang/String; = "referrerWaitTime"

.field public static final KEY_T1:Ljava/lang/String; = "t1"

.field public static final KEY_T2:Ljava/lang/String; = "t2"

.field public static final KEY_UNSTABLE_NETWORK:Ljava/lang/String; = "nus"

.field public static final LATE_PING:Ljava/lang/String; = "lp"

.field public static final MSG_APP_CONTEXT_NULL:Ljava/lang/String; = "context cannot be null"

.field public static final MSG_APP_ID_EMPTY:Ljava/lang/String; = "appId cannot be blank"

.field public static final MSG_APP_ID_NULL:Ljava/lang/String; = "appId cannot be null"

.field public static final MSG_INITIALIZATION_INCOMPLETE:Ljava/lang/String; = "Please call init() with valid context and app id"

.field public static final MSG_INVALID_CUSTOM_GOAL:Ljava/lang/String; = "Download Goal should be reported using reportAppDownloadGoal().."

.field public static final MSG_INVALID_GOAL:Ljava/lang/String; = "Please pass a valid GoalName"

.field public static final MSG_OPTIONAL_PERM_MISSING:Ljava/lang/String; = "Add android.permission.READ_LOGS permission in Android Manifest"

.field public static final MSG_PERMISSION_MISSING:Ljava/lang/String; = "Add android.permission.INTERNET and android.permission.ACCESS_NETWORK_STATE permission in Android manifest"

.field public static final NETWORK_TIMEOUT:I = 0x198

.field public static final OS_VERSION:Ljava/lang/String; = "osV"

.field public static final REFERRER:Ljava/lang/String; = "referrer"

.field public static final REFERRER_DELAY:Ljava/lang/String; = "rd"

.field public static final REFERRER_FROM_SDK:Ljava/lang/String; = "rfs"

.field public static final REFERRER_INTENT_ACTION:Ljava/lang/String; = "com.android.vending.INSTALL_REFERRER"

.field public static final RESPONSE:Ljava/lang/String; = "res"

.field public static final SDKREL_VER:Ljava/lang/String; = "mk-rel-version"

.field public static final SDKVER:Ljava/lang/String; = "mk-version"

.field public static final SERVER_BADREQUEST:I = 0x1772

.field public static final SERVER_INVALIDAPPID:I = 0x1773

.field public static final SERVER_NOERROR:I = 0x1770

.field public static final SERVER_RELOAD_WEBVIEW:I = 0x1771

.field public static final SOURCE:Ljava/lang/String; = "src"

.field public static final TESTMODE_INTENT:Ljava/lang/String; = "action.inmobi.ADTRACKER"

.field public static final TIMESTAMP:Ljava/lang/String; = "ts"

.field public static final TIMETOLIVE:Ljava/lang/String; = "timetoLive"

.field public static final UDID:Ljava/lang/String; = "udid"

.field public static final UIDKEY:Ljava/lang/String; = "u-id-key"

.field public static final UIDMAP:Ljava/lang/String; = "u-id-map"

.field public static final UKEYVER:Ljava/lang/String; = "u-key-ver"

.field public static final VALIDIDS:Ljava/lang/String; = "iat_ids"

.field public static final WAIT_FOR_REFERRER:Ljava/lang/String; = "waitForReferrer"

.field public static final WEBVIEW_INVALIDJSON:I = 0x138d

.field public static final WEBVIEW_INVALIDPARAM:I = 0x1389

.field public static final WEBVIEW_NOERROR:I = 0x1388

.field public static final WEBVIEW_SERVERERROR:I = 0x138c

.field public static final WEBVIEW_TIMEOUT:I = 0x138b

.field public static final WEBVIEW_XMLHTTPSUPPORT:I = 0x138a


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
