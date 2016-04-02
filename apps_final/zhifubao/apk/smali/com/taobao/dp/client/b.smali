.class public Lcom/taobao/dp/client/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/taobao/dp/client/IDeviceSecurity;
.implements Lcom/taobao/dp/service/IInitServiceCallBack;


# static fields
.field public static final OS:Ljava/lang/String; = "android"

.field public static final PROTOCAL_VERSION:Ljava/lang/String; = "1.4.2"

.field private static final SECURITY_TOKEN_LENGTH:I = 0x20

.field public static final SERVICE:Ljava/lang/String; = "com.taobao.tdp"

.field private static final TOKEN_EX_VERSION:Ljava/lang/String; = "0"

.field public static final UNIFIED_APP_KEY:Ljava/lang/String; = "device_print_res_k1"

.field public static final UNIFIED_AUTH_CODE:Ljava/lang/String; = ""


# instance fields
.field private volatile mAppName:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mEnvironment:Lcom/taobao/dp/client/a;

.field private volatile mExactId:Ljava/lang/String;

.field private mInternalLock:Ljava/lang/Object;

.field private volatile mSecToken:Ljava/lang/String;

.field private mServiceList:Ljava/util/List;

.field private mSinglThreadExcutor:Ljava/util/concurrent/Executor;

.field private volatile mUuid:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/taobao/dp/client/b;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/taobao/dp/client/a;->c:Lcom/taobao/dp/client/a;

    iput-object v0, p0, Lcom/taobao/dp/client/b;->mEnvironment:Lcom/taobao/dp/client/a;

    iput-object v1, p0, Lcom/taobao/dp/client/b;->mSecToken:Ljava/lang/String;

    iput-object v1, p0, Lcom/taobao/dp/client/b;->mUuid:Ljava/lang/String;

    iput-object v1, p0, Lcom/taobao/dp/client/b;->mAppName:Ljava/lang/String;

    iput-object v1, p0, Lcom/taobao/dp/client/b;->mExactId:Ljava/lang/String;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/dp/client/b;->mSinglThreadExcutor:Ljava/util/concurrent/Executor;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/dp/client/b;->mServiceList:Ljava/util/List;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/taobao/dp/client/b;->mInternalLock:Ljava/lang/Object;

    return-void
.end method

.method private deviceInfoFilter(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    const-string/jumbo v0, "^"

    const-string/jumbo v1, "\\^"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2c

    const/16 v2, 0x5e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v0, ""

    goto :goto_0
.end method


# virtual methods
.method public didStrategyChanged(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/taobao/dp/client/b;->mSecToken:Ljava/lang/String;

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "DeviceSecurity getAppName appName="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/taobao/dp/client/b;->mAppName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/taobao/dp/client/b;->mAppName:Ljava/lang/String;

    return-object v0
.end method

.method protected getEnvironment(I)Lcom/taobao/dp/client/a;
    .locals 1

    packed-switch p1, :pswitch_data_0

    iget-object v0, p0, Lcom/taobao/dp/client/b;->mEnvironment:Lcom/taobao/dp/client/a;

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/taobao/dp/client/a;->a:Lcom/taobao/dp/client/a;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/taobao/dp/client/a;->b:Lcom/taobao/dp/client/a;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/taobao/dp/client/a;->c:Lcom/taobao/dp/client/a;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getSecurityToken()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "DeviceSecurity getSecurityToken start:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/taobao/dp/client/b;->mSecToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/taobao/dp/client/b;->mInternalLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/taobao/dp/client/b;->mSecToken:Ljava/lang/String;

    if-eqz v2, :cond_0

    const-string/jumbo v2, ""

    iget-object v3, p0, Lcom/taobao/dp/client/b;->mSecToken:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/taobao/dp/client/b;->mSecToken:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x20

    if-ge v2, v3, :cond_4

    :cond_0
    const/4 v0, 0x1

    iget-object v2, p0, Lcom/taobao/dp/client/b;->mSecToken:Ljava/lang/String;

    if-eqz v2, :cond_1

    const-string/jumbo v2, ""

    iget-object v3, p0, Lcom/taobao/dp/client/b;->mSecToken:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/taobao/dp/client/b;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/taobao/dp/service/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/taobao/dp/client/b;->mSecToken:Ljava/lang/String;

    :cond_2
    iget-object v2, p0, Lcom/taobao/dp/client/b;->mSecToken:Ljava/lang/String;

    if-eqz v2, :cond_3

    const-string/jumbo v2, ""

    iget-object v3, p0, Lcom/taobao/dp/client/b;->mSecToken:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    const-string/jumbo v2, "000000000000000000000000"

    iput-object v2, p0, Lcom/taobao/dp/client/b;->mSecToken:Ljava/lang/String;

    :cond_4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/taobao/dp/client/b;->init(Lcom/taobao/dp/http/IUrlRequestService;)V

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "DeviceSecurity getSecurityToken end:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/taobao/dp/client/b;->mSecToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/taobao/dp/client/b;->mSecToken:Ljava/lang/String;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getSecurityTokenEx()Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "DeviceSecurity getSecurityTokenEx start:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/taobao/dp/client/b;->mSecToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/taobao/dp/client/b;->getSecurityToken()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/taobao/dp/client/b;->mExactId:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Lcom/taobao/dp/service/a;

    iget-object v4, p0, Lcom/taobao/dp/client/b;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/taobao/dp/service/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lcom/taobao/dp/service/a;->H()Lcom/taobao/dp/bean/a;

    move-result-object v4

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, ",,,"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Lcom/taobao/dp/service/a;->c()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/taobao/dp/client/b;->deviceInfoFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Lcom/taobao/dp/service/a;->b()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/taobao/dp/client/b;->deviceInfoFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Lcom/taobao/dp/service/a;->D()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, v4, Lcom/taobao/dp/bean/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, v4, Lcom/taobao/dp/bean/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ",0"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method protected init(Lcom/taobao/dp/client/a;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/dp/http/IUrlRequestService;Lcom/taobao/dp/client/IInitResultListener;Z)I
    .locals 14

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "DeviceSecurity init reqService="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "DeviceSecurity init listener  ="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "device_print_res_k1"

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    const-string/jumbo v4, ""

    :goto_0
    if-nez v4, :cond_0

    const-string/jumbo v4, ""

    :cond_0
    iget-object v1, p0, Lcom/taobao/dp/client/b;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/taobao/dp/a/c;->c(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz p5, :cond_1

    const/4 v1, 0x0

    const/16 v2, 0x2718

    move-object/from16 v0, p5

    invoke-interface {v0, v1, v2}, Lcom/taobao/dp/client/IInitResultListener;->onInitFinished(Ljava/lang/String;I)V

    :cond_1
    const/16 v1, 0x2718

    :goto_1
    return v1

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3

    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/taobao/dp/client/b;->mAppName:Ljava/lang/String;

    :cond_3
    iget-object v1, p0, Lcom/taobao/dp/client/b;->mEnvironment:Lcom/taobao/dp/client/a;

    if-eq v1, p1, :cond_4

    invoke-virtual {p0, p1}, Lcom/taobao/dp/client/b;->setEnvironment(Lcom/taobao/dp/client/a;)V

    :cond_4
    const/4 v2, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x0

    iget-object v12, p0, Lcom/taobao/dp/client/b;->mInternalLock:Ljava/lang/Object;

    monitor-enter v12

    :try_start_0
    iget-object v1, p0, Lcom/taobao/dp/client/b;->mUuid:Ljava/lang/String;

    iget-object v13, p0, Lcom/taobao/dp/client/b;->mSecToken:Ljava/lang/String;

    iget-object v3, p0, Lcom/taobao/dp/client/b;->mEnvironment:Lcom/taobao/dp/client/a;

    if-eq v3, p1, :cond_5

    const/4 v1, 0x1

    move-object v3, v2

    move v2, v11

    :goto_2
    monitor-exit v12

    if-eqz v1, :cond_d

    if-eqz p6, :cond_b

    const/16 v1, 0x2717

    goto :goto_1

    :cond_5
    if-eqz v1, :cond_6

    if-eqz v13, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_6

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_6

    const/4 v1, 0x1

    move-object v3, v2

    move v2, v1

    move v1, v10

    goto :goto_2

    :cond_6
    if-nez p6, :cond_8

    if-nez p4, :cond_8

    if-nez p5, :cond_8

    iget-object v1, p0, Lcom/taobao/dp/client/b;->mServiceList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/dp/service/c;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "DeviceSecurity init item.isSync()="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/taobao/dp/service/c;->d()Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "DeviceSecurity init item.getUrlRequestService()="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/taobao/dp/service/c;->c()Lcom/taobao/dp/http/IUrlRequestService;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "DeviceSecurity init item.getInitResultListener()="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/taobao/dp/service/c;->a()Lcom/taobao/dp/client/IInitResultListener;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/taobao/dp/service/c;->d()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {v1}, Lcom/taobao/dp/service/c;->c()Lcom/taobao/dp/http/IUrlRequestService;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {v1}, Lcom/taobao/dp/service/c;->c()Lcom/taobao/dp/http/IUrlRequestService;

    move-result-object v3

    instance-of v3, v3, Lcom/taobao/dp/http/DefaultUrlRequestService;

    if-eqz v3, :cond_7

    invoke-virtual {v1}, Lcom/taobao/dp/service/c;->a()Lcom/taobao/dp/client/IInitResultListener;

    move-result-object v1

    if-nez v1, :cond_7

    const/4 v1, -0x1

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v12

    throw v1

    :cond_8
    :try_start_1
    new-instance v1, Lcom/taobao/dp/service/c;

    iget-object v2, p0, Lcom/taobao/dp/client/b;->mContext:Landroid/content/Context;

    move-object/from16 v3, p2

    move-object v5, p0

    move-object v6, p1

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    invoke-direct/range {v1 .. v9}, Lcom/taobao/dp/service/c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/dp/service/IInitServiceCallBack;Lcom/taobao/dp/client/a;Lcom/taobao/dp/http/IUrlRequestService;Lcom/taobao/dp/client/IInitResultListener;Z)V

    iget-object v2, p0, Lcom/taobao/dp/client/b;->mServiceList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_a

    const/4 v2, 0x1

    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "DeviceSecurity init mServiceList.add size()="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/taobao/dp/client/b;->mServiceList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "DeviceSecurity init mServiceList.add service="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/taobao/dp/client/b;->mServiceList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/taobao/dp/client/b;->mSinglThreadExcutor:Ljava/util/concurrent/Executor;

    invoke-interface {v2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_9
    move v2, v11

    move-object v3, v1

    move v1, v10

    goto/16 :goto_2

    :cond_a
    const/4 v2, 0x0

    goto :goto_3

    :cond_b
    if-eqz p5, :cond_c

    const/16 v1, 0x2717

    move-object/from16 v0, p5

    invoke-interface {v0, v13, v1}, Lcom/taobao/dp/client/IInitResultListener;->onInitFinished(Ljava/lang/String;I)V

    :cond_c
    const/16 v1, 0x2717

    goto/16 :goto_1

    :cond_d
    if-eqz v2, :cond_10

    if-eqz p6, :cond_e

    const/16 v1, 0xc8

    goto/16 :goto_1

    :cond_e
    if-eqz p5, :cond_f

    const/16 v1, 0xc8

    move-object/from16 v0, p5

    invoke-interface {v0, v13, v1}, Lcom/taobao/dp/client/IInitResultListener;->onInitFinished(Ljava/lang/String;I)V

    :cond_f
    const/16 v1, 0xc8

    goto/16 :goto_1

    :cond_10
    if-eqz v3, :cond_11

    if-eqz p6, :cond_11

    monitor-enter v3

    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_4
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-virtual {v3}, Lcom/taobao/dp/service/c;->e()I

    move-result v1

    goto/16 :goto_1

    :catchall_1
    move-exception v1

    monitor-exit v3

    throw v1

    :cond_11
    const/16 v1, 0xc8

    goto/16 :goto_1

    :catch_0
    move-exception v1

    goto :goto_4

    :cond_12
    move-object/from16 v4, p3

    goto/16 :goto_0
.end method

.method public init()V
    .locals 2

    iget-object v0, p0, Lcom/taobao/dp/client/b;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/taobao/dp/a/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/dp/client/b;->mAppName:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "DeviceSecurity init appName="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/taobao/dp/client/b;->mAppName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public init(Lcom/taobao/dp/http/IUrlRequestService;)V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "DeviceSecurity init reqService="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/taobao/dp/client/b;->mAppName:Ljava/lang/String;

    const-string/jumbo v3, ""

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lcom/taobao/dp/service/b;

    iget-object v1, p0, Lcom/taobao/dp/client/b;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/taobao/dp/service/b;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/taobao/dp/client/b;->mEnvironment:Lcom/taobao/dp/client/a;

    invoke-virtual {v0, v1}, Lcom/taobao/dp/service/b;->b(Lcom/taobao/dp/client/a;)Lcom/taobao/dp/service/b$b;

    move-result-object v0

    iget-object v2, v0, Lcom/taobao/dp/service/b$b;->a:Ljava/lang/String;

    iget-object v3, v0, Lcom/taobao/dp/service/b$b;->b:Ljava/lang/String;

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const-string/jumbo v2, "device_print_res_k1"

    const-string/jumbo v3, ""

    :cond_3
    iput-object v2, p0, Lcom/taobao/dp/client/b;->mAppName:Ljava/lang/String;

    iget-object v1, p0, Lcom/taobao/dp/client/b;->mEnvironment:Lcom/taobao/dp/client/a;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v6}, Lcom/taobao/dp/client/b;->init(Lcom/taobao/dp/client/a;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/dp/http/IUrlRequestService;Lcom/taobao/dp/client/IInitResultListener;Z)I

    return-void
.end method

.method public notifyDidChanged(Lcom/taobao/dp/service/c;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "DeviceSecurity notifyDidChanged service="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/dp/client/b;->mInternalLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p1}, Lcom/taobao/dp/service/c;->b()Lcom/taobao/dp/client/a;

    move-result-object v0

    iget-object v2, p0, Lcom/taobao/dp/client/b;->mEnvironment:Lcom/taobao/dp/client/a;

    if-ne v0, v2, :cond_0

    iput-object p2, p0, Lcom/taobao/dp/client/b;->mSecToken:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/taobao/dp/service/c;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/dp/client/b;->mUuid:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/taobao/dp/service/c;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/dp/client/b;->mExactId:Ljava/lang/String;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public notifyDidChanged(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onInitFinished(I)V
    .locals 0

    return-void
.end method

.method public onInitFinished(Lcom/taobao/dp/service/c;I)V
    .locals 7

    const/4 v2, 0x0

    const/16 v5, 0xc8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "DeviceSecurity onInitFinished service="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/taobao/dp/client/b;->mInternalLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "DeviceSecurity onInitFinished mServiceList.contains="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/taobao/dp/client/b;->mServiceList:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/dp/client/b;->mServiceList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    if-ne p2, v5, :cond_1

    iget-object v1, p0, Lcom/taobao/dp/client/b;->mServiceList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/dp/client/b;->mServiceList:Ljava/util/List;

    :goto_0
    iget-object v0, p0, Lcom/taobao/dp/client/b;->mServiceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/taobao/dp/client/b;->mServiceList:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/dp/service/c;

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/dp/service/c;

    invoke-virtual {v0}, Lcom/taobao/dp/service/c;->d()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v0, p2}, Lcom/taobao/dp/service/c;->a(I)V

    monitor-enter v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_1
    :try_start_2
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/taobao/dp/client/b;->mServiceList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v1, v0

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_2
    invoke-virtual {v0}, Lcom/taobao/dp/service/c;->a()Lcom/taobao/dp/client/IInitResultListener;

    move-result-object v4

    if-eqz v4, :cond_0

    if-ne p2, v5, :cond_3

    invoke-virtual {v0}, Lcom/taobao/dp/service/c;->a()Lcom/taobao/dp/client/IInitResultListener;

    move-result-object v0

    iget-object v4, p0, Lcom/taobao/dp/client/b;->mSecToken:Ljava/lang/String;

    invoke-interface {v0, v4, p2}, Lcom/taobao/dp/client/IInitResultListener;->onInitFinished(Ljava/lang/String;I)V

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Lcom/taobao/dp/service/c;->a()Lcom/taobao/dp/client/IInitResultListener;

    move-result-object v0

    invoke-interface {v0, v2, p2}, Lcom/taobao/dp/client/IInitResultListener;->onInitFinished(Ljava/lang/String;I)V

    goto :goto_2

    :cond_4
    if-eqz v1, :cond_5

    iget-object v0, p0, Lcom/taobao/dp/client/b;->mSinglThreadExcutor:Ljava/util/concurrent/Executor;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "DeviceSecurity onInitFinished end service = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-void

    :cond_6
    move-object v0, v1

    move-object v1, v2

    goto :goto_1

    :cond_7
    move-object v1, v2

    goto :goto_1
.end method

.method public sendLoginResult(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected declared-synchronized setEnvironment(Lcom/taobao/dp/client/a;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "DeviceSecurity setEnvironment mEnvironment="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/taobao/dp/client/b;->mEnvironment:Lcom/taobao/dp/client/a;

    invoke-virtual {v1}, Lcom/taobao/dp/client/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "DeviceSecurity setEnvironment env="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/taobao/dp/client/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/taobao/dp/client/b;->mEnvironment:Lcom/taobao/dp/client/a;

    if-eq p1, v0, :cond_2

    iget-object v1, p0, Lcom/taobao/dp/client/b;->mInternalLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iput-object p1, p0, Lcom/taobao/dp/client/b;->mEnvironment:Lcom/taobao/dp/client/a;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/dp/client/b;->mUuid:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/dp/client/b;->mSecToken:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/dp/client/b;->mExactId:Ljava/lang/String;

    iget-object v0, p0, Lcom/taobao/dp/client/b;->mServiceList:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/taobao/dp/client/b;->mServiceList:Ljava/util/List;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/dp/service/c;

    invoke-virtual {v0}, Lcom/taobao/dp/service/c;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x2717

    invoke-virtual {v0, v2}, Lcom/taobao/dp/service/c;->a(I)V

    monitor-enter v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit v0

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit v1

    throw v0

    :cond_1
    invoke-virtual {v0}, Lcom/taobao/dp/service/c;->a()Lcom/taobao/dp/client/IInitResultListener;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/taobao/dp/service/c;->a()Lcom/taobao/dp/client/IInitResultListener;

    move-result-object v0

    const/4 v2, 0x0

    const/16 v3, 0x2717

    invoke-interface {v0, v2, v3}, Lcom/taobao/dp/client/IInitResultListener;->onInitFinished(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "DeviceSecurity setEnvironment this.mServiceList size="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/taobao/dp/client/b;->mServiceList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    monitor-exit p0

    return-void
.end method
