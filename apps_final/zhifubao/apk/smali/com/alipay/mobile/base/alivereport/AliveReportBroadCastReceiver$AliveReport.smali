.class public Lcom/alipay/mobile/base/alivereport/AliveReportBroadCastReceiver$AliveReport;
.super Ljava/lang/Object;
.source "AliveReportBroadCastReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final APP_TYPE:Ljava/lang/String; = "client"

.field private static final CLIENT_TYPE:Ljava/lang/String; = "phone"

.field private static final MAP_BUNDLE_NAME:Ljava/lang/String; = "android-phone-mobilecommon-map"

.field private static final SYSTEM_TYPE:Ljava/lang/String; = "android"


# instance fields
.field private LAST_LOCATE_TIME:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-string/jumbo v0, "lastlocatetime"

    iput-object v0, p0, Lcom/alipay/mobile/base/alivereport/AliveReportBroadCastReceiver$AliveReport;->LAST_LOCATE_TIME:Ljava/lang/String;

    .line 45
    return-void
.end method

.method private buildRequest(Landroid/content/Context;Lcom/alipay/mobile/framework/MicroApplicationContext;Lcom/alipay/mobilelbs/common/service/facade/vo/Location;)Lcom/alipay/mobilegw/biz/shared/processer/reportActive/ReportActiveReq;
    .locals 4

    .prologue
    .line 106
    invoke-static {p1}, Lcom/alipay/mobile/common/info/DeviceInfo;->createInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v1

    .line 107
    invoke-static {}, Lcom/alipay/mobile/common/info/AppInfo;->getInstance()Lcom/alipay/mobile/common/info/AppInfo;

    move-result-object v0

    .line 108
    new-instance v2, Lcom/alipay/mobilegw/biz/shared/processer/reportActive/ReportActiveReq;

    invoke-direct {v2}, Lcom/alipay/mobilegw/biz/shared/processer/reportActive/ReportActiveReq;-><init>()V

    .line 109
    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/AppInfo;->getmAwid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobilegw/biz/shared/processer/reportActive/ReportActiveReq;->setAwid(Ljava/lang/String;)V

    .line 110
    invoke-virtual {v1}, Lcom/alipay/mobile/common/info/DeviceInfo;->getAccessPoint()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobilegw/biz/shared/processer/reportActive/ReportActiveReq;->setAccessPoint(Ljava/lang/String;)V

    .line 111
    const-string/jumbo v3, "client"

    invoke-virtual {v2, v3}, Lcom/alipay/mobilegw/biz/shared/processer/reportActive/ReportActiveReq;->setAppType(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/AppInfo;->getmChannels()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobilegw/biz/shared/processer/reportActive/ReportActiveReq;->setChannels(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v1}, Lcom/alipay/mobile/common/info/DeviceInfo;->getCellInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobilegw/biz/shared/processer/reportActive/ReportActiveReq;->setClientPostion(Ljava/lang/String;)V

    .line 114
    const-string/jumbo v3, "phone"

    invoke-virtual {v2, v3}, Lcom/alipay/mobilegw/biz/shared/processer/reportActive/ReportActiveReq;->setClientType(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v1}, Lcom/alipay/mobile/common/info/DeviceInfo;->getmMobileBrand()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobilegw/biz/shared/processer/reportActive/ReportActiveReq;->setMobileBrand(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v1}, Lcom/alipay/mobile/common/info/DeviceInfo;->getmMobileModel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobilegw/biz/shared/processer/reportActive/ReportActiveReq;->setMobileModel(Ljava/lang/String;)V

    .line 117
    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/AppInfo;->getProductID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobilegw/biz/shared/processer/reportActive/ReportActiveReq;->setProductID(Ljava/lang/String;)V

    .line 118
    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/AppInfo;->getmProductVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alipay/mobilegw/biz/shared/processer/reportActive/ReportActiveReq;->setProductVersion(Ljava/lang/String;)V

    .line 119
    invoke-virtual {v1}, Lcom/alipay/mobile/common/info/DeviceInfo;->getmScreenHeight()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alipay/mobilegw/biz/shared/processer/reportActive/ReportActiveReq;->setScreenHigh(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v1}, Lcom/alipay/mobile/common/info/DeviceInfo;->getScreenWidth()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alipay/mobilegw/biz/shared/processer/reportActive/ReportActiveReq;->setScreenWidth(Ljava/lang/String;)V

    .line 121
    const-string/jumbo v0, "android"

    invoke-virtual {v2, v0}, Lcom/alipay/mobilegw/biz/shared/processer/reportActive/ReportActiveReq;->setSystemType(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v1}, Lcom/alipay/mobile/common/info/DeviceInfo;->getmSystemVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alipay/mobilegw/biz/shared/processer/reportActive/ReportActiveReq;->setSystemVersion(Ljava/lang/String;)V

    .line 123
    invoke-virtual {v1}, Lcom/alipay/mobile/common/info/DeviceInfo;->getUserAgent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alipay/mobilegw/biz/shared/processer/reportActive/ReportActiveReq;->setUserAgent(Ljava/lang/String;)V

    .line 124
    invoke-virtual {v1}, Lcom/alipay/mobile/common/info/DeviceInfo;->getImei()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alipay/mobilegw/biz/shared/processer/reportActive/ReportActiveReq;->setImei(Ljava/lang/String;)V

    .line 125
    invoke-virtual {v1}, Lcom/alipay/mobile/common/info/DeviceInfo;->getImsi()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alipay/mobilegw/biz/shared/processer/reportActive/ReportActiveReq;->setImsi(Ljava/lang/String;)V

    .line 126
    invoke-virtual {v1}, Lcom/alipay/mobile/common/info/DeviceInfo;->getOperator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alipay/mobilegw/biz/shared/processer/reportActive/ReportActiveReq;->setCarrier(Ljava/lang/String;)V

    .line 129
    const-string/jumbo v0, ""

    invoke-virtual {v2, v0}, Lcom/alipay/mobilegw/biz/shared/processer/reportActive/ReportActiveReq;->setScreenSize(Ljava/lang/String;)V

    .line 132
    const-class v0, Lcom/alipay/mobile/framework/service/common/SchemeService;

    .line 133
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 132
    invoke-interface {p2, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/SchemeService;

    .line 134
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/common/SchemeService;->getLastTagId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alipay/mobilegw/biz/shared/processer/reportActive/ReportActiveReq;->setSourceId(Ljava/lang/String;)V

    .line 137
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 138
    const-string/jumbo v0, "isPrisonBreak"

    invoke-virtual {v1}, Lcom/alipay/mobile/common/info/DeviceInfo;->ismRooted()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    const-class v0, Lcom/alipay/android/app/helper/PayHelperServcie;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/helper/PayHelperServcie;

    .line 141
    invoke-virtual {v0}, Lcom/alipay/android/app/helper/PayHelperServcie;->getPaySysInfo()Ljava/lang/String;

    move-result-object v0

    .line 145
    if-eqz v0, :cond_0

    .line 146
    const-string/jumbo v1, "apdid"

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->getInstance(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->getTokenResult()Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;

    move-result-object v0

    .line 151
    if-eqz v0, :cond_1

    .line 152
    const-string/jumbo v1, "umidToken"

    iget-object v0, v0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;->umidToken:Ljava/lang/String;

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    :cond_1
    if-eqz p3, :cond_2

    .line 157
    const-string/jumbo v0, "lbsInfo"

    invoke-static {p3}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    :cond_2
    invoke-virtual {v2, v3}, Lcom/alipay/mobilegw/biz/shared/processer/reportActive/ReportActiveReq;->setExtInfos(Ljava/util/Map;)V

    .line 162
    return-object v2
.end method

.method private getLastKnownLBSInfo(Lcom/alipay/mobile/framework/MicroApplicationContext;)Lcom/alipay/mobilelbs/common/service/facade/vo/Location;
    .locals 4

    .prologue
    .line 167
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getBundleContext()Lcom/alipay/mobile/framework/BundleContext;

    move-result-object v0

    .line 168
    const-string/jumbo v1, "android-phone-mobilecommon-map"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/BundleContext;->findClassLoaderByBundleName(Ljava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object v0

    .line 169
    const-string/jumbo v1, "com.alipay.mobile.framework.service.LBSInfoService"

    invoke-interface {p1, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v1

    .line 170
    const-string/jumbo v2, "com.alipay.mobile.framework.service.LBSInfoService"

    invoke-virtual {v0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 171
    const-string/jumbo v2, "getLastKnownLBSInfo"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 172
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    :goto_0
    return-object v0

    .line 173
    :catch_0
    move-exception v0

    .line 174
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "AliveReportBroadCastReceiver"

    const-string/jumbo v3, "obtain lbsInfo fail"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "StackTrace"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 178
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateLocation(Landroid/content/Context;)V
    .locals 11

    .prologue
    const-wide/16 v9, 0x0

    .line 83
    :try_start_0
    const-string/jumbo v0, "com.alipay.android.phone.businesscommon"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 84
    iget-object v0, p0, Lcom/alipay/mobile/base/alivereport/AliveReportBroadCastReceiver$AliveReport;->LAST_LOCATE_TIME:Ljava/lang/String;

    const-wide/16 v2, 0x0

    invoke-interface {v1, v0, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 85
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    .line 86
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v6, "AliveReportBroadCastReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "lastlocatetime"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v6, "AliveReportBroadCastReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "timespan"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    cmp-long v0, v2, v9

    if-eqz v0, :cond_0

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/32 v4, 0x1b7740

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    .line 89
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "AliveReportBroadCastReceiver"

    const-string/jumbo v3, "locationInfoService putCacheLocationInfo"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 93
    const-class v2, Lcom/alipay/mobile/framework/service/ext/security/LocationInfoService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/LocationInfoService;

    .line 94
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/LocationInfoService;->putCacheLocationInfo()V

    .line 97
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/base/alivereport/AliveReportBroadCastReceiver$AliveReport;->LAST_LOCATE_TIME:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 98
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :cond_1
    :goto_0
    return-void

    .line 100
    :catch_0
    move-exception v0

    .line 101
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "StackTrace"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 56
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AliveReportBroadCastReceiver"

    const-string/jumbo v2, "receive send reportActive broadcast ,send reportActive to server"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    .line 58
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v2

    .line 61
    const-class v0, Lcom/alipay/mobile/base/config/ConfigService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/base/config/ConfigService;

    .line 62
    if-eqz v0, :cond_0

    const-string/jumbo v3, "true"

    const-string/jumbo v4, "isRealtimeAliveReport"

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/base/config/ConfigService;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 63
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    # getter for: Lcom/alipay/mobile/base/alivereport/AliveReportBroadCastReceiver;->mLastAliveReportTime:J
    invoke-static {}, Lcom/alipay/mobile/base/alivereport/AliveReportBroadCastReceiver;->access$0()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x1e

    invoke-virtual {v0, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-lez v0, :cond_2

    .line 65
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/alipay/mobile/base/alivereport/AliveReportBroadCastReceiver;->access$1(J)V

    .line 66
    invoke-direct {p0, v1}, Lcom/alipay/mobile/base/alivereport/AliveReportBroadCastReceiver$AliveReport;->getLastKnownLBSInfo(Lcom/alipay/mobile/framework/MicroApplicationContext;)Lcom/alipay/mobilelbs/common/service/facade/vo/Location;

    move-result-object v3

    .line 67
    const-class v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    .line 68
    const-class v4, Lcom/alipay/mobilegw/biz/shared/processer/reportActive/ReportActiveService;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/framework/service/common/RpcService;->getBgRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilegw/biz/shared/processer/reportActive/ReportActiveService;

    .line 69
    invoke-direct {p0, v2, v1, v3}, Lcom/alipay/mobile/base/alivereport/AliveReportBroadCastReceiver$AliveReport;->buildRequest(Landroid/content/Context;Lcom/alipay/mobile/framework/MicroApplicationContext;Lcom/alipay/mobilelbs/common/service/facade/vo/Location;)Lcom/alipay/mobilegw/biz/shared/processer/reportActive/ReportActiveReq;

    move-result-object v1

    .line 72
    :try_start_0
    invoke-interface {v0, v1}, Lcom/alipay/mobilegw/biz/shared/processer/reportActive/ReportActiveService;->report(Lcom/alipay/mobilegw/biz/shared/processer/reportActive/ReportActiveReq;)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :cond_2
    :goto_0
    invoke-direct {p0, v2}, Lcom/alipay/mobile/base/alivereport/AliveReportBroadCastReceiver$AliveReport;->updateLocation(Landroid/content/Context;)V

    .line 79
    return-void

    .line 73
    :catch_0
    move-exception v0

    .line 74
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v3, "AliveReportBroadCastReceiver"

    invoke-interface {v1, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
