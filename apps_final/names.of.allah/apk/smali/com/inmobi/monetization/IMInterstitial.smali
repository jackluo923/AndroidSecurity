.class public Lcom/inmobi/monetization/IMInterstitial;
.super Ljava/lang/Object;


# static fields
.field private static g:Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;


# instance fields
.field a:Lcom/inmobi/androidsdk/InterstitialView;

.field b:Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;

.field c:Lcom/inmobi/monetization/IMInterstitial$AdMode;

.field d:Z

.field private e:Lcom/inmobi/monetization/IMInterstitialListener;

.field private f:Lcom/inmobi/monetization/IMIncentivisedListener;

.field private h:J

.field private i:Landroid/app/Activity;

.field private j:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private k:Lcom/inmobi/monetization/IMInterstitial$State;

.field private l:Landroid/os/Handler;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/inmobi/monetization/IMInterstitial;->g:Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;J)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;->MEDIATION:Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;

    iput-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->b:Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/inmobi/monetization/IMInterstitial;->h:J

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    sget-object v0, Lcom/inmobi/monetization/IMInterstitial$State;->INIT:Lcom/inmobi/monetization/IMInterstitial$State;

    iput-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->k:Lcom/inmobi/monetization/IMInterstitial$State;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->l:Landroid/os/Handler;

    iput-object v2, p0, Lcom/inmobi/monetization/IMInterstitial;->m:Ljava/lang/String;

    iput-object v2, p0, Lcom/inmobi/monetization/IMInterstitial;->n:Ljava/lang/String;

    iput-object v2, p0, Lcom/inmobi/monetization/IMInterstitial;->o:Ljava/util/Map;

    sget-object v0, Lcom/inmobi/monetization/IMInterstitial$AdMode;->AD_NETWORK:Lcom/inmobi/monetization/IMInterstitial$AdMode;

    iput-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->c:Lcom/inmobi/monetization/IMInterstitial$AdMode;

    iput-boolean v3, p0, Lcom/inmobi/monetization/IMInterstitial;->d:Z

    iput-wide p2, p0, Lcom/inmobi/monetization/IMInterstitial;->h:J

    invoke-direct {p0, p1}, Lcom/inmobi/monetization/IMInterstitial;->a(Landroid/app/Activity;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;->MEDIATION:Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;

    iput-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->b:Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/inmobi/monetization/IMInterstitial;->h:J

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    sget-object v0, Lcom/inmobi/monetization/IMInterstitial$State;->INIT:Lcom/inmobi/monetization/IMInterstitial$State;

    iput-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->k:Lcom/inmobi/monetization/IMInterstitial$State;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->l:Landroid/os/Handler;

    iput-object v2, p0, Lcom/inmobi/monetization/IMInterstitial;->m:Ljava/lang/String;

    iput-object v2, p0, Lcom/inmobi/monetization/IMInterstitial;->n:Ljava/lang/String;

    iput-object v2, p0, Lcom/inmobi/monetization/IMInterstitial;->o:Ljava/util/Map;

    sget-object v0, Lcom/inmobi/monetization/IMInterstitial$AdMode;->AD_NETWORK:Lcom/inmobi/monetization/IMInterstitial$AdMode;

    iput-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->c:Lcom/inmobi/monetization/IMInterstitial$AdMode;

    iput-boolean v3, p0, Lcom/inmobi/monetization/IMInterstitial;->d:Z

    invoke-direct {p0, p1}, Lcom/inmobi/monetization/IMInterstitial;->a(Landroid/app/Activity;)V

    iput-object p2, p0, Lcom/inmobi/monetization/IMInterstitial;->m:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/inmobi/monetization/IMInterstitial;Lcom/inmobi/monetization/IMInterstitial$State;)Lcom/inmobi/monetization/IMInterstitial$State;
    .locals 0

    iput-object p1, p0, Lcom/inmobi/monetization/IMInterstitial;->k:Lcom/inmobi/monetization/IMInterstitial$State;

    return-object p1
.end method

.method static synthetic a(Lcom/inmobi/monetization/IMInterstitial;)Lcom/inmobi/monetization/IMInterstitialListener;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->e:Lcom/inmobi/monetization/IMInterstitialListener;

    return-object v0
.end method

.method private a()Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;
    .locals 3

    invoke-static {}, Lcom/inmobi/monetization/internal/LtvpRuleProcessor;->getInstance()Lcom/inmobi/monetization/internal/LtvpRuleProcessor;

    move-result-object v0

    iget-wide v1, p0, Lcom/inmobi/monetization/IMInterstitial;->h:J

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/monetization/internal/LtvpRuleProcessor;->getLtvpRuleConfig(J)Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;

    move-result-object v0

    return-object v0
.end method

.method private a(J)V
    .locals 3

    new-instance v0, Lcom/inmobi/androidsdk/InterstitialView;

    iget-object v1, p0, Lcom/inmobi/monetization/IMInterstitial;->i:Landroid/app/Activity;

    invoke-static {}, Lcom/inmobi/commons/InMobi;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/inmobi/androidsdk/InterstitialView;-><init>(Landroid/app/Activity;Ljava/lang/String;J)V

    iput-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->a:Lcom/inmobi/androidsdk/InterstitialView;

    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->a:Lcom/inmobi/androidsdk/InterstitialView;

    new-instance v1, Lcom/inmobi/monetization/IMInterstitial$e;

    invoke-direct {v1, p0}, Lcom/inmobi/monetization/IMInterstitial$e;-><init>(Lcom/inmobi/monetization/IMInterstitial;)V

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/InterstitialView;->setIMAdInterstitialListener(Lcom/inmobi/androidsdk/InterstitialViewListener;)V

    return-void
.end method

.method private a(Landroid/app/Activity;)V
    .locals 4

    iput-object p1, p0, Lcom/inmobi/monetization/IMInterstitial;->i:Landroid/app/Activity;

    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->isInitializedSuccessfully()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->i:Landroid/app/Activity;

    invoke-static {v0}, Lcom/inmobi/commons/internal/ThinICE;->start(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-wide v0, p0, Lcom/inmobi/monetization/IMInterstitial;->h:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/inmobi/monetization/IMInterstitial;->a()Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "[InMobi]-[Network]-4.4.1"

    const-string v1, "Cannot start ice. Activity is null"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic b(Lcom/inmobi/monetization/IMInterstitial;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private b()V
    .locals 4

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->isInitializedSuccessfully(Z)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/inmobi/monetization/IMInterstitial;->getState()Lcom/inmobi/monetization/IMInterstitial$State;

    move-result-object v0

    sget-object v1, Lcom/inmobi/monetization/IMInterstitial$State;->READY:Lcom/inmobi/monetization/IMInterstitial$State;

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/inmobi/monetization/IMInterstitial;->getState()Lcom/inmobi/monetization/IMInterstitial$State;

    move-result-object v0

    sget-object v1, Lcom/inmobi/monetization/IMInterstitial$State;->INIT:Lcom/inmobi/monetization/IMInterstitial$State;

    if-ne v0, v1, :cond_0

    :cond_2
    invoke-direct {p0}, Lcom/inmobi/monetization/IMInterstitial;->d()V

    iget-wide v0, p0, Lcom/inmobi/monetization/IMInterstitial;->h:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/inmobi/monetization/IMInterstitial;->a()Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->b:Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;

    sget-object v0, Lcom/inmobi/monetization/IMInterstitial;->g:Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/inmobi/monetization/IMInterstitial;->g:Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;

    iput-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->b:Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;

    :cond_3
    sget-object v0, Lcom/inmobi/monetization/IMInterstitial$a;->a:[I

    iget-object v1, p0, Lcom/inmobi/monetization/IMInterstitial;->b:Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;

    invoke-virtual {v1}, Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    invoke-direct {p0}, Lcom/inmobi/monetization/IMInterstitial;->e()V

    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->l:Landroid/os/Handler;

    new-instance v1, Lcom/inmobi/monetization/IMInterstitial$b;

    invoke-direct {v1, p0}, Lcom/inmobi/monetization/IMInterstitial$b;-><init>(Lcom/inmobi/monetization/IMInterstitial;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->a:Lcom/inmobi/androidsdk/InterstitialView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->a:Lcom/inmobi/androidsdk/InterstitialView;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/InterstitialView;->getIMAdRequest()Lcom/inmobi/androidsdk/AdRequest;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/monetization/internal/MonetizationUtils;->updateIMAdRequest(Lcom/inmobi/androidsdk/AdRequest;)V

    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->o:Ljava/util/Map;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->a:Lcom/inmobi/androidsdk/InterstitialView;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/InterstitialView;->getIMAdRequest()Lcom/inmobi/androidsdk/AdRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/monetization/IMInterstitial;->o:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/AdRequest;->setRequestParams(Ljava/util/Map;)V

    :cond_5
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->n:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->a:Lcom/inmobi/androidsdk/InterstitialView;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/InterstitialView;->getIMAdRequest()Lcom/inmobi/androidsdk/AdRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/monetization/IMInterstitial;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/AdRequest;->setKeywords(Ljava/lang/String;)V

    :cond_6
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->c:Lcom/inmobi/monetization/IMInterstitial$AdMode;

    sget-object v1, Lcom/inmobi/monetization/IMInterstitial$AdMode;->AD_NETWORK:Lcom/inmobi/monetization/IMInterstitial$AdMode;

    if-ne v0, v1, :cond_7

    sget-object v0, Lcom/inmobi/androidsdk/Mode;->AD_NETWORK:Lcom/inmobi/androidsdk/Mode;

    :goto_2
    iget-object v1, p0, Lcom/inmobi/monetization/IMInterstitial;->a:Lcom/inmobi/androidsdk/InterstitialView;

    invoke-virtual {v1, v0}, Lcom/inmobi/androidsdk/InterstitialView;->setMode(Lcom/inmobi/androidsdk/Mode;)V

    iget-boolean v0, p0, Lcom/inmobi/monetization/IMInterstitial;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->a:Lcom/inmobi/androidsdk/InterstitialView;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/InterstitialView;->disableHardwareAcceleration()V

    goto/16 :goto_0

    :pswitch_0
    invoke-direct {p0}, Lcom/inmobi/monetization/IMInterstitial;->c()V

    goto :goto_1

    :pswitch_1
    invoke-direct {p0}, Lcom/inmobi/monetization/IMInterstitial;->e()V

    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->l:Landroid/os/Handler;

    new-instance v1, Lcom/inmobi/monetization/IMInterstitial$d;

    invoke-direct {v1, p0}, Lcom/inmobi/monetization/IMInterstitial$d;-><init>(Lcom/inmobi/monetization/IMInterstitial;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :pswitch_2
    invoke-direct {p0}, Lcom/inmobi/monetization/IMInterstitial;->e()V

    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->l:Landroid/os/Handler;

    new-instance v1, Lcom/inmobi/monetization/IMInterstitial$c;

    invoke-direct {v1, p0}, Lcom/inmobi/monetization/IMInterstitial$c;-><init>(Lcom/inmobi/monetization/IMInterstitial;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_7
    sget-object v0, Lcom/inmobi/androidsdk/Mode;->APP_GALLERY:Lcom/inmobi/androidsdk/Mode;

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic c(Lcom/inmobi/monetization/IMInterstitial;)Lcom/inmobi/monetization/IMIncentivisedListener;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->f:Lcom/inmobi/monetization/IMIncentivisedListener;

    return-object v0
.end method

.method private c()V
    .locals 3

    invoke-direct {p0}, Lcom/inmobi/monetization/IMInterstitial;->d()V

    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->a:Lcom/inmobi/androidsdk/InterstitialView;

    invoke-static {}, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsInitializer;->getConfigParams()Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;->getEndPoints()Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsEndPointsConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsEndPointsConfig;->getHouseUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/InterstitialView;->setAdServerUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->a:Lcom/inmobi/androidsdk/InterstitialView;

    iget-wide v1, p0, Lcom/inmobi/monetization/IMInterstitial;->h:J

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/androidsdk/InterstitialView;->setSlotId(J)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/inmobi/monetization/internal/MonetizationUtils;->buildLtvpRequestMap(Landroid/view/View;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/monetization/IMInterstitial;->a:Lcom/inmobi/androidsdk/InterstitialView;

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/InterstitialView;->getIMAdRequest()Lcom/inmobi/androidsdk/AdRequest;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/inmobi/androidsdk/AdRequest;->setRequestParams(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->a:Lcom/inmobi/androidsdk/InterstitialView;

    invoke-static {}, Lcom/inmobi/commons/InMobi;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/InterstitialView;->setAppId(Ljava/lang/String;)V

    return-void
.end method

.method private d()V
    .locals 2

    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->a:Lcom/inmobi/androidsdk/InterstitialView;

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/inmobi/monetization/IMInterstitial;->h:J

    invoke-direct {p0, v0, v1}, Lcom/inmobi/monetization/IMInterstitial;->a(J)V

    :cond_0
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->m:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->a:Lcom/inmobi/androidsdk/InterstitialView;

    iget-object v1, p0, Lcom/inmobi/monetization/IMInterstitial;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/InterstitialView;->setAppId(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private e()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->a:Lcom/inmobi/androidsdk/InterstitialView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->a:Lcom/inmobi/androidsdk/InterstitialView;

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/InterstitialView;->setIMAdInterstitialListener(Lcom/inmobi/androidsdk/InterstitialViewListener;)V

    iput-object v1, p0, Lcom/inmobi/monetization/IMInterstitial;->a:Lcom/inmobi/androidsdk/InterstitialView;

    :cond_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->a:Lcom/inmobi/androidsdk/InterstitialView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->a:Lcom/inmobi/androidsdk/InterstitialView;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/InterstitialView;->destroy()V

    :cond_0
    return-void
.end method

.method public disableHardwareAcceleration()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/monetization/IMInterstitial;->d:Z

    return-void
.end method

.method public getState()Lcom/inmobi/monetization/IMInterstitial$State;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->k:Lcom/inmobi/monetization/IMInterstitial$State;

    return-object v0
.end method

.method public loadInterstitial()V
    .locals 5

    const/4 v4, 0x0

    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->isInitializedSuccessfully()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/inmobi/monetization/IMInterstitial;->b()V

    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/inmobi/monetization/IMInterstitial;->getState()Lcom/inmobi/monetization/IMInterstitial$State;

    move-result-object v0

    sget-object v1, Lcom/inmobi/monetization/IMInterstitial$State;->READY:Lcom/inmobi/monetization/IMInterstitial$State;

    if-eq v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/inmobi/monetization/IMInterstitial;->getState()Lcom/inmobi/monetization/IMInterstitial$State;

    move-result-object v0

    sget-object v1, Lcom/inmobi/monetization/IMInterstitial$State;->INIT:Lcom/inmobi/monetization/IMInterstitial$State;

    if-eq v0, v1, :cond_3

    :cond_1
    sget-object v1, Lcom/inmobi/monetization/IMErrorCode;->INVALID_REQUEST:Lcom/inmobi/monetization/IMErrorCode;

    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Interstitial load is already in progress."

    :goto_1
    invoke-virtual {v1, v0}, Lcom/inmobi/monetization/IMErrorCode;->setMessage(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/inmobi/monetization/IMInterstitial;->l:Landroid/os/Handler;

    new-instance v3, Lcom/inmobi/monetization/IMInterstitial$g;

    invoke-direct {v3, p0, v1}, Lcom/inmobi/monetization/IMInterstitial$g;-><init>(Lcom/inmobi/monetization/IMInterstitial;Lcom/inmobi/monetization/IMErrorCode;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-string v1, "[InMobi]-[Monetization]"

    invoke-static {v1, v0}, Lcom/inmobi/commons/internal/Log;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "Interstitial can only be loaded in init or ready state."

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object v0, Lcom/inmobi/monetization/IMInterstitial$State;->LOADING:Lcom/inmobi/monetization/IMInterstitial$State;

    iput-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->k:Lcom/inmobi/monetization/IMInterstitial$State;

    const-string v0, "[InMobi]-[Monetization]"

    const-string v1, "loading"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->a:Lcom/inmobi/androidsdk/InterstitialView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->m:Ljava/lang/String;

    if-nez v0, :cond_4

    iget-wide v0, p0, Lcom/inmobi/monetization/IMInterstitial;->h:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->a:Lcom/inmobi/androidsdk/InterstitialView;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/InterstitialView;->loadNewAd()V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object v0, Lcom/inmobi/monetization/IMInterstitial$State;->INIT:Lcom/inmobi/monetization/IMInterstitial$State;

    iput-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->k:Lcom/inmobi/monetization/IMInterstitial$State;

    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->l:Landroid/os/Handler;

    new-instance v1, Lcom/inmobi/monetization/IMInterstitial$f;

    invoke-direct {v1, p0}, Lcom/inmobi/monetization/IMInterstitial$f;-><init>(Lcom/inmobi/monetization/IMInterstitial;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "[InMobi]-[Network]-4.4.1"

    const-string v1, "AppId cannot be null or blank."

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-wide v0, p0, Lcom/inmobi/monetization/IMInterstitial;->h:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    const-string v0, "[InMobi]-[Network]-4.4.1"

    const-string v1, "A new appId cannot be set if a slotId is already set."

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iput-object p1, p0, Lcom/inmobi/monetization/IMInterstitial;->m:Ljava/lang/String;

    goto :goto_0
.end method

.method public setIMIncentivisedListener(Lcom/inmobi/monetization/IMIncentivisedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/inmobi/monetization/IMInterstitial;->f:Lcom/inmobi/monetization/IMIncentivisedListener;

    return-void
.end method

.method public setIMInterstitialListener(Lcom/inmobi/monetization/IMInterstitialListener;)V
    .locals 0

    iput-object p1, p0, Lcom/inmobi/monetization/IMInterstitial;->e:Lcom/inmobi/monetization/IMInterstitialListener;

    return-void
.end method

.method public setKeywords(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "[InMobi]-[Network]-4.4.1"

    const-string v1, "Keywords cannot be null or blank."

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/inmobi/monetization/IMInterstitial;->n:Ljava/lang/String;

    goto :goto_0
.end method

.method public setMode(Lcom/inmobi/monetization/IMInterstitial$AdMode;)V
    .locals 2

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/inmobi/monetization/IMInterstitial;->c:Lcom/inmobi/monetization/IMInterstitial$AdMode;

    :goto_0
    return-void

    :cond_0
    const-string v0, "[InMobi]-[Network]-4.4.1"

    const-string v1, "AdMode cannot be null."

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setRequestParams(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "[InMobi]-[Network]-4.4.1"

    const-string v1, "Request params cannot be null or empty."

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/inmobi/monetization/IMInterstitial;->o:Ljava/util/Map;

    goto :goto_0
.end method

.method public setSlotId(J)V
    .locals 4

    const-wide/16 v2, -0x1

    cmp-long v0, p1, v2

    if-nez v0, :cond_1

    const-string v0, "[InMobi]-[Network]-4.4.1"

    const-string v1, "Invalid slotId : -1"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-wide v0, p0, Lcom/inmobi/monetization/IMInterstitial;->h:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->m:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v0, "[InMobi]-[Network]-4.4.1"

    const-string v1, "A new slotId can be set only if a valid slotId is provided during object construction."

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iput-wide p1, p0, Lcom/inmobi/monetization/IMInterstitial;->h:J

    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->a:Lcom/inmobi/androidsdk/InterstitialView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->a:Lcom/inmobi/androidsdk/InterstitialView;

    iget-wide v1, p0, Lcom/inmobi/monetization/IMInterstitial;->h:J

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/androidsdk/InterstitialView;->setSlotId(J)V

    goto :goto_0
.end method

.method public show()V
    .locals 2

    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->a:Lcom/inmobi/androidsdk/InterstitialView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->a:Lcom/inmobi/androidsdk/InterstitialView;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/InterstitialView;->show()V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->i:Landroid/app/Activity;

    invoke-static {v0}, Lcom/inmobi/commons/internal/ThinICE;->start(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "[InMobi]-[Network]-4.4.1"

    const-string v1, "Cannot start ice. Activity is null"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public show(J)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->a:Lcom/inmobi/androidsdk/InterstitialView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->a:Lcom/inmobi/androidsdk/InterstitialView;

    invoke-virtual {v0, p1, p2}, Lcom/inmobi/androidsdk/InterstitialView;->show(J)V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->i:Landroid/app/Activity;

    invoke-static {v0}, Lcom/inmobi/commons/internal/ThinICE;->start(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "[InMobi]-[Network]-4.4.1"

    const-string v1, "Cannot start ice. Activity is null"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stopLoading()V
    .locals 1

    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->a:Lcom/inmobi/androidsdk/InterstitialView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->a:Lcom/inmobi/androidsdk/InterstitialView;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/InterstitialView;->stopLoading()V

    :cond_0
    return-void
.end method
