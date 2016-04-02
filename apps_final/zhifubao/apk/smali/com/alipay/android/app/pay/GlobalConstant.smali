.class public Lcom/alipay/android/app/pay/GlobalConstant;
.super Ljava/lang/Object;


# static fields
.field public static API_VERSION:Ljava/lang/String; = null

.field public static APPID:Ljava/lang/String; = null

.field public static DEBUG:Z = false

.field public static DRAW_COLUMN_FRAME:Z = false

.field public static DRAW_ROW_FRAME:Z = false

.field public static EXTERNAL_PROVIDED_HTTP_URL:Ljava/lang/String; = null

.field public static FROM_WHICH:Ljava/lang/String; = null

.field public static final GLOBAL_SETTINGS:Ljava/lang/String; = "demo_global_settings"

.field public static HARDWARE_PAY_TYPES:Ljava/lang/String; = null

.field public static HTTP_CONNECTION_TIMEOUT:I = 0x0

.field public static HTTP_SOCKET_BUFFER_SIZE:I = 0x0

.field public static HTTP_SO_TIMEOUT:I = 0x0

.field public static HTTP_URL:Ljava/lang/String; = null

.field public static KERNEL_VERSION:Ljava/lang/String; = null

.field public static final KEY_RSA:Ljava/lang/String; = "trideskey"

.field public static final LAST_MSP_PARAMS:Ljava/lang/String; = "last_msp_params"

.field public static MINI_DEMO_ENV:Z = false

.field public static MONITOR_URL:Ljava/lang/String; = null

.field public static final MSP_CHECK_UPDATE_INTERVAL_TIME:Ljava/lang/String; = "msp_check_update_interval_time"

.field public static final MSP_LAST_CHECK_UPDATE_TIME:Ljava/lang/String; = "msp_last_check_update_time"

.field public static MSP_PACKAGENAME:Ljava/lang/String; = null

.field public static final MSP_SWITCH_GATEWAY:Ljava/lang/String; = "msp_switch_gateway"

.field public static MSP_VERSION:Ljava/lang/String; = null

.field public static PATH:Ljava/lang/String; = null

.field public static RSA_GET_COUNT:I = 0x0

.field public static RSA_PUBLIC:Ljava/lang/String; = null

.field public static SDK:Z = false

.field public static SDK_TEXT:Ljava/lang/String; = null

.field public static SDK_TYPE:Ljava/lang/String; = null

.field public static SID:Ljava/lang/String; = null

.field public static TID_COUNT:I = 0x0

.field public static UPDATE_OS_TYPE:Ljava/lang/String; = null

.field private static final contentUri:Ljava/lang/String; = "content://com.alipay.android.app.settings.data.ServerProvider/current_server"

.field private static isConvertProperties:Z

.field private static isLoadProperties:Z

.field private static newGateWayMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v4, 0x4e20

    const/4 v3, 0x0

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/mspjson/test.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/app/pay/GlobalConstant;->PATH:Ljava/lang/String;

    sput-boolean v2, Lcom/alipay/android/app/pay/GlobalConstant;->isLoadProperties:Z

    sput-boolean v2, Lcom/alipay/android/app/pay/GlobalConstant;->isConvertProperties:Z

    const-string/jumbo v0, "SPSafePay"

    sput-object v0, Lcom/alipay/android/app/pay/GlobalConstant;->APPID:Ljava/lang/String;

    sput v4, Lcom/alipay/android/app/pay/GlobalConstant;->HTTP_CONNECTION_TIMEOUT:I

    sput v4, Lcom/alipay/android/app/pay/GlobalConstant;->HTTP_SO_TIMEOUT:I

    const/16 v0, 0x4000

    sput v0, Lcom/alipay/android/app/pay/GlobalConstant;->HTTP_SOCKET_BUFFER_SIZE:I

    sput-boolean v2, Lcom/alipay/android/app/pay/GlobalConstant;->MINI_DEMO_ENV:Z

    const-string/jumbo v0, ""

    sput-object v0, Lcom/alipay/android/app/pay/GlobalConstant;->KERNEL_VERSION:Ljava/lang/String;

    const-string/jumbo v0, ""

    sput-object v0, Lcom/alipay/android/app/pay/GlobalConstant;->MSP_VERSION:Ljava/lang/String;

    const-string/jumbo v0, ""

    sput-object v0, Lcom/alipay/android/app/pay/GlobalConstant;->FROM_WHICH:Ljava/lang/String;

    const-string/jumbo v0, ""

    sput-object v0, Lcom/alipay/android/app/pay/GlobalConstant;->UPDATE_OS_TYPE:Ljava/lang/String;

    const/16 v0, 0xe

    sput v0, Lcom/alipay/android/app/pay/GlobalConstant;->TID_COUNT:I

    const/4 v0, 0x3

    sput v0, Lcom/alipay/android/app/pay/GlobalConstant;->RSA_GET_COUNT:I

    sput-boolean v2, Lcom/alipay/android/app/pay/GlobalConstant;->DRAW_ROW_FRAME:Z

    sput-boolean v2, Lcom/alipay/android/app/pay/GlobalConstant;->DRAW_COLUMN_FRAME:Z

    const-string/jumbo v0, "1"

    sput-object v0, Lcom/alipay/android/app/pay/GlobalConstant;->SID:Ljava/lang/String;

    const-string/jumbo v0, "com.alipay.android.app"

    sput-object v0, Lcom/alipay/android/app/pay/GlobalConstant;->MSP_PACKAGENAME:Ljava/lang/String;

    const-string/jumbo v0, ""

    sput-object v0, Lcom/alipay/android/app/pay/GlobalConstant;->SDK_TYPE:Ljava/lang/String;

    const-string/jumbo v0, ""

    sput-object v0, Lcom/alipay/android/app/pay/GlobalConstant;->SDK_TEXT:Ljava/lang/String;

    sput-boolean v2, Lcom/alipay/android/app/pay/GlobalConstant;->SDK:Z

    sput-object v3, Lcom/alipay/android/app/pay/GlobalConstant;->HARDWARE_PAY_TYPES:Ljava/lang/String;

    sput-object v3, Lcom/alipay/android/app/pay/GlobalConstant;->EXTERNAL_PROVIDED_HTTP_URL:Ljava/lang/String;

    sput-object v3, Lcom/alipay/android/app/pay/GlobalConstant;->newGateWayMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertProperties(Landroid/content/Context;)V
    .locals 7

    const/4 v6, 0x1

    sget-boolean v0, Lcom/alipay/android/app/pay/GlobalConstant;->isConvertProperties:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/alipay/android/app/pay/GlobalConstant;->DEBUG:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    const-string/jumbo v0, "demo_mini_app_env"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->g(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/alipay/android/app/pay/GlobalConstant;->MINI_DEMO_ENV:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_1
    :goto_1
    sget-object v0, Lcom/alipay/android/app/pay/GlobalConstant;->MONITOR_URL:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "https://alipay.com"

    sput-object v0, Lcom/alipay/android/app/pay/GlobalConstant;->MONITOR_URL:Ljava/lang/String;

    :cond_2
    sget-object v0, Lcom/alipay/android/app/pay/GlobalConstant;->HTTP_URL:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "http://mcgw.alipay.com/gateway.do"

    sput-object v0, Lcom/alipay/android/app/pay/GlobalConstant;->HTTP_URL:Ljava/lang/String;

    :cond_3
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_7

    move v0, v6

    :goto_2
    sput-boolean v0, Lcom/alipay/android/app/pay/GlobalConstant;->DEBUG:Z

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/alipay/android/app/pay/GlobalConstant;->MINI_DEMO_ENV:Z

    if-eqz v0, :cond_6

    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "content://com.alipay.android.app.settings.data.ServerProvider/current_server"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_6

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string/jumbo v1, "url"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string/jumbo v1, "url"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/alipay/android/app/pay/GlobalConstant;->HTTP_URL:Ljava/lang/String;

    :cond_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_6
    :goto_3
    sput-boolean v6, Lcom/alipay/android/app/pay/GlobalConstant;->isConvertProperties:Z

    goto/16 :goto_0

    :cond_7
    const/4 v0, 0x0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static initGateWay(Ljava/lang/String;)V
    .locals 8

    const/4 v1, 0x0

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->f()V

    sget-object v0, Lcom/alipay/android/app/pay/GlobalConstant;->newGateWayMap:Ljava/util/Map;

    if-nez v0, :cond_1

    :try_start_0
    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v2, "sync"

    const-string/jumbo v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->d()V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "@"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    array-length v0, v2

    if-lez v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alipay/android/app/pay/GlobalConstant;->newGateWayMap:Ljava/util/Map;

    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    const-string/jumbo v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    array-length v5, v4

    if-lez v5, :cond_0

    sget-object v5, Lcom/alipay/android/app/pay/GlobalConstant;->newGateWayMap:Ljava/util/Map;

    const/4 v6, 0x0

    aget-object v6, v4, v6

    const/4 v7, 0x1

    aget-object v4, v4, v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    :cond_1
    sget-object v0, Lcom/alipay/android/app/pay/GlobalConstant;->newGateWayMap:Ljava/util/Map;

    if-eqz v0, :cond_6

    :try_start_1
    invoke-static {p0}, Lcom/alipay/android/app/pay/GlobalConstant;->parseExternalInfoToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v2, "biz_type"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/alipay/android/app/pay/GlobalConstant;->newGateWayMap:Ljava/util/Map;

    const-string/jumbo v3, "biz_type"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/alipay/android/app/pay/GlobalConstant;->newGateWayMap:Ljava/util/Map;

    const-string/jumbo v3, "biz_type"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_1
    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->f()V

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, v4

    int-to-double v4, v0

    cmpg-double v0, v2, v4

    if-gez v0, :cond_5

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->f()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/android/app/logic/request/RequestConfig;->a:Z

    :goto_2
    return-void

    :cond_2
    sget-object v2, Lcom/alipay/android/app/pay/GlobalConstant;->newGateWayMap:Ljava/util/Map;

    const-string/jumbo v3, "merchant"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string/jumbo v2, "ordertoken"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string/jumbo v2, "out_trade_no"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    sget-object v0, Lcom/alipay/android/app/pay/GlobalConstant;->newGateWayMap:Ljava/util/Map;

    const-string/jumbo v2, "merchant"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/alipay/android/app/pay/GlobalConstant;->newGateWayMap:Ljava/util/Map;

    const-string/jumbo v2, "other"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->f()V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/android/app/logic/request/RequestConfig;->a:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "initGateWay mForcedSwitchOldGateway exception:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alipay/android/app/base/util/Tools;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->f()V

    sput-boolean v1, Lcom/alipay/android/app/logic/request/RequestConfig;->a:Z

    goto :goto_2

    :cond_6
    sput-boolean v1, Lcom/alipay/android/app/logic/request/RequestConfig;->a:Z

    goto :goto_2
.end method

.method public static loadProperties(Landroid/content/Context;Ljava/io/InputStream;Z)V
    .locals 4

    sget-boolean v0, Lcom/alipay/android/app/pay/GlobalConstant;->isLoadProperties:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/alipay/android/app/pay/GlobalConstant;->DEBUG:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    if-eqz p2, :cond_1

    sget-object v1, Lcom/alipay/android/app/pay/GlobalConstant;->KERNEL_VERSION:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const-string/jumbo v1, "kernel_version"

    const-string/jumbo v2, "app-and"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/alipay/android/app/pay/GlobalConstant;->KERNEL_VERSION:Ljava/lang/String;

    :cond_2
    if-eqz p2, :cond_3

    sget-object v1, Lcom/alipay/android/app/pay/GlobalConstant;->FROM_WHICH:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    const-string/jumbo v1, "from_which"

    const-string/jumbo v2, "msp"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/alipay/android/app/pay/GlobalConstant;->FROM_WHICH:Ljava/lang/String;

    :cond_4
    if-eqz p2, :cond_5

    sget-object v1, Lcom/alipay/android/app/pay/GlobalConstant;->UPDATE_OS_TYPE:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    const-string/jumbo v1, "update_os_type"

    const-string/jumbo v2, "android"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/alipay/android/app/pay/GlobalConstant;->UPDATE_OS_TYPE:Ljava/lang/String;

    :cond_6
    if-eqz p2, :cond_7

    sget-object v1, Lcom/alipay/android/app/pay/GlobalConstant;->MSP_VERSION:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    const-string/jumbo v1, "msp_version"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/alipay/android/app/pay/GlobalConstant;->MSP_VERSION:Ljava/lang/String;

    :cond_8
    if-eqz p2, :cond_9

    sget-object v1, Lcom/alipay/android/app/pay/GlobalConstant;->HARDWARE_PAY_TYPES:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    const-string/jumbo v1, "hardware_pay_types"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/alipay/android/app/pay/GlobalConstant;->HARDWARE_PAY_TYPES:Ljava/lang/String;

    :cond_a
    if-eqz p2, :cond_b

    sget-object v1, Lcom/alipay/android/app/pay/GlobalConstant;->SDK_TEXT:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    :cond_b
    const-string/jumbo v1, "sdk"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/alipay/android/app/pay/GlobalConstant;->SDK_TEXT:Ljava/lang/String;

    :cond_c
    sget-object v1, Lcom/alipay/android/app/pay/GlobalConstant;->SDK_TEXT:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/alipay/android/app/pay/GlobalConstant;->SDK:Z

    if-eqz p2, :cond_d

    sget-object v1, Lcom/alipay/android/app/pay/GlobalConstant;->SDK_TYPE:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    :cond_d
    sget-boolean v1, Lcom/alipay/android/app/pay/GlobalConstant;->SDK:Z

    if-eqz v1, :cond_e

    const-string/jumbo v1, "sdk_type"

    const-string/jumbo v2, "CommonChannelInfo"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/alipay/android/app/pay/GlobalConstant;->SDK_TYPE:Ljava/lang/String;

    :cond_e
    if-eqz p2, :cond_f

    sget-object v1, Lcom/alipay/android/app/pay/GlobalConstant;->RSA_PUBLIC:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    :cond_f
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v2, "trideskey"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_18

    sput-object v2, Lcom/alipay/android/app/pay/GlobalConstant;->RSA_PUBLIC:Ljava/lang/String;

    :cond_10
    :goto_1
    if-eqz p2, :cond_11

    sget-object v1, Lcom/alipay/android/app/pay/GlobalConstant;->MONITOR_URL:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    :cond_11
    const-string/jumbo v1, "monitor_url"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/alipay/android/app/pay/GlobalConstant;->MONITOR_URL:Ljava/lang/String;

    :cond_12
    if-eqz p2, :cond_13

    sget-object v1, Lcom/alipay/android/app/pay/GlobalConstant;->HTTP_URL:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_14

    :cond_13
    :try_start_1
    const-string/jumbo v1, "http_url"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/alipay/android/app/pay/GlobalConstant;->HTTP_URL:Ljava/lang/String;

    sget-boolean v1, Lcom/alipay/android/app/pay/GlobalConstant;->SDK:Z

    if-eqz v1, :cond_14

    const-string/jumbo v1, "mini_http_url"

    invoke-static {v1}, Lcom/alipay/android/app/util/ResUtils;->g(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/alipay/android/app/pay/GlobalConstant;->HTTP_URL:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_14
    :goto_2
    if-eqz p2, :cond_15

    :try_start_2
    sget-object v1, Lcom/alipay/android/app/pay/GlobalConstant;->API_VERSION:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_16

    :cond_15
    const-string/jumbo v1, "api_version"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/app/pay/GlobalConstant;->API_VERSION:Ljava/lang/String;

    :cond_16
    invoke-static {}, Lcom/alipay/android/app/assist/MspAssistUtil;->e()Z

    move-result v0

    if-eqz v0, :cond_17

    const-string/jumbo v0, "https://mobiletestabc.alipaydev.com/mobileclientgw/net/gateway.do"

    sput-object v0, Lcom/alipay/android/app/pay/GlobalConstant;->MONITOR_URL:Ljava/lang/String;

    const-string/jumbo v0, "https://mobiletestabc.alipaydev.com/mobileclientgw/net/gateway.do"

    sput-object v0, Lcom/alipay/android/app/pay/GlobalConstant;->HTTP_URL:Ljava/lang/String;

    :cond_17
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/android/app/pay/GlobalConstant;->isLoadProperties:Z

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/sys/GlobalContext;->c()Lcom/alipay/android/app/IAppConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/android/app/IAppConfig;->b()Z

    move-result v0

    if-nez v0, :cond_19

    const-string/jumbo v0, "http://mcgw.alipay.com/sdklog.do"

    invoke-static {v0}, Lcom/alipay/android/app/statistic/SDKConfig;->a(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_18
    :try_start_3
    const-string/jumbo v2, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDENksAVqDoz5SMCZq0bsZwE+I3NjrANyTTwUVSf1+ec1PfPB4tiocEpYJFCYju9MIbawR8ivECbUWjpffZq5QllJg+19CB7V5rYGcEnb/M7CS3lFF2sNcRFJUtXUUAqyR3/l7PmpxTwObZ4DLG258dhE2vFlVGXjnuLs+FI2hg4QIDAQAB"

    const-string/jumbo v3, "rsa_public"

    invoke-virtual {v0, v3, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/alipay/android/app/pay/GlobalConstant;->RSA_PUBLIC:Ljava/lang/String;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "trideskey"

    sget-object v3, Lcom/alipay/android/app/pay/GlobalConstant;->RSA_PUBLIC:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_1

    :cond_19
    sget-object v0, Lcom/alipay/android/app/pay/GlobalConstant;->HTTP_URL:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string/jumbo v0, "http://mcgw.alipay.com/sdklog.do"

    invoke-static {v0}, Lcom/alipay/android/app/statistic/SDKConfig;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1a
    sget-object v0, Lcom/alipay/android/app/pay/GlobalConstant;->HTTP_URL:Ljava/lang/String;

    const-string/jumbo v1, "gateway.do"

    const-string/jumbo v2, "sdklog.do"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/statistic/SDKConfig;->a(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    :catch_1
    move-exception v1

    goto/16 :goto_2
.end method

.method private static parseExternalInfoToMap(Ljava/lang/String;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v7, 0x1

    const/4 v2, 0x0

    const-string/jumbo v1, " ExternalInfoUtil parse  externalinfo start "

    invoke-static {v1}, Lcom/alipay/android/app/util/LogUtils;->d(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->f()V

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string/jumbo v1, "\""

    const-string/jumbo v3, ""

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "&"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v1, v3

    if-eqz v1, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    array-length v4, v3

    move v1, v2

    :goto_1
    if-ge v1, v4, :cond_3

    aget-object v5, v3, v1

    const-string/jumbo v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    array-length v6, v5

    if-le v6, v7, :cond_2

    aget-object v6, v5, v2

    aget-object v5, v5, v7

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const-string/jumbo v1, " ExternalInfoUtil parse  externalinfo end "

    invoke-static {v1}, Lcom/alipay/android/app/util/LogUtils;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static saveNewGateWayMap(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    sput-object p0, Lcom/alipay/android/app/pay/GlobalConstant;->newGateWayMap:Ljava/util/Map;

    :try_start_0
    sget-object v0, Lcom/alipay/android/app/pay/GlobalConstant;->newGateWayMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/android/app/pay/GlobalConstant;->newGateWayMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v0, Lcom/alipay/android/app/pay/GlobalConstant;->newGateWayMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v4, "="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    :cond_0
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "initGateWay:::initial:::"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->d()V

    return-void

    :cond_1
    :try_start_1
    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "initGateWay:::"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->d()V

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "sync"

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
