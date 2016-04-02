.class public abstract Lcom/alipay/mobile/android/mvp/app/MvpBaseFragment;
.super Landroid/support/v4/app/Fragment;
.source "MvpBaseFragment.java"

# interfaces
.implements Lcom/alipay/mobile/android/mvp/DataObserver;


# instance fields
.field private a:Lcom/alipay/mobile/android/mvp/model/ControllerRegisteredInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alipay/mobile/android/mvp/model/ControllerRegisteredInfo",
            "<*>;"
        }
    .end annotation
.end field

.field protected mControllerObj:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/alipay/mobile/android/mvp/DataEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alipay/mobile/android/mvp/DataEvent",
            "<",
            "Lcom/alipay/mobile/android/mvp/model/MvpResult",
            "<TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 47
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .prologue
    .line 60
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alipay/mobile/android/mvp/app/MvpBaseFragment;->a:Lcom/alipay/mobile/android/mvp/model/ControllerRegisteredInfo;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/alipay/mobile/android/mvp/app/MvpBaseFragment;->a:Lcom/alipay/mobile/android/mvp/model/ControllerRegisteredInfo;

    invoke-static {v0, p0}, Lcom/alipay/mobile/android/mvp/util/MvpUtil;->unregisterController(Lcom/alipay/mobile/android/mvp/model/ControllerRegisteredInfo;Lcom/alipay/mobile/android/mvp/DataObserver;)V

    .line 70
    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 71
    return-void
.end method

.method public onException(Lcom/alipay/mobile/android/mvp/DataEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alipay/mobile/android/mvp/DataEvent",
            "<",
            "Lcom/alipay/mobile/android/mvp/model/MvpResult",
            "<TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 53
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 75
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 76
    return-void
.end method

.method protected setControllerClass(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
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
            ">;)TT;"
        }
    .end annotation

    .prologue
    .line 39
    invoke-static {p1, p2, p0}, Lcom/alipay/mobile/android/mvp/util/MvpUtil;->registerController(Ljava/lang/Class;Ljava/lang/Class;Lcom/alipay/mobile/android/mvp/DataObserver;)Lcom/alipay/mobile/android/mvp/model/ControllerRegisteredInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/android/mvp/app/MvpBaseFragment;->a:Lcom/alipay/mobile/android/mvp/model/ControllerRegisteredInfo;

    .line 40
    iget-object v0, p0, Lcom/alipay/mobile/android/mvp/app/MvpBaseFragment;->a:Lcom/alipay/mobile/android/mvp/model/ControllerRegisteredInfo;

    iget-object v0, v0, Lcom/alipay/mobile/android/mvp/model/ControllerRegisteredInfo;->controllerObj:Ljava/lang/Object;

    return-object v0
.end method
