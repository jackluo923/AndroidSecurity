.class public Lcom/alipay/mobile/rome/syncsdk/util/AppStatusUtils;
.super Ljava/lang/Object;
.source "AppStatusUtils.java"


# static fields
.field private static a:Lcom/alipay/mobile/rome/syncsdk/util/AppStatusUtils$AppStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/util/AppStatusUtils$AppStatus;->FOREGROUND:Lcom/alipay/mobile/rome/syncsdk/util/AppStatusUtils$AppStatus;

    sput-object v0, Lcom/alipay/mobile/rome/syncsdk/util/AppStatusUtils;->a:Lcom/alipay/mobile/rome/syncsdk/util/AppStatusUtils$AppStatus;

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppStatusValue(Lcom/alipay/mobile/rome/syncsdk/util/AppStatusUtils$AppStatus;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    invoke-static {p0}, Lcom/alipay/mobile/rome/syncsdk/util/AppStatusUtils$AppStatus;->getValue(Lcom/alipay/mobile/rome/syncsdk/util/AppStatusUtils$AppStatus;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentAppStatus()Lcom/alipay/mobile/rome/syncsdk/util/AppStatusUtils$AppStatus;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/util/AppStatusUtils;->a:Lcom/alipay/mobile/rome/syncsdk/util/AppStatusUtils$AppStatus;

    return-object v0
.end method

.method public static updateAppStatus(Lcom/alipay/mobile/rome/syncsdk/util/AppStatusUtils$AppStatus;)V
    .locals 3

    .prologue
    .line 36
    const-string/jumbo v0, "sync_link_AppStatusManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "updateAppStatus: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    sput-object p0, Lcom/alipay/mobile/rome/syncsdk/util/AppStatusUtils;->a:Lcom/alipay/mobile/rome/syncsdk/util/AppStatusUtils$AppStatus;

    .line 38
    return-void
.end method
