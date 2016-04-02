.class public interface abstract Lcom/alipay/mobile/common/logging/api/LogContext;
.super Ljava/lang/Object;
.source "LogContext.java"


# static fields
.field public static final ENVENT_CLIENTLAUNCH:Ljava/lang/String; = "clientLaunch"

.field public static final ENVENT_CLIENTQUIT:Ljava/lang/String; = "clientQuit"

.field public static final ENVENT_GOTOBACKGROUND:Ljava/lang/String; = "gotoBackground"

.field public static final ENVENT_GOTOFOREGROUND:Ljava/lang/String; = "gotoForeground"

.field public static final ENVENT_SUBAPPRESUME:Ljava/lang/String; = "subappResume"

.field public static final ENVENT_SUBAPPSTART:Ljava/lang/String; = "subappStart"

.field public static final ENVENT_USERLOGIN:Ljava/lang/String; = "userLogin"

.field public static final ENVENT_VIEWSWITCH:Ljava/lang/String; = "viewSwitch"

.field public static final LOCAL_STORAGE_ACTIONDESC:Ljava/lang/String; = "actionDesc"

.field public static final LOCAL_STORAGE_ACTIONID:Ljava/lang/String; = "actionID"

.field public static final LOCAL_STORAGE_ACTIONTIMESTAMP:Ljava/lang/String; = "actionTimestamp"

.field public static final LOCAL_STORAGE_ACTIONTOKEN:Ljava/lang/String; = "actionToken"

.field public static final RELEASETYPE_DEV:Ljava/lang/String; = "dev"

.field public static final RELEASETYPE_RC:Ljava/lang/String; = "rc"

.field public static final RELEASETYPE_RELEASE:Ljava/lang/String; = "release"

.field public static final RELEASETYPE_TEST:Ljava/lang/String; = "test"


# virtual methods
.method public abstract appendLogEvent(Lcom/alipay/mobile/common/logging/api/LogEvent;)V
.end method

.method public abstract flush(Ljava/lang/String;Z)V
.end method

.method public abstract flush(Z)V
.end method

.method public abstract getApplicationContext()Landroid/content/Context;
.end method

.method public abstract getChannelId()Ljava/lang/String;
.end method

.method public abstract getClientId()Ljava/lang/String;
.end method

.method public abstract getContextParam(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getDeviceId()Ljava/lang/String;
.end method

.method public abstract getLocalParam(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getProductId()Ljava/lang/String;
.end method

.method public abstract getProductVersion()Ljava/lang/String;
.end method

.method public abstract getReleaseCode()Ljava/lang/String;
.end method

.method public abstract getReleaseType()Ljava/lang/String;
.end method

.method public abstract getUserId()Ljava/lang/String;
.end method

.method public abstract notifyClientEvent(Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract putContextParam(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract putLocalParam(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract removeContextParam(Ljava/lang/String;)V
.end method

.method public abstract removeLocalParam(Ljava/lang/String;)V
.end method

.method public abstract setChannelId(Ljava/lang/String;)V
.end method

.method public abstract setClientId(Ljava/lang/String;)V
.end method

.method public abstract setDeviceId(Ljava/lang/String;)V
.end method

.method public abstract setProductId(Ljava/lang/String;)V
.end method

.method public abstract setProductVersion(Ljava/lang/String;)V
.end method

.method public abstract setReleaseCode(Ljava/lang/String;)V
.end method

.method public abstract setReleaseType(Ljava/lang/String;)V
.end method

.method public abstract setSourceId(Ljava/lang/String;)V
.end method

.method public abstract setUserId(Ljava/lang/String;)V
.end method

.method public abstract setupExceptionHandler(Lcom/alipay/mobile/common/logging/api/UncaughtExceptionCallback;I)V
.end method

.method public abstract takedownExceptionHandler()V
.end method

.method public abstract traceNativeCrash(Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method public abstract updateLogStrategyCfg(Ljava/lang/String;)V
.end method

.method public abstract upload(Ljava/lang/String;)V
.end method
