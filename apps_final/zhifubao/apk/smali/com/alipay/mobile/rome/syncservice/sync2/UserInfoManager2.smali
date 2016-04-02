.class public Lcom/alipay/mobile/rome/syncservice/sync2/UserInfoManager2;
.super Ljava/lang/Object;
.source "UserInfoManager2.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "sync_service_UserInfoManager2"

.field private static volatile lastSessionId:Ljava/lang/String;

.field private static volatile lastUserId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-string/jumbo v0, ""

    sput-object v0, Lcom/alipay/mobile/rome/syncservice/sync2/UserInfoManager2;->lastUserId:Ljava/lang/String;

    .line 11
    const-string/jumbo v0, ""

    sput-object v0, Lcom/alipay/mobile/rome/syncservice/sync2/UserInfoManager2;->lastSessionId:Ljava/lang/String;

    .line 7
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static handleUserInfoEvent()V
    .locals 3

    .prologue
    .line 19
    const-string/jumbo v0, "sync_service_UserInfoManager2"

    const-string/jumbo v1, "handleUserInfoEvent:"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncservice/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/a/b;->a()Ljava/lang/String;

    move-result-object v0

    .line 22
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/a/b;->b()Ljava/lang/String;

    move-result-object v1

    .line 25
    sget-object v2, Lcom/alipay/mobile/rome/syncservice/sync2/UserInfoManager2;->lastUserId:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/alipay/mobile/rome/syncservice/d/e;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 26
    sget-object v2, Lcom/alipay/mobile/rome/syncservice/sync2/UserInfoManager2;->lastSessionId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/alipay/mobile/rome/syncservice/d/e;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 28
    :cond_0
    sput-object v0, Lcom/alipay/mobile/rome/syncservice/sync2/UserInfoManager2;->lastUserId:Ljava/lang/String;

    .line 29
    sput-object v1, Lcom/alipay/mobile/rome/syncservice/sync2/UserInfoManager2;->lastSessionId:Ljava/lang/String;

    .line 31
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 32
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/sync2/LinkSyncManager2;->getInstance()Lcom/alipay/mobile/rome/syncservice/sync2/LinkSyncManager2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncservice/sync2/LinkSyncManager2;->sendSync3002()V

    .line 39
    :goto_0
    return-void

    .line 34
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/sync2/LinkSyncManager2;->getInstance()Lcom/alipay/mobile/rome/syncservice/sync2/LinkSyncManager2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncservice/sync2/LinkSyncManager2;->sendSync3001()V

    goto :goto_0

    .line 37
    :cond_3
    const-string/jumbo v0, "sync_service_UserInfoManager2"

    const-string/jumbo v1, "handleUserInfoEvent: [ userId not changed ] "

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncservice/d/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
