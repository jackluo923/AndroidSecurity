.class public final Lcom/inmobi/androidsdk/BannerView;
.super Landroid/widget/RelativeLayout;


# static fields
.field public static final INMOBI_AD_UNIT_120X600:I = 0xd

.field public static final INMOBI_AD_UNIT_300X250:I = 0xa

.field public static final INMOBI_AD_UNIT_320X48:I = 0x9

.field public static final INMOBI_AD_UNIT_320X50:I = 0xf

.field public static final INMOBI_AD_UNIT_468X60:I = 0xc

.field public static final INMOBI_AD_UNIT_728X90:I = 0xb

.field public static final INMOBI_INTERNAL_TAG:Ljava/lang/String; = "ref-__in__rt"

.field public static final INMOBI_REF_TAG:Ljava/lang/String; = "ref-tag"

.field private static a:Lcom/inmobi/androidsdk/impl/ConnBroadcastReciever;


# instance fields
.field private A:Z

.field private B:Lcom/inmobi/androidsdk/BannerView$d;

.field private C:Landroid/view/animation/Animation$AnimationListener;

.field private D:Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;

.field private E:Lcom/inmobi/re/container/IMWebView$IMWebViewListener;

.field private F:Z

.field private b:Lcom/inmobi/re/container/IMWebView;

.field private c:Lcom/inmobi/re/container/IMWebView;

.field private d:Lcom/inmobi/re/container/IMWebView;

.field private e:Landroid/app/Activity;

.field private f:Z

.field private g:Lcom/inmobi/androidsdk/impl/UserInfo;

.field private h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private j:Landroid/view/animation/Animation;

.field private k:Landroid/view/animation/Animation;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Lcom/inmobi/androidsdk/BannerViewListener;

.field private o:Lcom/inmobi/androidsdk/AdRequest;

.field private p:Ljava/lang/String;

.field private q:I

.field private r:J

.field private s:J

.field private t:J

.field private u:Z

.field private v:Lcom/inmobi/commons/AnimationType;

.field private w:Z

.field private x:Lcom/inmobi/androidsdk/g;

.field private y:Ljava/lang/String;

.field private z:Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/inmobi/androidsdk/BannerView;->a:Lcom/inmobi/androidsdk/impl/ConnBroadcastReciever;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/inmobi/androidsdk/BannerView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/inmobi/androidsdk/BannerView;->a(Landroid/app/Activity;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;ILjava/lang/String;J)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/inmobi/androidsdk/BannerView;-><init>(Landroid/content/Context;)V

    iput-wide p4, p0, Lcom/inmobi/androidsdk/BannerView;->r:J

    invoke-direct {p0, p1, p2, p3}, Lcom/inmobi/androidsdk/BannerView;->a(Landroid/app/Activity;ILjava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 5

    const-wide/16 v3, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-boolean v2, p0, Lcom/inmobi/androidsdk/BannerView;->f:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object v1, p0, Lcom/inmobi/androidsdk/BannerView;->l:Ljava/lang/String;

    iput-object v1, p0, Lcom/inmobi/androidsdk/BannerView;->m:Ljava/lang/String;

    new-instance v0, Lcom/inmobi/androidsdk/AdRequest;

    invoke-direct {v0}, Lcom/inmobi/androidsdk/AdRequest;-><init>()V

    iput-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->o:Lcom/inmobi/androidsdk/AdRequest;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/inmobi/androidsdk/BannerView;->r:J

    iput-wide v3, p0, Lcom/inmobi/androidsdk/BannerView;->s:J

    iput-wide v3, p0, Lcom/inmobi/androidsdk/BannerView;->t:J

    iput-boolean v2, p0, Lcom/inmobi/androidsdk/BannerView;->u:Z

    sget-object v0, Lcom/inmobi/commons/AnimationType;->ROTATE_HORIZONTAL_AXIS:Lcom/inmobi/commons/AnimationType;

    iput-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->v:Lcom/inmobi/commons/AnimationType;

    iput-boolean v2, p0, Lcom/inmobi/androidsdk/BannerView;->w:Z

    const-string v0, "http://i.w.inmobi.com/showad.asm"

    iput-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->y:Ljava/lang/String;

    new-instance v0, Lcom/inmobi/androidsdk/BannerView$d;

    invoke-direct {v0, p0}, Lcom/inmobi/androidsdk/BannerView$d;-><init>(Lcom/inmobi/androidsdk/BannerView;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->B:Lcom/inmobi/androidsdk/BannerView$d;

    new-instance v0, Lcom/inmobi/androidsdk/d;

    invoke-direct {v0, p0}, Lcom/inmobi/androidsdk/d;-><init>(Lcom/inmobi/androidsdk/BannerView;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->C:Landroid/view/animation/Animation$AnimationListener;

    new-instance v0, Lcom/inmobi/androidsdk/c;

    invoke-direct {v0, p0}, Lcom/inmobi/androidsdk/c;-><init>(Lcom/inmobi/androidsdk/BannerView;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->D:Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;

    new-instance v0, Lcom/inmobi/androidsdk/b;

    invoke-direct {v0, p0}, Lcom/inmobi/androidsdk/b;-><init>(Lcom/inmobi/androidsdk/BannerView;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->E:Lcom/inmobi/re/container/IMWebView$IMWebViewListener;

    iput-boolean v2, p0, Lcom/inmobi/androidsdk/BannerView;->F:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v2, p0, Lcom/inmobi/androidsdk/BannerView;->f:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object v3, p0, Lcom/inmobi/androidsdk/BannerView;->l:Ljava/lang/String;

    iput-object v3, p0, Lcom/inmobi/androidsdk/BannerView;->m:Ljava/lang/String;

    new-instance v0, Lcom/inmobi/androidsdk/AdRequest;

    invoke-direct {v0}, Lcom/inmobi/androidsdk/AdRequest;-><init>()V

    iput-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->o:Lcom/inmobi/androidsdk/AdRequest;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/inmobi/androidsdk/BannerView;->r:J

    iput-wide v4, p0, Lcom/inmobi/androidsdk/BannerView;->s:J

    iput-wide v4, p0, Lcom/inmobi/androidsdk/BannerView;->t:J

    iput-boolean v2, p0, Lcom/inmobi/androidsdk/BannerView;->u:Z

    sget-object v0, Lcom/inmobi/commons/AnimationType;->ROTATE_HORIZONTAL_AXIS:Lcom/inmobi/commons/AnimationType;

    iput-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->v:Lcom/inmobi/commons/AnimationType;

    iput-boolean v2, p0, Lcom/inmobi/androidsdk/BannerView;->w:Z

    const-string v0, "http://i.w.inmobi.com/showad.asm"

    iput-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->y:Ljava/lang/String;

    new-instance v0, Lcom/inmobi/androidsdk/BannerView$d;

    invoke-direct {v0, p0}, Lcom/inmobi/androidsdk/BannerView$d;-><init>(Lcom/inmobi/androidsdk/BannerView;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->B:Lcom/inmobi/androidsdk/BannerView$d;

    new-instance v0, Lcom/inmobi/androidsdk/d;

    invoke-direct {v0, p0}, Lcom/inmobi/androidsdk/d;-><init>(Lcom/inmobi/androidsdk/BannerView;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->C:Landroid/view/animation/Animation$AnimationListener;

    new-instance v0, Lcom/inmobi/androidsdk/c;

    invoke-direct {v0, p0}, Lcom/inmobi/androidsdk/c;-><init>(Lcom/inmobi/androidsdk/BannerView;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->D:Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;

    new-instance v0, Lcom/inmobi/androidsdk/b;

    invoke-direct {v0, p0}, Lcom/inmobi/androidsdk/b;-><init>(Lcom/inmobi/androidsdk/BannerView;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->E:Lcom/inmobi/re/container/IMWebView$IMWebViewListener;

    iput-boolean v2, p0, Lcom/inmobi/androidsdk/BannerView;->F:Z

    if-nez p2, :cond_0

    const-string v0, "[InMobi]-[Network]-4.4.1"

    const-string v1, "Missing attributes in xml layout of IMAdview "

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "appId"

    invoke-interface {p2, v3, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "adSize"

    const/4 v2, -0x1

    invoke-interface {p2, v3, v1, v2}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    const-string v2, "slotId"

    invoke-interface {p2, v3, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/inmobi/androidsdk/BannerView;->r:J

    :cond_1
    check-cast p1, Landroid/app/Activity;

    invoke-direct {p0, p1, v1, v0}, Lcom/inmobi/androidsdk/BannerView;->a(Landroid/app/Activity;ILjava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/inmobi/androidsdk/BannerView;)Lcom/inmobi/androidsdk/BannerViewListener;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->n:Lcom/inmobi/androidsdk/BannerViewListener;

    return-object v0
.end method

.method static synthetic a(Lcom/inmobi/androidsdk/BannerView;Lcom/inmobi/re/container/IMWebView;)Lcom/inmobi/re/container/IMWebView;
    .locals 0

    iput-object p1, p0, Lcom/inmobi/androidsdk/BannerView;->b:Lcom/inmobi/re/container/IMWebView;

    return-object p1
.end method

.method static synthetic a(Lcom/inmobi/androidsdk/BannerView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/inmobi/androidsdk/BannerView;->l:Ljava/lang/String;

    return-object p1
.end method

.method private a(I)V
    .locals 2

    if-gez p1, :cond_0

    const-string v0, "[InMobi]-[Network]-4.4.1"

    const-string v1, "Invalid Ad Size. Please provide a valid Ad Size. If Ad Size is declared in the layout XML, please provide a valid \'adSize\' attribute in the \'com.inmobi.androidsdk.IMAdView\' tag of layout XML. For example, adSize=\"yourAdSize\""

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private a(ILcom/inmobi/androidsdk/AdRequest$ErrorCode;)V
    .locals 2

    iget-boolean v0, p0, Lcom/inmobi/androidsdk/BannerView;->F:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->e:Landroid/app/Activity;

    new-instance v1, Lcom/inmobi/androidsdk/BannerView$b;

    invoke-direct {v1, p0}, Lcom/inmobi/androidsdk/BannerView$b;-><init>(Lcom/inmobi/androidsdk/BannerView;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    iget-boolean v0, p0, Lcom/inmobi/androidsdk/BannerView;->w:Z

    if-nez v0, :cond_2

    const-string v0, "[InMobi]-[Network]-4.4.1"

    const-string v1, "IMAdView not sending callback because the view is not added to any window."

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->n:Lcom/inmobi/androidsdk/BannerViewListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->e:Landroid/app/Activity;

    new-instance v1, Lcom/inmobi/androidsdk/BannerView$a;

    invoke-direct {v1, p0, p1, p2}, Lcom/inmobi/androidsdk/BannerView$a;-><init>(Lcom/inmobi/androidsdk/BannerView;ILcom/inmobi/androidsdk/AdRequest$ErrorCode;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private a(Landroid/app/Activity;ILjava/lang/String;)V
    .locals 5

    const/4 v4, -0x1

    const/4 v3, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/inmobi/androidsdk/impl/SDKUtil;->validateAdConfiguration(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/inmobi/androidsdk/impl/ConfigException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getUserAgent(Landroid/content/Context;)Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/inmobi/androidsdk/BannerView;->a(I)V

    iput-object p3, p0, Lcom/inmobi/androidsdk/BannerView;->p:Ljava/lang/String;

    iput p2, p0, Lcom/inmobi/androidsdk/BannerView;->q:I

    invoke-static {p1}, Lcom/inmobi/androidsdk/impl/SDKUtil;->getRootActivity(Landroid/app/Activity;)Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->e:Landroid/app/Activity;

    const-class v0, Lcom/inmobi/androidsdk/impl/imai/IMAIController;

    invoke-static {v0}, Lcom/inmobi/re/container/IMWebView;->setIMAIController(Ljava/lang/Class;)V

    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->printPublisherTestId()V

    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->b:Lcom/inmobi/re/container/IMWebView;

    if-nez v0, :cond_1

    new-instance v0, Lcom/inmobi/re/container/IMWebView;

    iget-object v1, p0, Lcom/inmobi/androidsdk/BannerView;->e:Landroid/app/Activity;

    iget-object v2, p0, Lcom/inmobi/androidsdk/BannerView;->E:Lcom/inmobi/re/container/IMWebView$IMWebViewListener;

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/inmobi/re/container/IMWebView;-><init>(Landroid/content/Context;Lcom/inmobi/re/container/IMWebView$IMWebViewListener;ZZ)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->b:Lcom/inmobi/re/container/IMWebView;

    iget-boolean v0, p0, Lcom/inmobi/androidsdk/BannerView;->F:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->b:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->disableHardwareAcceleration()V

    :cond_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->b:Lcom/inmobi/re/container/IMWebView;

    new-instance v1, Lcom/inmobi/androidsdk/impl/imai/IMAIController;

    iget-object v2, p0, Lcom/inmobi/androidsdk/BannerView;->b:Lcom/inmobi/re/container/IMWebView;

    invoke-direct {v1, v2}, Lcom/inmobi/androidsdk/impl/imai/IMAIController;-><init>(Lcom/inmobi/re/container/IMWebView;)V

    const-string v2, "imaiController"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/re/container/IMWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->c:Lcom/inmobi/re/container/IMWebView;

    if-nez v0, :cond_3

    new-instance v0, Lcom/inmobi/re/container/IMWebView;

    iget-object v1, p0, Lcom/inmobi/androidsdk/BannerView;->e:Landroid/app/Activity;

    iget-object v2, p0, Lcom/inmobi/androidsdk/BannerView;->E:Lcom/inmobi/re/container/IMWebView$IMWebViewListener;

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/inmobi/re/container/IMWebView;-><init>(Landroid/content/Context;Lcom/inmobi/re/container/IMWebView$IMWebViewListener;ZZ)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->c:Lcom/inmobi/re/container/IMWebView;

    iget-boolean v0, p0, Lcom/inmobi/androidsdk/BannerView;->F:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->c:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->disableHardwareAcceleration()V

    :cond_2
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/inmobi/androidsdk/BannerView;->c:Lcom/inmobi/re/container/IMWebView;

    iput-object v1, p0, Lcom/inmobi/androidsdk/BannerView;->d:Lcom/inmobi/re/container/IMWebView;

    iget-object v1, p0, Lcom/inmobi/androidsdk/BannerView;->c:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {p0, v1, v0}, Lcom/inmobi/androidsdk/BannerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->c:Lcom/inmobi/re/container/IMWebView;

    new-instance v1, Lcom/inmobi/androidsdk/impl/imai/IMAIController;

    iget-object v2, p0, Lcom/inmobi/androidsdk/BannerView;->c:Lcom/inmobi/re/container/IMWebView;

    invoke-direct {v1, v2}, Lcom/inmobi/androidsdk/impl/imai/IMAIController;-><init>(Lcom/inmobi/re/container/IMWebView;)V

    const-string v2, "imaiController"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/re/container/IMWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3
    invoke-direct {p0}, Lcom/inmobi/androidsdk/BannerView;->d()V

    new-instance v0, Lcom/inmobi/androidsdk/g;

    iget-object v1, p0, Lcom/inmobi/androidsdk/BannerView;->C:Landroid/view/animation/Animation$AnimationListener;

    invoke-direct {v0, p0, v1}, Lcom/inmobi/androidsdk/g;-><init>(Lcom/inmobi/androidsdk/BannerView;Landroid/view/animation/Animation$AnimationListener;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->x:Lcom/inmobi/androidsdk/g;

    sget-object v0, Lcom/inmobi/androidsdk/BannerView;->a:Lcom/inmobi/androidsdk/impl/ConnBroadcastReciever;

    if-nez v0, :cond_4

    new-instance v0, Lcom/inmobi/androidsdk/impl/ConnBroadcastReciever;

    invoke-direct {v0}, Lcom/inmobi/androidsdk/impl/ConnBroadcastReciever;-><init>()V

    sput-object v0, Lcom/inmobi/androidsdk/BannerView;->a:Lcom/inmobi/androidsdk/impl/ConnBroadcastReciever;

    :cond_4
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->e:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/inmobi/androidsdk/BannerView;->a:Lcom/inmobi/androidsdk/impl/ConnBroadcastReciever;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    :catch_0
    move-exception v0

    const-string v1, "[InMobi]-[Network]-4.4.1"

    const-string v2, "IMConfigException occured while initializing interstitial while validating adView"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/inmobi/androidsdk/BannerView;ILcom/inmobi/androidsdk/AdRequest$ErrorCode;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/inmobi/androidsdk/BannerView;->a(ILcom/inmobi/androidsdk/AdRequest$ErrorCode;)V

    return-void
.end method

.method static synthetic a(Lcom/inmobi/androidsdk/BannerView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/inmobi/androidsdk/BannerView;->a(Z)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 7

    const/4 v4, 0x0

    const/16 v5, 0x65

    const/4 v3, 0x0

    if-eqz p1, :cond_4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-gt v0, v1, :cond_0

    const-string v0, "%"

    const-string v1, "%25"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    invoke-direct {p0}, Lcom/inmobi/androidsdk/BannerView;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->b:Lcom/inmobi/re/container/IMWebView;

    if-nez v0, :cond_1

    new-instance v0, Lcom/inmobi/re/container/IMWebView;

    iget-object v1, p0, Lcom/inmobi/androidsdk/BannerView;->e:Landroid/app/Activity;

    iget-object v2, p0, Lcom/inmobi/androidsdk/BannerView;->E:Lcom/inmobi/re/container/IMWebView$IMWebViewListener;

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/inmobi/re/container/IMWebView;-><init>(Landroid/content/Context;Lcom/inmobi/re/container/IMWebView$IMWebViewListener;ZZ)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->b:Lcom/inmobi/re/container/IMWebView;

    iget-boolean v0, p0, Lcom/inmobi/androidsdk/BannerView;->F:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->b:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->disableHardwareAcceleration()V

    :cond_1
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->b:Lcom/inmobi/re/container/IMWebView;

    :goto_0
    new-instance v1, Lcom/inmobi/androidsdk/impl/imai/IMAIController;

    invoke-direct {v1, v0}, Lcom/inmobi/androidsdk/impl/imai/IMAIController;-><init>(Lcom/inmobi/re/container/IMWebView;)V

    const-string v2, "imaiController"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/re/container/IMWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/inmobi/androidsdk/BannerView;->B:Lcom/inmobi/androidsdk/BannerView$d;

    invoke-virtual {v1, v5}, Lcom/inmobi/androidsdk/BannerView$d;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView;->requestOnPageFinishedCallback(Landroid/os/Message;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/inmobi/androidsdk/BannerView;->s:J

    iget-object v1, p0, Lcom/inmobi/androidsdk/BannerView;->B:Lcom/inmobi/androidsdk/BannerView$d;

    const/16 v2, 0x6c

    invoke-static {}, Lcom/inmobi/androidsdk/bootstrapper/Initializer;->getConfigParams()Lcom/inmobi/androidsdk/bootstrapper/ConfigParams;

    move-result-object v3

    invoke-virtual {v3}, Lcom/inmobi/androidsdk/bootstrapper/ConfigParams;->getRenderTimeOut()I

    move-result v3

    int-to-long v5, v3

    invoke-virtual {v1, v2, v5, v6}, Lcom/inmobi/androidsdk/BannerView$d;->sendEmptyMessageDelayed(IJ)Z

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->resetMraid()V

    const-string v1, ""

    const-string v3, "text/html"

    move-object v2, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/inmobi/re/container/IMWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->c:Lcom/inmobi/re/container/IMWebView;

    if-nez v0, :cond_3

    new-instance v0, Lcom/inmobi/re/container/IMWebView;

    iget-object v1, p0, Lcom/inmobi/androidsdk/BannerView;->e:Landroid/app/Activity;

    iget-object v2, p0, Lcom/inmobi/androidsdk/BannerView;->E:Lcom/inmobi/re/container/IMWebView$IMWebViewListener;

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/inmobi/re/container/IMWebView;-><init>(Landroid/content/Context;Lcom/inmobi/re/container/IMWebView$IMWebViewListener;ZZ)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->c:Lcom/inmobi/re/container/IMWebView;

    iget-boolean v0, p0, Lcom/inmobi/androidsdk/BannerView;->F:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->c:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->disableHardwareAcceleration()V

    :cond_3
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->c:Lcom/inmobi/re/container/IMWebView;

    goto :goto_0

    :cond_4
    invoke-direct {p0, v3}, Lcom/inmobi/androidsdk/BannerView;->a(Z)V

    const-string v0, "[InMobi]-[Network]-4.4.1"

    const-string v1, "Cannot load Ad. Invalid Ad Response"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/inmobi/androidsdk/AdRequest$ErrorCode;->INTERNAL_ERROR:Lcom/inmobi/androidsdk/AdRequest$ErrorCode;

    invoke-direct {p0, v5, v0}, Lcom/inmobi/androidsdk/BannerView;->a(ILcom/inmobi/androidsdk/AdRequest$ErrorCode;)V

    goto :goto_1
.end method

.method private a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method static synthetic b(Lcom/inmobi/androidsdk/BannerView;)J
    .locals 2

    iget-wide v0, p0, Lcom/inmobi/androidsdk/BannerView;->t:J

    return-wide v0
.end method

.method static synthetic b(Lcom/inmobi/androidsdk/BannerView;Lcom/inmobi/re/container/IMWebView;)Lcom/inmobi/re/container/IMWebView;
    .locals 0

    iput-object p1, p0, Lcom/inmobi/androidsdk/BannerView;->c:Lcom/inmobi/re/container/IMWebView;

    return-object p1
.end method

.method static synthetic b(Lcom/inmobi/androidsdk/BannerView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/inmobi/androidsdk/BannerView;->a(Ljava/lang/String;)V

    return-void
.end method

.method private b(Z)V
    .locals 1

    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method static synthetic b(Lcom/inmobi/androidsdk/BannerView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/inmobi/androidsdk/BannerView;->u:Z

    return p1
.end method

.method static synthetic c(Lcom/inmobi/androidsdk/BannerView;Lcom/inmobi/re/container/IMWebView;)Lcom/inmobi/re/container/IMWebView;
    .locals 0

    iput-object p1, p0, Lcom/inmobi/androidsdk/BannerView;->d:Lcom/inmobi/re/container/IMWebView;

    return-object p1
.end method

.method static synthetic c(Lcom/inmobi/androidsdk/BannerView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/inmobi/androidsdk/BannerView;->m:Ljava/lang/String;

    return-object p1
.end method

.method private c()V
    .locals 4

    const/16 v1, 0x140

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/inmobi/androidsdk/BannerView;->e:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    :try_start_0
    iget v3, p0, Lcom/inmobi/androidsdk/BannerView;->q:I

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    move v1, v0

    :goto_0
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    int-to-float v1, v1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/BannerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/BannerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/BannerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/BannerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :pswitch_1
    const/16 v0, 0x30

    goto :goto_0

    :pswitch_2
    const/16 v1, 0x12c

    const/16 v0, 0xfa

    goto :goto_0

    :pswitch_3
    const/16 v1, 0x2d9

    const/16 v0, 0x5a

    goto :goto_0

    :pswitch_4
    const/16 v1, 0x1d4

    const/16 v0, 0x3c

    goto :goto_0

    :pswitch_5
    const/16 v1, 0x78

    const/16 v0, 0x258

    goto :goto_0

    :pswitch_6
    const/16 v0, 0x32

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "[InMobi]-[Network]-4.4.1"

    const-string v2, "Cannot set default size for adview"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method static synthetic c(Lcom/inmobi/androidsdk/BannerView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/inmobi/androidsdk/BannerView;->b(Z)V

    return-void
.end method

.method private c(Z)V
    .locals 2

    const/4 v1, 0x0

    iput-boolean p1, p0, Lcom/inmobi/androidsdk/BannerView;->f:Z

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->b:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->deinit()V

    iput-object v1, p0, Lcom/inmobi/androidsdk/BannerView;->b:Lcom/inmobi/re/container/IMWebView;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->c:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->deinit()V

    iput-object v1, p0, Lcom/inmobi/androidsdk/BannerView;->c:Lcom/inmobi/re/container/IMWebView;

    goto :goto_0
.end method

.method static synthetic c(Lcom/inmobi/androidsdk/BannerView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/inmobi/androidsdk/BannerView;->A:Z

    return v0
.end method

.method static synthetic d(Lcom/inmobi/androidsdk/BannerView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->m:Ljava/lang/String;

    return-object v0
.end method

.method private d()V
    .locals 4

    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->g:Lcom/inmobi/androidsdk/impl/UserInfo;

    if-nez v0, :cond_0

    new-instance v0, Lcom/inmobi/androidsdk/impl/UserInfo;

    iget-object v1, p0, Lcom/inmobi/androidsdk/BannerView;->e:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/inmobi/androidsdk/impl/UserInfo;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->g:Lcom/inmobi/androidsdk/impl/UserInfo;

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v1, p0, Lcom/inmobi/androidsdk/BannerView;->e:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->e:Landroid/app/Activity;

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/internal/WrapperFunctions;->getDisplayWidth(Landroid/view/Display;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    float-to-int v2, v2

    invoke-static {v0}, Lcom/inmobi/commons/internal/WrapperFunctions;->getDisplayHeight(Landroid/view/Display;)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v3, p0, Lcom/inmobi/androidsdk/BannerView;->g:Lcom/inmobi/androidsdk/impl/UserInfo;

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/inmobi/androidsdk/impl/UserInfo;->setScreenDensity(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/inmobi/androidsdk/BannerView;->g:Lcom/inmobi/androidsdk/impl/UserInfo;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "X"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->setScreenSize(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->b:Lcom/inmobi/re/container/IMWebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->g:Lcom/inmobi/androidsdk/impl/UserInfo;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getPhoneDefaultUserAgent()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->g:Lcom/inmobi/androidsdk/impl/UserInfo;

    iget-object v1, p0, Lcom/inmobi/androidsdk/BannerView;->e:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/impl/UserInfo;->setPhoneDefaultUserAgent(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->g:Lcom/inmobi/androidsdk/impl/UserInfo;

    iget v1, p0, Lcom/inmobi/androidsdk/BannerView;->q:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/impl/UserInfo;->setAdUnitSlot(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/inmobi/androidsdk/BannerView;->r:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->g:Lcom/inmobi/androidsdk/impl/UserInfo;

    iget-wide v1, p0, Lcom/inmobi/androidsdk/BannerView;->r:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/impl/UserInfo;->setSlotId(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->g:Lcom/inmobi/androidsdk/impl/UserInfo;

    iget-object v1, p0, Lcom/inmobi/androidsdk/BannerView;->p:Ljava/lang/String;

    iget-object v2, p0, Lcom/inmobi/androidsdk/BannerView;->o:Lcom/inmobi/androidsdk/AdRequest;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/androidsdk/impl/UserInfo;->updateInfo(Ljava/lang/String;Lcom/inmobi/androidsdk/AdRequest;)V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "[InMobi]-[Network]-4.4.1"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception occured while setting user agent"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/inmobi/androidsdk/BannerView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/inmobi/androidsdk/BannerView;->c(Z)V

    return-void
.end method

.method static synthetic e(Lcom/inmobi/androidsdk/BannerView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->l:Ljava/lang/String;

    return-object v0
.end method

.method private e()V
    .locals 6

    const/4 v0, 0x0

    const/4 v5, 0x0

    const/16 v4, 0x64

    :try_start_0
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/BannerView;->removeAllViews()V

    invoke-direct {p0}, Lcom/inmobi/androidsdk/BannerView;->i()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/inmobi/androidsdk/BannerView;->b:Lcom/inmobi/re/container/IMWebView;

    iput-object v2, p0, Lcom/inmobi/androidsdk/BannerView;->d:Lcom/inmobi/re/container/IMWebView;

    iget-object v2, p0, Lcom/inmobi/androidsdk/BannerView;->b:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {p0, v2, v1}, Lcom/inmobi/androidsdk/BannerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    invoke-direct {p0}, Lcom/inmobi/androidsdk/BannerView;->i()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-direct {p0, v0}, Lcom/inmobi/androidsdk/BannerView;->c(Z)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/inmobi/androidsdk/BannerView;->a(Z)V

    invoke-direct {p0}, Lcom/inmobi/androidsdk/BannerView;->j()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, v4, v5}, Lcom/inmobi/androidsdk/BannerView;->a(ILcom/inmobi/androidsdk/AdRequest$ErrorCode;)V

    :goto_1
    return-void

    :cond_1
    :try_start_1
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/inmobi/androidsdk/BannerView;->c:Lcom/inmobi/re/container/IMWebView;

    iput-object v2, p0, Lcom/inmobi/androidsdk/BannerView;->d:Lcom/inmobi/re/container/IMWebView;

    iget-object v2, p0, Lcom/inmobi/androidsdk/BannerView;->c:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {p0, v2, v1}, Lcom/inmobi/androidsdk/BannerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "[InMobi]-[Network]-4.4.1"

    const-string v2, "Error swapping banner ads"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-direct {p0, v4, v5}, Lcom/inmobi/androidsdk/BannerView;->a(ILcom/inmobi/androidsdk/AdRequest$ErrorCode;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-direct {p0, v4, v5}, Lcom/inmobi/androidsdk/BannerView;->a(ILcom/inmobi/androidsdk/AdRequest$ErrorCode;)V

    throw v0
.end method

.method static synthetic f(Lcom/inmobi/androidsdk/BannerView;)J
    .locals 2

    iget-wide v0, p0, Lcom/inmobi/androidsdk/BannerView;->s:J

    return-wide v0
.end method

.method private f()Z
    .locals 2

    iget v0, p0, Lcom/inmobi/androidsdk/BannerView;->q:I

    if-gez v0, :cond_0

    const-string v0, "[InMobi]-[Network]-4.4.1"

    const-string v1, "Invalid Ad Size. Please provide a valid adSize."

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private g()Z
    .locals 1

    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method static synthetic g(Lcom/inmobi/androidsdk/BannerView;)Z
    .locals 1

    invoke-direct {p0}, Lcom/inmobi/androidsdk/BannerView;->i()Z

    move-result v0

    return v0
.end method

.method static synthetic h(Lcom/inmobi/androidsdk/BannerView;)Lcom/inmobi/re/container/IMWebView;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->b:Lcom/inmobi/re/container/IMWebView;

    return-object v0
.end method

.method private h()Z
    .locals 6

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/inmobi/androidsdk/BannerView;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->c:Lcom/inmobi/re/container/IMWebView;

    :goto_1
    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->getState()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[InMobi]-[Network]-4.4.1"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Current Ad State: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/inmobi/re/container/IMWebView$ViewState;->EXPANDED:Lcom/inmobi/re/container/IMWebView$ViewState;

    invoke-virtual {v3}, Lcom/inmobi/re/container/IMWebView$ViewState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Lcom/inmobi/re/container/IMWebView$ViewState;->RESIZED:Lcom/inmobi/re/container/IMWebView$ViewState;

    invoke-virtual {v3}, Lcom/inmobi/re/container/IMWebView$ViewState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Lcom/inmobi/re/container/IMWebView$ViewState;->RESIZING:Lcom/inmobi/re/container/IMWebView$ViewState;

    invoke-virtual {v3}, Lcom/inmobi/re/container/IMWebView$ViewState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Lcom/inmobi/re/container/IMWebView$ViewState;->EXPANDING:Lcom/inmobi/re/container/IMWebView$ViewState;

    invoke-virtual {v3}, Lcom/inmobi/re/container/IMWebView$ViewState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    const-string v0, "[InMobi]-[Network]-4.4.1"

    const-string v2, "Current Ad State is neither default nor loading. New ad will not be shown."

    invoke-static {v0, v2}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->b:Lcom/inmobi/re/container/IMWebView;

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->isBusy()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "[InMobi]-[Network]-4.4.1"

    const-string v2, "New ad will not be shown because the present ad is busy. Eg. Video/audio is playing, etc."

    invoke-static {v0, v2}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic i(Lcom/inmobi/androidsdk/BannerView;)Lcom/inmobi/re/container/IMWebView;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->c:Lcom/inmobi/re/container/IMWebView;

    return-object v0
.end method

.method private i()Z
    .locals 1

    iget-boolean v0, p0, Lcom/inmobi/androidsdk/BannerView;->f:Z

    return v0
.end method

.method static synthetic j(Lcom/inmobi/androidsdk/BannerView;)Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->z:Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;

    return-object v0
.end method

.method private j()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->c:Lcom/inmobi/re/container/IMWebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->c:Lcom/inmobi/re/container/IMWebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView;->setBackgroundColor(I)V

    :cond_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->b:Lcom/inmobi/re/container/IMWebView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->b:Lcom/inmobi/re/container/IMWebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView;->setBackgroundColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "[InMobi]-[Network]-4.4.1"

    const-string v2, "Error setNormalBGColor"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic k(Lcom/inmobi/androidsdk/BannerView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/inmobi/androidsdk/BannerView;->u:Z

    return v0
.end method

.method static synthetic l(Lcom/inmobi/androidsdk/BannerView;)V
    .locals 0

    invoke-direct {p0}, Lcom/inmobi/androidsdk/BannerView;->e()V

    return-void
.end method

.method static synthetic m(Lcom/inmobi/androidsdk/BannerView;)Lcom/inmobi/commons/AnimationType;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->v:Lcom/inmobi/commons/AnimationType;

    return-object v0
.end method

.method static synthetic n(Lcom/inmobi/androidsdk/BannerView;)Lcom/inmobi/androidsdk/g;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->x:Lcom/inmobi/androidsdk/g;

    return-object v0
.end method

.method static synthetic o(Lcom/inmobi/androidsdk/BannerView;)V
    .locals 0

    invoke-direct {p0}, Lcom/inmobi/androidsdk/BannerView;->j()V

    return-void
.end method

.method static synthetic p(Lcom/inmobi/androidsdk/BannerView;)Lcom/inmobi/androidsdk/BannerView$d;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->B:Lcom/inmobi/androidsdk/BannerView$d;

    return-object v0
.end method


# virtual methods
.method final a()Landroid/view/animation/Animation;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->j:Landroid/view/animation/Animation;

    return-object v0
.end method

.method final a(Landroid/view/animation/Animation;)V
    .locals 0

    iput-object p1, p0, Lcom/inmobi/androidsdk/BannerView;->j:Landroid/view/animation/Animation;

    return-void
.end method

.method final b()Landroid/view/animation/Animation;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->k:Landroid/view/animation/Animation;

    return-object v0
.end method

.method final b(Landroid/view/animation/Animation;)V
    .locals 0

    iput-object p1, p0, Lcom/inmobi/androidsdk/BannerView;->k:Landroid/view/animation/Animation;

    return-void
.end method

.method public final destroy()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->d:Lcom/inmobi/re/container/IMWebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->d:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->d:Lcom/inmobi/re/container/IMWebView;

    return-void

    :catch_0
    move-exception v0

    const-string v0, "[InMobi]-[Network]-4.4.1"

    const-string v1, "Unable to destroy webview, or it has been destroyed already."

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final disableHardwareAcceleration()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/androidsdk/BannerView;->F:Z

    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->d:Lcom/inmobi/re/container/IMWebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->d:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->disableHardwareAcceleration()V

    :cond_0
    return-void
.end method

.method public final getAdSize()I
    .locals 1

    iget v0, p0, Lcom/inmobi/androidsdk/BannerView;->q:I

    return v0
.end method

.method public final getAdViewPosition()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x2

    new-array v2, v0, [I

    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->d:Lcom/inmobi/re/container/IMWebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->d:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->d:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_1

    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/BannerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/BannerView;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/BannerView;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {p0, v2}, Lcom/inmobi/androidsdk/BannerView;->getLocationOnScreen([I)V

    aget v1, v2, v4

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    aget v1, v2, v5

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    move-object v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/BannerView;->getRootView()Landroid/view/View;

    move-result-object v0

    const v3, 0x1020002

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    iget v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    aget v3, v2, v4

    sub-int/2addr v0, v3

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    aget v2, v2, v5

    sub-int/2addr v0, v2

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    return-object v1

    :cond_1
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/inmobi/androidsdk/BannerView;->d:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v1}, Lcom/inmobi/re/container/IMWebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/inmobi/androidsdk/BannerView;->d:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v1}, Lcom/inmobi/re/container/IMWebView;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget-object v1, p0, Lcom/inmobi/androidsdk/BannerView;->d:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v1}, Lcom/inmobi/re/container/IMWebView;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object v1, p0, Lcom/inmobi/androidsdk/BannerView;->d:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v1, v2}, Lcom/inmobi/re/container/IMWebView;->getLocationOnScreen([I)V

    aget v1, v2, v4

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    aget v1, v2, v5

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    move-object v1, v0

    goto :goto_0
.end method

.method public final getAppId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->p:Ljava/lang/String;

    return-object v0
.end method

.method public final getIMAdListener()Lcom/inmobi/androidsdk/BannerViewListener;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->n:Lcom/inmobi/androidsdk/BannerViewListener;

    return-object v0
.end method

.method public final getIMAdRequest()Lcom/inmobi/androidsdk/AdRequest;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->o:Lcom/inmobi/androidsdk/AdRequest;

    return-object v0
.end method

.method public final getSlotId()J
    .locals 2

    iget-wide v0, p0, Lcom/inmobi/androidsdk/BannerView;->r:J

    return-wide v0
.end method

.method public final isModal()Z
    .locals 1

    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->d:Lcom/inmobi/re/container/IMWebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->d:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->isModal()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final declared-synchronized loadNewAd()V
    .locals 5

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;

    invoke-direct {v0}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;-><init>()V

    iput-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->z:Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;

    invoke-static {}, Lcom/inmobi/androidsdk/bootstrapper/Initializer;->getLogger()Lcom/inmobi/commons/metric/Logger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/metric/Logger;->startNewSample()Z

    move-result v0

    iput-boolean v0, p0, Lcom/inmobi/androidsdk/BannerView;->A:Z

    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->printPublisherTestId()V

    const-string v0, "[InMobi]-[Network]-4.4.1"

    const-string v1, " >>>> Start loading new Ad <<<<"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->e:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->checkNetworkAvailibility(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x65

    sget-object v1, Lcom/inmobi/androidsdk/AdRequest$ErrorCode;->NETWORK_ERROR:Lcom/inmobi/androidsdk/AdRequest$ErrorCode;

    invoke-direct {p0, v0, v1}, Lcom/inmobi/androidsdk/BannerView;->a(ILcom/inmobi/androidsdk/AdRequest$ErrorCode;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_2
    invoke-direct {p0}, Lcom/inmobi/androidsdk/BannerView;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x65

    sget-object v1, Lcom/inmobi/androidsdk/AdRequest$ErrorCode;->AD_DOWNLOAD_IN_PROGRESS:Lcom/inmobi/androidsdk/AdRequest$ErrorCode;

    invoke-direct {p0, v0, v1}, Lcom/inmobi/androidsdk/BannerView;->a(ILcom/inmobi/androidsdk/AdRequest$ErrorCode;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    const-string v1, "[InMobi]-[Network]-4.4.1"

    const-string v2, "Error in loading ad "

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_4
    invoke-direct {p0}, Lcom/inmobi/androidsdk/BannerView;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x65

    sget-object v1, Lcom/inmobi/androidsdk/AdRequest$ErrorCode;->AD_CLICK_IN_PROGRESS:Lcom/inmobi/androidsdk/AdRequest$ErrorCode;

    invoke-direct {p0, v0, v1}, Lcom/inmobi/androidsdk/BannerView;->a(ILcom/inmobi/androidsdk/AdRequest$ErrorCode;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/inmobi/androidsdk/BannerView;->f()Z

    move-result v0

    if-nez v0, :cond_3

    const/16 v0, 0x65

    sget-object v1, Lcom/inmobi/androidsdk/AdRequest$ErrorCode;->INVALID_REQUEST:Lcom/inmobi/androidsdk/AdRequest$ErrorCode;

    invoke-direct {p0, v0, v1}, Lcom/inmobi/androidsdk/BannerView;->a(ILcom/inmobi/androidsdk/AdRequest$ErrorCode;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/inmobi/androidsdk/carb/CARB;->getInstance()Lcom/inmobi/androidsdk/carb/CARB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/carb/CARB;->startCarb()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/inmobi/androidsdk/BannerView;->a(Z)V

    invoke-direct {p0}, Lcom/inmobi/androidsdk/BannerView;->d()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/inmobi/androidsdk/BannerView;->t:J

    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->B:Lcom/inmobi/androidsdk/BannerView$d;

    const/16 v1, 0x6b

    invoke-static {}, Lcom/inmobi/androidsdk/bootstrapper/Initializer;->getConfigParams()Lcom/inmobi/androidsdk/bootstrapper/ConfigParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inmobi/androidsdk/bootstrapper/ConfigParams;->getFetchTimeOut()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/inmobi/androidsdk/BannerView$d;->sendEmptyMessageDelayed(IJ)Z

    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->z:Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;

    iget-object v1, p0, Lcom/inmobi/androidsdk/BannerView;->g:Lcom/inmobi/androidsdk/impl/UserInfo;

    sget-object v2, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$ActionType;->AdRequest:Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$ActionType;

    iget-object v3, p0, Lcom/inmobi/androidsdk/BannerView;->y:Ljava/lang/String;

    iget-object v4, p0, Lcom/inmobi/androidsdk/BannerView;->D:Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->asyncRequestSecuredAd(Lcom/inmobi/androidsdk/impl/UserInfo;Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$ActionType;Ljava/lang/String;Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public final loadNewAd(Lcom/inmobi/androidsdk/AdRequest;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/inmobi/androidsdk/BannerView;->o:Lcom/inmobi/androidsdk/AdRequest;

    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/BannerView;->loadNewAd()V

    return-void
.end method

.method protected final onAttachedToWindow()V
    .locals 2

    const-string v0, "[InMobi]-[Network]-4.4.1"

    const-string v1, "onAttachedToWindow"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/androidsdk/BannerView;->w:Z

    invoke-direct {p0}, Lcom/inmobi/androidsdk/BannerView;->c()V

    return-void
.end method

.method protected final onDetachedFromWindow()V
    .locals 2

    const-string v0, "[InMobi]-[Network]-4.4.1"

    const-string v1, "onDetatchedFromWindow"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/androidsdk/BannerView;->w:Z

    invoke-direct {p0}, Lcom/inmobi/androidsdk/BannerView;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->c:Lcom/inmobi/re/container/IMWebView;

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->deinit()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->b:Lcom/inmobi/re/container/IMWebView;

    goto :goto_0
.end method

.method protected final onWindowVisibilityChanged(I)V
    .locals 3

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowVisibilityChanged(I)V

    if-nez p1, :cond_0

    :try_start_0
    new-instance v0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;

    invoke-direct {v0}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;-><init>()V

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->init()V

    iget-object v1, p0, Lcom/inmobi/androidsdk/BannerView;->e:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->processClick(Landroid/content/Context;Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "[InMobi]-[Network]-4.4.1"

    const-string v2, "Exception ping in background"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final setAdBackgroundColor(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public final setAdBackgroundGradientColor(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public final setAdServerUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inmobi/androidsdk/BannerView;->y:Ljava/lang/String;

    return-void
.end method

.method public final setAdSize(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/inmobi/androidsdk/BannerView;->a(I)V

    iput p1, p0, Lcom/inmobi/androidsdk/BannerView;->q:I

    return-void
.end method

.method public final setAdTextColor(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public final setAnimationType(Lcom/inmobi/commons/AnimationType;)V
    .locals 0

    iput-object p1, p0, Lcom/inmobi/androidsdk/BannerView;->v:Lcom/inmobi/commons/AnimationType;

    return-void
.end method

.method public final setAppId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inmobi/androidsdk/BannerView;->p:Ljava/lang/String;

    return-void
.end method

.method public final setIMAdListener(Lcom/inmobi/androidsdk/BannerViewListener;)V
    .locals 0

    iput-object p1, p0, Lcom/inmobi/androidsdk/BannerView;->n:Lcom/inmobi/androidsdk/BannerViewListener;

    return-void
.end method

.method public final setIMAdRequest(Lcom/inmobi/androidsdk/AdRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/inmobi/androidsdk/BannerView;->o:Lcom/inmobi/androidsdk/AdRequest;

    return-void
.end method

.method public final setRefTagParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    :cond_0
    const-string v0, "[InMobi]-[Network]-4.4.1"

    const-string v1, "Key or Value cannot be null"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const-string v0, "[InMobi]-[Network]-4.4.1"

    const-string v1, "Key or Value cannot be empty"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->g:Lcom/inmobi/androidsdk/impl/UserInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->g:Lcom/inmobi/androidsdk/impl/UserInfo;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/impl/UserInfo;->setRefTagKey(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->g:Lcom/inmobi/androidsdk/impl/UserInfo;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p2, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/impl/UserInfo;->setRefTagValue(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final setSlotId(J)V
    .locals 0

    iput-wide p1, p0, Lcom/inmobi/androidsdk/BannerView;->r:J

    return-void
.end method

.method public final stopLoading()V
    .locals 3

    const/16 v2, 0x6c

    const/16 v1, 0x6b

    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->B:Lcom/inmobi/androidsdk/BannerView$d;

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/BannerView$d;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->B:Lcom/inmobi/androidsdk/BannerView$d;

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/BannerView$d;->removeMessages(I)V

    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->B:Lcom/inmobi/androidsdk/BannerView$d;

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/BannerView$d;->sendEmptyMessage(I)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->B:Lcom/inmobi/androidsdk/BannerView$d;

    invoke-virtual {v0, v2}, Lcom/inmobi/androidsdk/BannerView$d;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->B:Lcom/inmobi/androidsdk/BannerView$d;

    invoke-virtual {v0, v2}, Lcom/inmobi/androidsdk/BannerView$d;->removeMessages(I)V

    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->B:Lcom/inmobi/androidsdk/BannerView$d;

    invoke-virtual {v0, v2}, Lcom/inmobi/androidsdk/BannerView$d;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
