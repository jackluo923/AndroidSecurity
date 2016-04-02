.class public final Lcom/inmobi/monetization/IMBanner;
.super Landroid/widget/RelativeLayout;


# static fields
.field public static final INMOBI_AD_UNIT_120X600:I = 0xd

.field public static final INMOBI_AD_UNIT_300X250:I = 0xa

.field public static final INMOBI_AD_UNIT_320X48:I = 0x9

.field public static final INMOBI_AD_UNIT_320X50:I = 0xf

.field public static final INMOBI_AD_UNIT_468X60:I = 0xc

.field public static final INMOBI_AD_UNIT_728X90:I = 0xb

.field public static final REFRESH_INTERVAL_MINIMUM:I = 0x0

.field public static final REFRESH_INTERVAL_OFF:I = -0x1

.field private static j:Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;


# instance fields
.field a:Lcom/inmobi/androidsdk/BannerView;

.field b:Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;

.field c:Lcom/inmobi/androidsdk/BannerViewListener;

.field d:Landroid/app/Activity;

.field e:J

.field f:I

.field g:Lcom/inmobi/commons/AnimationType;

.field h:Z

.field private i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private k:Lcom/inmobi/monetization/IMBannerListener;

.field private l:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/util/Map;
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

.field private q:Ljava/lang/String;

.field private r:I

.field private s:I

.field private t:Lcom/inmobi/monetization/IMBanner$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/inmobi/monetization/IMBanner;->j:Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;J)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/inmobi/monetization/IMBanner;->a:Lcom/inmobi/androidsdk/BannerView;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/inmobi/monetization/IMBanner;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    sget-object v0, Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;->MEDIATION:Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;

    iput-object v0, p0, Lcom/inmobi/monetization/IMBanner;->b:Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;

    iput-object v2, p0, Lcom/inmobi/monetization/IMBanner;->c:Lcom/inmobi/androidsdk/BannerViewListener;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/inmobi/monetization/IMBanner;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/inmobi/monetization/IMBanner;->e:J

    const/16 v0, 0xf

    iput v0, p0, Lcom/inmobi/monetization/IMBanner;->f:I

    iput-object v2, p0, Lcom/inmobi/monetization/IMBanner;->m:Ljava/lang/String;

    iput-object v2, p0, Lcom/inmobi/monetization/IMBanner;->n:Ljava/lang/String;

    iput-object v2, p0, Lcom/inmobi/monetization/IMBanner;->o:Ljava/lang/String;

    iput-object v2, p0, Lcom/inmobi/monetization/IMBanner;->p:Ljava/util/Map;

    iput-object v2, p0, Lcom/inmobi/monetization/IMBanner;->q:Ljava/lang/String;

    iput-object v2, p0, Lcom/inmobi/monetization/IMBanner;->g:Lcom/inmobi/commons/AnimationType;

    iput-boolean v3, p0, Lcom/inmobi/monetization/IMBanner;->h:Z

    iput v3, p0, Lcom/inmobi/monetization/IMBanner;->r:I

    iput v3, p0, Lcom/inmobi/monetization/IMBanner;->s:I

    new-instance v0, Lcom/inmobi/monetization/IMBanner$a;

    invoke-direct {v0, p0}, Lcom/inmobi/monetization/IMBanner$a;-><init>(Lcom/inmobi/monetization/IMBanner;)V

    iput-object v0, p0, Lcom/inmobi/monetization/IMBanner;->t:Lcom/inmobi/monetization/IMBanner$a;

    iput-object p1, p0, Lcom/inmobi/monetization/IMBanner;->d:Landroid/app/Activity;

    iput-wide p2, p0, Lcom/inmobi/monetization/IMBanner;->e:J

    invoke-direct {p0}, Lcom/inmobi/monetization/IMBanner;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/inmobi/monetization/IMBanner;->a:Lcom/inmobi/androidsdk/BannerView;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/inmobi/monetization/IMBanner;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    sget-object v0, Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;->MEDIATION:Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;

    iput-object v0, p0, Lcom/inmobi/monetization/IMBanner;->b:Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;

    iput-object v2, p0, Lcom/inmobi/monetization/IMBanner;->c:Lcom/inmobi/androidsdk/BannerViewListener;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/inmobi/monetization/IMBanner;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/inmobi/monetization/IMBanner;->e:J

    const/16 v0, 0xf

    iput v0, p0, Lcom/inmobi/monetization/IMBanner;->f:I

    iput-object v2, p0, Lcom/inmobi/monetization/IMBanner;->m:Ljava/lang/String;

    iput-object v2, p0, Lcom/inmobi/monetization/IMBanner;->n:Ljava/lang/String;

    iput-object v2, p0, Lcom/inmobi/monetization/IMBanner;->o:Ljava/lang/String;

    iput-object v2, p0, Lcom/inmobi/monetization/IMBanner;->p:Ljava/util/Map;

    iput-object v2, p0, Lcom/inmobi/monetization/IMBanner;->q:Ljava/lang/String;

    iput-object v2, p0, Lcom/inmobi/monetization/IMBanner;->g:Lcom/inmobi/commons/AnimationType;

    iput-boolean v3, p0, Lcom/inmobi/monetization/IMBanner;->h:Z

    iput v3, p0, Lcom/inmobi/monetization/IMBanner;->r:I

    iput v3, p0, Lcom/inmobi/monetization/IMBanner;->s:I

    new-instance v0, Lcom/inmobi/monetization/IMBanner$a;

    invoke-direct {v0, p0}, Lcom/inmobi/monetization/IMBanner$a;-><init>(Lcom/inmobi/monetization/IMBanner;)V

    iput-object v0, p0, Lcom/inmobi/monetization/IMBanner;->t:Lcom/inmobi/monetization/IMBanner$a;

    iput-object p1, p0, Lcom/inmobi/monetization/IMBanner;->d:Landroid/app/Activity;

    iput p3, p0, Lcom/inmobi/monetization/IMBanner;->f:I

    iput-object p2, p0, Lcom/inmobi/monetization/IMBanner;->q:Ljava/lang/String;

    invoke-direct {p0}, Lcom/inmobi/monetization/IMBanner;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    const-wide/16 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/inmobi/monetization/IMBanner;->a:Lcom/inmobi/androidsdk/BannerView;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/inmobi/monetization/IMBanner;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    sget-object v0, Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;->MEDIATION:Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;

    iput-object v0, p0, Lcom/inmobi/monetization/IMBanner;->b:Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;

    iput-object v1, p0, Lcom/inmobi/monetization/IMBanner;->c:Lcom/inmobi/androidsdk/BannerViewListener;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/inmobi/monetization/IMBanner;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-wide v3, p0, Lcom/inmobi/monetization/IMBanner;->e:J

    const/16 v0, 0xf

    iput v0, p0, Lcom/inmobi/monetization/IMBanner;->f:I

    iput-object v1, p0, Lcom/inmobi/monetization/IMBanner;->m:Ljava/lang/String;

    iput-object v1, p0, Lcom/inmobi/monetization/IMBanner;->n:Ljava/lang/String;

    iput-object v1, p0, Lcom/inmobi/monetization/IMBanner;->o:Ljava/lang/String;

    iput-object v1, p0, Lcom/inmobi/monetization/IMBanner;->p:Ljava/util/Map;

    iput-object v1, p0, Lcom/inmobi/monetization/IMBanner;->q:Ljava/lang/String;

    iput-object v1, p0, Lcom/inmobi/monetization/IMBanner;->g:Lcom/inmobi/commons/AnimationType;

    iput-boolean v2, p0, Lcom/inmobi/monetization/IMBanner;->h:Z

    iput v2, p0, Lcom/inmobi/monetization/IMBanner;->r:I

    iput v2, p0, Lcom/inmobi/monetization/IMBanner;->s:I

    new-instance v0, Lcom/inmobi/monetization/IMBanner$a;

    invoke-direct {v0, p0}, Lcom/inmobi/monetization/IMBanner$a;-><init>(Lcom/inmobi/monetization/IMBanner;)V

    iput-object v0, p0, Lcom/inmobi/monetization/IMBanner;->t:Lcom/inmobi/monetization/IMBanner$a;

    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/inmobi/monetization/IMBanner;->d:Landroid/app/Activity;

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "slotId"

    invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/inmobi/monetization/IMBanner;->e:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    const/4 v0, 0x0

    :try_start_1
    const-string v1, "adSize"

    invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/inmobi/monetization/IMBanner;->f:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    const/4 v0, 0x0

    :try_start_2
    const-string v1, "appId"

    invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/monetization/IMBanner;->q:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    iget-wide v0, p0, Lcom/inmobi/monetization/IMBanner;->e:J

    cmp-long v0, v0, v3

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/monetization/IMBanner;->q:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "[InMobi]-[Monetization]"

    const-string v1, "slotId and appId is missing in IMBanner xml layout. Please integrate using appId or slotId. Refer integration guidelines for more details."

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/inmobi/monetization/IMBanner;->a()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/inmobi/monetization/IMBanner;)Lcom/inmobi/monetization/IMBannerListener;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/monetization/IMBanner;->k:Lcom/inmobi/monetization/IMBannerListener;

    return-object v0
.end method

.method private a()V
    .locals 4

    invoke-static {}, Lcom/inmobi/androidsdk/bootstrapper/Initializer;->getConfigParams()Lcom/inmobi/androidsdk/bootstrapper/ConfigParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/bootstrapper/ConfigParams;->getDefaultRefreshRate()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/inmobi/monetization/IMBanner;->setRefreshInterval(I)V

    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->isInitializedSuccessfully()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/monetization/IMBanner;->d:Landroid/app/Activity;

    invoke-static {v0}, Lcom/inmobi/commons/internal/ThinICE;->start(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-wide v0, p0, Lcom/inmobi/monetization/IMBanner;->e:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/inmobi/monetization/IMBanner;->b()Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "[InMobi]-[Network]-4.4.1"

    const-string v1, "Cannot start ice. Activity is null"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private a(I)V
    .locals 4

    iput p1, p0, Lcom/inmobi/monetization/IMBanner;->r:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/monetization/IMBanner;->t:Lcom/inmobi/monetization/IMBanner$a;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/inmobi/monetization/IMBanner$a;->removeMessages(I)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/inmobi/androidsdk/bootstrapper/Initializer;->getConfigParams()Lcom/inmobi/androidsdk/bootstrapper/ConfigParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/bootstrapper/ConfigParams;->getMinimumRefreshRate()I

    move-result v0

    if-ge p1, v0, :cond_1

    const-string v1, "[InMobi]-[Network]-4.4.1"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Refresh Interval cannot be less than "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " seconds. Setting refresh rate to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0}, Lcom/inmobi/monetization/IMBanner;->h()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/inmobi/monetization/IMBanner;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/inmobi/monetization/IMBanner;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 5

    const/4 v4, 0x0

    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->isInitializedSuccessfully()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/inmobi/monetization/IMBanner;->c()V

    iget-object v0, p0, Lcom/inmobi/monetization/IMBanner;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/inmobi/monetization/IMBanner;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    sget-object v1, Lcom/inmobi/monetization/IMErrorCode;->INVALID_REQUEST:Lcom/inmobi/monetization/IMErrorCode;

    iget-object v0, p0, Lcom/inmobi/monetization/IMBanner;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Banner load is already in progress."

    :goto_1
    invoke-virtual {v1, v0}, Lcom/inmobi/monetization/IMErrorCode;->setMessage(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/inmobi/monetization/IMBanner;->t:Lcom/inmobi/monetization/IMBanner$a;

    new-instance v3, Lcom/inmobi/monetization/IMBanner$d;

    invoke-direct {v3, p0, v1}, Lcom/inmobi/monetization/IMBanner$d;-><init>(Lcom/inmobi/monetization/IMBanner;Lcom/inmobi/monetization/IMErrorCode;)V

    invoke-virtual {v2, v3}, Lcom/inmobi/monetization/IMBanner$a;->post(Ljava/lang/Runnable;)Z

    const-string v1, "[InMobi]-[Monetization]"

    invoke-static {v1, v0}, Lcom/inmobi/commons/internal/Log;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/inmobi/monetization/IMBanner;->h()V

    goto :goto_0

    :cond_2
    const-string v0, "Banner click in progress."

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/inmobi/monetization/IMBanner;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/inmobi/monetization/IMBanner;->t:Lcom/inmobi/monetization/IMBanner$a;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/inmobi/monetization/IMBanner$a;->removeMessages(I)V

    iget-object v0, p0, Lcom/inmobi/monetization/IMBanner;->a:Lcom/inmobi/androidsdk/BannerView;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/inmobi/monetization/IMBanner;->a:Lcom/inmobi/androidsdk/BannerView;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/BannerView;->getIMAdRequest()Lcom/inmobi/androidsdk/AdRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/AdRequest;->getRequestParams()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :cond_4
    if-eqz p1, :cond_6

    const-string v1, "u-rt"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    iget-object v1, p0, Lcom/inmobi/monetization/IMBanner;->a:Lcom/inmobi/androidsdk/BannerView;

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/BannerView;->getIMAdRequest()Lcom/inmobi/androidsdk/AdRequest;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/inmobi/androidsdk/AdRequest;->setRequestParams(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/inmobi/monetization/IMBanner;->q:Ljava/lang/String;

    if-nez v0, :cond_5

    iget-wide v0, p0, Lcom/inmobi/monetization/IMBanner;->e:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_7

    :cond_5
    iget-object v0, p0, Lcom/inmobi/monetization/IMBanner;->a:Lcom/inmobi/androidsdk/BannerView;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/BannerView;->loadNewAd()V

    goto :goto_0

    :cond_6
    const-string v1, "u-rt"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/inmobi/monetization/IMBanner;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/inmobi/monetization/IMBanner;->t:Lcom/inmobi/monetization/IMBanner$a;

    new-instance v1, Lcom/inmobi/monetization/IMBanner$e;

    invoke-direct {v1, p0}, Lcom/inmobi/monetization/IMBanner$e;-><init>(Lcom/inmobi/monetization/IMBanner;)V

    invoke-virtual {v0, v1}, Lcom/inmobi/monetization/IMBanner$a;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/inmobi/monetization/IMBanner;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_0
.end method

.method private b()Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;
    .locals 3

    invoke-static {}, Lcom/inmobi/monetization/internal/LtvpRuleProcessor;->getInstance()Lcom/inmobi/monetization/internal/LtvpRuleProcessor;

    move-result-object v0

    iget-wide v1, p0, Lcom/inmobi/monetization/IMBanner;->e:J

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/monetization/internal/LtvpRuleProcessor;->getLtvpRuleConfig(J)Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/inmobi/monetization/IMBanner;)V
    .locals 0

    invoke-direct {p0}, Lcom/inmobi/monetization/IMBanner;->h()V

    return-void
.end method

.method static synthetic c(Lcom/inmobi/monetization/IMBanner;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/monetization/IMBanner;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private c()V
    .locals 4

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->isInitializedSuccessfully(Z)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/inmobi/monetization/IMBanner;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/monetization/IMBanner;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/inmobi/monetization/IMBanner;->e()V

    iget-wide v0, p0, Lcom/inmobi/monetization/IMBanner;->e:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/inmobi/monetization/IMBanner;->b()Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/monetization/IMBanner;->b:Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;

    sget-object v0, Lcom/inmobi/monetization/IMBanner;->j:Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/inmobi/monetization/IMBanner;->j:Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;

    iput-object v0, p0, Lcom/inmobi/monetization/IMBanner;->b:Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;

    :cond_2
    sget-object v0, Lcom/inmobi/monetization/IMBanner$f;->a:[I

    iget-object v1, p0, Lcom/inmobi/monetization/IMBanner;->b:Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;

    invoke-virtual {v1}, Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    invoke-direct {p0}, Lcom/inmobi/monetization/IMBanner;->g()V

    iget-object v0, p0, Lcom/inmobi/monetization/IMBanner;->t:Lcom/inmobi/monetization/IMBanner$a;

    new-instance v1, Lcom/inmobi/monetization/IMBanner$g;

    invoke-direct {v1, p0}, Lcom/inmobi/monetization/IMBanner$g;-><init>(Lcom/inmobi/monetization/IMBanner;)V

    invoke-virtual {v0, v1}, Lcom/inmobi/monetization/IMBanner$a;->post(Ljava/lang/Runnable;)Z

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/inmobi/monetization/IMBanner;->a:Lcom/inmobi/androidsdk/BannerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/monetization/IMBanner;->a:Lcom/inmobi/androidsdk/BannerView;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/BannerView;->getIMAdRequest()Lcom/inmobi/androidsdk/AdRequest;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/monetization/internal/MonetizationUtils;->updateIMAdRequest(Lcom/inmobi/androidsdk/AdRequest;)V

    iget-object v0, p0, Lcom/inmobi/monetization/IMBanner;->n:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/inmobi/monetization/IMBanner;->o:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/inmobi/monetization/IMBanner;->a:Lcom/inmobi/androidsdk/BannerView;

    iget-object v1, p0, Lcom/inmobi/monetization/IMBanner;->n:Ljava/lang/String;

    iget-object v2, p0, Lcom/inmobi/monetization/IMBanner;->o:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/androidsdk/BannerView;->setRefTagParam(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lcom/inmobi/monetization/IMBanner;->p:Ljava/util/Map;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/inmobi/monetization/IMBanner;->a:Lcom/inmobi/androidsdk/BannerView;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/BannerView;->getIMAdRequest()Lcom/inmobi/androidsdk/AdRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/monetization/IMBanner;->p:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/AdRequest;->setRequestParams(Ljava/util/Map;)V

    :cond_5
    iget-object v0, p0, Lcom/inmobi/monetization/IMBanner;->m:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/inmobi/monetization/IMBanner;->a:Lcom/inmobi/androidsdk/BannerView;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/BannerView;->getIMAdRequest()Lcom/inmobi/androidsdk/AdRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/monetization/IMBanner;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/AdRequest;->setKeywords(Ljava/lang/String;)V

    :cond_6
    iget-object v0, p0, Lcom/inmobi/monetization/IMBanner;->a:Lcom/inmobi/androidsdk/BannerView;

    iget v1, p0, Lcom/inmobi/monetization/IMBanner;->f:I

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/BannerView;->setAdSize(I)V

    iget-object v0, p0, Lcom/inmobi/monetization/IMBanner;->g:Lcom/inmobi/commons/AnimationType;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/inmobi/monetization/IMBanner;->a:Lcom/inmobi/androidsdk/BannerView;

    iget-object v1, p0, Lcom/inmobi/monetization/IMBanner;->g:Lcom/inmobi/commons/AnimationType;

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/BannerView;->setAnimationType(Lcom/inmobi/commons/AnimationType;)V

    :cond_7
    iget-boolean v0, p0, Lcom/inmobi/monetization/IMBanner;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/monetization/IMBanner;->a:Lcom/inmobi/androidsdk/BannerView;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/BannerView;->disableHardwareAcceleration()V

    goto/16 :goto_0

    :pswitch_0
    invoke-direct {p0}, Lcom/inmobi/monetization/IMBanner;->d()V

    goto :goto_1

    :pswitch_1
    invoke-direct {p0}, Lcom/inmobi/monetization/IMBanner;->g()V

    iget-object v0, p0, Lcom/inmobi/monetization/IMBanner;->t:Lcom/inmobi/monetization/IMBanner$a;

    new-instance v1, Lcom/inmobi/monetization/IMBanner$b;

    invoke-direct {v1, p0}, Lcom/inmobi/monetization/IMBanner$b;-><init>(Lcom/inmobi/monetization/IMBanner;)V

    invoke-virtual {v0, v1}, Lcom/inmobi/monetization/IMBanner$a;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :pswitch_2
    invoke-direct {p0}, Lcom/inmobi/monetization/IMBanner;->g()V

    iget-object v0, p0, Lcom/inmobi/monetization/IMBanner;->t:Lcom/inmobi/monetization/IMBanner$a;

    new-instance v1, Lcom/inmobi/monetization/IMBanner$c;

    invoke-direct {v1, p0}, Lcom/inmobi/monetization/IMBanner$c;-><init>(Lcom/inmobi/monetization/IMBanner;)V

    invoke-virtual {v0, v1}, Lcom/inmobi/monetization/IMBanner$a;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic d(Lcom/inmobi/monetization/IMBanner;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/monetization/IMBanner;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private d()V
    .locals 3

    iget-object v0, p0, Lcom/inmobi/monetization/IMBanner;->a:Lcom/inmobi/androidsdk/BannerView;

    invoke-static {}, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsInitializer;->getConfigParams()Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;->getEndPoints()Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsEndPointsConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsEndPointsConfig;->getHouseUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/BannerView;->setAdServerUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inmobi/monetization/IMBanner;->a:Lcom/inmobi/androidsdk/BannerView;

    iget-wide v1, p0, Lcom/inmobi/monetization/IMBanner;->e:J

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/androidsdk/BannerView;->setSlotId(J)V

    invoke-static {p0}, Lcom/inmobi/monetization/internal/MonetizationUtils;->buildLtvpRequestMap(Landroid/view/View;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/monetization/IMBanner;->a:Lcom/inmobi/androidsdk/BannerView;

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/BannerView;->getIMAdRequest()Lcom/inmobi/androidsdk/AdRequest;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/inmobi/androidsdk/AdRequest;->setRequestParams(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/inmobi/monetization/IMBanner;->a:Lcom/inmobi/androidsdk/BannerView;

    invoke-static {}, Lcom/inmobi/commons/InMobi;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/BannerView;->setAppId(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic e(Lcom/inmobi/monetization/IMBanner;)I
    .locals 1

    iget v0, p0, Lcom/inmobi/monetization/IMBanner;->r:I

    return v0
.end method

.method private e()V
    .locals 2

    iget-object v0, p0, Lcom/inmobi/monetization/IMBanner;->a:Lcom/inmobi/androidsdk/BannerView;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/inmobi/monetization/IMBanner;->f()V

    :cond_0
    iget-object v0, p0, Lcom/inmobi/monetization/IMBanner;->q:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inmobi/monetization/IMBanner;->a:Lcom/inmobi/androidsdk/BannerView;

    iget-object v1, p0, Lcom/inmobi/monetization/IMBanner;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/BannerView;->setAppId(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private f()V
    .locals 6

    new-instance v0, Lcom/inmobi/androidsdk/BannerView;

    iget-object v1, p0, Lcom/inmobi/monetization/IMBanner;->d:Landroid/app/Activity;

    iget v2, p0, Lcom/inmobi/monetization/IMBanner;->f:I

    invoke-static {}, Lcom/inmobi/commons/InMobi;->getAppId()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcom/inmobi/androidsdk/BannerView;-><init>(Landroid/app/Activity;ILjava/lang/String;J)V

    iput-object v0, p0, Lcom/inmobi/monetization/IMBanner;->a:Lcom/inmobi/androidsdk/BannerView;

    iget-object v0, p0, Lcom/inmobi/monetization/IMBanner;->a:Lcom/inmobi/androidsdk/BannerView;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/BannerView;->getIMAdRequest()Lcom/inmobi/androidsdk/AdRequest;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/monetization/internal/MonetizationUtils;->updateIMAdRequest(Lcom/inmobi/androidsdk/AdRequest;)V

    new-instance v0, Lcom/inmobi/monetization/IMBanner$h;

    invoke-direct {v0, p0}, Lcom/inmobi/monetization/IMBanner$h;-><init>(Lcom/inmobi/monetization/IMBanner;)V

    iput-object v0, p0, Lcom/inmobi/monetization/IMBanner;->c:Lcom/inmobi/androidsdk/BannerViewListener;

    iget-object v0, p0, Lcom/inmobi/monetization/IMBanner;->a:Lcom/inmobi/androidsdk/BannerView;

    iget-object v1, p0, Lcom/inmobi/monetization/IMBanner;->c:Lcom/inmobi/androidsdk/BannerViewListener;

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/BannerView;->setIMAdListener(Lcom/inmobi/androidsdk/BannerViewListener;)V

    iget-object v0, p0, Lcom/inmobi/monetization/IMBanner;->a:Lcom/inmobi/androidsdk/BannerView;

    invoke-virtual {p0, v0}, Lcom/inmobi/monetization/IMBanner;->addView(Landroid/view/View;)V

    return-void
.end method

.method private g()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/inmobi/monetization/IMBanner;->a:Lcom/inmobi/androidsdk/BannerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/monetization/IMBanner;->a:Lcom/inmobi/androidsdk/BannerView;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/BannerView;->destroy()V

    iget-object v0, p0, Lcom/inmobi/monetization/IMBanner;->a:Lcom/inmobi/androidsdk/BannerView;

    invoke-virtual {p0, v0}, Lcom/inmobi/monetization/IMBanner;->removeView(Landroid/view/View;)V

    iput-object v1, p0, Lcom/inmobi/monetization/IMBanner;->a:Lcom/inmobi/androidsdk/BannerView;

    iput-object v1, p0, Lcom/inmobi/monetization/IMBanner;->c:Lcom/inmobi/androidsdk/BannerViewListener;

    :cond_0
    return-void
.end method

.method private h()V
    .locals 5

    const/16 v4, 0x64

    iget-object v0, p0, Lcom/inmobi/monetization/IMBanner;->t:Lcom/inmobi/monetization/IMBanner$a;

    invoke-virtual {v0, v4}, Lcom/inmobi/monetization/IMBanner$a;->removeMessages(I)V

    iget v0, p0, Lcom/inmobi/monetization/IMBanner;->r:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/inmobi/androidsdk/bootstrapper/Initializer;->getConfigParams()Lcom/inmobi/androidsdk/bootstrapper/ConfigParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/bootstrapper/ConfigParams;->getMinimumRefreshRate()I

    move-result v0

    iget v1, p0, Lcom/inmobi/monetization/IMBanner;->r:I

    if-ge v1, v0, :cond_1

    iget-object v1, p0, Lcom/inmobi/monetization/IMBanner;->t:Lcom/inmobi/monetization/IMBanner$a;

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v2, v0

    invoke-virtual {v1, v4, v2, v3}, Lcom/inmobi/monetization/IMBanner$a;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/inmobi/monetization/IMBanner;->t:Lcom/inmobi/monetization/IMBanner$a;

    iget v1, p0, Lcom/inmobi/monetization/IMBanner;->r:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    invoke-virtual {v0, v4, v1, v2}, Lcom/inmobi/monetization/IMBanner$a;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method


# virtual methods
.method public final destroy()V
    .locals 1

    iget-object v0, p0, Lcom/inmobi/monetization/IMBanner;->a:Lcom/inmobi/androidsdk/BannerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/monetization/IMBanner;->a:Lcom/inmobi/androidsdk/BannerView;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/BannerView;->destroy()V

    :cond_0
    return-void
.end method

.method public final disableHardwareAcceleration()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/monetization/IMBanner;->h:Z

    return-void
.end method

.method public final loadBanner()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/inmobi/monetization/IMBanner;->a(Z)V

    return-void
.end method

.method protected final onWindowVisibilityChanged(I)V
    .locals 2

    if-nez p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/inmobi/monetization/IMBanner;->d:Landroid/app/Activity;

    invoke-static {v0}, Lcom/inmobi/commons/internal/ThinICE;->start(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget v0, p0, Lcom/inmobi/monetization/IMBanner;->s:I

    invoke-direct {p0, v0}, Lcom/inmobi/monetization/IMBanner;->a(I)V

    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string v0, "[InMobi]-[Network]-4.4.1"

    const-string v1, "Cannot start ice. Activity is null"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/inmobi/monetization/IMBanner;->a(I)V

    goto :goto_1
.end method

.method public final setAdSize(I)V
    .locals 0

    iput p1, p0, Lcom/inmobi/monetization/IMBanner;->f:I

    return-void
.end method

.method public final setAnimationType(Lcom/inmobi/commons/AnimationType;)V
    .locals 0

    iput-object p1, p0, Lcom/inmobi/monetization/IMBanner;->g:Lcom/inmobi/commons/AnimationType;

    return-void
.end method

.method public final setAppId(Ljava/lang/String;)V
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
    iget-wide v0, p0, Lcom/inmobi/monetization/IMBanner;->e:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    const-string v0, "[InMobi]-[Network]-4.4.1"

    const-string v1, "A new appId cannot be set if a slotId is already set."

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iput-object p1, p0, Lcom/inmobi/monetization/IMBanner;->q:Ljava/lang/String;

    goto :goto_0
.end method

.method public final setIMBannerListener(Lcom/inmobi/monetization/IMBannerListener;)V
    .locals 0

    iput-object p1, p0, Lcom/inmobi/monetization/IMBanner;->k:Lcom/inmobi/monetization/IMBannerListener;

    return-void
.end method

.method public final setKeywords(Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/inmobi/monetization/IMBanner;->m:Ljava/lang/String;

    goto :goto_0
.end method

.method public final setRefTagParam(Ljava/lang/String;Ljava/lang/String;)V
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

    const-string v1, "Ref tag key cannot be null or blank."

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_2

    const-string v0, ""

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const-string v0, "[InMobi]-[Network]-4.4.1"

    const-string v1, "RefTag value cannot be null or blank."

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iput-object p1, p0, Lcom/inmobi/monetization/IMBanner;->n:Ljava/lang/String;

    iput-object p2, p0, Lcom/inmobi/monetization/IMBanner;->o:Ljava/lang/String;

    goto :goto_0
.end method

.method public final setRefreshInterval(I)V
    .locals 0

    iput p1, p0, Lcom/inmobi/monetization/IMBanner;->s:I

    invoke-direct {p0, p1}, Lcom/inmobi/monetization/IMBanner;->a(I)V

    return-void
.end method

.method public final setRequestParams(Ljava/util/Map;)V
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
    iput-object p1, p0, Lcom/inmobi/monetization/IMBanner;->p:Ljava/util/Map;

    goto :goto_0
.end method

.method public final setSlotId(J)V
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
    iget-wide v0, p0, Lcom/inmobi/monetization/IMBanner;->e:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/inmobi/monetization/IMBanner;->q:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v0, "[InMobi]-[Network]-4.4.1"

    const-string v1, "A new slotId can be set only if a valid slotId is provided during object construction."

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iput-wide p1, p0, Lcom/inmobi/monetization/IMBanner;->e:J

    iget-object v0, p0, Lcom/inmobi/monetization/IMBanner;->a:Lcom/inmobi/androidsdk/BannerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/monetization/IMBanner;->a:Lcom/inmobi/androidsdk/BannerView;

    iget-wide v1, p0, Lcom/inmobi/monetization/IMBanner;->e:J

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/androidsdk/BannerView;->setSlotId(J)V

    goto :goto_0
.end method

.method public final stopLoading()V
    .locals 1

    iget-object v0, p0, Lcom/inmobi/monetization/IMBanner;->a:Lcom/inmobi/androidsdk/BannerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/monetization/IMBanner;->a:Lcom/inmobi/androidsdk/BannerView;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/BannerView;->stopLoading()V

    :cond_0
    return-void
.end method
