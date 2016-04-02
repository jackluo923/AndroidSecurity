.class public Lcom/alipay/mobile/quinox/splash/WelcomeSplasher;
.super Ljava/lang/Object;
.source "WelcomeSplasher.java"


# static fields
.field static final PREVIEW_TIME_DELTA:I = 0x1f4

.field private static final SECOND:I = 0x3e8

.field static final TAG:Ljava/lang/String; = "WelcomeSplasher"


# instance fields
.field private activity:Landroid/app/Activity;

.field public app:Lcom/alipay/mobile/quinox/splash/SplashGetter$Splasher;

.field getter:Lcom/alipay/mobile/quinox/splash/SplashGetter;

.field private volatile isFinished:Z

.field isFirstStart:Z

.field private isRuning:Z

.field private mBackGround:Landroid/widget/ImageView;

.field private mLaunchRouter:Ljava/lang/Object;

.field private showTime:Ljava/lang/String;

.field private thread:Ljava/lang/Thread;

.field private welcomeScheme:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-boolean v0, p0, Lcom/alipay/mobile/quinox/splash/WelcomeSplasher;->isFinished:Z

    .line 46
    iput-boolean v0, p0, Lcom/alipay/mobile/quinox/splash/WelcomeSplasher;->isRuning:Z

    .line 79
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/quinox/splash/WelcomeSplasher;->welcomeScheme:Ljava/lang/String;

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/quinox/splash/WelcomeSplasher;->isFirstStart:Z

    .line 31
    iput-object p1, p0, Lcom/alipay/mobile/quinox/splash/WelcomeSplasher;->activity:Landroid/app/Activity;

    .line 32
    iget-object v0, p0, Lcom/alipay/mobile/quinox/splash/WelcomeSplasher;->activity:Landroid/app/Activity;

    const-string/jumbo v1, "id"

    const-string/jumbo v2, "client_bg"

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/quinox/splash/ResUtils;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alipay/mobile/quinox/splash/WelcomeSplasher;->mBackGround:Landroid/widget/ImageView;

    .line 33
    return-void
.end method

.method static synthetic access$0(Lcom/alipay/mobile/quinox/splash/WelcomeSplasher;)V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/splash/WelcomeSplasher;->doStartEntry()V

    return-void
.end method

.method static synthetic access$1(Lcom/alipay/mobile/quinox/splash/WelcomeSplasher;Z)V
    .locals 0

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/alipay/mobile/quinox/splash/WelcomeSplasher;->isRuning:Z

    return-void
.end method

.method static synthetic access$2(Lcom/alipay/mobile/quinox/splash/WelcomeSplasher;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/alipay/mobile/quinox/splash/WelcomeSplasher;->showTime:Ljava/lang/String;

    return-object v0
.end method

.method public static dip2px(Landroid/content/Context;F)I
    .locals 2

    .prologue
    .line 143
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 144
    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private doStartEntry()V
    .locals 3

    .prologue
    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/quinox/splash/WelcomeSplasher;->isFinished:Z

    .line 94
    iget-object v0, p0, Lcom/alipay/mobile/quinox/splash/WelcomeSplasher;->mLaunchRouter:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 95
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AlipayLauncherActivityAgent"

    const-string/jumbo v2, "doStartEntry() from WelcomeSplasher (vs AlipayLauncherActivityAgent)"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/alipay/mobile/quinox/splash/WelcomeSplasher;->mLaunchRouter:Ljava/lang/Object;

    invoke-static {v0}, Lcom/alipay/mobile/quinox/splash/AlipayLauncherActivityAgent;->doStartEntry(Ljava/lang/Object;)V

    .line 98
    :cond_0
    return-void
.end method

.method private getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    .line 164
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 165
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 166
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 170
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 172
    :try_start_0
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 173
    if-nez v0, :cond_0

    .line 174
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "welcome"

    .line 175
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "decode bitmap = null,path = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 174
    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    new-instance v1, Lcom/alipay/mobile/quinox/splash/WelcomeSplasher$DeleteThread;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/quinox/splash/WelcomeSplasher$DeleteThread;-><init>(Lcom/alipay/mobile/quinox/splash/WelcomeSplasher;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alipay/mobile/quinox/splash/WelcomeSplasher$DeleteThread;->start()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    :cond_0
    :goto_0
    return-object v0

    .line 179
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 182
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getPrview(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 159
    invoke-direct {p0, p1}, Lcom/alipay/mobile/quinox/splash/WelcomeSplasher;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 51
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/mobile/quinox/splash/WelcomeSplasher$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/quinox/splash/WelcomeSplasher$1;-><init>(Lcom/alipay/mobile/quinox/splash/WelcomeSplasher;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/alipay/mobile/quinox/splash/WelcomeSplasher;->thread:Ljava/lang/Thread;

    .line 77
    return-void
.end method

.method private showPreview(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 149
    invoke-direct {p0, p1}, Lcom/alipay/mobile/quinox/splash/WelcomeSplasher;->getPrview(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 151
    if-nez v0, :cond_0

    .line 156
    :goto_0
    return-void

    .line 152
    :cond_0
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 153
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {v1, v3, v3, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 154
    iget-object v0, p0, Lcom/alipay/mobile/quinox/splash/WelcomeSplasher;->mBackGround:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public static sp2px(Landroid/content/Context;F)I
    .locals 2

    .prologue
    .line 138
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 139
    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 236
    iget-object v0, p0, Lcom/alipay/mobile/quinox/splash/WelcomeSplasher;->mBackGround:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/alipay/mobile/quinox/splash/WelcomeSplasher;->mBackGround:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/alipay/mobile/quinox/splash/WelcomeSplasher;->mBackGround:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 239
    iput-object v1, p0, Lcom/alipay/mobile/quinox/splash/WelcomeSplasher;->mBackGround:Landroid/widget/ImageView;

    .line 243
    :cond_0
    return-void
.end method

.method public isFinished()Z
    .locals 1

    .prologue
    .line 249
    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/splash/WelcomeSplasher;->isFinished:Z

    return v0
.end method

.method public performUriLaunch(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 82
    iput-object p1, p0, Lcom/alipay/mobile/quinox/splash/WelcomeSplasher;->welcomeScheme:Ljava/lang/String;

    .line 83
    iget-object v0, p0, Lcom/alipay/mobile/quinox/splash/WelcomeSplasher;->welcomeScheme:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/alipay/mobile/quinox/splash/WelcomeSplasher;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/quinox/splash/WelcomeSplasher;->welcomeScheme:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 85
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/splash/WelcomeSplasher;->doStartEntry()V

    .line 87
    :cond_0
    return-void
.end method

.method public setLaunchRouter(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/alipay/mobile/quinox/splash/WelcomeSplasher;->mLaunchRouter:Ljava/lang/Object;

    .line 37
    return-void
.end method

.method public showFirstDeployImage()V
    .locals 4

    .prologue
    .line 40
    iget-object v0, p0, Lcom/alipay/mobile/quinox/splash/WelcomeSplasher;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/alipay/mobile/quinox/splash/WelcomeSplasher;->activity:Landroid/app/Activity;

    const-string/jumbo v2, "id"

    const-string/jumbo v3, "first_deploy_logo"

    invoke-static {v1, v2, v3}, Lcom/alipay/mobile/quinox/splash/ResUtils;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 41
    iget-object v1, p0, Lcom/alipay/mobile/quinox/splash/WelcomeSplasher;->activity:Landroid/app/Activity;

    const-string/jumbo v2, "drawable"

    const-string/jumbo v3, "first_deploy_logo"

    invoke-static {v1, v2, v3}, Lcom/alipay/mobile/quinox/splash/ResUtils;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 42
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 43
    return-void
.end method

.method public skipPreview()V
    .locals 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/alipay/mobile/quinox/splash/WelcomeSplasher;->mBackGround:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/alipay/mobile/quinox/splash/WelcomeSplasher;->mBackGround:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 220
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/quinox/splash/WelcomeSplasher;->isFinished:Z

    .line 221
    return-void
.end method

.method public startWelcome()V
    .locals 7

    .prologue
    .line 105
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 106
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v3, "welcome"

    const-string/jumbo v4, "start Welcome 000 "

    invoke-interface {v0, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :try_start_0
    new-instance v0, Lcom/alipay/mobile/quinox/splash/SplashGetter;

    iget-object v3, p0, Lcom/alipay/mobile/quinox/splash/WelcomeSplasher;->activity:Landroid/app/Activity;

    invoke-direct {v0, v3}, Lcom/alipay/mobile/quinox/splash/SplashGetter;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/alipay/mobile/quinox/splash/WelcomeSplasher;->getter:Lcom/alipay/mobile/quinox/splash/SplashGetter;

    .line 109
    iget-object v0, p0, Lcom/alipay/mobile/quinox/splash/WelcomeSplasher;->getter:Lcom/alipay/mobile/quinox/splash/SplashGetter;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/splash/SplashGetter;->getSplasher()Lcom/alipay/mobile/quinox/splash/SplashGetter$Splasher;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/splash/WelcomeSplasher;->app:Lcom/alipay/mobile/quinox/splash/SplashGetter$Splasher;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v3, "welcome"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "start Welcome "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v1, v5, v1

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/alipay/mobile/quinox/splash/WelcomeSplasher;->app:Lcom/alipay/mobile/quinox/splash/SplashGetter$Splasher;

    if-nez v0, :cond_1

    .line 115
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "welcome"

    const-string/jumbo v2, "start Welcome 999 "

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/splash/WelcomeSplasher;->doStartEntry()V

    .line 135
    :cond_0
    :goto_1
    return-void

    .line 110
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 118
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "welcome"

    const-string/jumbo v2, "start Welcome 1"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/quinox/splash/WelcomeSplasher;->getter:Lcom/alipay/mobile/quinox/splash/SplashGetter;

    invoke-virtual {v1}, Lcom/alipay/mobile/quinox/splash/SplashGetter;->getHoverTime()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/splash/WelcomeSplasher;->showTime:Ljava/lang/String;

    .line 120
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "welcome"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "showTime = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/quinox/splash/WelcomeSplasher;->showTime:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/alipay/mobile/quinox/splash/WelcomeSplasher;->activity:Landroid/app/Activity;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/quinox/splash/WelcomeSplasher;->init(Landroid/content/Context;)V

    .line 122
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "welcome"

    const-string/jumbo v2, "start Welcome 2"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/alipay/mobile/quinox/splash/WelcomeSplasher;->getter:Lcom/alipay/mobile/quinox/splash/SplashGetter;

    iget-object v1, p0, Lcom/alipay/mobile/quinox/splash/WelcomeSplasher;->app:Lcom/alipay/mobile/quinox/splash/SplashGetter$Splasher;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/quinox/splash/SplashGetter;->getPath(Lcom/alipay/mobile/quinox/splash/SplashGetter$Splasher;)Ljava/lang/String;

    move-result-object v0

    .line 125
    :try_start_1
    invoke-direct {p0, v0}, Lcom/alipay/mobile/quinox/splash/WelcomeSplasher;->showPreview(Ljava/lang/String;)V

    .line 126
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "welcome"

    const-string/jumbo v2, "start Welcome 3"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/alipay/mobile/quinox/splash/WelcomeSplasher;->mBackGround:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/splash/WelcomeSplasher;->isRuning:Z

    if-nez v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/alipay/mobile/quinox/splash/WelcomeSplasher;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 130
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
