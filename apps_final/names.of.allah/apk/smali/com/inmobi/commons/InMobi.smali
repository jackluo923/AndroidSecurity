.class public final Lcom/inmobi/commons/InMobi;
.super Ljava/lang/Object;


# static fields
.field public static final EXCLUDE_FB_ID:I = 0x4

.field public static final EXCLUDE_ODIN1:I = 0x2

.field public static final EXCLUDE_UM5_ID:I = 0x8

.field public static final ID_DEVICE_NONE:I = 0x0

.field public static final INCLUDE_DEFAULT:I = 0x1

.field private static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/inmobi/commons/InMobi;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/inmobi/commons/InMobi;->a:Ljava/lang/String;

    return-object v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    if-nez p0, :cond_0

    const-string v0, "[InMobi]-4.4.1"

    const-string v1, "Application Context NULL"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "[InMobi]-4.4.1"

    const-string v1, "context cannot be null"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->setContext(Landroid/content/Context;)V

    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->isPlatformIdEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->isGooglePlayServicesJarIncluded()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Integration Issue. Please include Google Play services in your project or update your playstore app and google play services in the phone"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {}, Lcom/inmobi/commons/uid/UIDHelper;->setAdvertisingId()V

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "impref"

    const-string v3, "version"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/internal/FileOperations;->getPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/inmobi/commons/InMobi;->getVersion()Ljava/lang/String;

    move-result-object v2

    if-eq v1, v2, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "impref"

    const-string v3, "version"

    invoke-static {}, Lcom/inmobi/commons/InMobi;->getVersion()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/inmobi/commons/internal/FileOperations;->setPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-static {}, Lcom/inmobi/commons/cache/LocalCache;->reset()V

    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getUserAgent(Landroid/content/Context;)Ljava/lang/String;

    sget-object v1, Lcom/inmobi/commons/InMobi;->a:Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-static {p0}, Lcom/inmobi/commons/internal/ThinICE;->start(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "[InMobi]-4.4.1"

    const-string v2, "Exception in initialize"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    :try_start_1
    const-string v1, ""

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    const-string v0, "[InMobi]-4.4.1"

    const-string v1, "appId cannot be blank"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string v1, "[InMobi]-4.4.1"

    const-string v2, "InMobi init successful"

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/inmobi/commons/InMobi;->a:Ljava/lang/String;

    invoke-static {p0}, Lcom/inmobi/commons/internal/ThinICE;->start(Landroid/content/Context;)V

    invoke-static {}, Lcom/inmobi/commons/analytics/androidsdk/IMAdTracker;->getInstance()Lcom/inmobi/commons/analytics/androidsdk/IMAdTracker;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/inmobi/commons/analytics/androidsdk/IMAdTracker;->init(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/inmobi/commons/analytics/androidsdk/IMAdTracker;->getInstance()Lcom/inmobi/commons/analytics/androidsdk/IMAdTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/analytics/androidsdk/IMAdTracker;->reportAppDownloadGoal()V

    invoke-static {p0}, Lcom/inmobi/commons/internal/ApplicationFocusManager;->init(Landroid/content/Context;)V

    new-instance v0, Lcom/inmobi/commons/InMobi$a;

    invoke-direct {v0}, Lcom/inmobi/commons/InMobi$a;-><init>()V

    invoke-static {v0}, Lcom/inmobi/commons/internal/ApplicationFocusManager;->addFocusChangedListener(Lcom/inmobi/commons/internal/ApplicationFocusManager$FocusChangedListener;)V

    invoke-static {}, Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper;->getInstance()Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper;

    move-result-object v0

    sget-object v1, Lcom/inmobi/commons/InMobi;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper;->startSession(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/internal/ActivityRecognitionManager;->init(Landroid/content/Context;)V

    invoke-static {}, Lcom/inmobi/commons/data/UserInfo;->getInstance()Lcom/inmobi/commons/data/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/data/UserInfo;->updateInfo()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public static addIDType(Lcom/inmobi/commons/IMIDType;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/inmobi/commons/data/UserInfo;->getInstance()Lcom/inmobi/commons/data/UserInfo;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/inmobi/commons/data/UserInfo;->addIDType(Lcom/inmobi/commons/IMIDType;Ljava/lang/String;)V

    return-void
.end method

.method public static getAppId()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/inmobi/commons/InMobi;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "4.4.1"

    return-object v0
.end method

.method public static initialize(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/inmobi/commons/InMobi;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static initialize(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/inmobi/commons/InMobi;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static removeIDType(Lcom/inmobi/commons/IMIDType;)V
    .locals 1

    invoke-static {}, Lcom/inmobi/commons/data/UserInfo;->getInstance()Lcom/inmobi/commons/data/UserInfo;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/inmobi/commons/data/UserInfo;->removeIDType(Lcom/inmobi/commons/IMIDType;)V

    return-void
.end method

.method public static setAge(I)V
    .locals 2

    invoke-static {}, Lcom/inmobi/commons/data/UserInfo;->getInstance()Lcom/inmobi/commons/data/UserInfo;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/data/UserInfo;->setAge(Ljava/lang/Integer;)V

    return-void
.end method

.method public static setAreaCode(Ljava/lang/String;)V
    .locals 2

    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/inmobi/commons/data/UserInfo;->getInstance()Lcom/inmobi/commons/data/UserInfo;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/inmobi/commons/data/UserInfo;->setAreaCode(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "[InMobi]-4.4.1"

    const-string v1, "Area code cannot be null"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setCurrentLocation(Landroid/location/Location;)V
    .locals 2

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/inmobi/commons/data/UserInfo;->getInstance()Lcom/inmobi/commons/data/UserInfo;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/inmobi/commons/data/UserInfo;->setCurrentLocation(Landroid/location/Location;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "[InMobi]-4.4.1"

    const-string v1, "Location cannot be null"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setDateOfBirth(Ljava/util/Calendar;)V
    .locals 2

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/inmobi/commons/data/UserInfo;->getInstance()Lcom/inmobi/commons/data/UserInfo;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/inmobi/commons/data/UserInfo;->setDateOfBirth(Ljava/util/Calendar;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "[InMobi]-4.4.1"

    const-string v1, "Date Of Birth cannot be null"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setDeviceIDMask(I)V
    .locals 1

    invoke-static {}, Lcom/inmobi/commons/data/UserInfo;->getInstance()Lcom/inmobi/commons/data/UserInfo;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/inmobi/commons/data/UserInfo;->setDeviceIDMask(I)V

    return-void
.end method

.method public static setEducation(Lcom/inmobi/commons/EducationType;)V
    .locals 1

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/inmobi/commons/data/UserInfo;->getInstance()Lcom/inmobi/commons/data/UserInfo;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/inmobi/commons/data/UserInfo;->setEducation(Lcom/inmobi/commons/EducationType;)V

    :cond_0
    return-void
.end method

.method public static setEthnicity(Lcom/inmobi/commons/EthnicityType;)V
    .locals 1

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/inmobi/commons/data/UserInfo;->getInstance()Lcom/inmobi/commons/data/UserInfo;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/inmobi/commons/data/UserInfo;->setEthnicity(Lcom/inmobi/commons/EthnicityType;)V

    :cond_0
    return-void
.end method

.method public static setGender(Lcom/inmobi/commons/GenderType;)V
    .locals 1

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/inmobi/commons/data/UserInfo;->getInstance()Lcom/inmobi/commons/data/UserInfo;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/inmobi/commons/data/UserInfo;->setGender(Lcom/inmobi/commons/GenderType;)V

    :cond_0
    return-void
.end method

.method public static setHasChildren(Lcom/inmobi/commons/HasChildren;)V
    .locals 1

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/inmobi/commons/data/UserInfo;->getInstance()Lcom/inmobi/commons/data/UserInfo;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/inmobi/commons/data/UserInfo;->setHasChildren(Lcom/inmobi/commons/HasChildren;)V

    :cond_0
    return-void
.end method

.method public static setIncome(I)V
    .locals 2

    invoke-static {}, Lcom/inmobi/commons/data/UserInfo;->getInstance()Lcom/inmobi/commons/data/UserInfo;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/data/UserInfo;->setIncome(Ljava/lang/Integer;)V

    return-void
.end method

.method public static setInterests(Ljava/lang/String;)V
    .locals 2

    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/inmobi/commons/data/UserInfo;->getInstance()Lcom/inmobi/commons/data/UserInfo;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/inmobi/commons/data/UserInfo;->setInterests(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "[InMobi]-4.4.1"

    const-string v1, "Interests cannot be null"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setLanguage(Ljava/lang/String;)V
    .locals 2

    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/inmobi/commons/data/UserInfo;->getInstance()Lcom/inmobi/commons/data/UserInfo;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/inmobi/commons/data/UserInfo;->setLanguage(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "[InMobi]-4.4.1"

    const-string v1, "Language cannot be null"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setLocationInquiryAllowed(Z)V
    .locals 1

    invoke-static {}, Lcom/inmobi/commons/data/UserInfo;->getInstance()Lcom/inmobi/commons/data/UserInfo;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/inmobi/commons/data/UserInfo;->setLocationInquiryAllowed(Z)V

    return-void
.end method

.method public static setLocationWithCityStateCountry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/inmobi/commons/data/UserInfo;->getInstance()Lcom/inmobi/commons/data/UserInfo;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/inmobi/commons/data/UserInfo;->setLocationWithCityStateCountry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setLogLevel(Lcom/inmobi/commons/InMobi$LOG_LEVEL;)V
    .locals 1

    sget-object v0, Lcom/inmobi/commons/InMobi$LOG_LEVEL;->NONE:Lcom/inmobi/commons/InMobi$LOG_LEVEL;

    if-ne p0, v0, :cond_0

    sget-object v0, Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;->NONE:Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;

    invoke-static {v0}, Lcom/inmobi/commons/internal/Log;->setInternalLogLevel(Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/inmobi/commons/InMobi$LOG_LEVEL;->DEBUG:Lcom/inmobi/commons/InMobi$LOG_LEVEL;

    if-ne p0, v0, :cond_1

    sget-object v0, Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;->DEBUG:Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;

    invoke-static {v0}, Lcom/inmobi/commons/internal/Log;->setInternalLogLevel(Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/inmobi/commons/InMobi$LOG_LEVEL;->VERBOSE:Lcom/inmobi/commons/InMobi$LOG_LEVEL;

    if-ne p0, v0, :cond_2

    sget-object v0, Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;->VERBOSE:Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;

    invoke-static {v0}, Lcom/inmobi/commons/internal/Log;->setInternalLogLevel(Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;->INTERNAL:Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;

    invoke-static {v0}, Lcom/inmobi/commons/internal/Log;->setInternalLogLevel(Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;)V

    goto :goto_0
.end method

.method public static setMaritalStatus(Lcom/inmobi/commons/MaritalStatus;)V
    .locals 1

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/inmobi/commons/data/UserInfo;->getInstance()Lcom/inmobi/commons/data/UserInfo;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/inmobi/commons/data/UserInfo;->setMaritalStatus(Lcom/inmobi/commons/MaritalStatus;)V

    :cond_0
    return-void
.end method

.method public static setPostalCode(Ljava/lang/String;)V
    .locals 2

    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/inmobi/commons/data/UserInfo;->getInstance()Lcom/inmobi/commons/data/UserInfo;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/inmobi/commons/data/UserInfo;->setPostalCode(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "[InMobi]-4.4.1"

    const-string v1, "Postal Code cannot be null"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setSexualOrientation(Lcom/inmobi/commons/SexualOrientation;)V
    .locals 1

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/inmobi/commons/data/UserInfo;->getInstance()Lcom/inmobi/commons/data/UserInfo;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/inmobi/commons/data/UserInfo;->setSexualOrientation(Lcom/inmobi/commons/SexualOrientation;)V

    :cond_0
    return-void
.end method
