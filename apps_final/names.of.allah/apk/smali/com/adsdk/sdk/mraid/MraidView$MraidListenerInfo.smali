.class Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;
.super Ljava/lang/Object;


# instance fields
.field private mMraidListener:Lcom/adsdk/sdk/mraid/MraidView$MraidListener;

.field private mOnCloseButtonListener:Lcom/adsdk/sdk/mraid/MraidView$OnCloseButtonStateChangeListener;

.field private mOnOpenListener:Lcom/adsdk/sdk/mraid/MraidView$OnOpenListener;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;)Lcom/adsdk/sdk/mraid/MraidView$MraidListener;
    .locals 1

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;->mMraidListener:Lcom/adsdk/sdk/mraid/MraidView$MraidListener;

    return-object v0
.end method

.method static synthetic access$1(Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;Lcom/adsdk/sdk/mraid/MraidView$MraidListener;)V
    .locals 0

    iput-object p1, p0, Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;->mMraidListener:Lcom/adsdk/sdk/mraid/MraidView$MraidListener;

    return-void
.end method

.method static synthetic access$2(Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;Lcom/adsdk/sdk/mraid/MraidView$OnCloseButtonStateChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;->mOnCloseButtonListener:Lcom/adsdk/sdk/mraid/MraidView$OnCloseButtonStateChangeListener;

    return-void
.end method

.method static synthetic access$3(Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;)Lcom/adsdk/sdk/mraid/MraidView$OnCloseButtonStateChangeListener;
    .locals 1

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;->mOnCloseButtonListener:Lcom/adsdk/sdk/mraid/MraidView$OnCloseButtonStateChangeListener;

    return-object v0
.end method

.method static synthetic access$4(Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;Lcom/adsdk/sdk/mraid/MraidView$OnOpenListener;)V
    .locals 0

    iput-object p1, p0, Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;->mOnOpenListener:Lcom/adsdk/sdk/mraid/MraidView$OnOpenListener;

    return-void
.end method

.method static synthetic access$5(Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;)Lcom/adsdk/sdk/mraid/MraidView$OnOpenListener;
    .locals 1

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;->mOnOpenListener:Lcom/adsdk/sdk/mraid/MraidView$OnOpenListener;

    return-object v0
.end method
