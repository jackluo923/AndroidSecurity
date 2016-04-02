.class public Lcom/alipay/pushsdk/push/h;
.super Ljava/lang/Object;
.source "PushAddrConfig.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/alipay/pushsdk/push/h;

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 21
    sput-object v0, Lcom/alipay/pushsdk/push/h;->a:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/alipay/pushsdk/push/h;->b:Landroid/content/Context;

    .line 36
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    .line 39
    new-instance v0, Lcom/alipay/pushsdk/util/b;

    iget-object v1, p0, Lcom/alipay/pushsdk/push/h;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alipay/pushsdk/util/b;-><init>(Landroid/content/Context;)V

    .line 40
    invoke-virtual {v0}, Lcom/alipay/pushsdk/util/b;->a()Lcom/alipay/pushsdk/data/a;

    move-result-object v0

    .line 43
    :try_start_0
    iget-object v0, v0, Lcom/alipay/pushsdk/data/a;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/pushsdk/push/h;->c:Ljava/lang/String;

    .line 44
    iget-object v0, p0, Lcom/alipay/pushsdk/push/h;->c:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/alipay/pushsdk/push/h;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_7

    .line 46
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    const/4 v0, 0x4

    sget-object v1, Lcom/alipay/pushsdk/push/h;->a:Ljava/lang/String;

    .line 48
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "push use config data based on cfgId:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/pushsdk/push/h;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 47
    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 55
    :cond_0
    :goto_0
    sget v0, Lcom/alipay/pushsdk/util/log/LogUtil;->LOG_LEVEL:I

    sget v1, Lcom/alipay/pushsdk/util/log/LogUtil;->LOG_LEVEL_WARNING:I

    if-le v0, v1, :cond_6

    .line 57
    invoke-static {}, Lcom/alipay/pushsdk/util/a;->e()I

    move-result v0

    sget v1, Lcom/alipay/pushsdk/util/log/LogUtil;->LOG_LEVEL_INFO:I

    if-lt v0, v1, :cond_1

    const/4 v1, 0x1

    sput-boolean v1, Lcom/alipay/pushsdk/util/log/LogUtil;->CONFIGURE_ENABLE:Z

    :cond_1
    const/4 v1, 0x3

    invoke-static {v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    sget-object v2, Lcom/alipay/pushsdk/push/h;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "getConfigAddr push logLevel="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ", configurable="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v3, Lcom/alipay/pushsdk/util/log/LogUtil;->CONFIGURE_ENABLE:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_2
    sget-boolean v0, Lcom/alipay/pushsdk/util/log/LogUtil;->CONFIGURE_ENABLE:Z

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/alipay/pushsdk/util/a;->d()Ljava/util/HashMap;

    move-result-object v2

    const-string/jumbo v0, "host"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v1, "port"

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v3, "version"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x3

    invoke-static {v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x3

    sget-object v4, Lcom/alipay/pushsdk/push/h;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "getConfigAddr pushAddr==> host="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", port="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", version="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_3
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_9

    new-instance v3, Lcom/alipay/pushsdk/data/a;

    invoke-direct {v3}, Lcom/alipay/pushsdk/data/a;-><init>()V

    new-instance v4, Lcom/alipay/pushsdk/util/b;

    iget-object v5, p0, Lcom/alipay/pushsdk/push/h;->b:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/alipay/pushsdk/util/b;-><init>(Landroid/content/Context;)V

    iput-object v0, v3, Lcom/alipay/pushsdk/data/a;->b:Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v3, Lcom/alipay/pushsdk/data/a;->c:I

    :cond_4
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v3, Lcom/alipay/pushsdk/data/a;->f:I

    :cond_5
    invoke-virtual {v4, v3}, Lcom/alipay/pushsdk/util/b;->a(Lcom/alipay/pushsdk/data/a;)V

    .line 66
    :cond_6
    :goto_1
    return-void

    .line 52
    :cond_7
    const-string/jumbo v0, "mcometgw.alipay.com"

    iput-object v0, p0, Lcom/alipay/pushsdk/push/h;->d:Ljava/lang/String;

    const/16 v0, 0x1bb

    iput v0, p0, Lcom/alipay/pushsdk/push/h;->e:I

    const-string/jumbo v0, "0"

    iput-object v0, p0, Lcom/alipay/pushsdk/push/h;->g:Ljava/lang/String;

    const-string/jumbo v0, "0"

    iput-object v0, p0, Lcom/alipay/pushsdk/push/h;->h:Ljava/lang/String;

    const-string/jumbo v0, "1"

    iput-object v0, p0, Lcom/alipay/pushsdk/push/h;->i:Ljava/lang/String;

    sget v0, Lcom/alipay/pushsdk/util/a;->a:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/pushsdk/push/h;->f:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x3

    sget-object v1, Lcom/alipay/pushsdk/push/h;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "push dest==>"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/pushsdk/push/h;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/alipay/pushsdk/push/h;->e:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/pushsdk/push/h;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/pushsdk/push/h;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_8
    new-instance v0, Lcom/alipay/pushsdk/data/a;

    invoke-direct {v0}, Lcom/alipay/pushsdk/data/a;-><init>()V

    const-string/jumbo v1, ""

    iput-object v1, v0, Lcom/alipay/pushsdk/data/a;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/pushsdk/push/h;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/pushsdk/data/a;->b:Ljava/lang/String;

    iget v1, p0, Lcom/alipay/pushsdk/push/h;->e:I

    iput v1, v0, Lcom/alipay/pushsdk/data/a;->c:I

    iget-object v1, p0, Lcom/alipay/pushsdk/push/h;->f:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/alipay/pushsdk/data/a;->f:I

    iget-object v1, p0, Lcom/alipay/pushsdk/push/h;->g:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/pushsdk/data/a;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/pushsdk/push/h;->h:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/pushsdk/data/a;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/pushsdk/push/h;->i:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/alipay/pushsdk/data/a;->g:I

    new-instance v1, Lcom/alipay/pushsdk/util/b;

    iget-object v2, p0, Lcom/alipay/pushsdk/push/h;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/alipay/pushsdk/util/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/alipay/pushsdk/util/b;->a(Lcom/alipay/pushsdk/data/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 60
    :catch_0
    move-exception v0

    .line 62
    invoke-static {v7}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 63
    sget-object v1, Lcom/alipay/pushsdk/push/h;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v1, v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 57
    :cond_9
    const/4 v0, 0x3

    :try_start_1
    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x3

    sget-object v1, Lcom/alipay/pushsdk/push/h;->a:Ljava/lang/String;

    const-string/jumbo v2, "getConfigAddr push cfgHost is invalid."

    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method
