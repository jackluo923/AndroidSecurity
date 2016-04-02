.class public Lcom/taobao/infsword/c/b;
.super Ljava/lang/Object;


# static fields
.field public static a:Z

.field public static b:Lcom/taobao/infsword/c/a;

.field private static c:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lcom/taobao/infsword/statistic/KGB;->o:Lcom/taobao/infsword/statistic/KGB$EnvModeEnum;

    sget-object v1, Lcom/taobao/infsword/statistic/KGB$EnvModeEnum;->TEST:Lcom/taobao/infsword/statistic/KGB$EnvModeEnum;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/taobao/infsword/statistic/KGB;->o:Lcom/taobao/infsword/statistic/KGB$EnvModeEnum;

    sget-object v1, Lcom/taobao/infsword/statistic/KGB$EnvModeEnum;->PRE:Lcom/taobao/infsword/statistic/KGB$EnvModeEnum;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/taobao/infsword/c/b;->a:Z

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/taobao/infsword/c/b;->c:J

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/taobao/infsword/c/b;->c:J

    return-void
.end method

.method public static a(Ljava/lang/Exception;)V
    .locals 1

    sget-boolean v0, Lcom/taobao/infsword/c/b;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/taobao/infsword/c/b;->c:J

    sub-long/2addr v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, " duration"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    long-to-double v0, v0

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "s"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/taobao/infsword/c/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/taobao/infsword/c/b;->c:J

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/taobao/infsword/c/b;->a:Z

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/taobao/infsword/c/b;->a:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/taobao/infsword/c/b;->b:Lcom/taobao/infsword/c/a;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/taobao/infsword/c/b;->b:Lcom/taobao/infsword/c/a;

    invoke-interface {v0, p0, p1}, Lcom/taobao/infsword/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/taobao/infsword/c/b;->a:Z

    return-void
.end method
