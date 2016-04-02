.class public Lcom/ali/user/mobile/LaunchInit;
.super Ljava/lang/Object;
.source "LaunchInit.java"


# static fields
.field private static a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static b:J

.field private static c:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 20
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/ali/user/mobile/LaunchInit;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 14
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/ali/user/mobile/LaunchInit;->c:J

    .line 54
    const-string/jumbo v0, "LaunchInit"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v2, Lcom/ali/user/mobile/LaunchInit;->c:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",cost:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lcom/ali/user/mobile/LaunchInit;->c:J

    sget-wide v4, Lcom/ali/user/mobile/LaunchInit;->b:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 29
    sget-object v0, Lcom/ali/user/mobile/LaunchInit;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/ali/user/mobile/LaunchInit;->b:J

    const-string/jumbo v0, "LaunchInit"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "start init:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v2, Lcom/ali/user/mobile/LaunchInit;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 36
    invoke-static {v0}, Lcom/ali/user/mobile/AliUserInit;->init(Landroid/content/Context;)V

    .line 37
    const-string/jumbo v1, "AliUserInit.init:"

    invoke-static {v1}, Lcom/ali/user/mobile/LaunchInit;->a(Ljava/lang/String;)V

    .line 40
    invoke-static {v0}, Lcom/ali/user/mobile/report/SDKReport;->reportInfo(Landroid/content/Context;)V

    .line 41
    const-string/jumbo v0, "SDKReport.reportInfo:"

    invoke-static {v0}, Lcom/ali/user/mobile/LaunchInit;->a(Ljava/lang/String;)V

    .line 43
    sget-object v0, Lcom/ali/user/mobile/LaunchInit;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 45
    :cond_0
    return-void
.end method
