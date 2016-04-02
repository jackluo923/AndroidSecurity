.class public Lcom/alipay/android/phone/home/ui/HeaderView;
.super Lcom/alipay/mobile/commonui/widget/APFrameLayout;
.source "HeaderView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

.field private c:Lcom/alipay/mobile/commonbiz/image/ImageWorker;

.field private d:Lcom/alipay/mobile/commonui/widget/APTextView;

.field private e:Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

.field private f:Lcom/alipay/mobile/commonui/widget/APImageView;

.field private g:Lcom/alipay/mobile/commonui/widget/APImageView;

.field private h:Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

.field private i:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

.field private final j:Landroid/os/Handler;

.field private k:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/alipay/mobile/commonui/widget/APFrameLayout;-><init>(Landroid/content/Context;)V

    .line 77
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/HeaderView;->j:Landroid/os/Handler;

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/HeaderView;->k:Landroid/content/BroadcastReceiver;

    .line 96
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/home/ui/HeaderView;->a(Landroid/content/Context;)V

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/commonui/widget/APFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/HeaderView;->j:Landroid/os/Handler;

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/HeaderView;->k:Landroid/content/BroadcastReceiver;

    .line 91
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/home/ui/HeaderView;->a(Landroid/content/Context;)V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 85
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/commonui/widget/APFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 77
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/HeaderView;->j:Landroid/os/Handler;

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/HeaderView;->k:Landroid/content/BroadcastReceiver;

    .line 86
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/home/ui/HeaderView;->a(Landroid/content/Context;)V

    .line 87
    return-void
.end method

.method private a()V
    .locals 5

    .prologue
    .line 164
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/HeaderView;->i:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HeaderView;->b:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HeaderView;->b:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/HeaderView;->i:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HeaderView;->i:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    if-nez v0, :cond_2

    const-string/jumbo v0, ""

    .line 169
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "HeaderView"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "refreshUserData----userInfo =[showAvatar:]"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->print(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/HeaderView;->i:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    if-eqz v1, :cond_1

    .line 173
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "HeaderView"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u94b1\u5305\u7248\u672c : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/android/phone/home/ui/HeaderView;->i:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v4}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getWalletEdition()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->print(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 191
    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/HeaderView;->c:Lcom/alipay/mobile/commonbiz/image/ImageWorker;

    new-instance v2, Lcom/alipay/android/phone/home/ui/v;

    invoke-direct {v2, p0}, Lcom/alipay/android/phone/home/ui/v;-><init>(Lcom/alipay/android/phone/home/ui/HeaderView;)V

    invoke-virtual {v1, v0, v2}, Lcom/alipay/mobile/commonbiz/image/ImageWorker;->loadImage(Ljava/lang/String;Lcom/alipay/mobile/commonbiz/image/ImageWorkerCallback;)Lcom/alipay/mobile/commonbiz/image/ImageWorker;

    .line 223
    :goto_1
    return-void

    .line 167
    :cond_2
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HeaderView;->i:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    .line 168
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserAvatar()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 220
    :cond_3
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/HeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/android/phone/openplatform/R$drawable;->m:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/android/phone/home/ui/HeaderView;->a(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method private a(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 100
    iput-object p1, p0, Lcom/alipay/android/phone/home/ui/HeaderView;->a:Landroid/content/Context;

    .line 101
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/android/phone/openplatform/R$layout;->j:I

    invoke-virtual {v0, v1, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 103
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 104
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 105
    const-class v2, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    .line 103
    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/HeaderView;->b:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    .line 106
    new-instance v0, Lcom/alipay/mobile/commonbiz/image/ImageWorker;

    invoke-direct {v0, p1}, Lcom/alipay/mobile/commonbiz/image/ImageWorker;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/HeaderView;->c:Lcom/alipay/mobile/commonbiz/image/ImageWorker;

    .line 108
    :try_start_0
    sget v0, Lcom/alipay/android/phone/openplatform/R$id;->aa:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/HeaderView;->f:Lcom/alipay/mobile/commonui/widget/APImageView;

    .line 109
    sget v0, Lcom/alipay/android/phone/openplatform/R$id;->ad:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/HeaderView;->g:Lcom/alipay/mobile/commonui/widget/APImageView;

    .line 110
    sget v0, Lcom/alipay/android/phone/openplatform/R$id;->z:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/HeaderView;->h:Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

    .line 113
    invoke-static {p1}, Lcom/alipay/mobile/mpass/badge/BadgeManager;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/mpass/badge/BadgeManager;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/android/phone/home/ui/HeaderView;->h:Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/mpass/badge/BadgeManager;->registerBadgeView(Lcom/alipay/mobile/mpass/badge/ui/AbsBadgeView;)V

    .line 117
    sget v0, Lcom/alipay/android/phone/openplatform/R$id;->i:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/HeaderView;->d:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 118
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/HeaderView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v2, p0, Lcom/alipay/android/phone/home/ui/HeaderView;->d:Lcom/alipay/mobile/commonui/widget/APTextView;

    const/16 v3, 0x14

    invoke-virtual {p0, v0, v2, v3}, Lcom/alipay/android/phone/home/ui/HeaderView;->expandViewClickArea(Landroid/app/Activity;Landroid/view/View;I)V

    .line 120
    sget v0, Lcom/alipay/android/phone/openplatform/R$id;->j:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/HeaderView;->e:Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

    .line 122
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HeaderView;->e:Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

    const-string/jumbo v1, "#AppCenter#20000076"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->setWidgetId(Ljava/lang/String;)V

    .line 124
    invoke-static {p1}, Lcom/alipay/mobile/mpass/badge/BadgeManager;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/mpass/badge/BadgeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/HeaderView;->e:Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/mpass/badge/BadgeManager;->registerBadgeView(Lcom/alipay/mobile/mpass/badge/ui/AbsBadgeView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :goto_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "com.alipay.security.login"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.alipay.security.logout"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.alipay.security.cleanAccount"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/alipay/android/phone/home/ui/x;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/home/ui/x;-><init>(Lcom/alipay/android/phone/home/ui/HeaderView;)V

    iput-object v1, p0, Lcom/alipay/android/phone/home/ui/HeaderView;->k:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/HeaderView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/phone/home/ui/HeaderView;->k:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 131
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HeaderView;->f:Lcom/alipay/mobile/commonui/widget/APImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HeaderView;->f:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HeaderView;->g:Lcom/alipay/mobile/commonui/widget/APImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HeaderView;->g:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HeaderView;->d:Lcom/alipay/mobile/commonui/widget/APTextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HeaderView;->d:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APTextView;->setClickable(Z)V

    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HeaderView;->d:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    :cond_2
    invoke-direct {p0}, Lcom/alipay/android/phone/home/ui/HeaderView;->a()V

    .line 133
    return-void

    .line 126
    :catch_0
    move-exception v0

    .line 127
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "HeaderAreaLayout"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    .line 227
    if-nez p1, :cond_0

    .line 240
    :goto_0
    return-void

    .line 230
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 231
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HeaderView;->j:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/phone/home/ui/w;

    invoke-direct {v1, p0, p1}, Lcom/alipay/android/phone/home/ui/w;-><init>(Lcom/alipay/android/phone/home/ui/HeaderView;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 238
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HeaderView;->f:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/alipay/android/phone/home/ui/HeaderView;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 226
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/home/ui/HeaderView;->a(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic access$1(Lcom/alipay/android/phone/home/ui/HeaderView;)Lcom/alipay/mobile/commonui/widget/APImageView;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HeaderView;->f:Lcom/alipay/mobile/commonui/widget/APImageView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/alipay/android/phone/home/ui/HeaderView;)V
    .locals 0

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/alipay/android/phone/home/ui/HeaderView;->a()V

    return-void
.end method


# virtual methods
.method public expandViewClickArea(Landroid/app/Activity;Landroid/view/View;I)V
    .locals 6

    .prologue
    .line 334
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 335
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 336
    iget v4, v0, Landroid/util/DisplayMetrics;->density:F

    .line 338
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 339
    new-instance v0, Lcom/alipay/android/phone/home/ui/y;

    move-object v1, p0

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/alipay/android/phone/home/ui/y;-><init>(Lcom/alipay/android/phone/home/ui/HeaderView;Landroid/view/View;IFLandroid/view/View;)V

    invoke-virtual {v5, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 357
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 318
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/alipay/android/phone/openplatform/R$id;->i:I

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/alipay/android/phone/openplatform/R$id;->j:I

    if-ne v0, v1, :cond_2

    .line 319
    :cond_0
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "sourceId"

    const-string/jumbo v2, "20000001#topIcon"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    const-string/jumbo v2, "20000002"

    const-string/jumbo v3, "20000003"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-static {}, Lcom/alipay/android/phone/home/util/HomeLogAgentUtil;->a()V

    invoke-virtual {p0}, Lcom/alipay/android/phone/home/ui/HeaderView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/mpass/badge/BadgeManager;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/mpass/badge/BadgeManager;

    move-result-object v0

    const-string/jumbo v1, "#AppCenter#20000076"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/mpass/badge/BadgeManager;->ackClick(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    :cond_1
    :goto_0
    return-void

    .line 319
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/AppLoadException;->printStackTrace()V

    goto :goto_0

    .line 321
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/alipay/android/phone/openplatform/R$id;->aa:I

    if-eq v0, v1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/alipay/android/phone/openplatform/R$id;->ad:I

    if-ne v0, v1, :cond_1

    .line 322
    :cond_3
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/HeaderView;->a:Landroid/content/Context;

    const-class v2, Lcom/alipay/android/phone/home/user/UserInfoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findTopRunningApp()Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onRefresh()V
    .locals 0

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/alipay/android/phone/home/ui/HeaderView;->a()V

    .line 138
    return-void
.end method
