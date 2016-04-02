.class public Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseActivity;
.source "ThrottleFlowActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private iconImageView:Landroid/widget/ImageView;

.field private loadingProgressBar:Landroid/widget/ProgressBar;

.field private stopTimestamp:J

.field private throttleContainer:Landroid/view/ViewGroup;

.field private timeOutTextView:Landroid/widget/TextView;

.field private titleTextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity;->TAG:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;-><init>()V

    .line 27
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity;->stopTimestamp:J

    .line 23
    return-void
.end method

.method static synthetic access$10(Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity;)V
    .locals 0

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity;->postCountdown()V

    return-void
.end method

.method static synthetic access$4(Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity;)Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity;->throttleContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$5(Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity;->loadingProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$6(Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity;->iconImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$7(Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity;)J
    .locals 2

    .prologue
    .line 27
    iget-wide v0, p0, Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity;->stopTimestamp:J

    return-wide v0
.end method

.method static synthetic access$8()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9(Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity;->timeOutTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method private loadImage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v5, -0x1

    .line 91
    .line 92
    const-class v0, Lcom/alipay/mobile/framework/service/common/ImageLoaderService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 91
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/ImageLoaderService;

    .line 94
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 95
    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    new-instance v4, Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity$1;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity$1;-><init>(Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity;)V

    move-object v3, p1

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/framework/service/common/ImageLoaderService;->startLoad(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/framework/service/common/ImageLoaderListener;II)V

    .line 130
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 132
    iget-object v1, p0, Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity;->loadingProgressBar:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 133
    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    new-instance v4, Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity$2;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity$2;-><init>(Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity;)V

    move-object v3, p2

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/framework/service/common/ImageLoaderService;->startLoad(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/framework/service/common/ImageLoaderListener;II)V

    .line 163
    :cond_1
    return-void
.end method

.method private postCountdown()V
    .locals 5

    .prologue
    .line 166
    iget-object v0, p0, Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity;->throttleContainer:Landroid/view/ViewGroup;

    new-instance v1, Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity$3;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity$3;-><init>(Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity;)V

    .line 182
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    .line 166
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 183
    return-void
.end method


# virtual methods
.method public bridge synthetic getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public onBackPressed()V
    .locals 4

    .prologue
    .line 194
    iget-wide v0, p0, Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity;->stopTimestamp:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 199
    :goto_0
    return-void

    .line 198
    :cond_0
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onCreate:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "savedInstanceState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-virtual {p0}, Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 42
    invoke-virtual {p0}, Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity;->finish()V

    .line 87
    :goto_0
    return-void

    .line 46
    :cond_0
    if-eqz p1, :cond_1

    .line 47
    invoke-virtual {p0}, Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity;->finish()V

    goto :goto_0

    .line 51
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "waittime"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 52
    if-gtz v1, :cond_2

    .line 53
    invoke-virtual {p0}, Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity;->finish()V

    goto :goto_0

    .line 57
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    int-to-long v4, v1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x1

    invoke-virtual {v0, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity;->stopTimestamp:J

    .line 60
    sget v0, Lcom/alipay/android/tablauncher/R$layout;->throttle_flow_main:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity;->setContentView(I)V

    .line 61
    sget v0, Lcom/alipay/android/tablauncher/R$id;->throttle_container:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity;->throttleContainer:Landroid/view/ViewGroup;

    .line 62
    sget v0, Lcom/alipay/android/tablauncher/R$id;->throttle_title:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity;->titleTextView:Landroid/widget/TextView;

    .line 63
    sget v0, Lcom/alipay/android/tablauncher/R$id;->throttle_time:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity;->timeOutTextView:Landroid/widget/TextView;

    .line 64
    sget v0, Lcom/alipay/android/tablauncher/R$id;->throttle_icon:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity;->iconImageView:Landroid/widget/ImageView;

    .line 65
    sget v0, Lcom/alipay/android/tablauncher/R$id;->loading:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity;->loadingProgressBar:Landroid/widget/ProgressBar;

    .line 67
    invoke-virtual {p0}, Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "background"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 68
    invoke-virtual {p0}, Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "icon"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 69
    invoke-direct {p0, v0, v2}, Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity;->loadImage(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity;->timeOutTextView:Landroid/widget/TextView;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    invoke-virtual {p0}, Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    if-eqz v0, :cond_3

    .line 75
    iget-object v1, p0, Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    :cond_3
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "color"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 80
    iget-object v1, p0, Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity;->titleTextView:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :goto_1
    invoke-direct {p0}, Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity;->postCountdown()V

    goto/16 :goto_0

    .line 81
    :catch_0
    move-exception v0

    .line 82
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity;->TAG:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 188
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onNewIntent:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 190
    return-void
.end method

.method public bridge synthetic startActivity(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public bridge synthetic startActivityForResult(Landroid/content/Intent;I)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
