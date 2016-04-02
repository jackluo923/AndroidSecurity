.class public Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;
.super Landroid/content/BroadcastReceiver;
.source "HomeWidgetGroup.java"

# interfaces
.implements Lcom/alipay/android/launcher/core/IFragmentWidgetGroup;
.implements Lcom/alipay/android/phone/home/widget/HomeWidgetGroupUiCallback;


# static fields
.field private static TAG:Ljava/lang/String;

.field private static final synthetic ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;


# instance fields
.field private alipayFlagText:Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

.field private container:Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout;

.field context:Landroid/content/Context;

.field private fragmentContext:Landroid/app/Activity;

.field private homeLayout:Lcom/alipay/android/phone/home/ui/HomeView;

.field private lastRefreshDataTime:J

.field private mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

.field private mId:Ljava/lang/String;

.field private microApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

.field private final redPtDelegate:Lcom/alipay/mobile/mpass/badge/ui/BadgeView$ResolveDelegate;

.field private widgets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/launcher/core/IWidget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    invoke-static {}, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->ajc$preClinit()V

    .line 37
    const-class v0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->TAG:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 52
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->lastRefreshDataTime:J

    .line 93
    new-instance v0, Lcom/alipay/android/phone/home/widget/a;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/home/widget/a;-><init>(Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;)V

    iput-object v0, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->redPtDelegate:Lcom/alipay/mobile/mpass/badge/ui/BadgeView$ResolveDelegate;

    .line 56
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 57
    const-string/jumbo v1, "com.alipay.security.login"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 58
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 60
    return-void
.end method

.method private static synthetic ajc$preClinit()V
    .locals 9

    .prologue
    .line 1
    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string/jumbo v1, "HomeWidgetGroup.java"

    const-class v2, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "onReceive"

    const-string/jumbo v3, "com.alipay.android.phone.home.widget.HomeWidgetGroup"

    const-string/jumbo v4, "android.content.Context:android.content.Intent"

    const-string/jumbo v5, "context:intent"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0xed

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    return-void
.end method

.method private initContainer()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 78
    new-instance v0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout;

    iget-object v1, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->fragmentContext:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->container:Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout;

    .line 79
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->container:Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout;

    invoke-virtual {v0, p0}, Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout;->setHomeWidgetGroupUiCallback(Lcom/alipay/android/phone/home/widget/HomeWidgetGroupUiCallback;)V

    .line 80
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->container:Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout;->setOrientation(I)V

    .line 81
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->container:Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 83
    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 81
    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->widgets:Ljava/util/List;

    .line 87
    new-instance v0, Lcom/alipay/android/phone/home/ui/HomeView;

    iget-object v1, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->fragmentContext:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/alipay/android/phone/home/ui/HomeView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->homeLayout:Lcom/alipay/android/phone/home/ui/HomeView;

    .line 88
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->homeLayout:Lcom/alipay/android/phone/home/ui/HomeView;

    iget-object v1, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->microApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/ui/HomeView;->setContext(Lcom/alipay/mobile/framework/MicroApplicationContext;)V

    .line 89
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->homeLayout:Lcom/alipay/android/phone/home/ui/HomeView;

    iget-object v1, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/ui/HomeView;->setActivityApplication(Lcom/alipay/mobile/framework/app/ActivityApplication;)V

    .line 90
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->widgets:Ljava/util/List;

    iget-object v1, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->homeLayout:Lcom/alipay/android/phone/home/ui/HomeView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    return-void
.end method

.method private static final synthetic onReceive_aroundBody0(Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;Landroid/content/Context;Landroid/content/Intent;Lorg/aspectj/lang/JoinPoint;)V
    .locals 3

    .prologue
    .line 238
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onReceive"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    const-string/jumbo v0, "com.alipay.security.login"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->TAG:Ljava/lang/String;

    .line 242
    const-string/jumbo v2, "com.alipay.security.login"

    .line 241
    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    invoke-direct {p0}, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->refreshData()V

    .line 244
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->homeLayout:Lcom/alipay/android/phone/home/ui/HomeView;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->homeLayout:Lcom/alipay/android/phone/home/ui/HomeView;

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/ui/HomeView;->onReLogin()V

    .line 248
    :cond_0
    return-void
.end method

.method private static final synthetic onReceive_aroundBody1$advice(Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;Landroid/content/Context;Landroid/content/Intent;Lorg/aspectj/lang/JoinPoint;Lcom/alipay/mobile/aspect/Monitor;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Ljava/lang/Object;
    .locals 10

    .prologue
    .line 86
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    .line 87
    invoke-interface/range {p6 .. p6}, Lorg/aspectj/lang/JoinPoint;->getArgs()[Ljava/lang/Object;

    move-result-object v1

    .line 88
    invoke-interface/range {p6 .. p6}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v2

    .line 90
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 91
    invoke-static {p0, p1, p2, p3}, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->onReceive_aroundBody0(Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;Landroid/content/Context;Landroid/content/Intent;Lorg/aspectj/lang/JoinPoint;)V

    .line 92
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 93
    const-string/jumbo v7, "Monitor"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "onReceive at: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v8, ", Intent: "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v8, 0x1

    aget-object v1, v1, v8

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", cost:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sub-long v2, v5, v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ms."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v7, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const/4 v0, 0x0

    return-object v0
.end method

.method private refreshData()V
    .locals 6

    .prologue
    .line 171
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 172
    iget-wide v2, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->lastRefreshDataTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    iput-wide v0, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->lastRefreshDataTime:J

    .line 177
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->homeLayout:Lcom/alipay/android/phone/home/ui/HomeView;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->homeLayout:Lcom/alipay/android/phone/home/ui/HomeView;

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/ui/HomeView;->onRefresh()V

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 64
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 66
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->homeLayout:Lcom/alipay/android/phone/home/ui/HomeView;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->homeLayout:Lcom/alipay/android/phone/home/ui/HomeView;

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/ui/HomeView;->destroy()V

    .line 70
    :cond_0
    return-void
.end method

.method public getAllWidgets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/launcher/core/IWidget;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->widgets:Ljava/util/List;

    return-object v0
.end method

.method public getBadgeView()Landroid/view/View;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->alipayFlagText:Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getIndicator()Landroid/view/View;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 112
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "getIndicator"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->fragmentContext:Landroid/app/Activity;

    .line 116
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 117
    sget v1, Lcom/alipay/android/phone/openplatform/R$layout;->a:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 116
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 120
    sget v1, Lcom/alipay/android/phone/openplatform/R$id;->f:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

    .line 119
    iput-object v1, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->alipayFlagText:Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

    .line 121
    iget-object v1, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->alipayFlagText:Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

    iget-object v2, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->redPtDelegate:Lcom/alipay/mobile/mpass/badge/ui/BadgeView$ResolveDelegate;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->setResolveDelegate(Lcom/alipay/mobile/mpass/badge/ui/BadgeView$ResolveDelegate;)V

    .line 122
    iget-object v1, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/alipay/mobile/mpass/badge/BadgeManager;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/mpass/badge/BadgeManager;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->alipayFlagText:Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/mpass/badge/BadgeManager;->registerBadgeView(Lcom/alipay/mobile/mpass/badge/ui/AbsBadgeView;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    .line 131
    :goto_0
    sget v0, Lcom/alipay/android/phone/openplatform/R$id;->Q:I

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 130
    check-cast v0, Landroid/widget/TextView;

    .line 132
    iget-object v2, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->fragmentContext:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 133
    sget v3, Lcom/alipay/android/phone/openplatform/R$drawable;->l:I

    .line 132
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 134
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v3

    .line 135
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v4

    .line 134
    invoke-virtual {v2, v6, v6, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 137
    iget-object v3, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->fragmentContext:Landroid/app/Activity;

    sget v4, Lcom/alipay/android/phone/openplatform/R$string;->a:I

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    invoke-virtual {v0, v5, v2, v5, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 143
    return-object v1

    .line 125
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->fragmentContext:Landroid/app/Activity;

    .line 124
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 125
    sget v1, Lcom/alipay/android/phone/openplatform/R$layout;->b:I

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 124
    check-cast v0, Landroid/widget/RelativeLayout;

    move-object v1, v0

    goto :goto_0
.end method

.method public getView()Landroid/view/View;
    .locals 5

    .prologue
    .line 148
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getView:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->container:Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout;

    if-nez v0, :cond_1

    .line 150
    invoke-direct {p0}, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->initContainer()V

    .line 152
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->widgets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 161
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->container:Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout;

    return-object v0

    .line 152
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/launcher/core/IWidget;

    .line 153
    if-eqz v0, :cond_0

    .line 154
    invoke-interface {v0}, Lcom/alipay/android/launcher/core/IWidget;->getView()Landroid/view/View;

    move-result-object v0

    .line 155
    if-eqz v0, :cond_0

    .line 156
    iget-object v2, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->container:Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout;

    invoke-virtual {v2, v0}, Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 217
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->homeLayout:Lcom/alipay/android/phone/home/ui/HomeView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->homeLayout:Lcom/alipay/android/phone/home/ui/HomeView;

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/ui/HomeView;->onKeyDownEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    const/4 v0, 0x1

    .line 223
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .prologue
    .line 1
    sget-object v0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0, p1, p2}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v3

    invoke-static {}, Lcom/alipay/mobile/aspect/Monitor;->aspectOf()Lcom/alipay/mobile/aspect/Monitor;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->onReceive_aroundBody1$advice(Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;Landroid/content/Context;Landroid/content/Intent;Lorg/aspectj/lang/JoinPoint;Lcom/alipay/mobile/aspect/Monitor;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Ljava/lang/Object;

    return-void
.end method

.method public onRefresh()V
    .locals 3

    .prologue
    .line 166
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onRefresh"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 184
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onResume"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    invoke-direct {p0}, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->refreshData()V

    .line 186
    return-void
.end method

.method public onReturn()V
    .locals 3

    .prologue
    .line 190
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onReturn"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-direct {p0}, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->refreshData()V

    .line 192
    return-void
.end method

.method public setActApplication(Lcom/alipay/mobile/framework/app/ActivityApplication;)V
    .locals 0

    .prologue
    .line 228
    iput-object p1, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    .line 229
    return-void
.end method

.method public setContext(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 202
    iput-object p1, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->fragmentContext:Landroid/app/Activity;

    .line 203
    return-void
.end method

.method public setContext(Lcom/alipay/mobile/framework/MicroApplicationContext;)V
    .locals 1

    .prologue
    .line 196
    iput-object p1, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->microApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    .line 197
    invoke-interface {p1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->context:Landroid/content/Context;

    .line 198
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 207
    iput-object p1, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;->mId:Ljava/lang/String;

    .line 208
    return-void
.end method

.method public showGuide()V
    .locals 0

    .prologue
    .line 234
    return-void
.end method
