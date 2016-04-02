.class public abstract Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;
.super Ljava/lang/Object;
.source "HomeRpcExcutor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<BaseRpcResponse:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HomeRpcExcutor"


# instance fields
.field private context:Landroid/app/Activity;

.field private flowTipView:Lcom/alipay/mobile/commonui/widget/APFlowTipView;

.field private final handler:Landroid/os/Handler;

.field private layoutContainer:Landroid/widget/LinearLayout;

.field private final microApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

.field private rootLayout:Landroid/widget/RelativeLayout;

.field private final rpcService:Lcom/alipay/mobile/framework/service/common/RpcService;

.field private running:Z

.field private showNetworkErrorView:Z

.field private siblingId:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;->handler:Landroid/os/Handler;

    .line 39
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 41
    const-class v1, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;->rpcService:Lcom/alipay/mobile/framework/service/common/RpcService;

    .line 47
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;->microApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;->showNetworkErrorView:Z

    .line 62
    iput-object v3, p0, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;->rootLayout:Landroid/widget/RelativeLayout;

    .line 67
    iput-object v3, p0, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;->layoutContainer:Landroid/widget/LinearLayout;

    .line 73
    iput v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;->siblingId:I

    .line 75
    iput-boolean v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;->running:Z

    .line 82
    iput-boolean v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;->showNetworkErrorView:Z

    .line 83
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;->microApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getTopActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 84
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;

    if-eqz v1, :cond_0

    .line 85
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 86
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;->context:Landroid/app/Activity;

    .line 88
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/widget/RelativeLayout;I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;->handler:Landroid/os/Handler;

    .line 39
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 41
    const-class v1, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;->rpcService:Lcom/alipay/mobile/framework/service/common/RpcService;

    .line 47
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;->microApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    .line 57
    iput-boolean v3, p0, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;->showNetworkErrorView:Z

    .line 62
    iput-object v4, p0, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;->rootLayout:Landroid/widget/RelativeLayout;

    .line 67
    iput-object v4, p0, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;->layoutContainer:Landroid/widget/LinearLayout;

    .line 73
    iput v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;->siblingId:I

    .line 75
    iput-boolean v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;->running:Z

    .line 97
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;->context:Landroid/app/Activity;

    .line 98
    iput-boolean v3, p0, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;->showNetworkErrorView:Z

    .line 99
    iput-object p2, p0, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;->rootLayout:Landroid/widget/RelativeLayout;

    .line 100
    iput p3, p0, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;->siblingId:I

    .line 101
    return-void
.end method

.method static synthetic access$0(Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$Location;)V
    .locals 0

    .prologue
    .line 185
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;->executeRpcTask(Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$Location;)V

    return-void
.end method

.method static synthetic access$1(Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 246
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;->showNetworkErrorView(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2(Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 400
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;->showToastTip(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3(Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 281
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;->showEmptyView(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4(Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 315
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;->showWarningView(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5(Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;->context:Landroid/app/Activity;

    return-object v0
.end method

.method private executeRpcTask(Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$Location;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 186
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;->running:Z

    .line 189
    invoke-virtual {p0, p1}, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;->execute(Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$Location;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    iput-boolean v3, p0, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;->running:Z

    .line 206
    :try_start_1
    invoke-virtual {p0}, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;->onRpcFinish()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    .line 211
    :goto_0
    return-void

    .line 190
    :catch_0
    move-exception v0

    .line 191
    :try_start_2
    const-string/jumbo v1, "HomeRpcExcutor"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 192
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;->onRpcException(Lcom/alipay/mobile/common/rpc/RpcException;[Ljava/lang/Object;)V

    .line 193
    iget-boolean v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;->showNetworkErrorView:Z

    if-eqz v1, :cond_0

    .line 194
    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getCode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;->showRpcErrorTip(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 204
    :cond_0
    iput-boolean v3, p0, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;->running:Z

    .line 206
    :try_start_3
    invoke-virtual {p0}, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;->onRpcFinish()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 207
    :catch_1
    move-exception v0

    .line 208
    const-string/jumbo v1, "HomeRpcExcutor"

    const-string/jumbo v2, "RpcExcutor.onRpcFinish\u6267\u884c\u5f02\u5e38\uff0c\u8bf7\u5904\u7406"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 196
    :catch_2
    move-exception v0

    .line 197
    :try_start_4
    const-string/jumbo v1, "HomeRpcExcutor"

    const-string/jumbo v2, "RpcExcutor.excute\u6267\u884c\u5f02\u5e38\uff0c\u8bf7\u5904\u7406"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 199
    const/4 v1, 0x0

    :try_start_5
    invoke-virtual {p0, v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;->onException(Ljava/lang/Exception;[Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 204
    :goto_1
    iput-boolean v3, p0, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;->running:Z

    .line 206
    :try_start_6
    invoke-virtual {p0}, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;->onRpcFinish()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_0

    .line 207
    :catch_3
    move-exception v0

    .line 208
    const-string/jumbo v1, "HomeRpcExcutor"

    const-string/jumbo v2, "RpcExcutor.onRpcFinish\u6267\u884c\u5f02\u5e38\uff0c\u8bf7\u5904\u7406"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 200
    :catch_4
    move-exception v0

    .line 201
    :try_start_7
    const-string/jumbo v1, "HomeRpcExcutor"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    .line 203
    :catchall_0
    move-exception v0

    .line 204
    iput-boolean v3, p0, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;->running:Z

    .line 206
    :try_start_8
    invoke-virtual {p0}, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;->onRpcFinish()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 210
    :goto_2
    throw v0

    .line 207
    :catch_5
    move-exception v1

    .line 208
    const-string/jumbo v2, "HomeRpcExcutor"

    const-string/jumbo v3, "RpcExcutor.onRpcFinish\u6267\u884c\u5f02\u5e38\uff0c\u8bf7\u5904\u7406"

    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 207
    :catch_6
    move-exception v0

    .line 208
    const-string/jumbo v1, "HomeRpcExcutor"

    const-string/jumbo v2, "RpcExcutor.onRpcFinish\u6267\u884c\u5f02\u5e38\uff0c\u8bf7\u5904\u7406"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private initView()Z
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 126
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;->flowTipView:Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    if-nez v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;->context:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;->rootLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;->siblingId:I

    if-lez v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;->context:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/android/phone/discovery/o2ohome/R$layout;->view_flowtip_home:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;->layoutContainer:Landroid/widget/LinearLayout;

    .line 133
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;->layoutContainer:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor$1;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor$1;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;->layoutContainer:Landroid/widget/LinearLayout;

    sget v1, Lcom/alipay/android/phone/discovery/o2ohome/R$id;->flowtip_view:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;->flowTipView:Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    .line 141
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 142
    const/4 v1, 0x3

    iget v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;->siblingId:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 143
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;->layoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;->rootLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;->layoutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;->flowTipView:Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showEmptyView(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 282
    invoke-direct {p0}, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;->initView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;->flowTipView:Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->resetFlowTipType(I)V

    .line 284
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;->flowTipView:Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->setTips(Ljava/lang/String;)V

    .line 285
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;->flowTipView:Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->getActionButton()Lcom/alipay/mobile/commonui/widget/APButton;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setVisibility(I)V

    .line 286
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;->flowTipView:Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;->context:Landroid/app/Activity;

    sget v2, Lcom/alipay/android/phone/discovery/o2ohome/R$string;->flow_reload:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor$6;

    invoke-direct {v2, p0}, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor$6;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;)V

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->setAction(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 294
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;->layoutContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 296
    :cond_0
    return-void
.end method

.method private showNetworkErrorView(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 247
    invoke-direct {p0}, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;->initView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;->flowTipView:Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->resetFlowTipType(I)V

    .line 249
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;->flowTipView:Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->setTips(Ljava/lang/String;)V

    .line 250
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;->flowTipView:Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;->context:Landroid/app/Activity;

    sget v2, Lcom/alipay/android/phone/discovery/o2ohome/R$string;->flow_try_again:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 251
    new-instance v2, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor$4;

    invoke-direct {v2, p0}, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor$4;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;)V

    .line 250
    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->setAction(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 258
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;->layoutContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 260
    :cond_0
    return-void
.end method

.method private showRpcErrorTip(I)V
    .locals 2

    .prologue
    .line 215
    packed-switch p1, :pswitch_data_0

    .line 224
    :pswitch_0
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;->context:Landroid/app/Activity;

    sget v1, Lcom/alipay/android/phone/discovery/o2ohome/R$string;->flow_network_default:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 225
    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;->showEmptyTip(Ljava/lang/String;)V

    .line 228
    :goto_0
    return-void

    .line 220
    :pswitch_1
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;->context:Landroid/app/Activity;

    sget v1, Lcom/alipay/android/phone/discovery/o2ohome/R$string;->flow_network_error:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 221
    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;->showNetworkErrorTip(Ljava/lang/String;)V

    goto :goto_0

    .line 215
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private showToastTip(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 401
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;->context:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;->context:Landroid/app/Activity;

    check-cast v0, Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;->toast(Ljava/lang/String;I)V

    .line 404
    :cond_0
    return-void
.end method

.method private showWarningView(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 316
    invoke-direct {p0}, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;->initView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;->flowTipView:Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->resetFlowTipType(I)V

    .line 318
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;->flowTipView:Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->setTips(Ljava/lang/String;)V

    .line 319
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;->flowTipView:Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->getActionButton()Lcom/alipay/mobile/commonui/widget/APButton;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setVisibility(I)V

    .line 320
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;->flowTipView:Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;->context:Landroid/app/Activity;

    sget v2, Lcom/alipay/android/phone/discovery/o2ohome/R$string;->flow_reload:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor$8;

    invoke-direct {v2, p0}, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor$8;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;)V

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->setAction(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 328
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;->layoutContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 330
    :cond_0
    return-void
.end method


# virtual methods
.method public abstract actionButtonClick()V
.end method

.method public abstract execute(Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$Location;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$Location;",
            ")TBaseRpcResponse;"
        }
    .end annotation
.end method

.method public getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
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
    .line 109
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;->rpcService:Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getServiceByInterface(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 118
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;->microApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hideTipView()V
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;->layoutContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;->layoutContainer:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 159
    :cond_0
    return-void
.end method

.method public abstract isHomePageEmpty()Z
.end method

.method public varargs onException(Ljava/lang/Exception;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 372
    const-string/jumbo v0, "ExtRpcAction"

    invoke-static {v0, p1}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 373
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;->context:Landroid/app/Activity;

    new-instance v1, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor$9;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor$9;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 384
    return-void
.end method

.method public varargs onNetworkError(Lcom/alipay/mobile/common/rpc/RpcException;[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 357
    return-void
.end method

.method public varargs onRpcException(Lcom/alipay/mobile/common/rpc/RpcException;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 364
    const-string/jumbo v0, "ExtRpcAction"

    invoke-static {v0, p1}, Lcom/alipay/mobile/common/logging/LogCatLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 365
    return-void
.end method

.method public abstract onRpcFinish()V
.end method

.method public runOnUiThread(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 387
    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;->runOnUiThreadDelay(Ljava/lang/Runnable;J)V

    .line 388
    return-void
.end method

.method public runOnUiThreadDelay(Ljava/lang/Runnable;J)V
    .locals 2

    .prologue
    .line 391
    if-eqz p1, :cond_0

    .line 392
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_1

    .line 393
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 398
    :cond_0
    :goto_0
    return-void

    .line 395
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public showEmptyTip(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 269
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;->context:Landroid/app/Activity;

    new-instance v1, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor$5;

    invoke-direct {v1, p0, p1}, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor$5;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 279
    return-void
.end method

.method public showNetworkErrorTip(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;->context:Landroid/app/Activity;

    new-instance v1, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor$3;

    invoke-direct {v1, p0, p1}, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor$3;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 244
    return-void
.end method

.method public showWarningTip(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 303
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;->context:Landroid/app/Activity;

    new-instance v1, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor$7;

    invoke-direct {v1, p0, p1}, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor$7;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 313
    return-void
.end method

.method public start(Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$Location;)V
    .locals 3

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;->hideTipView()V

    .line 172
    const-class v0, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;->getServiceByInterface(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    .line 173
    new-instance v1, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor$2;

    invoke-direct {v1, p0, p1}, Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor$2;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/HomeRpcExcutor;Lcom/alipay/android/phone/discovery/o2ohome/LocationCityMgr$Location;)V

    .line 178
    const-string/jumbo v2, "HomeRpcExcutor"

    .line 173
    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;->parallelExecute(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 179
    return-void
.end method
