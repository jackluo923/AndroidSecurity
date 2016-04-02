.class public final Lcom/alipay/mobile/android/mvp/util/MvpUtil;
.super Ljava/lang/Object;
.source "MvpUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final registerController(Ljava/lang/Class;Ljava/lang/Class;Lcom/alipay/mobile/android/mvp/DataObserver;)Lcom/alipay/mobile/android/mvp/model/ControllerRegisteredInfo;
    .locals 2
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
            "Lcom/alipay/mobile/android/mvp/DataObserver;",
            ")",
            "Lcom/alipay/mobile/android/mvp/model/ControllerRegisteredInfo",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 24
    invoke-static {}, Lcom/alipay/mobile/android/mvp/ControllerService;->getInstance()Lcom/alipay/mobile/android/mvp/ControllerService;

    move-result-object v0

    .line 26
    invoke-virtual {v0, p0, p1}, Lcom/alipay/mobile/android/mvp/ControllerService;->registerController(Ljava/lang/Class;Ljava/lang/Class;)Lcom/alipay/mobile/android/mvp/model/ControllerRegisteredInfo;

    move-result-object v0

    .line 29
    if-eqz p2, :cond_0

    .line 30
    iget-object v1, v0, Lcom/alipay/mobile/android/mvp/model/ControllerRegisteredInfo;->dataObservable:Lcom/alipay/mobile/android/mvp/DataObservable;

    invoke-interface {v1, p2}, Lcom/alipay/mobile/android/mvp/DataObservable;->addDataObserver(Lcom/alipay/mobile/android/mvp/DataObserver;)V

    .line 33
    :cond_0
    return-object v0
.end method

.method public static final unregisterController(Lcom/alipay/mobile/android/mvp/model/ControllerRegisteredInfo;Lcom/alipay/mobile/android/mvp/DataObserver;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alipay/mobile/android/mvp/model/ControllerRegisteredInfo",
            "<TT;>;",
            "Lcom/alipay/mobile/android/mvp/DataObserver;",
            ")V"
        }
    .end annotation

    .prologue
    .line 42
    if-eqz p0, :cond_1

    .line 44
    iget-object v0, p0, Lcom/alipay/mobile/android/mvp/model/ControllerRegisteredInfo;->dataObservable:Lcom/alipay/mobile/android/mvp/DataObservable;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 45
    iget-object v0, p0, Lcom/alipay/mobile/android/mvp/model/ControllerRegisteredInfo;->dataObservable:Lcom/alipay/mobile/android/mvp/DataObservable;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/android/mvp/DataObservable;->deleteDataObserver(Lcom/alipay/mobile/android/mvp/DataObserver;)V

    .line 48
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/android/mvp/ControllerService;->getInstance()Lcom/alipay/mobile/android/mvp/ControllerService;

    move-result-object v0

    .line 49
    iget-object v1, p0, Lcom/alipay/mobile/android/mvp/model/ControllerRegisteredInfo;->controllerInterfaceClass:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/android/mvp/ControllerService;->unregisterController(Ljava/lang/Class;)V

    .line 51
    :cond_1
    return-void
.end method
