.class public Lcom/alipay/pushsdk/util/log/c;
.super Ljava/lang/Object;
.source "ServiceTraceAgent.java"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/alipay/pushsdk/util/log/c;

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 11
    sput-object v0, Lcom/alipay/pushsdk/util/log/c;->a:Ljava/lang/String;

    .line 10
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 1

    .prologue
    .line 54
    invoke-static {}, Lcom/alipay/pushsdk/util/log/e;->a()Lcom/alipay/pushsdk/util/log/e;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Lcom/alipay/pushsdk/util/log/e;->b()V

    .line 56
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 36
    invoke-static {p0}, Lcom/alipay/pushsdk/util/log/f;->a(Landroid/content/Context;)Lcom/alipay/pushsdk/util/log/f;

    move-result-object v0

    .line 37
    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {v0}, Lcom/alipay/pushsdk/util/log/f;->a()V

    .line 41
    :cond_0
    new-instance v0, Lcom/alipay/pushsdk/push/i;

    invoke-direct {v0, p0}, Lcom/alipay/pushsdk/push/i;-><init>(Landroid/content/Context;)V

    .line 44
    invoke-static {p0}, Lcom/alipay/pushsdk/util/c;->a(Landroid/content/Context;)Lcom/alipay/pushsdk/util/c;

    move-result-object v5

    .line 45
    invoke-virtual {v5}, Lcom/alipay/pushsdk/util/c;->a()Ljava/lang/String;

    move-result-object v1

    .line 46
    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/i;->e()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/i;->a()Ljava/lang/String;

    move-result-object v4

    .line 47
    invoke-virtual {v5}, Lcom/alipay/pushsdk/util/c;->c()Ljava/lang/String;

    move-result-object v5

    .line 45
    invoke-static {}, Lcom/alipay/pushsdk/util/log/e;->a()Lcom/alipay/pushsdk/util/log/e;

    move-result-object v0

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/pushsdk/util/log/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 68
    const/4 v0, 0x4

    :try_start_0
    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    const/4 v0, 0x4

    sget-object v1, Lcom/alipay/pushsdk/util/log/c;->a:Ljava/lang/String;

    const-string/jumbo v2, "writeLog start..."

    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 71
    :cond_0
    invoke-static {}, Lcom/alipay/pushsdk/push/connection/m;->i()Z

    move-result v0

    if-nez v0, :cond_2

    .line 82
    :cond_1
    :goto_0
    return-void

    .line 75
    :cond_2
    new-instance v0, Lcom/alipay/pushsdk/util/log/i;

    invoke-direct {v0, p0, p1, p2}, Lcom/alipay/pushsdk/util/log/i;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/pushsdk/util/log/i;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 76
    :catch_0
    move-exception v0

    .line 78
    invoke-static {v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 79
    sget-object v1, Lcom/alipay/pushsdk/util/log/c;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v1, v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 59
    invoke-static {p0}, Lcom/alipay/pushsdk/util/log/f;->a(Landroid/content/Context;)Lcom/alipay/pushsdk/util/log/f;

    move-result-object v0

    .line 60
    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {v0}, Lcom/alipay/pushsdk/util/log/f;->d()V

    .line 64
    :cond_0
    return-void
.end method
