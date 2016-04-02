.class public final Lcom/alipay/android/phone/nfd/nfdservice/ui/common/c;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/alipay/android/phone/nfd/nfdservice/biz/g;

.field private final c:Lcom/alipay/android/phone/nfd/nfdservice/biz/m;

.field private final d:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;

.field private final e:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;

.field private f:I

.field private g:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "AccessPointsChangedHandler"

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/c;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/c;->f:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/c;->g:J

    iput-object p1, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/c;->e:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;

    const-class v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/j;

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdservice/api/utils/BeanFactory;->getBean(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/g;

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/c;->b:Lcom/alipay/android/phone/nfd/nfdservice/biz/g;

    const-class v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/n;

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdservice/api/utils/BeanFactory;->getBean(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/m;

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/c;->c:Lcom/alipay/android/phone/nfd/nfdservice/biz/m;

    const-class v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdservice/api/utils/BeanFactory;->getBean(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/c;->d:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/c;->b:Lcom/alipay/android/phone/nfd/nfdservice/biz/g;

    new-instance v1, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/d;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/d;-><init>(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/c;)V

    invoke-interface {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/biz/g;->a(Lcom/alipay/android/phone/nfd/nfdservice/biz/h;)V

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/c;->b:Lcom/alipay/android/phone/nfd/nfdservice/biz/g;

    new-instance v1, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/f;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/f;-><init>(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/c;B)V

    invoke-interface {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/biz/g;->a(Lcom/alipay/android/phone/nfd/nfdservice/biz/i;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/c;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/c;->e:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;->a()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/c;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/c;->a(Ljava/util/List;)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/ContextUtils;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdservice/api/utils/NFDSettingUtil;->isAutoNFDEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/c;->c:Lcom/alipay/android/phone/nfd/nfdservice/biz/m;

    invoke-interface {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/m;->a()V

    :goto_0
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/c;->b(Ljava/util/List;)V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->isSwitch()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/c;->a:Ljava/lang/String;

    const-string/jumbo v1, "sendNotify buildNfdWifiDetailInfos is empty."

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/c;->c:Lcom/alipay/android/phone/nfd/nfdservice/biz/m;

    invoke-interface {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/m;->a()V

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lcom/alipay/android/phone/nfd/nfdservice/ui/a/b;->a(Ljava/util/List;)V

    goto :goto_0
.end method

.method private a(I)Z
    .locals 5

    const/4 v2, 0x4

    const/4 v0, 0x1

    if-eq p1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/c;->f:I

    if-ne v1, v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/c;->g:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0xbb8

    cmp-long v1, v1, v3

    if-gtz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/c;)Lcom/alipay/android/phone/nfd/nfdservice/biz/g;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/c;->b:Lcom/alipay/android/phone/nfd/nfdservice/biz/g;

    return-object v0
.end method

.method static synthetic b(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/c;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/c;->b(Ljava/util/List;)V

    return-void
.end method

.method private b(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x5

    :cond_1
    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/c;->d:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;

    invoke-virtual {v1}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/k;->a()Lcom/alipay/android/phone/nfd/nfdservice/ui/common/o;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/o;->a(ILjava/util/List;)V

    return-void
.end method

.method static synthetic c(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/c;)Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/c;->e:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;

    return-object v0
.end method


# virtual methods
.method public final a(ILjava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->isSwitch()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/c;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "run START.  changeType=["

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "] "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    if-eqz p2, :cond_1

    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_1
    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->isSwitch()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/c;->a:Ljava/lang/String;

    const-string/jumbo v1, "run. finalAPs.isEmpty(), return"

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/c;->b:Lcom/alipay/android/phone/nfd/nfdservice/biz/g;

    invoke-interface {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/g;->b()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, p1}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/c;->a(I)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    :goto_0
    return-void

    :cond_4
    invoke-direct {p0, v2}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/c;->a(Ljava/util/List;)V

    goto :goto_0

    :cond_5
    :try_start_1
    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->isSwitch()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/c;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "run .   changeType=["

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "] finalAPs=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/ui/app/NfdService;->a()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_7

    const/4 v0, 0x4

    if-ne p1, v0, :cond_c

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/c;->b:Lcom/alipay/android/phone/nfd/nfdservice/biz/g;

    invoke-interface {v0, v3}, Lcom/alipay/android/phone/nfd/nfdservice/biz/g;->b(Ljava/util/List;)I

    invoke-direct {p0, p1}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/c;->a(I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_9

    invoke-direct {p0, p1}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/c;->a(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, v2}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/c;->a(Ljava/util/List;)V

    goto :goto_0

    :cond_7
    :try_start_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/ui/a/a;->a(Landroid/net/wifi/WifiManager;Lcom/alipay/android/phone/nfd/nfdservice/ui/common/a;)Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiInfo;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v1, v2

    :goto_2
    :try_start_3
    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->isSwitch()Z

    move-result v2

    if-eqz v2, :cond_8

    sget-object v2, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/c;->a:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_8
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/c;->a(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/c;->a(Ljava/util/List;)V

    goto/16 :goto_0

    :cond_9
    :try_start_4
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/c;->b:Lcom/alipay/android/phone/nfd/nfdservice/biz/g;

    invoke-interface {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/g;->a()Ljava/util/List;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v1

    :goto_3
    :try_start_5
    iput p1, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/c;->f:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/c;->g:J

    if-eqz v1, :cond_a

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_a
    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->isSwitch()Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/c;->a:Ljava/lang/String;

    const-string/jumbo v2, "run finish. buildNfdWifiDetailInfos is empty,return"

    invoke-static {v0, v2}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/c;->b:Lcom/alipay/android/phone/nfd/nfdservice/biz/g;

    invoke-interface {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/g;->b()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    invoke-direct {p0, p1}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/c;->a(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/c;->a(Ljava/util/List;)V

    goto/16 :goto_0

    :cond_c
    :try_start_6
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/c;->b:Lcom/alipay/android/phone/nfd/nfdservice/biz/g;

    invoke-interface {v0, v3}, Lcom/alipay/android/phone/nfd/nfdservice/biz/g;->a(Ljava/util/List;)Ljava/util/List;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v1

    goto :goto_3

    :cond_d
    :try_start_7
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/c;->e:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;->a(Ljava/util/List;)V

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->isSwitch()Z

    move-result v0

    if-eqz v0, :cond_e

    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/c;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "run finish. buildNfdWifiDetailInfos=["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :cond_e
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/c;->a(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/c;->a(Ljava/util/List;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    :goto_4
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/c;->a(I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, v2}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/c;->a(Ljava/util/List;)V

    throw v0

    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_4

    :catch_1
    move-exception v0

    goto/16 :goto_2
.end method
