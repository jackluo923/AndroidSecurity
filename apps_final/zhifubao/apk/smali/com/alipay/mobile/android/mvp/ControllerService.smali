.class public final Lcom/alipay/mobile/android/mvp/ControllerService;
.super Ljava/lang/Object;
.source "ControllerService.java"


# static fields
.field private static d:Lcom/alipay/mobile/android/mvp/ControllerService;


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/android/mvp/model/ControllerRegisteredInfo",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/alipay/mobile/android/mvp/ControllerService$ControllerContextDesc;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/android/mvp/ControllerService;->a:Ljava/util/Map;

    .line 24
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/android/mvp/ControllerService;->b:Ljava/util/Set;

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/android/mvp/ControllerService;->c:Ljava/util/Map;

    .line 32
    return-void
.end method

.method private a(Ljava/lang/Class;Ljava/lang/Class;Lcom/alipay/mobile/android/mvp/ControllerService$ControllerContextDesc;)Lcom/alipay/mobile/android/mvp/model/ControllerRegisteredInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alipay/mobile/android/mvp/MvpBaseController;",
            ">;",
            "Lcom/alipay/mobile/android/mvp/ControllerService$ControllerContextDesc;",
            ")",
            "Lcom/alipay/mobile/android/mvp/model/ControllerRegisteredInfo",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 266
    new-instance v0, Lcom/alipay/mobile/android/mvp/model/ControllerRegisteredInfo;

    invoke-direct {v0}, Lcom/alipay/mobile/android/mvp/model/ControllerRegisteredInfo;-><init>()V

    .line 267
    iput-object p1, v0, Lcom/alipay/mobile/android/mvp/model/ControllerRegisteredInfo;->controllerInterfaceClass:Ljava/lang/Class;

    .line 268
    iput-object p2, v0, Lcom/alipay/mobile/android/mvp/model/ControllerRegisteredInfo;->controllerImplClass:Ljava/lang/Class;

    .line 269
    iget-object v1, p3, Lcom/alipay/mobile/android/mvp/ControllerService$ControllerContextDesc;->controllerObjDesc:Lcom/alipay/mobile/android/mvp/ControllerService$ControllerObjDesc;

    iget-object v1, v1, Lcom/alipay/mobile/android/mvp/ControllerService$ControllerObjDesc;->ctrlProxyObj:Ljava/lang/Object;

    iput-object v1, v0, Lcom/alipay/mobile/android/mvp/model/ControllerRegisteredInfo;->controllerObj:Ljava/lang/Object;

    .line 270
    iget-object v1, p3, Lcom/alipay/mobile/android/mvp/ControllerService$ControllerContextDesc;->dataObservable:Lcom/alipay/mobile/android/mvp/DataObservable;

    iput-object v1, v0, Lcom/alipay/mobile/android/mvp/model/ControllerRegisteredInfo;->dataObservable:Lcom/alipay/mobile/android/mvp/DataObservable;

    .line 272
    iget-object v1, p0, Lcom/alipay/mobile/android/mvp/ControllerService;->a:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    return-object v0
.end method

.method private static a(Lcom/alipay/mobile/android/mvp/MvpBaseController;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 236
    :try_start_0
    new-instance v0, Lcom/alipay/mobile/android/mvp/ControllerInvocationHandler;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/android/mvp/ControllerInvocationHandler;-><init>(Lcom/alipay/mobile/android/mvp/MvpBaseController;)V

    .line 240
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 241
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 242
    invoke-virtual {v2}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v2

    .line 240
    invoke-static {v1, v2, v0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 244
    :catch_0
    move-exception v0

    .line 245
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static final declared-synchronized a()V
    .locals 2

    .prologue
    .line 43
    const-class v1, Lcom/alipay/mobile/android/mvp/ControllerService;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/android/mvp/ControllerService;->d:Lcom/alipay/mobile/android/mvp/ControllerService;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcom/alipay/mobile/android/mvp/ControllerService;

    invoke-direct {v0}, Lcom/alipay/mobile/android/mvp/ControllerService;-><init>()V

    sput-object v0, Lcom/alipay/mobile/android/mvp/ControllerService;->d:Lcom/alipay/mobile/android/mvp/ControllerService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    :cond_0
    monitor-exit v1

    return-void

    .line 43
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 325
    iget-object v0, p0, Lcom/alipay/mobile/android/mvp/ControllerService;->c:Ljava/util/Map;

    .line 326
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 325
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 327
    if-nez v0, :cond_0

    .line 328
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 329
    iget-object v1, p0, Lcom/alipay/mobile/android/mvp/ControllerService;->c:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    :goto_0
    return-void

    .line 331
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    goto :goto_0
.end method

.method private b(Ljava/lang/Class;)Lcom/alipay/mobile/android/mvp/ControllerService$ControllerContextDesc;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alipay/mobile/android/mvp/MvpBaseController;",
            ">;)",
            "Lcom/alipay/mobile/android/mvp/ControllerService$ControllerContextDesc;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 396
    iget-object v0, p0, Lcom/alipay/mobile/android/mvp/ControllerService;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 419
    :goto_0
    return-object v0

    .line 400
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/android/mvp/ControllerService;->b:Ljava/util/Set;

    .line 401
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    .line 400
    new-array v3, v0, [Lcom/alipay/mobile/android/mvp/ControllerService$ControllerContextDesc;

    .line 403
    iget-object v0, p0, Lcom/alipay/mobile/android/mvp/ControllerService;->b:Ljava/util/Set;

    invoke-interface {v0, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 406
    const/4 v0, 0x0

    :goto_1
    array-length v2, v3

    if-lt v0, v2, :cond_1

    move-object v0, v1

    .line 419
    goto :goto_0

    .line 407
    :cond_1
    aget-object v2, v3, v0

    .line 409
    iget-object v4, v2, Lcom/alipay/mobile/android/mvp/ControllerService$ControllerContextDesc;->controllerObjDesc:Lcom/alipay/mobile/android/mvp/ControllerService$ControllerObjDesc;

    if-eqz v4, :cond_2

    .line 410
    iget-object v4, v2, Lcom/alipay/mobile/android/mvp/ControllerService$ControllerContextDesc;->controllerObjDesc:Lcom/alipay/mobile/android/mvp/ControllerService$ControllerObjDesc;

    iget-object v4, v4, Lcom/alipay/mobile/android/mvp/ControllerService$ControllerObjDesc;->ctrlImplClass:Ljava/lang/Class;

    if-ne v4, p1, :cond_2

    move-object v0, v2

    .line 414
    goto :goto_0

    .line 406
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static final getInstance()Lcom/alipay/mobile/android/mvp/ControllerService;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/alipay/mobile/android/mvp/ControllerService;->d:Lcom/alipay/mobile/android/mvp/ControllerService;

    if-nez v0, :cond_0

    .line 36
    invoke-static {}, Lcom/alipay/mobile/android/mvp/ControllerService;->a()V

    .line 38
    :cond_0
    sget-object v0, Lcom/alipay/mobile/android/mvp/ControllerService;->d:Lcom/alipay/mobile/android/mvp/ControllerService;

    return-object v0
.end method


# virtual methods
.method public final findController(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alipay/mobile/android/mvp/ControllerService;->a:Ljava/util/Map;

    .line 58
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/android/mvp/model/ControllerRegisteredInfo;

    .line 59
    if-eqz v0, :cond_0

    .line 60
    iget-object v0, v0, Lcom/alipay/mobile/android/mvp/model/ControllerRegisteredInfo;->controllerObj:Ljava/lang/Object;

    .line 62
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final registerController(Ljava/lang/Class;Ljava/lang/Class;)Lcom/alipay/mobile/android/mvp/model/ControllerRegisteredInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alipay/mobile/android/mvp/MvpBaseController;",
            ">;)",
            "Lcom/alipay/mobile/android/mvp/model/ControllerRegisteredInfo",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 78
    const/4 v1, 0x0

    .line 84
    :try_start_0
    invoke-direct {p0, p2}, Lcom/alipay/mobile/android/mvp/ControllerService;->b(Ljava/lang/Class;)Lcom/alipay/mobile/android/mvp/ControllerService$ControllerContextDesc;

    move-result-object v2

    .line 87
    if-eqz v2, :cond_1

    .line 88
    iget-object v0, v2, Lcom/alipay/mobile/android/mvp/ControllerService$ControllerContextDesc;->controllerObjDesc:Lcom/alipay/mobile/android/mvp/ControllerService$ControllerObjDesc;

    if-eqz v0, :cond_1

    .line 91
    iget-object v0, p0, Lcom/alipay/mobile/android/mvp/ControllerService;->a:Ljava/util/Map;

    .line 92
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/android/mvp/model/ControllerRegisteredInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 95
    if-eqz v0, :cond_0

    .line 126
    invoke-direct {p0, p1}, Lcom/alipay/mobile/android/mvp/ControllerService;->a(Ljava/lang/Class;)V

    .line 118
    :goto_0
    return-object v0

    .line 101
    :cond_0
    :try_start_1
    invoke-direct {p0, p1, p2, v2}, Lcom/alipay/mobile/android/mvp/ControllerService;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/alipay/mobile/android/mvp/ControllerService$ControllerContextDesc;)Lcom/alipay/mobile/android/mvp/model/ControllerRegisteredInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 126
    invoke-direct {p0, p1}, Lcom/alipay/mobile/android/mvp/ControllerService;->a(Ljava/lang/Class;)V

    goto :goto_0

    .line 109
    :cond_1
    if-eqz v2, :cond_2

    .line 110
    :try_start_2
    iget-object v0, p0, Lcom/alipay/mobile/android/mvp/ControllerService;->b:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 114
    :cond_2
    new-instance v2, Lcom/alipay/mobile/android/mvp/ControllerService$ControllerContextDesc;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/android/mvp/ControllerService$ControllerContextDesc;-><init>(Lcom/alipay/mobile/android/mvp/ControllerService;)V

    new-instance v3, Lcom/alipay/mobile/android/mvp/ControllerService$ControllerObjDesc;

    invoke-direct {v3, p0}, Lcom/alipay/mobile/android/mvp/ControllerService$ControllerObjDesc;-><init>(Lcom/alipay/mobile/android/mvp/ControllerService;)V

    iput-object p2, v3, Lcom/alipay/mobile/android/mvp/ControllerService$ControllerObjDesc;->ctrlImplClass:Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/android/mvp/MvpBaseController;

    new-instance v4, Lcom/alipay/mobile/android/mvp/DataObservableImpl;

    invoke-direct {v4}, Lcom/alipay/mobile/android/mvp/DataObservableImpl;-><init>()V

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/android/mvp/MvpBaseController;->setDataObservable(Lcom/alipay/mobile/android/mvp/DataObservable;)V

    iput-object v0, v3, Lcom/alipay/mobile/android/mvp/ControllerService$ControllerObjDesc;->ctrlImplObj:Lcom/alipay/mobile/android/mvp/MvpBaseController;

    iget-object v0, v3, Lcom/alipay/mobile/android/mvp/ControllerService$ControllerObjDesc;->ctrlImplObj:Lcom/alipay/mobile/android/mvp/MvpBaseController;

    invoke-static {v0}, Lcom/alipay/mobile/android/mvp/ControllerService;->a(Lcom/alipay/mobile/android/mvp/MvpBaseController;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v3, Lcom/alipay/mobile/android/mvp/ControllerService$ControllerObjDesc;->ctrlProxyObj:Ljava/lang/Object;

    iput-object v3, v2, Lcom/alipay/mobile/android/mvp/ControllerService$ControllerContextDesc;->controllerObjDesc:Lcom/alipay/mobile/android/mvp/ControllerService$ControllerObjDesc;

    iget-object v0, v2, Lcom/alipay/mobile/android/mvp/ControllerService$ControllerContextDesc;->controllerObjDesc:Lcom/alipay/mobile/android/mvp/ControllerService$ControllerObjDesc;

    iget-object v0, v0, Lcom/alipay/mobile/android/mvp/ControllerService$ControllerObjDesc;->ctrlImplObj:Lcom/alipay/mobile/android/mvp/MvpBaseController;

    invoke-virtual {v0}, Lcom/alipay/mobile/android/mvp/MvpBaseController;->getDataObservable()Lcom/alipay/mobile/android/mvp/DataObservable;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/mobile/android/mvp/ControllerService$ControllerContextDesc;->dataObservable:Lcom/alipay/mobile/android/mvp/DataObservable;

    .line 115
    iget-object v0, p0, Lcom/alipay/mobile/android/mvp/ControllerService;->b:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 118
    invoke-direct {p0, p1, p2, v2}, Lcom/alipay/mobile/android/mvp/ControllerService;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/alipay/mobile/android/mvp/ControllerService$ControllerContextDesc;)Lcom/alipay/mobile/android/mvp/model/ControllerRegisteredInfo;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v0

    .line 126
    invoke-direct {p0, p1}, Lcom/alipay/mobile/android/mvp/ControllerService;->a(Ljava/lang/Class;)V

    goto :goto_0

    .line 121
    :catch_0
    move-exception v0

    .line 123
    :try_start_3
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 124
    :catchall_0
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    .line 126
    :goto_1
    if-nez v1, :cond_3

    .line 127
    invoke-direct {p0, p1}, Lcom/alipay/mobile/android/mvp/ControllerService;->a(Ljava/lang/Class;)V

    .line 129
    :cond_3
    throw v0

    .line 124
    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method public final unregisterController(Ljava/lang/Class;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 142
    iget-object v0, p0, Lcom/alipay/mobile/android/mvp/ControllerService;->c:Ljava/util/Map;

    .line 143
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 144
    if-eqz v0, :cond_2

    .line 145
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    .line 146
    if-lez v0, :cond_1

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/android/mvp/ControllerService;->c:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/android/mvp/ControllerService;->a:Ljava/util/Map;

    .line 155
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/android/mvp/model/ControllerRegisteredInfo;

    .line 156
    if-eqz v0, :cond_0

    .line 159
    iget-object v2, p0, Lcom/alipay/mobile/android/mvp/ControllerService;->a:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    iget-object v0, v0, Lcom/alipay/mobile/android/mvp/model/ControllerRegisteredInfo;->controllerImplClass:Ljava/lang/Class;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/android/mvp/ControllerService;->b(Ljava/lang/Class;)Lcom/alipay/mobile/android/mvp/ControllerService$ControllerContextDesc;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v3

    move v0, v1

    :goto_1
    array-length v4, v3

    if-lt v0, v4, :cond_4

    :goto_2
    if-nez v1, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/android/mvp/ControllerService;->b:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 165
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/android/mvp/ControllerService;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/alipay/mobile/android/mvp/ControllerService;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 167
    iget-object v0, p0, Lcom/alipay/mobile/android/mvp/ControllerService;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 168
    iget-object v0, p0, Lcom/alipay/mobile/android/mvp/ControllerService;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 170
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/android/mvp/ControllerService;->d:Lcom/alipay/mobile/android/mvp/ControllerService;

    goto :goto_0

    .line 162
    :cond_4
    iget-object v4, p0, Lcom/alipay/mobile/android/mvp/ControllerService;->a:Ljava/util/Map;

    aget-object v5, v3, v0

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v1, 0x1

    goto :goto_2

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
