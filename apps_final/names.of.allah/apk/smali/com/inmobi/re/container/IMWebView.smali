.class public Lcom/inmobi/re/container/IMWebView;
.super Landroid/webkit/WebView;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static D:Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public static final DIMENSIONS:Ljava/lang/String; = "expand_dimensions"

.field public static final EXPAND_URL:Ljava/lang/String; = "expand_url"

.field protected static final IMWEBVIEW_INTERSTITIAL_ID:I = 0x75

.field public static final PLAYER_PROPERTIES:Ljava/lang/String; = "player_properties"

.field private static d:[I = null

.field private static final serialVersionUID:J = 0x6282f5dae34d0336L

.field public static userInitiatedClose:Z


# instance fields
.field private A:Landroid/view/ViewParent;

.field private B:I

.field private C:Z

.field private E:Landroid/webkit/WebViewClient;

.field private F:Landroid/webkit/WebChromeClient;

.field private G:Landroid/media/MediaPlayer$OnCompletionListener;

.field private H:Z

.field a:D

.field public acqMutexcPos:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public acqMutexdPos:Ljava/util/concurrent/atomic/AtomicBoolean;

.field b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field c:Lcom/inmobi/re/container/IMWebView$InstantVideoCallbackCallback;

.field public curPosition:Lorg/json/JSONObject;

.field public defPosition:Lorg/json/JSONObject;

.field public doNotFireVisibilityChanged:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private e:Z

.field private f:Lcom/inmobi/re/controller/JSUtilityController;

.field private g:F

.field private h:I

.field private i:I

.field public isMutexAquired:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public isTablet:Z

.field private j:Lcom/inmobi/re/container/IMWebView$ViewState;

.field private k:Landroid/widget/VideoView;

.field private l:Landroid/view/View;

.field private m:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field public mAudioVideoController:Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;

.field public mExpandController:Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;

.field public mInterstitialController:Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;

.field public mIsInterstitialAd:Z

.field public mIsViewable:Z

.field public mListener:Lcom/inmobi/re/container/IMWebView$IMWebViewListener;

.field public mMraidBasic:Lcom/inmobi/re/container/mraidimpl/MRAIDBasic;

.field public mOriginalWebviewForExpandUrl:Lcom/inmobi/re/container/IMWebView;

.field public mResizeController:Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;

.field public mWebViewIsBrowserActivity:Z

.field protected mraidLoaded:Z

.field public mutex:Ljava/lang/Object;

.field public mutexcPos:Ljava/lang/Object;

.field public mutexdPos:Ljava/lang/Object;

.field private n:Landroid/view/ViewGroup;

.field private o:Landroid/widget/FrameLayout;

.field private p:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/inmobi/re/container/IMWebView$i;",
            ">;"
        }
    .end annotation
.end field

.field public publisherOrientation:I

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Landroid/os/Message;

.field private u:Landroid/os/Message;

.field private v:Landroid/app/Activity;

.field private w:Landroid/webkit/WebViewClient;

.field public webviewUserAgent:Ljava/lang/String;

.field private x:Lcom/inmobi/re/container/IMWebView$l;

.field private y:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private z:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/inmobi/re/container/IMWebView;->d:[I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/inmobi/re/container/IMWebView;->userInitiatedClose:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/inmobi/re/container/IMWebView;->D:Ljava/lang/Class;

    return-void

    nop

    :array_0
    .array-data 4
        0x101011f
        0x1010120
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->doNotFireVisibilityChanged:Ljava/util/concurrent/atomic/AtomicBoolean;

    sget-object v0, Lcom/inmobi/re/container/IMWebView$ViewState;->LOADING:Lcom/inmobi/re/container/IMWebView$ViewState;

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->j:Lcom/inmobi/re/container/IMWebView$ViewState;

    iput-object v4, p0, Lcom/inmobi/re/container/IMWebView;->m:Landroid/webkit/WebChromeClient$CustomViewCallback;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->p:Ljava/util/ArrayList;

    iput-boolean v2, p0, Lcom/inmobi/re/container/IMWebView;->q:Z

    iput-boolean v2, p0, Lcom/inmobi/re/container/IMWebView;->mIsInterstitialAd:Z

    iput-boolean v2, p0, Lcom/inmobi/re/container/IMWebView;->isTablet:Z

    iput-object v4, p0, Lcom/inmobi/re/container/IMWebView;->mOriginalWebviewForExpandUrl:Lcom/inmobi/re/container/IMWebView;

    iput-boolean v2, p0, Lcom/inmobi/re/container/IMWebView;->mWebViewIsBrowserActivity:Z

    iput-boolean v2, p0, Lcom/inmobi/re/container/IMWebView;->r:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mutex:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mutexcPos:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mutexdPos:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->isMutexAquired:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->acqMutexcPos:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->acqMutexdPos:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->y:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->z:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-boolean v2, p0, Lcom/inmobi/re/container/IMWebView;->C:Z

    new-instance v0, Lcom/inmobi/re/container/b;

    invoke-direct {v0, p0}, Lcom/inmobi/re/container/b;-><init>(Lcom/inmobi/re/container/IMWebView;)V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->E:Landroid/webkit/WebViewClient;

    new-instance v0, Lcom/inmobi/re/container/a;

    invoke-direct {v0, p0}, Lcom/inmobi/re/container/a;-><init>(Lcom/inmobi/re/container/IMWebView;)V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->F:Landroid/webkit/WebChromeClient;

    iput-boolean v2, p0, Lcom/inmobi/re/container/IMWebView;->mIsViewable:Z

    new-instance v0, Lcom/inmobi/re/container/c;

    invoke-direct {v0, p0}, Lcom/inmobi/re/container/c;-><init>(Lcom/inmobi/re/container/IMWebView;)V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->G:Landroid/media/MediaPlayer$OnCompletionListener;

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/inmobi/re/container/IMWebView;->a:D

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-boolean v3, p0, Lcom/inmobi/re/container/IMWebView;->H:Z

    iput-object v4, p0, Lcom/inmobi/re/container/IMWebView;->c:Lcom/inmobi/re/container/IMWebView$InstantVideoCallbackCallback;

    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/inmobi/re/container/IMWebView;->v:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/inmobi/re/container/IMWebView;->a()V

    invoke-virtual {p0}, Lcom/inmobi/re/container/IMWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/inmobi/re/container/IMWebView;->d:[I

    invoke-virtual {v0, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/inmobi/re/container/IMWebView$IMWebViewListener;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->doNotFireVisibilityChanged:Ljava/util/concurrent/atomic/AtomicBoolean;

    sget-object v0, Lcom/inmobi/re/container/IMWebView$ViewState;->LOADING:Lcom/inmobi/re/container/IMWebView$ViewState;

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->j:Lcom/inmobi/re/container/IMWebView$ViewState;

    iput-object v4, p0, Lcom/inmobi/re/container/IMWebView;->m:Landroid/webkit/WebChromeClient$CustomViewCallback;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->p:Ljava/util/ArrayList;

    iput-boolean v2, p0, Lcom/inmobi/re/container/IMWebView;->q:Z

    iput-boolean v2, p0, Lcom/inmobi/re/container/IMWebView;->mIsInterstitialAd:Z

    iput-boolean v2, p0, Lcom/inmobi/re/container/IMWebView;->isTablet:Z

    iput-object v4, p0, Lcom/inmobi/re/container/IMWebView;->mOriginalWebviewForExpandUrl:Lcom/inmobi/re/container/IMWebView;

    iput-boolean v2, p0, Lcom/inmobi/re/container/IMWebView;->mWebViewIsBrowserActivity:Z

    iput-boolean v2, p0, Lcom/inmobi/re/container/IMWebView;->r:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mutex:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mutexcPos:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mutexdPos:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->isMutexAquired:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->acqMutexcPos:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->acqMutexdPos:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->y:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->z:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-boolean v2, p0, Lcom/inmobi/re/container/IMWebView;->C:Z

    new-instance v0, Lcom/inmobi/re/container/b;

    invoke-direct {v0, p0}, Lcom/inmobi/re/container/b;-><init>(Lcom/inmobi/re/container/IMWebView;)V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->E:Landroid/webkit/WebViewClient;

    new-instance v0, Lcom/inmobi/re/container/a;

    invoke-direct {v0, p0}, Lcom/inmobi/re/container/a;-><init>(Lcom/inmobi/re/container/IMWebView;)V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->F:Landroid/webkit/WebChromeClient;

    iput-boolean v2, p0, Lcom/inmobi/re/container/IMWebView;->mIsViewable:Z

    new-instance v0, Lcom/inmobi/re/container/c;

    invoke-direct {v0, p0}, Lcom/inmobi/re/container/c;-><init>(Lcom/inmobi/re/container/IMWebView;)V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->G:Landroid/media/MediaPlayer$OnCompletionListener;

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/inmobi/re/container/IMWebView;->a:D

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-boolean v3, p0, Lcom/inmobi/re/container/IMWebView;->H:Z

    iput-object v4, p0, Lcom/inmobi/re/container/IMWebView;->c:Lcom/inmobi/re/container/IMWebView$InstantVideoCallbackCallback;

    iput-object p2, p0, Lcom/inmobi/re/container/IMWebView;->mListener:Lcom/inmobi/re/container/IMWebView$IMWebViewListener;

    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/inmobi/re/container/IMWebView;->v:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/inmobi/re/container/IMWebView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/inmobi/re/container/IMWebView$IMWebViewListener;ZZ)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->doNotFireVisibilityChanged:Ljava/util/concurrent/atomic/AtomicBoolean;

    sget-object v0, Lcom/inmobi/re/container/IMWebView$ViewState;->LOADING:Lcom/inmobi/re/container/IMWebView$ViewState;

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->j:Lcom/inmobi/re/container/IMWebView$ViewState;

    iput-object v4, p0, Lcom/inmobi/re/container/IMWebView;->m:Landroid/webkit/WebChromeClient$CustomViewCallback;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->p:Ljava/util/ArrayList;

    iput-boolean v2, p0, Lcom/inmobi/re/container/IMWebView;->q:Z

    iput-boolean v2, p0, Lcom/inmobi/re/container/IMWebView;->mIsInterstitialAd:Z

    iput-boolean v2, p0, Lcom/inmobi/re/container/IMWebView;->isTablet:Z

    iput-object v4, p0, Lcom/inmobi/re/container/IMWebView;->mOriginalWebviewForExpandUrl:Lcom/inmobi/re/container/IMWebView;

    iput-boolean v2, p0, Lcom/inmobi/re/container/IMWebView;->mWebViewIsBrowserActivity:Z

    iput-boolean v2, p0, Lcom/inmobi/re/container/IMWebView;->r:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mutex:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mutexcPos:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mutexdPos:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->isMutexAquired:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->acqMutexcPos:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->acqMutexdPos:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->y:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->z:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-boolean v2, p0, Lcom/inmobi/re/container/IMWebView;->C:Z

    new-instance v0, Lcom/inmobi/re/container/b;

    invoke-direct {v0, p0}, Lcom/inmobi/re/container/b;-><init>(Lcom/inmobi/re/container/IMWebView;)V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->E:Landroid/webkit/WebViewClient;

    new-instance v0, Lcom/inmobi/re/container/a;

    invoke-direct {v0, p0}, Lcom/inmobi/re/container/a;-><init>(Lcom/inmobi/re/container/IMWebView;)V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->F:Landroid/webkit/WebChromeClient;

    iput-boolean v2, p0, Lcom/inmobi/re/container/IMWebView;->mIsViewable:Z

    new-instance v0, Lcom/inmobi/re/container/c;

    invoke-direct {v0, p0}, Lcom/inmobi/re/container/c;-><init>(Lcom/inmobi/re/container/IMWebView;)V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->G:Landroid/media/MediaPlayer$OnCompletionListener;

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/inmobi/re/container/IMWebView;->a:D

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-boolean v3, p0, Lcom/inmobi/re/container/IMWebView;->H:Z

    iput-object v4, p0, Lcom/inmobi/re/container/IMWebView;->c:Lcom/inmobi/re/container/IMWebView$InstantVideoCallbackCallback;

    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/inmobi/re/container/IMWebView;->v:Landroid/app/Activity;

    iput-boolean p3, p0, Lcom/inmobi/re/container/IMWebView;->mIsInterstitialAd:Z

    iput-boolean p4, p0, Lcom/inmobi/re/container/IMWebView;->mWebViewIsBrowserActivity:Z

    iget-boolean v0, p0, Lcom/inmobi/re/container/IMWebView;->mIsInterstitialAd:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x75

    invoke-virtual {p0, v0}, Lcom/inmobi/re/container/IMWebView;->setId(I)V

    :cond_0
    iput-object p2, p0, Lcom/inmobi/re/container/IMWebView;->mListener:Lcom/inmobi/re/container/IMWebView$IMWebViewListener;

    invoke-direct {p0}, Lcom/inmobi/re/container/IMWebView;->a()V

    return-void
.end method

.method private a(Landroid/app/Activity;)I
    .locals 5

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x10000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->configChanges:I

    return v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/inmobi/re/container/IMWebView;Landroid/os/Message;)Landroid/os/Message;
    .locals 0

    iput-object p1, p0, Lcom/inmobi/re/container/IMWebView;->t:Landroid/os/Message;

    return-object p1
.end method

.method static synthetic a(Lcom/inmobi/re/container/IMWebView;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/inmobi/re/container/IMWebView;->l:Landroid/view/View;

    return-object p1
.end method

.method static synthetic a(Lcom/inmobi/re/container/IMWebView;Landroid/webkit/WebChromeClient$CustomViewCallback;)Landroid/webkit/WebChromeClient$CustomViewCallback;
    .locals 0

    iput-object p1, p0, Lcom/inmobi/re/container/IMWebView;->m:Landroid/webkit/WebChromeClient$CustomViewCallback;

    return-object p1
.end method

.method static synthetic a(Lcom/inmobi/re/container/IMWebView;)Landroid/webkit/WebViewClient;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->w:Landroid/webkit/WebViewClient;

    return-object v0
.end method

.method static synthetic a(Lcom/inmobi/re/container/IMWebView;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;
    .locals 0

    iput-object p1, p0, Lcom/inmobi/re/container/IMWebView;->o:Landroid/widget/FrameLayout;

    return-object p1
.end method

.method static synthetic a(Lcom/inmobi/re/container/IMWebView;Landroid/widget/VideoView;)Landroid/widget/VideoView;
    .locals 0

    iput-object p1, p0, Lcom/inmobi/re/container/IMWebView;->k:Landroid/widget/VideoView;

    return-object p1
.end method

.method private a()V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled",
            "NewApi"
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v7, 0x0

    sput-boolean v7, Lcom/inmobi/re/container/IMWebView;->userInitiatedClose:Z

    invoke-virtual {p0, v7}, Lcom/inmobi/re/container/IMWebView;->setScrollContainer(Z)V

    invoke-virtual {p0, v7}, Lcom/inmobi/re/container/IMWebView;->setVerticalScrollBarEnabled(Z)V

    invoke-virtual {p0, v7}, Lcom/inmobi/re/container/IMWebView;->setHorizontalScrollBarEnabled(Z)V

    invoke-virtual {p0}, Lcom/inmobi/re/container/IMWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->webviewUserAgent:Ljava/lang/String;

    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->v:Landroid/app/Activity;

    invoke-static {v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getUserAgent(Landroid/content/Context;)Ljava/lang/String;

    invoke-static {}, Lcom/inmobi/re/configs/Initializer;->getConfigParams()Lcom/inmobi/re/configs/ConfigParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/re/configs/ConfigParams;->getWebviewBgColor()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/inmobi/re/container/IMWebView;->setBackgroundColor(I)V

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Lcom/inmobi/re/container/IMWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/inmobi/re/container/IMWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    :cond_0
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->v:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/inmobi/re/container/IMWebView;->g:F

    iput-boolean v7, p0, Lcom/inmobi/re/container/IMWebView;->e:Z

    invoke-virtual {p0}, Lcom/inmobi/re/container/IMWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {p0}, Lcom/inmobi/re/container/IMWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    new-instance v0, Lcom/inmobi/re/controller/JSUtilityController;

    invoke-virtual {p0}, Lcom/inmobi/re/container/IMWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/inmobi/re/controller/JSUtilityController;-><init>(Lcom/inmobi/re/container/IMWebView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->f:Lcom/inmobi/re/controller/JSUtilityController;

    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->f:Lcom/inmobi/re/controller/JSUtilityController;

    const-string v1, "utilityController"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/re/container/IMWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->E:Landroid/webkit/WebViewClient;

    invoke-virtual {p0, v0}, Lcom/inmobi/re/container/IMWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->F:Landroid/webkit/WebChromeClient;

    invoke-virtual {p0, v0}, Lcom/inmobi/re/container/IMWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    new-instance v0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;

    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->v:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;-><init>(Lcom/inmobi/re/container/IMWebView;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mExpandController:Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;

    new-instance v0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;

    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->v:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;-><init>(Lcom/inmobi/re/container/IMWebView;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mResizeController:Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;

    new-instance v0, Lcom/inmobi/re/container/mraidimpl/MRAIDBasic;

    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->v:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lcom/inmobi/re/container/mraidimpl/MRAIDBasic;-><init>(Lcom/inmobi/re/container/IMWebView;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mMraidBasic:Lcom/inmobi/re/container/mraidimpl/MRAIDBasic;

    new-instance v0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;

    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->v:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;-><init>(Lcom/inmobi/re/container/IMWebView;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mInterstitialController:Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;

    new-instance v0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;

    invoke-direct {v0, p0}, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;-><init>(Lcom/inmobi/re/container/IMWebView;)V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mAudioVideoController:Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;

    new-instance v0, Lcom/inmobi/re/container/IMWebView$l;

    iget-object v2, p0, Lcom/inmobi/re/container/IMWebView;->mMraidBasic:Lcom/inmobi/re/container/mraidimpl/MRAIDBasic;

    iget-object v3, p0, Lcom/inmobi/re/container/IMWebView;->mExpandController:Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;

    iget-object v4, p0, Lcom/inmobi/re/container/IMWebView;->mInterstitialController:Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;

    iget-object v5, p0, Lcom/inmobi/re/container/IMWebView;->mAudioVideoController:Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;

    iget-object v6, p0, Lcom/inmobi/re/container/IMWebView;->mResizeController:Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/inmobi/re/container/IMWebView$l;-><init>(Lcom/inmobi/re/container/IMWebView;Lcom/inmobi/re/container/mraidimpl/MRAIDBasic;Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;)V

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->x:Lcom/inmobi/re/container/IMWebView$l;

    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->mExpandController:Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;

    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->v:Landroid/app/Activity;

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, v1, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->mSensorDisplay:Landroid/view/Display;

    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mAudioVideoController:Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;

    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->v:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, v0, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoValidateWidth:I

    :try_start_0
    sget-object v0, Lcom/inmobi/re/container/IMWebView;->D:Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lcom/inmobi/re/container/IMWebView;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "imaiController"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/re/container/IMWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->f:Lcom/inmobi/re/controller/JSUtilityController;

    invoke-virtual {v0, v7}, Lcom/inmobi/re/controller/JSUtilityController;->setWebViewClosed(Z)V

    return-void

    :catch_0
    move-exception v0

    const-string v0, "[InMobi]-[RE]-4.4.1"

    const-string v1, "Error adding js interface imai controller"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(II)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "window.mraid.broadcastEvent(\'sizeChange\',"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/inmobi/re/container/IMWebView;->injectJavaScript(Ljava/lang/String;)V

    return-void
.end method

.method private a(Landroid/view/View;Landroid/view/View$OnKeyListener;)V
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/inmobi/re/container/IMWebView;->a(Landroid/view/View;Landroid/view/View$OnKeyListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(Landroid/view/View;Landroid/view/View$OnTouchListener;)V
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/inmobi/re/container/IMWebView;->a(Landroid/view/View;Landroid/view/View$OnTouchListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->v:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Continue"

    new-instance v2, Lcom/inmobi/re/container/IMWebView$d;

    invoke-direct {v2, p0, p1}, Lcom/inmobi/re/container/IMWebView$d;-><init>(Lcom/inmobi/re/container/IMWebView;Landroid/webkit/SslErrorHandler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string v1, "Go Back"

    new-instance v2, Lcom/inmobi/re/container/IMWebView$k;

    invoke-direct {v2, p0, p1}, Lcom/inmobi/re/container/IMWebView$k;-><init>(Lcom/inmobi/re/container/IMWebView;Landroid/webkit/SslErrorHandler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    const-string v1, "Open Browser"

    new-instance v2, Lcom/inmobi/re/container/IMWebView$e;

    invoke-direct {v2, p0, p2}, Lcom/inmobi/re/container/IMWebView$e;-><init>(Lcom/inmobi/re/container/IMWebView;Landroid/net/http/SslError;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_0
    const-string v1, "Security Warning"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v1, "There are problems with the security certificate for this site."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "[InMobi]-[RE]-4.4.1"

    const-string v2, "Dialog could not be shown due to an exception."

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/inmobi/re/container/IMWebView;Landroid/view/View;Landroid/view/View$OnKeyListener;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/inmobi/re/container/IMWebView;->a(Landroid/view/View;Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method static synthetic a(Lcom/inmobi/re/container/IMWebView;Landroid/view/View;Landroid/view/View$OnTouchListener;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/inmobi/re/container/IMWebView;->a(Landroid/view/View;Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method static synthetic a(Lcom/inmobi/re/container/IMWebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/inmobi/re/container/IMWebView;->a(Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    return-void
.end method

.method static synthetic a(Lcom/inmobi/re/container/IMWebView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/inmobi/re/container/IMWebView;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->v:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/inmobi/re/container/IMWebView;->fireOnLeaveApplication()V

    return-void
.end method

.method private a(Z)V
    .locals 3

    const-string v0, "[InMobi]-[RE]-4.4.1"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Viewable:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "window.mraid.broadcastEvent(\'viewableChange\',"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/inmobi/re/container/IMWebView;->isViewable()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/inmobi/re/container/IMWebView;->injectJavaScript(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/inmobi/re/container/IMWebView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/inmobi/re/container/IMWebView;->C:Z

    return p1
.end method

.method static synthetic b(Lcom/inmobi/re/container/IMWebView;)Lcom/inmobi/re/container/IMWebView$ViewState;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->j:Lcom/inmobi/re/container/IMWebView$ViewState;

    return-object v0
.end method

.method private b()V
    .locals 2

    const-string v0, "[InMobi]-[RE]-4.4.1"

    const-string v1, "IMWebView-> initStates"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/inmobi/re/container/IMWebView$ViewState;->LOADING:Lcom/inmobi/re/container/IMWebView$ViewState;

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->j:Lcom/inmobi/re/container/IMWebView$ViewState;

    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->z:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method static synthetic c(Lcom/inmobi/re/container/IMWebView;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->z:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private c()V
    .locals 2

    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->j:Lcom/inmobi/re/container/IMWebView$ViewState;

    sget-object v1, Lcom/inmobi/re/container/IMWebView$ViewState;->EXPANDED:Lcom/inmobi/re/container/IMWebView$ViewState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mExpandController:Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;

    invoke-virtual {v0}, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->closeExpanded()V

    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/re/container/IMWebView;->invalidate()V

    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->f:Lcom/inmobi/re/controller/JSUtilityController;

    invoke-virtual {v0}, Lcom/inmobi/re/controller/JSUtilityController;->stopAllListeners()V

    invoke-virtual {p0}, Lcom/inmobi/re/container/IMWebView;->resetLayout()V

    return-void
.end method

.method static synthetic d(Lcom/inmobi/re/container/IMWebView;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->y:Ljava/util/ArrayList;

    return-object v0
.end method

.method private d()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->l:Landroid/view/View;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->m:Landroid/webkit/WebChromeClient$CustomViewCallback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->m:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    :cond_1
    iput-object v2, p0, Lcom/inmobi/re/container/IMWebView;->m:Landroid/webkit/WebChromeClient$CustomViewCallback;

    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->l:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->l:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->l:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    iput-object v2, p0, Lcom/inmobi/re/container/IMWebView;->l:Landroid/view/View;

    goto :goto_0
.end method

.method static synthetic e(Lcom/inmobi/re/container/IMWebView;)Landroid/os/Message;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->t:Landroid/os/Message;

    return-object v0
.end method

.method private e()Z
    .locals 1

    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method static synthetic f(Lcom/inmobi/re/container/IMWebView;)Landroid/os/Message;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->u:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic g(Lcom/inmobi/re/container/IMWebView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->l:Landroid/view/View;

    return-object v0
.end method

.method static synthetic h(Lcom/inmobi/re/container/IMWebView;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->v:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic i(Lcom/inmobi/re/container/IMWebView;)Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->o:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic j(Lcom/inmobi/re/container/IMWebView;)Landroid/widget/VideoView;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->k:Landroid/widget/VideoView;

    return-object v0
.end method

.method static synthetic k(Lcom/inmobi/re/container/IMWebView;)Landroid/media/MediaPlayer$OnCompletionListener;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->G:Landroid/media/MediaPlayer$OnCompletionListener;

    return-object v0
.end method

.method static synthetic l(Lcom/inmobi/re/container/IMWebView;)V
    .locals 0

    invoke-direct {p0}, Lcom/inmobi/re/container/IMWebView;->d()V

    return-void
.end method

.method static synthetic m(Lcom/inmobi/re/container/IMWebView;)Lcom/inmobi/re/controller/JSUtilityController;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->f:Lcom/inmobi/re/controller/JSUtilityController;

    return-object v0
.end method

.method static synthetic n(Lcom/inmobi/re/container/IMWebView;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->n:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic o(Lcom/inmobi/re/container/IMWebView;)V
    .locals 0

    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V

    return-void
.end method

.method static synthetic p(Lcom/inmobi/re/container/IMWebView;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->p:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static setIMAIController(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    sput-object p0, Lcom/inmobi/re/container/IMWebView;->D:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public addJavascriptObject(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/inmobi/re/container/IMWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public cancelLoad()V
    .locals 2

    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->z:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public cancelSaveContent(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->p:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/re/container/IMWebView$i;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView$i;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView$i;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v2

    sget-object v3, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView$i;->cancel(Z)Z

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public clearView()V
    .locals 0

    invoke-direct {p0}, Lcom/inmobi/re/container/IMWebView;->c()V

    invoke-super {p0}, Landroid/webkit/WebView;->clearView()V

    return-void
.end method

.method public close()V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/inmobi/re/container/IMWebView;->removeSaveContentDir()V

    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->f:Lcom/inmobi/re/controller/JSUtilityController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/inmobi/re/controller/JSUtilityController;->setWebViewClosed(Z)V

    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->x:Lcom/inmobi/re/container/IMWebView$l;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView$l;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->x:Lcom/inmobi/re/container/IMWebView$l;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView$l;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "[InMobi]-[RE]-4.4.1"

    const-string v2, "Exception closing webview. Webview not initialized properly"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public closeExpanded()V
    .locals 2

    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->x:Lcom/inmobi/re/container/IMWebView$l;

    const/16 v1, 0x3ed

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView$l;->sendEmptyMessage(I)Z

    return-void
.end method

.method protected closeOpened(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Lcom/inmobi/re/container/IMWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/inmobi/re/container/IMWebView;->requestLayout()V

    return-void
.end method

.method public closeResized()V
    .locals 2

    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->x:Lcom/inmobi/re/container/IMWebView$l;

    const/16 v1, 0x407

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView$l;->sendEmptyMessage(I)Z

    return-void
.end method

.method public closeVideo(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mAudioVideoController:Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;

    invoke-virtual {v0, p1}, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->getVideoPlayer(Ljava/lang/String;)Lcom/inmobi/re/controller/util/AVPlayer;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Invalid property ID"

    const-string v1, "closeVideo"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/re/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/inmobi/re/controller/util/AVPlayer;->getState()Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    move-result-object v1

    sget-object v2, Lcom/inmobi/re/controller/util/AVPlayer$playerState;->RELEASED:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    if-ne v1, v2, :cond_1

    const-string v0, "Invalid player state"

    const-string v1, "closeVideo"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/re/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->mAudioVideoController:Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;

    iget-object v1, v1, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayerList:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->x:Lcom/inmobi/re/container/IMWebView$l;

    const/16 v2, 0x3f4

    invoke-virtual {v1, v2}, Lcom/inmobi/re/container/IMWebView$l;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->x:Lcom/inmobi/re/container/IMWebView$l;

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView$l;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public deinit()V
    .locals 2

    invoke-virtual {p0}, Lcom/inmobi/re/container/IMWebView;->getStateVariable()Lcom/inmobi/re/container/IMWebView$ViewState;

    move-result-object v0

    sget-object v1, Lcom/inmobi/re/container/IMWebView$ViewState;->EXPANDED:Lcom/inmobi/re/container/IMWebView$ViewState;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/inmobi/re/container/IMWebView;->getStateVariable()Lcom/inmobi/re/container/IMWebView$ViewState;

    move-result-object v0

    sget-object v1, Lcom/inmobi/re/container/IMWebView$ViewState;->EXPANDING:Lcom/inmobi/re/container/IMWebView$ViewState;

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/re/container/IMWebView;->close()V

    :cond_1
    return-void
.end method

.method public destroy()V
    .locals 2

    const-string v0, "[InMobi]-[RE]-4.4.1"

    const-string v1, "IMWebView: Destroy called."

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/inmobi/re/container/IMWebView;->close()V

    new-instance v0, Lcom/inmobi/re/container/IMWebView$g;

    invoke-direct {v0, p0}, Lcom/inmobi/re/container/IMWebView$g;-><init>(Lcom/inmobi/re/container/IMWebView;)V

    invoke-virtual {p0, v0}, Lcom/inmobi/re/container/IMWebView;->postInHandler(Ljava/lang/Runnable;)V

    return-void
.end method

.method public disableHardwareAcceleration()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/re/container/IMWebView;->H:Z

    const-string v0, "[InMobi]-[RE]-4.4.1"

    const-string v1, "disableHardwareAcceleration called."

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Lcom/inmobi/commons/internal/WrapperFunctions;->disableHardwareAccl(Landroid/webkit/WebView;)V

    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mExpandController:Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;

    invoke-virtual {v0}, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->disableEnableHardwareAccelerationForExpandWithURLView()V

    :cond_0
    return-void
.end method

.method public doHidePlayers()V
    .locals 2

    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->x:Lcom/inmobi/re/container/IMWebView$l;

    const/16 v1, 0x3ff

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView$l;->sendEmptyMessage(I)Z

    return-void
.end method

.method public expand(Ljava/lang/String;Lcom/inmobi/re/controller/JSController$ExpandProperties;)V
    .locals 4

    sget-object v0, Lcom/inmobi/re/container/IMWebView$ViewState;->EXPANDING:Lcom/inmobi/re/container/IMWebView$ViewState;

    invoke-virtual {p0, v0}, Lcom/inmobi/re/container/IMWebView;->setState(Lcom/inmobi/re/container/IMWebView$ViewState;)V

    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mExpandController:Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->mIsExpandUrlValid:Z

    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->isMutexAquired:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->x:Lcom/inmobi/re/container/IMWebView$l;

    const/16 v1, 0x3ec

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView$l;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "expand_url"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->mExpandController:Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;

    iput-object p2, v1, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->expandProperties:Lcom/inmobi/re/controller/JSController$ExpandProperties;

    const-string v1, "[InMobi]-[RE]-4.4.1"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Dimensions: {"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/inmobi/re/container/IMWebView;->mExpandController:Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;

    iget-object v3, v3, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->expandProperties:Lcom/inmobi/re/controller/JSController$ExpandProperties;

    iget v3, v3, Lcom/inmobi/re/controller/JSController$ExpandProperties;->x:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/inmobi/re/container/IMWebView;->mExpandController:Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;

    iget-object v3, v3, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->expandProperties:Lcom/inmobi/re/controller/JSController$ExpandProperties;

    iget v3, v3, Lcom/inmobi/re/controller/JSController$ExpandProperties;->y:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/inmobi/re/container/IMWebView;->mExpandController:Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;

    iget-object v3, v3, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->expandProperties:Lcom/inmobi/re/controller/JSController$ExpandProperties;

    iget v3, v3, Lcom/inmobi/re/controller/JSController$ExpandProperties;->width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/inmobi/re/container/IMWebView;->mExpandController:Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;

    iget-object v3, v3, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->expandProperties:Lcom/inmobi/re/controller/JSController$ExpandProperties;

    iget v3, v3, Lcom/inmobi/re/controller/JSController$ExpandProperties;->height:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->mExpandController:Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;

    iget-object v2, p0, Lcom/inmobi/re/container/IMWebView;->mExpandController:Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;

    iget-object v2, v2, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->expandProperties:Lcom/inmobi/re/controller/JSController$ExpandProperties;

    iget-boolean v2, v2, Lcom/inmobi/re/controller/JSController$ExpandProperties;->lockOrientation:Z

    iput-boolean v2, v1, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->tempExpPropsLock:Z

    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->x:Lcom/inmobi/re/container/IMWebView$l;

    invoke-virtual {v1, v0}, Lcom/inmobi/re/container/IMWebView$l;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public fireOnLeaveApplication()V
    .locals 1

    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mListener:Lcom/inmobi/re/container/IMWebView$IMWebViewListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mListener:Lcom/inmobi/re/container/IMWebView$IMWebViewListener;

    invoke-interface {v0}, Lcom/inmobi/re/container/IMWebView$IMWebViewListener;->onLeaveApplication()V

    :cond_0
    return-void
.end method

.method public fireOnShowAdScreen()V
    .locals 2

    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mListener:Lcom/inmobi/re/container/IMWebView$IMWebViewListener;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/inmobi/re/container/IMWebView;->getStateVariable()Lcom/inmobi/re/container/IMWebView$ViewState;

    move-result-object v0

    sget-object v1, Lcom/inmobi/re/container/IMWebView$ViewState;->DEFAULT:Lcom/inmobi/re/container/IMWebView$ViewState;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/inmobi/re/container/IMWebView;->mIsInterstitialAd:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->x:Lcom/inmobi/re/container/IMWebView$l;

    const/16 v1, 0x404

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView$l;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/androidsdk/IMBrowserActivity;->requestOnAdDismiss(Landroid/os/Message;)V

    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mListener:Lcom/inmobi/re/container/IMWebView$IMWebViewListener;

    invoke-interface {v0}, Lcom/inmobi/re/container/IMWebView$IMWebViewListener;->onShowAdScreen()V

    :cond_0
    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->v:Landroid/app/Activity;

    return-object v0
.end method

.method public getAudioVolume(Ljava/lang/String;)I
    .locals 2

    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mAudioVideoController:Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;

    invoke-virtual {v0, p1}, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->getCurrentAudioPlayer(Ljava/lang/String;)Lcom/inmobi/re/controller/util/AVPlayer;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Invalid property ID"

    const-string v1, "getAudioVolume"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/re/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/inmobi/re/controller/util/AVPlayer;->getVolume()I

    move-result v0

    goto :goto_0
.end method

.method public getCurrentRotation(I)Ljava/lang/String;
    .locals 1

    const-string v0, "-1"

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "0"

    goto :goto_0

    :pswitch_1
    const-string v0, "90"

    goto :goto_0

    :pswitch_2
    const-string v0, "180"

    goto :goto_0

    :pswitch_3
    const-string v0, "270"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getCustomClose()Z
    .locals 1

    iget-boolean v0, p0, Lcom/inmobi/re/container/IMWebView;->r:Z

    return v0
.end method

.method public getDensity()F
    .locals 1

    iget v0, p0, Lcom/inmobi/re/container/IMWebView;->g:F

    return v0
.end method

.method public getDismissMessage()I
    .locals 1

    const/16 v0, 0x404

    return v0
.end method

.method public getExpandedActivity()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->v:Landroid/app/Activity;

    return-object v0
.end method

.method public getIntegerCurrentRotation()I
    .locals 3

    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->v:Landroid/app/Activity;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getDisplayRotation(Landroid/view/Display;)I

    move-result v0

    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->v:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v2, p0, Lcom/inmobi/re/container/IMWebView;->v:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/internal/InternalSDKUtil;->isDefOrientationLandscape(III)Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->v:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/inmobi/commons/internal/InternalSDKUtil;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/inmobi/re/container/IMWebView;->isTablet:Z

    :cond_1
    return v0
.end method

.method public getLastGoodKnownMicValue()D
    .locals 2

    iget-wide v0, p0, Lcom/inmobi/re/container/IMWebView;->a:D

    return-wide v0
.end method

.method public getMRAIDUrls()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->y:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getOriginalIndex()I
    .locals 1

    iget v0, p0, Lcom/inmobi/re/container/IMWebView;->B:I

    return v0
.end method

.method public getOriginalParent()Landroid/view/ViewParent;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->A:Landroid/view/ViewParent;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/inmobi/re/container/IMWebView;->saveOriginalViewParent()V

    :cond_0
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->A:Landroid/view/ViewParent;

    return-object v0
.end method

.method public getPlacementType()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/inmobi/re/container/IMWebView;->mIsInterstitialAd:Z

    if-eqz v0, :cond_0

    const-string v0, "interstitial"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "inline"

    goto :goto_0
.end method

.method public getSize()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{ width: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/inmobi/re/container/IMWebView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/inmobi/re/container/IMWebView;->g:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/inmobi/re/container/IMWebView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/inmobi/re/container/IMWebView;->g:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->j:Lcom/inmobi/re/container/IMWebView$ViewState;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView$ViewState;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStateVariable()Lcom/inmobi/re/container/IMWebView$ViewState;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->j:Lcom/inmobi/re/container/IMWebView$ViewState;

    return-object v0
.end method

.method public getVideoVolume(Ljava/lang/String;)I
    .locals 2

    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mAudioVideoController:Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;

    invoke-virtual {v0, p1}, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->getVideoPlayer(Ljava/lang/String;)Lcom/inmobi/re/controller/util/AVPlayer;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Invalid property ID"

    const-string v1, "getVideoVolume"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/re/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/inmobi/re/controller/util/AVPlayer;->getVolume()I

    move-result v0

    goto :goto_0
.end method

.method public getViewState()Lcom/inmobi/re/container/IMWebView$ViewState;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->j:Lcom/inmobi/re/container/IMWebView$ViewState;

    return-object v0
.end method

.method public getWebviewHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->x:Lcom/inmobi/re/container/IMWebView$l;

    return-object v0
.end method

.method public hide()V
    .locals 2

    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->x:Lcom/inmobi/re/container/IMWebView$l;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView$l;->sendEmptyMessage(I)Z

    return-void
.end method

.method public hideVideo(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->x:Lcom/inmobi/re/container/IMWebView$l;

    const/16 v1, 0x3f5

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView$l;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "pid"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->x:Lcom/inmobi/re/container/IMWebView$l;

    invoke-virtual {v1, v0}, Lcom/inmobi/re/container/IMWebView$l;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public incentCompleted(Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->x:Lcom/inmobi/re/container/IMWebView$l;

    const/16 v1, 0x40a

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView$l;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "incent_ad_map"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public injectJavaScript(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x190

    if-ge v0, v1, :cond_0

    const-string v0, "[InMobi]-[RE]-4.4.1"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Injecting JavaScript: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/inmobi/re/container/IMWebView;->e()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "javascript:try{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}catch(e){}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "[InMobi]-[RE]-4.4.1"

    const-string v2, "Error injecting javascript "

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public isAudioMuted(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mAudioVideoController:Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;

    invoke-virtual {v0, p1}, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->getCurrentAudioPlayer(Ljava/lang/String;)Lcom/inmobi/re/controller/util/AVPlayer;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Invalid property ID"

    const-string v1, "isAudioMuted"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/re/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/inmobi/re/controller/util/AVPlayer;->isMediaMuted()Z

    move-result v0

    goto :goto_0
.end method

.method public isBusy()Z
    .locals 1

    iget-boolean v0, p0, Lcom/inmobi/re/container/IMWebView;->q:Z

    return v0
.end method

.method public isConfigChangesListed(Landroid/app/Activity;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-direct {p0, p1}, Lcom/inmobi/re/container/IMWebView;->a(Landroid/app/Activity;)I

    move-result v4

    and-int/lit8 v3, v4, 0x10

    if-eqz v3, :cond_0

    and-int/lit8 v3, v4, 0x20

    if-eqz v3, :cond_0

    and-int/lit16 v3, v4, 0x80

    if-nez v3, :cond_4

    :cond_0
    move v3, v1

    :goto_0
    const/16 v5, 0xd

    if-lt v2, v5, :cond_3

    and-int/lit16 v2, v4, 0x400

    if-eqz v2, :cond_1

    and-int/lit16 v2, v4, 0x800

    if-nez v2, :cond_3

    :cond_1
    move v2, v1

    :goto_1
    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    :goto_2
    return v0

    :cond_2
    move v0, v1

    goto :goto_2

    :cond_3
    move v2, v0

    goto :goto_1

    :cond_4
    move v3, v0

    goto :goto_0
.end method

.method public isEnabledHardwareAcceleration()Z
    .locals 1

    iget-boolean v0, p0, Lcom/inmobi/re/container/IMWebView;->H:Z

    return v0
.end method

.method public isExpanded()Z
    .locals 2

    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->j:Lcom/inmobi/re/container/IMWebView$ViewState;

    sget-object v1, Lcom/inmobi/re/container/IMWebView$ViewState;->EXPANDED:Lcom/inmobi/re/container/IMWebView$ViewState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLandscapeSyncOrientation(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isModal()Z
    .locals 2

    iget-boolean v0, p0, Lcom/inmobi/re/container/IMWebView;->mIsInterstitialAd:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->j:Lcom/inmobi/re/container/IMWebView$ViewState;

    sget-object v1, Lcom/inmobi/re/container/IMWebView$ViewState;->EXPANDED:Lcom/inmobi/re/container/IMWebView$ViewState;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPageFinished()Z
    .locals 1

    iget-boolean v0, p0, Lcom/inmobi/re/container/IMWebView;->e:Z

    return v0
.end method

.method public isPortraitSyncOrientation(I)Z
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVideoMuted(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mAudioVideoController:Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;

    invoke-virtual {v0, p1}, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->getVideoPlayer(Ljava/lang/String;)Lcom/inmobi/re/controller/util/AVPlayer;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Invalid property ID"

    const-string v1, "isVideoMuted"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/re/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/inmobi/re/controller/util/AVPlayer;->isMediaMuted()Z

    move-result v0

    goto :goto_0
.end method

.method public isViewable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/inmobi/re/container/IMWebView;->mIsViewable:Z

    return v0
.end method

.method public loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->j:Lcom/inmobi/re/container/IMWebView$ViewState;

    sget-object v1, Lcom/inmobi/re/container/IMWebView$ViewState;->EXPANDED:Lcom/inmobi/re/container/IMWebView$ViewState;

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/inmobi/re/container/IMWebView;->b()V

    invoke-super/range {p0 .. p5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->j:Lcom/inmobi/re/container/IMWebView$ViewState;

    sget-object v1, Lcom/inmobi/re/container/IMWebView$ViewState;->EXPANDED:Lcom/inmobi/re/container/IMWebView$ViewState;

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/inmobi/re/container/IMWebView;->b()V

    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public lockExpandOrientation(Landroid/app/Activity;ZLjava/lang/String;)V
    .locals 4

    const/16 v2, 0x9

    const/4 v3, 0x2

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/inmobi/re/container/IMWebView;->isConfigChangesListed(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    if-eqz v0, :cond_0

    if-eq v0, v1, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v2, :cond_2

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    if-eq v0, v2, :cond_0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    :cond_2
    if-nez p2, :cond_6

    invoke-virtual {p0}, Lcom/inmobi/re/container/IMWebView;->getIntegerCurrentRotation()I

    move-result v0

    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->mExpandController:Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;

    invoke-virtual {p1}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v2

    iput v2, v1, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->initialExpandOrientation:I

    const-string v1, "portrait"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->mExpandController:Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->useLockOrient:Z

    invoke-static {v0}, Lcom/inmobi/commons/internal/WrapperFunctions;->getParamPortraitOrientation(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "[InMobi]-[RE]-4.4.1"

    const-string v2, "Exception handling the orientation "

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    :try_start_1
    const-string v1, "landscape"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->mExpandController:Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->useLockOrient:Z

    invoke-static {v0}, Lcom/inmobi/commons/internal/WrapperFunctions;->getParamLandscapeOrientation(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mExpandController:Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->useLockOrient:Z

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v3, :cond_5

    const-string v0, "[InMobi]-[RE]-4.4.1"

    const-string v1, "In allowFalse, none mode dev orientation:ORIENTATION_LANDSCAPE"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_5
    const-string v0, "[InMobi]-[RE]-4.4.1"

    const-string v1, "In allowFalse, none mode dev orientation:ORIENTATION_PORTRAIT"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v3, :cond_7

    const-string v0, "[InMobi]-[RE]-4.4.1"

    const-string v1, "In allow true,  device orientation:ORIENTATION_LANDSCAPE"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    const-string v0, "[InMobi]-[RE]-4.4.1"

    const-string v1, "In allow true,  device orientation:ORIENTATION_PORTRAIT"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public mediaPlayerReleased(Lcom/inmobi/re/controller/util/AVPlayer;)V
    .locals 1

    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mAudioVideoController:Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;

    invoke-virtual {v0, p1}, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->mediaPlayerReleased(Lcom/inmobi/re/controller/util/AVPlayer;)V

    return-void
.end method

.method public muteAudio(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mAudioVideoController:Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;

    invoke-virtual {v0, p1}, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->getCurrentAudioPlayer(Ljava/lang/String;)Lcom/inmobi/re/controller/util/AVPlayer;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Invalid property ID"

    const-string v1, "muteAudio"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/re/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/inmobi/re/controller/util/AVPlayer;->getState()Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    move-result-object v0

    sget-object v1, Lcom/inmobi/re/controller/util/AVPlayer$playerState;->RELEASED:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    if-ne v0, v1, :cond_1

    const-string v0, "Invalid player state"

    const-string v1, "muteAudio"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/re/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->x:Lcom/inmobi/re/container/IMWebView$l;

    const/16 v1, 0x3fb

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView$l;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "aplayerref"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public muteVideo(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mAudioVideoController:Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;

    invoke-virtual {v0, p1}, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->getVideoPlayer(Ljava/lang/String;)Lcom/inmobi/re/controller/util/AVPlayer;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Invalid property ID"

    const-string v1, "muteVideo"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/re/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/inmobi/re/controller/util/AVPlayer;->getState()Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    move-result-object v1

    sget-object v2, Lcom/inmobi/re/controller/util/AVPlayer$playerState;->RELEASED:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    if-eq v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/inmobi/re/controller/util/AVPlayer;->getState()Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    move-result-object v1

    sget-object v2, Lcom/inmobi/re/controller/util/AVPlayer$playerState;->INIT:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    if-ne v1, v2, :cond_2

    :cond_1
    const-string v0, "Invalid player state"

    const-string v1, "muteVideo"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/re/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->x:Lcom/inmobi/re/container/IMWebView$l;

    const/16 v2, 0x3f7

    invoke-virtual {v1, v2}, Lcom/inmobi/re/container/IMWebView$l;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->x:Lcom/inmobi/re/container/IMWebView$l;

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView$l;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    const-string v0, "[InMobi]-[RE]-4.4.1"

    const-string v1, "IMWebView-> onAttachedToWindow"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/inmobi/re/container/IMWebView;->saveOriginalViewParent()V

    iget-boolean v0, p0, Lcom/inmobi/re/container/IMWebView;->s:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/inmobi/re/container/IMWebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, p0, Lcom/inmobi/re/container/IMWebView;->h:I

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v0, p0, Lcom/inmobi/re/container/IMWebView;->i:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/re/container/IMWebView;->s:Z

    :cond_0
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->f:Lcom/inmobi/re/controller/JSUtilityController;

    invoke-virtual {v0}, Lcom/inmobi/re/controller/JSUtilityController;->registerBroadcastListener()V

    invoke-super {p0}, Landroid/webkit/WebView;->onAttachedToWindow()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    const-string v0, "[InMobi]-[RE]-4.4.1"

    const-string v1, "IMWebView-> onDetatchedFromWindow"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->f:Lcom/inmobi/re/controller/JSUtilityController;

    invoke-virtual {v0}, Lcom/inmobi/re/controller/JSUtilityController;->stopAllListeners()V

    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->y:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->f:Lcom/inmobi/re/controller/JSUtilityController;

    invoke-virtual {v0}, Lcom/inmobi/re/controller/JSUtilityController;->unRegisterBroadcastListener()V

    iget-boolean v0, p0, Lcom/inmobi/re/container/IMWebView;->mIsInterstitialAd:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/inmobi/re/container/IMWebView;->mWebViewIsBrowserActivity:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mInterstitialController:Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;

    invoke-virtual {v0}, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->handleInterstitialClose()V

    :cond_0
    invoke-super {p0}, Landroid/webkit/WebView;->onDetachedFromWindow()V

    return-void
.end method

.method protected onIMWebviewVisibilityChanged(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/inmobi/re/container/IMWebView;->mIsViewable:Z

    if-ne v0, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean p1, p0, Lcom/inmobi/re/container/IMWebView;->mIsViewable:Z

    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->doNotFireVisibilityChanged:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/inmobi/re/container/IMWebView;->a(Z)V

    goto :goto_0
.end method

.method public onOrientationEventChange()V
    .locals 2

    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->x:Lcom/inmobi/re/container/IMWebView$l;

    const/16 v1, 0x403

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView$l;->sendEmptyMessage(I)Z

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 3

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->onSizeChanged(IIII)V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    iget-boolean v0, p0, Lcom/inmobi/re/container/IMWebView;->C:Z

    if-nez v0, :cond_0

    int-to-float v0, p1

    invoke-virtual {p0}, Lcom/inmobi/re/container/IMWebView;->getDensity()F

    move-result v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v1, p2

    invoke-virtual {p0}, Lcom/inmobi/re/container/IMWebView;->getDensity()F

    move-result v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-direct {p0, v0, v1}, Lcom/inmobi/re/container/IMWebView;->a(II)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/re/container/IMWebView;->C:Z

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/inmobi/re/container/IMWebView;->requestFocus()Z

    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 3

    invoke-super {p0, p1}, Landroid/webkit/WebView;->onWindowVisibilityChanged(I)V

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/inmobi/re/container/IMWebView;->onIMWebviewVisibilityChanged(Z)V

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->f:Lcom/inmobi/re/controller/JSUtilityController;

    const-string v1, "vibrate"

    invoke-virtual {v0, v1}, Lcom/inmobi/re/controller/JSUtilityController;->supports(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->v:Landroid/app/Activity;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "[InMobi]-[RE]-4.4.1"

    const-string v2, "Failed to cancel existing vibration"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public openExternal(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0}, Lcom/inmobi/re/container/IMWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mListener:Lcom/inmobi/re/container/IMWebView$IMWebViewListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mListener:Lcom/inmobi/re/container/IMWebView$IMWebViewListener;

    invoke-interface {v0}, Lcom/inmobi/re/container/IMWebView$IMWebViewListener;->onLeaveApplication()V

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "Request must specify a valid URL"

    const-string v1, "openExternal"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/re/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public openURL(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/inmobi/re/container/IMWebView;->isViewable()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Cannot open URL.Ad is not viewable yet"

    const-string v1, "openURL"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/re/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->x:Lcom/inmobi/re/container/IMWebView$l;

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView$l;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "expand_url"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->x:Lcom/inmobi/re/container/IMWebView$l;

    invoke-virtual {v1, v0}, Lcom/inmobi/re/container/IMWebView$l;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public pageFinishedCallbackForAdCreativeTesting(Landroid/os/Message;)V
    .locals 0

    iput-object p1, p0, Lcom/inmobi/re/container/IMWebView;->u:Landroid/os/Message;

    return-void
.end method

.method public pauseAudio(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mAudioVideoController:Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;

    invoke-virtual {v0, p1}, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->getCurrentAudioPlayer(Ljava/lang/String;)Lcom/inmobi/re/controller/util/AVPlayer;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "Invalid property ID"

    const-string v1, "pauseAudio"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/re/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/inmobi/re/controller/util/AVPlayer;->getState()Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    move-result-object v1

    sget-object v2, Lcom/inmobi/re/controller/util/AVPlayer$playerState;->PLAYING:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    if-eq v1, v2, :cond_3

    invoke-virtual {v0}, Lcom/inmobi/re/controller/util/AVPlayer;->getState()Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    move-result-object v1

    sget-object v2, Lcom/inmobi/re/controller/util/AVPlayer$playerState;->INIT:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    if-ne v1, v2, :cond_2

    invoke-virtual {v0}, Lcom/inmobi/re/controller/util/AVPlayer;->isPrepared()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/inmobi/re/controller/util/AVPlayer;->setAutoPlay(Z)V

    goto :goto_0

    :cond_2
    const-string v0, "Invalid player state"

    const-string v1, "pauseAudio"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/re/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/inmobi/re/controller/util/AVPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->x:Lcom/inmobi/re/container/IMWebView$l;

    const/16 v1, 0x3f2

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView$l;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "aplayerref"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public pauseVideo(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->x:Lcom/inmobi/re/container/IMWebView$l;

    const/16 v1, 0x3f3

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView$l;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "pid"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->x:Lcom/inmobi/re/container/IMWebView$l;

    invoke-virtual {v1, v0}, Lcom/inmobi/re/container/IMWebView$l;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public playAudio(Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->mutex:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->isMutexAquired:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mutex:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-boolean v0, p0, Lcom/inmobi/re/container/IMWebView;->mIsInterstitialAd:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->j:Lcom/inmobi/re/container/IMWebView$ViewState;

    sget-object v1, Lcom/inmobi/re/container/IMWebView$ViewState;->EXPANDED:Lcom/inmobi/re/container/IMWebView$ViewState;

    if-eq v0, v1, :cond_1

    const-string v0, "Cannot play audio.Ad is not in an expanded state"

    const-string v1, "playAudio"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/re/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :catch_0
    move-exception v0

    :try_start_3
    const-string v2, "[InMobi]-[RE]-4.4.1"

    const-string v3, "mutex failed "

    invoke-static {v2, v3, v0}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    invoke-virtual {p0}, Lcom/inmobi/re/container/IMWebView;->isViewable()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "Cannot play audio.Ad is not viewable yet"

    const-string v1, "playAudio"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/re/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/inmobi/re/controller/JSController$PlayerProperties;

    invoke-direct {v0}, Lcom/inmobi/re/controller/JSController$PlayerProperties;-><init>()V

    const/4 v1, 0x0

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/inmobi/re/controller/JSController$PlayerProperties;->setProperties(ZZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "expand_url"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "player_properties"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->x:Lcom/inmobi/re/container/IMWebView$l;

    const/16 v2, 0x3ef

    invoke-virtual {v0, v2}, Lcom/inmobi/re/container/IMWebView$l;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->x:Lcom/inmobi/re/container/IMWebView$l;

    invoke-virtual {v1, v0}, Lcom/inmobi/re/container/IMWebView$l;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1
.end method

.method public playVideo(Ljava/lang/String;ZZZZLcom/inmobi/re/controller/JSController$Dimensions;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    iget-object v2, p0, Lcom/inmobi/re/container/IMWebView;->mutex:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->isMutexAquired:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->mutex:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-boolean v1, p0, Lcom/inmobi/re/container/IMWebView;->mIsInterstitialAd:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->j:Lcom/inmobi/re/container/IMWebView$ViewState;

    sget-object v2, Lcom/inmobi/re/container/IMWebView$ViewState;->EXPANDED:Lcom/inmobi/re/container/IMWebView$ViewState;

    if-eq v1, v2, :cond_1

    const-string v1, "Cannot play video.Ad is not in an expanded state"

    const-string v2, "playVideo"

    invoke-virtual {p0, v1, v2}, Lcom/inmobi/re/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :catch_0
    move-exception v1

    :try_start_3
    const-string v3, "[InMobi]-[RE]-4.4.1"

    const-string v4, "mutex failed "

    invoke-static {v3, v4, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_1
    invoke-virtual {p0}, Lcom/inmobi/re/container/IMWebView;->isViewable()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "Cannot play video.Ad is not viewable yet"

    const-string v2, "playVideo"

    invoke-virtual {p0, v1, v2}, Lcom/inmobi/re/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->mAudioVideoController:Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;

    iget-object v1, v1, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayerList:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->mAudioVideoController:Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;

    iget-object v1, v1, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayerList:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_3

    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->mAudioVideoController:Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;

    iget-object v1, v1, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->videoPlayerList:Ljava/util/Hashtable;

    move-object/from16 v0, p9

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "Player Error. Exceeding permissible limit for saved play instances"

    const-string v2, "playVideo"

    invoke-virtual {p0, v1, v2}, Lcom/inmobi/re/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->x:Lcom/inmobi/re/container/IMWebView$l;

    const/16 v2, 0x3ee

    invoke-virtual {v1, v2}, Lcom/inmobi/re/container/IMWebView$l;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    new-instance v1, Lcom/inmobi/re/controller/JSController$PlayerProperties;

    invoke-direct {v1}, Lcom/inmobi/re/controller/JSController$PlayerProperties;-><init>()V

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    invoke-virtual/range {v1 .. v8}, Lcom/inmobi/re/controller/JSController$PlayerProperties;->setProperties(ZZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "expand_url"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "player_properties"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "[InMobi]-[RE]-4.4.1"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Before validation dimension: ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p6

    iget v4, v0, Lcom/inmobi/re/controller/JSController$Dimensions;->x:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p6

    iget v4, v0, Lcom/inmobi/re/controller/JSController$Dimensions;->y:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p6

    iget v4, v0, Lcom/inmobi/re/controller/JSController$Dimensions;->width:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p6

    iget v4, v0, Lcom/inmobi/re/controller/JSController$Dimensions;->height:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->mAudioVideoController:Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;

    move-object/from16 v0, p6

    invoke-virtual {v1, v0}, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->validateVideoDimensions(Lcom/inmobi/re/controller/JSController$Dimensions;)V

    const-string v1, "[InMobi]-[RE]-4.4.1"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "After validation dimension: ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p6

    iget v4, v0, Lcom/inmobi/re/controller/JSController$Dimensions;->x:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p6

    iget v4, v0, Lcom/inmobi/re/controller/JSController$Dimensions;->y:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p6

    iget v4, v0, Lcom/inmobi/re/controller/JSController$Dimensions;->width:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p6

    iget v4, v0, Lcom/inmobi/re/controller/JSController$Dimensions;->height:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "expand_dimensions"

    move-object/from16 v0, p6

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v9, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->x:Lcom/inmobi/re/container/IMWebView$l;

    invoke-virtual {v1, v9}, Lcom/inmobi/re/container/IMWebView$l;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1
.end method

.method public postInHandler(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->x:Lcom/inmobi/re/container/IMWebView$l;

    invoke-virtual {v0, p1}, Lcom/inmobi/re/container/IMWebView$l;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public postInjectJavaScript(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x190

    if-ge v0, v1, :cond_0

    const-string v0, "[InMobi]-[RE]-4.4.1"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Injecting JavaScript: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->x:Lcom/inmobi/re/container/IMWebView$l;

    const/16 v1, 0x401

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView$l;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "injectMessage"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    return-void
.end method

.method public raiseCameraPictureCapturedEvent(Ljava/lang/String;II)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "window.mraidview.fireCameraPictureCatpturedEvent(\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\',\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\',\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->v:Landroid/app/Activity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->v:Landroid/app/Activity;

    new-instance v2, Lcom/inmobi/re/container/IMWebView$c;

    invoke-direct {v2, p0, v0}, Lcom/inmobi/re/container/IMWebView$c;-><init>(Lcom/inmobi/re/container/IMWebView;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public raiseError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->x:Lcom/inmobi/re/container/IMWebView$l;

    const/16 v1, 0x3f0

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView$l;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "message"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "action"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->x:Lcom/inmobi/re/container/IMWebView$l;

    invoke-virtual {v1, v0}, Lcom/inmobi/re/container/IMWebView$l;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public raiseGalleryImageSelectedEvent(Ljava/lang/String;II)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "window.mraidview.fireGalleryImageSelectedEvent(\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\',\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\',\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->v:Landroid/app/Activity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->v:Landroid/app/Activity;

    new-instance v2, Lcom/inmobi/re/container/IMWebView$j;

    invoke-direct {v2, p0, v0}, Lcom/inmobi/re/container/IMWebView$j;-><init>(Lcom/inmobi/re/container/IMWebView;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public raiseMicEvent(D)V
    .locals 3

    iput-wide p1, p0, Lcom/inmobi/re/container/IMWebView;->a:D

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "window.mraid.broadcastEvent(\'micIntensityChange\',"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->v:Landroid/app/Activity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->v:Landroid/app/Activity;

    new-instance v2, Lcom/inmobi/re/container/IMWebView$b;

    invoke-direct {v2, p0, v0}, Lcom/inmobi/re/container/IMWebView$b;-><init>(Lcom/inmobi/re/container/IMWebView;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public raiseVibrateCompleteEvent()V
    .locals 2

    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->v:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->v:Landroid/app/Activity;

    new-instance v1, Lcom/inmobi/re/container/IMWebView$a;

    invoke-direct {v1, p0}, Lcom/inmobi/re/container/IMWebView$a;-><init>(Lcom/inmobi/re/container/IMWebView;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public removeSaveContentDir()V
    .locals 6

    const/4 v5, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->p:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    const-string v0, "Nilanjana"

    const-string v1, "list_downloadTask not null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/re/container/IMWebView$i;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView$i;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v3

    sget-object v4, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/inmobi/re/container/IMWebView$i;->cancel(Z)Z

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput-object v5, p0, Lcom/inmobi/re/container/IMWebView;->p:Ljava/util/ArrayList;

    :cond_2
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/im_cached_content/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    :goto_1
    array-length v3, v0

    if-ge v2, v3, :cond_3

    new-instance v3, Ljava/io/File;

    aget-object v4, v0, v2

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_4
    return-void
.end method

.method public requestOnInterstitialClosed(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mInterstitialController:Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;

    iput-object p1, v0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->mMsgOnInterstitialClosed:Landroid/os/Message;

    return-void
.end method

.method public requestOnInterstitialShown(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mInterstitialController:Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;

    iput-object p1, v0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->mMsgOnInterstitialShown:Landroid/os/Message;

    return-void
.end method

.method public requestOnPageFinishedCallback(Landroid/os/Message;)V
    .locals 0

    iput-object p1, p0, Lcom/inmobi/re/container/IMWebView;->t:Landroid/os/Message;

    return-void
.end method

.method public resetLayout()V
    .locals 2

    invoke-virtual {p0}, Lcom/inmobi/re/container/IMWebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-boolean v1, p0, Lcom/inmobi/re/container/IMWebView;->s:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/inmobi/re/container/IMWebView;->h:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v1, p0, Lcom/inmobi/re/container/IMWebView;->i:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/inmobi/re/container/IMWebView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/inmobi/re/container/IMWebView;->requestLayout()V

    return-void
.end method

.method public resetMraid()V
    .locals 1

    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mExpandController:Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;

    invoke-virtual {v0}, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->reset()V

    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mResizeController:Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;

    invoke-virtual {v0}, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->reset()V

    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->f:Lcom/inmobi/re/controller/JSUtilityController;

    invoke-virtual {v0}, Lcom/inmobi/re/controller/JSUtilityController;->reset()V

    return-void
.end method

.method public resize(Lcom/inmobi/re/controller/JSController$ResizeProperties;)V
    .locals 2

    sget-object v0, Lcom/inmobi/re/container/IMWebView$ViewState;->RESIZING:Lcom/inmobi/re/container/IMWebView$ViewState;

    invoke-virtual {p0, v0}, Lcom/inmobi/re/container/IMWebView;->setState(Lcom/inmobi/re/container/IMWebView$ViewState;)V

    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->isMutexAquired:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->x:Lcom/inmobi/re/container/IMWebView$l;

    const/16 v1, 0x406

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView$l;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->mResizeController:Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;

    iput-object p1, v1, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->resizeProperties:Lcom/inmobi/re/controller/JSController$ResizeProperties;

    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->x:Lcom/inmobi/re/container/IMWebView$l;

    invoke-virtual {v1, v0}, Lcom/inmobi/re/container/IMWebView$l;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public saveFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/inmobi/re/container/IMWebView$i;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/inmobi/re/container/IMWebView$i;-><init>(Lcom/inmobi/re/container/IMWebView;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView$i;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public saveOriginalViewParent()V
    .locals 3

    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->A:Landroid/view/ViewParent;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/inmobi/re/container/IMWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/re/container/IMWebView;->A:Landroid/view/ViewParent;

    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->A:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->A:Landroid/view/ViewParent;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_2

    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->A:Landroid/view/ViewParent;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eq v0, p0, :cond_2

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    iput v1, p0, Lcom/inmobi/re/container/IMWebView;->B:I

    goto :goto_0
.end method

.method public seekAudio(Ljava/lang/String;I)V
    .locals 4

    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mAudioVideoController:Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;

    invoke-virtual {v0, p1}, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->getCurrentAudioPlayer(Ljava/lang/String;)Lcom/inmobi/re/controller/util/AVPlayer;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Invalid property ID"

    const-string v1, "seekAudio"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/re/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/inmobi/re/controller/util/AVPlayer;->getState()Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    move-result-object v1

    sget-object v2, Lcom/inmobi/re/controller/util/AVPlayer$playerState;->RELEASED:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    if-ne v1, v2, :cond_1

    const-string v0, "Invalid player state"

    const-string v1, "seekAudio"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/re/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->x:Lcom/inmobi/re/container/IMWebView$l;

    const/16 v2, 0x3fe

    invoke-virtual {v1, v2}, Lcom/inmobi/re/container/IMWebView$l;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "seekaudio"

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public seekVideo(Ljava/lang/String;I)V
    .locals 4

    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mAudioVideoController:Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;

    invoke-virtual {v0, p1}, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->getVideoPlayer(Ljava/lang/String;)Lcom/inmobi/re/controller/util/AVPlayer;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Invalid property ID"

    const-string v1, "seekVideo"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/re/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/inmobi/re/controller/util/AVPlayer;->getState()Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    move-result-object v1

    sget-object v2, Lcom/inmobi/re/controller/util/AVPlayer$playerState;->RELEASED:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    if-eq v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/inmobi/re/controller/util/AVPlayer;->getState()Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    move-result-object v1

    sget-object v2, Lcom/inmobi/re/controller/util/AVPlayer$playerState;->INIT:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    if-ne v1, v2, :cond_2

    :cond_1
    const-string v0, "Invalid player state"

    const-string v1, "seekVideo"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/re/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->x:Lcom/inmobi/re/container/IMWebView$l;

    const/16 v2, 0x3fa

    invoke-virtual {v1, v2}, Lcom/inmobi/re/container/IMWebView$l;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "seek"

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->x:Lcom/inmobi/re/container/IMWebView$l;

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView$l;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public sendToCPHandler()V
    .locals 2

    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->x:Lcom/inmobi/re/container/IMWebView$l;

    const/16 v1, 0x405

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView$l;->sendEmptyMessage(I)Z

    return-void
.end method

.method public sendToDPHandler()V
    .locals 2

    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->x:Lcom/inmobi/re/container/IMWebView$l;

    const/16 v1, 0x408

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView$l;->sendEmptyMessage(I)Z

    return-void
.end method

.method public sendasyncPing(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->f:Lcom/inmobi/re/controller/JSUtilityController;

    invoke-virtual {v0, p1}, Lcom/inmobi/re/controller/JSUtilityController;->asyncPing(Ljava/lang/String;)V

    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/inmobi/re/container/IMWebView;->v:Landroid/app/Activity;

    return-void
.end method

.method public setAudioVolume(Ljava/lang/String;I)V
    .locals 3

    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mAudioVideoController:Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;

    invoke-virtual {v0, p1}, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->getCurrentAudioPlayer(Ljava/lang/String;)Lcom/inmobi/re/controller/util/AVPlayer;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Invalid property ID"

    const-string v1, "setAudioVolume"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/re/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->x:Lcom/inmobi/re/container/IMWebView$l;

    const/16 v1, 0x3fd

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView$l;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "vol"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "aplayerref"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public setBrowserActivity(Landroid/app/Activity;)V
    .locals 0

    if-eqz p1, :cond_0

    check-cast p1, Lcom/inmobi/androidsdk/IMBrowserActivity;

    iput-object p1, p0, Lcom/inmobi/re/container/IMWebView;->v:Landroid/app/Activity;

    :cond_0
    return-void
.end method

.method public setBusy(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/inmobi/re/container/IMWebView;->q:Z

    return-void
.end method

.method public setCallBack(Lcom/inmobi/re/container/IMWebView$InstantVideoCallbackCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/inmobi/re/container/IMWebView;->c:Lcom/inmobi/re/container/IMWebView$InstantVideoCallbackCallback;

    return-void
.end method

.method public setCloseButton()V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/inmobi/re/container/IMWebView;->getRootView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/16 v1, 0xe1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/inmobi/re/container/CustomView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/inmobi/re/container/IMWebView;->getCustomClose()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/inmobi/re/container/CustomView$SwitchIconType;->CLOSE_TRANSPARENT:Lcom/inmobi/re/container/CustomView$SwitchIconType;

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/CustomView;->setSwitchInt(Lcom/inmobi/re/container/CustomView$SwitchIconType;)V

    invoke-virtual {v0}, Lcom/inmobi/re/container/CustomView;->invalidate()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v1, Lcom/inmobi/re/container/CustomView$SwitchIconType;->CLOSE_BUTTON:Lcom/inmobi/re/container/CustomView$SwitchIconType;

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/CustomView;->setSwitchInt(Lcom/inmobi/re/container/CustomView$SwitchIconType;)V

    invoke-virtual {v0}, Lcom/inmobi/re/container/CustomView;->invalidate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setCustomClose(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/inmobi/re/container/IMWebView;->r:Z

    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->x:Lcom/inmobi/re/container/IMWebView$l;

    const/16 v1, 0x3f1

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView$l;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->x:Lcom/inmobi/re/container/IMWebView$l;

    invoke-virtual {v1, v0}, Lcom/inmobi/re/container/IMWebView$l;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setExpandPropertiesForInterstitial(ZZLjava/lang/String;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/inmobi/re/container/IMWebView;->setCustomClose(Z)V

    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mInterstitialController:Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;

    iput-object p3, v0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->orientationValueForInterstitial:Ljava/lang/String;

    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mInterstitialController:Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;

    iput-boolean p2, v0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->lockOrientationValueForInterstitial:Z

    iget-boolean v0, p0, Lcom/inmobi/re/container/IMWebView;->mWebViewIsBrowserActivity:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mExpandController:Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;

    invoke-virtual {v0}, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->handleOrientationFor2Piece()V

    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/re/container/IMWebView;->isViewable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/inmobi/re/container/IMWebView;->mIsInterstitialAd:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->x:Lcom/inmobi/re/container/IMWebView$l;

    const/16 v1, 0x402

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView$l;->sendEmptyMessage(I)Z

    :cond_1
    return-void
.end method

.method public setExternalWebViewClient(Landroid/webkit/WebViewClient;)V
    .locals 0

    iput-object p1, p0, Lcom/inmobi/re/container/IMWebView;->w:Landroid/webkit/WebViewClient;

    return-void
.end method

.method public setOrientationPropertiesForInterstitial(ZLjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mInterstitialController:Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;

    iput-object p2, v0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->orientationValueForInterstitial:Ljava/lang/String;

    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mInterstitialController:Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;

    iput-boolean p1, v0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->lockOrientationValueForInterstitial:Z

    iget-boolean v0, p0, Lcom/inmobi/re/container/IMWebView;->mWebViewIsBrowserActivity:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mExpandController:Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;

    invoke-virtual {v0}, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->handleOrientationFor2Piece()V

    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/re/container/IMWebView;->isViewable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/inmobi/re/container/IMWebView;->mIsInterstitialAd:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->x:Lcom/inmobi/re/container/IMWebView$l;

    const/16 v1, 0x402

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView$l;->sendEmptyMessage(I)Z

    :cond_1
    return-void
.end method

.method public setOriginalParent(Landroid/view/ViewParent;)V
    .locals 0

    iput-object p1, p0, Lcom/inmobi/re/container/IMWebView;->A:Landroid/view/ViewParent;

    return-void
.end method

.method public setState(Lcom/inmobi/re/container/IMWebView$ViewState;)V
    .locals 3

    const-string v0, "[InMobi]-[RE]-4.4.1"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "State changing from "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/inmobi/re/container/IMWebView;->j:Lcom/inmobi/re/container/IMWebView$ViewState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/inmobi/re/container/IMWebView;->j:Lcom/inmobi/re/container/IMWebView$ViewState;

    sget-object v0, Lcom/inmobi/re/container/IMWebView$ViewState;->EXPANDING:Lcom/inmobi/re/container/IMWebView$ViewState;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/inmobi/re/container/IMWebView$ViewState;->RESIZING:Lcom/inmobi/re/container/IMWebView$ViewState;

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "window.mraid.broadcastEvent(\'stateChange\',\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/inmobi/re/container/IMWebView;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\');"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/inmobi/re/container/IMWebView;->injectJavaScript(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setVideoVolume(Ljava/lang/String;I)V
    .locals 4

    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mAudioVideoController:Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;

    invoke-virtual {v0, p1}, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->getVideoPlayer(Ljava/lang/String;)Lcom/inmobi/re/controller/util/AVPlayer;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Invalid property ID"

    const-string v1, "setVideoVolume"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/re/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/inmobi/re/controller/util/AVPlayer;->getState()Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    move-result-object v1

    sget-object v2, Lcom/inmobi/re/controller/util/AVPlayer$playerState;->RELEASED:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    if-ne v1, v2, :cond_1

    const-string v0, "Invalid player state"

    const-string v1, "setVideoVolume"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/re/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->x:Lcom/inmobi/re/container/IMWebView$l;

    const/16 v2, 0x3f9

    invoke-virtual {v1, v2}, Lcom/inmobi/re/container/IMWebView$l;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "volume"

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->x:Lcom/inmobi/re/container/IMWebView$l;

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView$l;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public show()V
    .locals 2

    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->x:Lcom/inmobi/re/container/IMWebView$l;

    const/16 v1, 0x3eb

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView$l;->sendEmptyMessage(I)Z

    return-void
.end method

.method public showVideo(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->x:Lcom/inmobi/re/container/IMWebView$l;

    const/16 v1, 0x3f6

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView$l;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "pid"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->x:Lcom/inmobi/re/container/IMWebView$l;

    invoke-virtual {v1, v0}, Lcom/inmobi/re/container/IMWebView$l;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public unMuteAudio(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mAudioVideoController:Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;

    invoke-virtual {v0, p1}, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->getCurrentAudioPlayer(Ljava/lang/String;)Lcom/inmobi/re/controller/util/AVPlayer;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Invalid property ID"

    const-string v1, "unmuteAudio"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/re/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/inmobi/re/controller/util/AVPlayer;->getState()Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    move-result-object v0

    sget-object v1, Lcom/inmobi/re/controller/util/AVPlayer$playerState;->RELEASED:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    if-ne v0, v1, :cond_1

    const-string v0, "Invalid player state"

    const-string v1, "unmuteAudio"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/re/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->x:Lcom/inmobi/re/container/IMWebView$l;

    const/16 v1, 0x3fc

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView$l;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "aplayerref"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public unMuteVideo(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->mAudioVideoController:Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;

    invoke-virtual {v0, p1}, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->getVideoPlayer(Ljava/lang/String;)Lcom/inmobi/re/controller/util/AVPlayer;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Invalid property ID"

    const-string v1, "unMuteVideo"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/re/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/inmobi/re/controller/util/AVPlayer;->getState()Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    move-result-object v1

    sget-object v2, Lcom/inmobi/re/controller/util/AVPlayer$playerState;->RELEASED:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    if-eq v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/inmobi/re/controller/util/AVPlayer;->getState()Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    move-result-object v1

    sget-object v2, Lcom/inmobi/re/controller/util/AVPlayer$playerState;->INIT:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    if-ne v1, v2, :cond_2

    :cond_1
    const-string v0, "Invalid player state"

    const-string v1, "unMuteVideo"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/re/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/inmobi/re/container/IMWebView;->x:Lcom/inmobi/re/container/IMWebView$l;

    const/16 v2, 0x3f8

    invoke-virtual {v1, v2}, Lcom/inmobi/re/container/IMWebView$l;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->x:Lcom/inmobi/re/container/IMWebView$l;

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView$l;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public userInteraction(Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/inmobi/re/container/IMWebView;->x:Lcom/inmobi/re/container/IMWebView$l;

    const/16 v1, 0x409

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView$l;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "map"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
