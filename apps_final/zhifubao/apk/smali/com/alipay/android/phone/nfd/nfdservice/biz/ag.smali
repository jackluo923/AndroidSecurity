.class public Lcom/alipay/android/phone/nfd/nfdservice/biz/ag;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/android/phone/nfd/nfdservice/biz/af;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/alipay/android/phone/nfd/nfdservice/biz/e/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alipay/android/phone/nfd/nfdservice/biz/e/d",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/android/phone/nfd/nfdservice/biz/b/a;",
            ">;"
        }
    .end annotation
.end field

.field private c:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "WifiMatchHistoryServiceImpl"

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/ag;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/e/d;

    invoke-direct {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/e/d;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/ag;->b:Lcom/alipay/android/phone/nfd/nfdservice/biz/e/d;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/ag;->c:J

    const-class v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdservice/api/utils/BeanFactory;->getBean(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/a;

    invoke-interface {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/a;->b()Ljava/util/Observable;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/phone/nfd/nfdservice/biz/ah;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/ah;-><init>(Lcom/alipay/android/phone/nfd/nfdservice/biz/ag;)V

    invoke-virtual {v0, v1}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/phone/nfd/nfdservice/biz/ag;J)V
    .locals 0

    iput-wide p1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/ag;->c:J

    return-void
.end method

.method private static d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/ag;->b:Lcom/alipay/android/phone/nfd/nfdservice/biz/e/d;

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/e/d;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/alipay/android/phone/nfd/nfdservice/biz/ag;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/ag;->c:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/ag;->b:Lcom/alipay/android/phone/nfd/nfdservice/biz/e/d;

    invoke-static {p1, p2}, Lcom/alipay/android/phone/nfd/nfdservice/biz/ag;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/biz/e/d;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/b/a;

    if-nez v0, :cond_1

    new-instance v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/b/a;

    invoke-direct {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/b/a;-><init>()V

    iput-object p1, v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/b/a;->b:Ljava/lang/String;

    iput-object p2, v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/b/a;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/ag;->b:Lcom/alipay/android/phone/nfd/nfdservice/biz/e/d;

    invoke-static {p1, p2}, Lcom/alipay/android/phone/nfd/nfdservice/biz/ag;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/e/d;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget v1, v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/b/a;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/b/a;->c:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/b/a;->d:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/alipay/android/phone/nfd/nfdservice/biz/ag;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "event=[saveMatchedWifiInfo] Exception. ssid=["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] bssid=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/ag;->b:Lcom/alipay/android/phone/nfd/nfdservice/biz/e/d;

    invoke-static {p1, p2}, Lcom/alipay/android/phone/nfd/nfdservice/biz/ag;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/android/phone/nfd/nfdservice/biz/e/d;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/b/a;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/b/a;->d:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0xea60

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/ag;->b:Lcom/alipay/android/phone/nfd/nfdservice/biz/e/d;

    invoke-static {p1, p2}, Lcom/alipay/android/phone/nfd/nfdservice/biz/ag;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/biz/e/d;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/alipay/android/phone/nfd/nfdservice/biz/ag;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "event=[deleteMatchHistory] ssid=["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] bssid=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
