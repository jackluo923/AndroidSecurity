.class public Lcom/adsdk/sdk/mraid/MraidView;
.super Lcom/adsdk/sdk/mraid/BaseWebView;

# interfaces
.implements Lcom/adsdk/sdk/mraid/ViewGestureDetector$UserClickListener;


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "MraidView"


# instance fields
.field private mBrowserController:Lcom/adsdk/sdk/mraid/MraidBrowserController;

.field private mClicked:Z

.field private mDisplayController:Lcom/adsdk/sdk/mraid/MraidDisplayController;

.field private mHasFiredReadyEvent:Z

.field private mListenerInfo:Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;

.field private final mPlacementType:Lcom/adsdk/sdk/mraid/MraidView$PlacementType;

.field private mViewGestureDetector:Lcom/adsdk/sdk/mraid/ViewGestureDetector;

.field private mWebViewClient:Landroid/webkit/WebViewClient;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    sget-object v0, Lcom/adsdk/sdk/mraid/MraidView$ExpansionStyle;->ENABLED:Lcom/adsdk/sdk/mraid/MraidView$ExpansionStyle;

    sget-object v1, Lcom/adsdk/sdk/mraid/MraidView$NativeCloseButtonStyle;->AD_CONTROLLED:Lcom/adsdk/sdk/mraid/MraidView$NativeCloseButtonStyle;

    sget-object v2, Lcom/adsdk/sdk/mraid/MraidView$PlacementType;->INLINE:Lcom/adsdk/sdk/mraid/MraidView$PlacementType;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/adsdk/sdk/mraid/MraidView;-><init>(Landroid/content/Context;Lcom/adsdk/sdk/mraid/MraidView$ExpansionStyle;Lcom/adsdk/sdk/mraid/MraidView$NativeCloseButtonStyle;Lcom/adsdk/sdk/mraid/MraidView$PlacementType;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/adsdk/sdk/mraid/MraidView$ExpansionStyle;Lcom/adsdk/sdk/mraid/MraidView$NativeCloseButtonStyle;Lcom/adsdk/sdk/mraid/MraidView$PlacementType;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/adsdk/sdk/mraid/BaseWebView;-><init>(Landroid/content/Context;)V

    iput-object p4, p0, Lcom/adsdk/sdk/mraid/MraidView;->mPlacementType:Lcom/adsdk/sdk/mraid/MraidView$PlacementType;

    new-instance v0, Lcom/adsdk/sdk/mraid/ViewGestureDetector;

    invoke-direct {v0, p1, p0}, Lcom/adsdk/sdk/mraid/ViewGestureDetector;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/adsdk/sdk/mraid/MraidView;->mViewGestureDetector:Lcom/adsdk/sdk/mraid/ViewGestureDetector;

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidView;->mViewGestureDetector:Lcom/adsdk/sdk/mraid/ViewGestureDetector;

    invoke-virtual {v0, p0}, Lcom/adsdk/sdk/mraid/ViewGestureDetector;->setUserClickListener(Lcom/adsdk/sdk/mraid/ViewGestureDetector$UserClickListener;)V

    invoke-direct {p0, p2, p3}, Lcom/adsdk/sdk/mraid/MraidView;->initialize(Lcom/adsdk/sdk/mraid/MraidView$ExpansionStyle;Lcom/adsdk/sdk/mraid/MraidView$NativeCloseButtonStyle;)V

    return-void
.end method

.method static synthetic access$0(Lcom/adsdk/sdk/mraid/MraidView;Ljava/net/URI;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/adsdk/sdk/mraid/MraidView;->tryCommand(Ljava/net/URI;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1(Lcom/adsdk/sdk/mraid/MraidView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/adsdk/sdk/mraid/MraidView;->mHasFiredReadyEvent:Z

    return v0
.end method

.method static synthetic access$2(Lcom/adsdk/sdk/mraid/MraidView;)Lcom/adsdk/sdk/mraid/MraidDisplayController;
    .locals 1

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidView;->mDisplayController:Lcom/adsdk/sdk/mraid/MraidDisplayController;

    return-object v0
.end method

.method static synthetic access$3(Lcom/adsdk/sdk/mraid/MraidView;)Lcom/adsdk/sdk/mraid/MraidView$PlacementType;
    .locals 1

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidView;->mPlacementType:Lcom/adsdk/sdk/mraid/MraidView$PlacementType;

    return-object v0
.end method

.method static synthetic access$4(Lcom/adsdk/sdk/mraid/MraidView;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/adsdk/sdk/mraid/MraidView;->mHasFiredReadyEvent:Z

    return-void
.end method

.method static synthetic access$5(Lcom/adsdk/sdk/mraid/MraidView;)Lcom/adsdk/sdk/mraid/ViewGestureDetector;
    .locals 1

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidView;->mViewGestureDetector:Lcom/adsdk/sdk/mraid/ViewGestureDetector;

    return-object v0
.end method

.method private initialize(Lcom/adsdk/sdk/mraid/MraidView$ExpansionStyle;Lcom/adsdk/sdk/mraid/MraidView$NativeCloseButtonStyle;)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/mraid/MraidView;->setScrollContainer(Z)V

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/mraid/MraidView;->setBackgroundColor(I)V

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/mraid/MraidView;->setVerticalScrollBarEnabled(Z)V

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/mraid/MraidView;->setHorizontalScrollBarEnabled(Z)V

    new-instance v0, Lcom/adsdk/sdk/mraid/MraidView$1;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/mraid/MraidView$1;-><init>(Lcom/adsdk/sdk/mraid/MraidView;)V

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/mraid/MraidView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/MraidView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    new-instance v0, Lcom/adsdk/sdk/mraid/MraidBrowserController;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/mraid/MraidBrowserController;-><init>(Lcom/adsdk/sdk/mraid/MraidView;)V

    iput-object v0, p0, Lcom/adsdk/sdk/mraid/MraidView;->mBrowserController:Lcom/adsdk/sdk/mraid/MraidBrowserController;

    new-instance v0, Lcom/adsdk/sdk/mraid/MraidDisplayController;

    invoke-direct {v0, p0, p1, p2}, Lcom/adsdk/sdk/mraid/MraidDisplayController;-><init>(Lcom/adsdk/sdk/mraid/MraidView;Lcom/adsdk/sdk/mraid/MraidView$ExpansionStyle;Lcom/adsdk/sdk/mraid/MraidView$NativeCloseButtonStyle;)V

    iput-object v0, p0, Lcom/adsdk/sdk/mraid/MraidView;->mDisplayController:Lcom/adsdk/sdk/mraid/MraidDisplayController;

    new-instance v0, Lcom/adsdk/sdk/mraid/MraidView$MraidWebViewClient;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/adsdk/sdk/mraid/MraidView$MraidWebViewClient;-><init>(Lcom/adsdk/sdk/mraid/MraidView;Lcom/adsdk/sdk/mraid/MraidView$MraidWebViewClient;)V

    iput-object v0, p0, Lcom/adsdk/sdk/mraid/MraidView;->mWebViewClient:Landroid/webkit/WebViewClient;

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidView;->mWebViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/mraid/MraidView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    new-instance v0, Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;

    invoke-direct {v0}, Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;-><init>()V

    iput-object v0, p0, Lcom/adsdk/sdk/mraid/MraidView;->mListenerInfo:Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;

    return-void
.end method

.method private notifyOnFailureListener()V
    .locals 1

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidView;->mListenerInfo:Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;

    # getter for: Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;->mMraidListener:Lcom/adsdk/sdk/mraid/MraidView$MraidListener;
    invoke-static {v0}, Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;->access$0(Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;)Lcom/adsdk/sdk/mraid/MraidView$MraidListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidView;->mListenerInfo:Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;

    # getter for: Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;->mMraidListener:Lcom/adsdk/sdk/mraid/MraidView$MraidListener;
    invoke-static {v0}, Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;->access$0(Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;)Lcom/adsdk/sdk/mraid/MraidView$MraidListener;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/adsdk/sdk/mraid/MraidView$MraidListener;->onFailure(Lcom/adsdk/sdk/mraid/MraidView;)V

    :cond_0
    return-void
.end method

.method private tryCommand(Ljava/net/URI;)Z
    .locals 6

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v2

    const-string v0, "UTF-8"

    invoke-static {p1, v0}, Lorg/apache/http/client/utils/URLEncodedUtils;->parse(Ljava/net/URI;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v2, v3, p0}, Lcom/adsdk/sdk/mraid/MraidCommandFactory;->create(Ljava/lang/String;Ljava/util/Map;Lcom/adsdk/sdk/mraid/MraidView;)Lcom/adsdk/sdk/mraid/MraidCommand;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0, v2}, Lcom/adsdk/sdk/mraid/MraidView;->fireNativeCommandCompleteEvent(Ljava/lang/String;)V

    move v0, v1

    :goto_1
    return v0

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/adsdk/sdk/mraid/MraidView;->mPlacementType:Lcom/adsdk/sdk/mraid/MraidView$PlacementType;

    invoke-virtual {v0, v3}, Lcom/adsdk/sdk/mraid/MraidCommand;->isCommandDependentOnUserClick(Lcom/adsdk/sdk/mraid/MraidView$PlacementType;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/MraidView;->wasClicked()Z

    move-result v3

    if-nez v3, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/MraidCommand;->execute()V

    invoke-virtual {p0, v2}, Lcom/adsdk/sdk/mraid/MraidView;->fireNativeCommandCompleteEvent(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidView;->mDisplayController:Lcom/adsdk/sdk/mraid/MraidDisplayController;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->destroy()V

    invoke-super {p0}, Lcom/adsdk/sdk/mraid/BaseWebView;->destroy()V

    return-void
.end method

.method protected fireChangeEventForProperties(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adsdk/sdk/mraid/MraidProperty;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "{"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "window.mraidbridge.fireChangeEvent("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/adsdk/sdk/mraid/MraidView;->injectJavaScript(Ljava/lang/String;)V

    const-string v1, "MraidView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Fire changes: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected fireChangeEventForProperty(Lcom/adsdk/sdk/mraid/MraidProperty;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/adsdk/sdk/mraid/MraidProperty;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "window.mraidbridge.fireChangeEvent("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/adsdk/sdk/mraid/MraidView;->injectJavaScript(Ljava/lang/String;)V

    const-string v1, "MraidView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Fire change: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected fireErrorEvent(Lcom/adsdk/sdk/mraid/MraidCommandFactory$MraidJavascriptCommand;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1}, Lcom/adsdk/sdk/mraid/MraidCommandFactory$MraidJavascriptCommand;->getCommand()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "window.mraidbridge.fireErrorEvent(\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\');"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/mraid/MraidView;->injectJavaScript(Ljava/lang/String;)V

    return-void
.end method

.method protected fireNativeCommandCompleteEvent(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "window.mraidbridge.nativeCallComplete(\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\');"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/mraid/MraidView;->injectJavaScript(Ljava/lang/String;)V

    return-void
.end method

.method protected fireReadyEvent()V
    .locals 1

    const-string v0, "window.mraidbridge.fireReadyEvent();"

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/mraid/MraidView;->injectJavaScript(Ljava/lang/String;)V

    return-void
.end method

.method protected getBrowserController()Lcom/adsdk/sdk/mraid/MraidBrowserController;
    .locals 1

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidView;->mBrowserController:Lcom/adsdk/sdk/mraid/MraidBrowserController;

    return-object v0
.end method

.method protected getDisplayController()Lcom/adsdk/sdk/mraid/MraidDisplayController;
    .locals 1

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidView;->mDisplayController:Lcom/adsdk/sdk/mraid/MraidDisplayController;

    return-object v0
.end method

.method public getMraidListener()Lcom/adsdk/sdk/mraid/MraidView$MraidListener;
    .locals 1

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidView;->mListenerInfo:Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;

    # getter for: Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;->mMraidListener:Lcom/adsdk/sdk/mraid/MraidView$MraidListener;
    invoke-static {v0}, Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;->access$0(Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;)Lcom/adsdk/sdk/mraid/MraidView$MraidListener;

    move-result-object v0

    return-object v0
.end method

.method getMraidWebViewClient()Landroid/webkit/WebViewClient;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidView;->mWebViewClient:Landroid/webkit/WebViewClient;

    return-object v0
.end method

.method public getOnCloseButtonStateChangeListener()Lcom/adsdk/sdk/mraid/MraidView$OnCloseButtonStateChangeListener;
    .locals 1

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidView;->mListenerInfo:Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;

    # getter for: Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;->mOnCloseButtonListener:Lcom/adsdk/sdk/mraid/MraidView$OnCloseButtonStateChangeListener;
    invoke-static {v0}, Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;->access$3(Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;)Lcom/adsdk/sdk/mraid/MraidView$OnCloseButtonStateChangeListener;

    move-result-object v0

    return-object v0
.end method

.method public getOnOpenListener()Lcom/adsdk/sdk/mraid/MraidView$OnOpenListener;
    .locals 1

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidView;->mListenerInfo:Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;

    # getter for: Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;->mOnOpenListener:Lcom/adsdk/sdk/mraid/MraidView$OnOpenListener;
    invoke-static {v0}, Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;->access$5(Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;)Lcom/adsdk/sdk/mraid/MraidView$OnOpenListener;

    move-result-object v0

    return-object v0
.end method

.method protected injectJavaScript(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "javascript:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/adsdk/sdk/mraid/BaseWebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public loadHtmlData(Ljava/lang/String;)V
    .locals 6

    const/4 v1, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "<html>"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "<html><head></head><body style=\'margin:0;padding:0;\'>"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "</body></html>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    const-string v0, "<head>"

    const-string v2, "<head><script>(function() {\n  var isIOS = (/iphone|ipad|ipod/i).test(window.navigator.userAgent.toLowerCase());\n  if (isIOS) {\n    console = {};\n    console.log = function(log) {\n      var iframe = document.createElement(\'iframe\');\n      iframe.setAttribute(\'src\', \'ios-log: \' + log);\n      document.documentElement.appendChild(iframe);\n      iframe.parentNode.removeChild(iframe);\n      iframe = null;\n    };\n    console.debug = console.info = console.warn = console.error = console.log;\n  }\n}());\n\n(function() {\n  // Establish the root mraidbridge object.\n  var mraidbridge = window.mraidbridge = {};\n\n  // Listeners for bridge events.\n  var listeners = {};\n\n  // Queue to track pending calls to the native SDK.\n  var nativeCallQueue = [];\n\n  // Whether a native call is currently in progress.\n  var nativeCallInFlight = false;\n\n  //////////////////////////////////////////////////////////////////////////////////////////////////\n\n  mraidbridge.fireReadyEvent = function() {\n    mraidbridge.fireEvent(\'ready\');\n  };\n\n  mraidbridge.fireChangeEvent = function(properties) {\n    mraidbridge.fireEvent(\'change\', properties);\n  };\n\n  mraidbridge.fireErrorEvent = function(message, action) {\n    mraidbridge.fireEvent(\'error\', message, action);\n  };\n\n  mraidbridge.fireEvent = function(type) {\n    var ls = listeners[type];\n    if (ls) {\n      var args = Array.prototype.slice.call(arguments);\n      args.shift();\n      var l = ls.length;\n      for (var i = 0; i < l; i++) {\n        ls[i].apply(null, args);\n      }\n    }\n  };\n\n  mraidbridge.nativeCallComplete = function(command) {\n    if (nativeCallQueue.length === 0) {\n      nativeCallInFlight = false;\n      return;\n    }\n\n    var nextCall = nativeCallQueue.pop();\n    window.location = nextCall;\n  };\n\n  mraidbridge.executeNativeCall = function(command) {\n    var call = \'mraid://\' + command;\n\n    var key, value;\n    var isFirstArgument = true;\n\n    for (var i = 1; i < arguments.length; i += 2) {\n      key = arguments[i];\n      value = arguments[i + 1];\n\n      if (value === null) continue;\n\n      if (isFirstArgument) {\n        call += \'?\';\n        isFirstArgument = false;\n      } else {\n        call += \'&\';\n      }\n\n      call += encodeURIComponent(key) + \'=\' + encodeURIComponent(value);\n    }\n\n    if (nativeCallInFlight) {\n      nativeCallQueue.push(call);\n    } else {\n      nativeCallInFlight = true;\n      window.location = call;\n    }\n  };\n\n  //////////////////////////////////////////////////////////////////////////////////////////////////\n\n  mraidbridge.addEventListener = function(event, listener) {\n    var eventListeners;\n    listeners[event] = listeners[event] || [];\n    eventListeners = listeners[event];\n\n    for (var l in eventListeners) {\n      // Listener already registered, so no need to add it.\n      if (listener === l) return;\n    }\n\n    eventListeners.push(listener);\n  };\n\n  mraidbridge.removeEventListener = function(event, listener) {\n    if (listeners.hasOwnProperty(event)) {\n      var eventListeners = listeners[event];\n      if (eventListeners) {\n        var idx = eventListeners.indexOf(listener);\n        if (idx !== -1) {\n          eventListeners.splice(idx, 1);\n        }\n      }\n    }\n  };\n}());\n\n(function() {\n  var mraid = window.mraid = {};\n  var bridge = window.mraidbridge;\n\n  // Constants. ////////////////////////////////////////////////////////////////////////////////////\n\n  var VERSION = mraid.VERSION = \'2.0\';\n\n  var STATES = mraid.STATES = {\n    LOADING: \'loading\',     // Initial state.\n    DEFAULT: \'default\',\n    EXPANDED: \'expanded\',\n    HIDDEN: \'hidden\'\n  };\n\n  var EVENTS = mraid.EVENTS = {\n    ERROR: \'error\',\n    INFO: \'info\',\n    READY: \'ready\',\n    STATECHANGE: \'stateChange\',\n    VIEWABLECHANGE: \'viewableChange\'\n  };\n\n  var PLACEMENT_TYPES = mraid.PLACEMENT_TYPES = {\n    UNKNOWN: \'unknown\',\n    INLINE: \'inline\',\n    INTERSTITIAL: \'interstitial\'\n  };\n\n  // External MRAID state: may be directly or indirectly modified by the ad JS. ////////////////////\n\n  // Properties which define the behavior of an expandable ad.\n  var expandProperties = {\n    width: -1,\n    height: -1,\n    useCustomClose: false,\n    isModal: true,\n    lockOrientation: false\n  };\n\n  var hasSetCustomSize = false;\n\n  var hasSetCustomClose = false;\n\n  var listeners = {};\n\n  // Internal MRAID state. Modified by the native SDK. /////////////////////////////////////////////\n\n  var state = STATES.LOADING;\n\n  var isViewable = false;\n\n  var screenSize = { width: -1, height: -1 };\n\n  var placementType = PLACEMENT_TYPES.UNKNOWN;\n\n  var supports = {\n    sms: false,\n    tel: false,\n    calendar: false,\n    storePicture: false,\n    inlineVideo: false\n  };\n\n  //////////////////////////////////////////////////////////////////////////////////////////////////\n\n  var EventListeners = function(event) {\n    this.event = event;\n    this.count = 0;\n    var listeners = {};\n\n    this.add = function(func) {\n      var id = String(func);\n      if (!listeners[id]) {\n        listeners[id] = func;\n        this.count++;\n      }\n    };\n\n    this.remove = function(func) {\n      var id = String(func);\n      if (listeners[id]) {\n        listeners[id] = null;\n        delete listeners[id];\n        this.count--;\n        return true;\n      } else {\n        return false;\n      }\n    };\n\n    this.removeAll = function() {\n      for (var id in listeners) {\n        if (listeners.hasOwnProperty(id)) this.remove(listeners[id]);\n      }\n    };\n\n    this.broadcast = function(args) {\n      for (var id in listeners) {\n        if (listeners.hasOwnProperty(id)) listeners[id].apply({}, args);\n      }\n    };\n\n    this.toString = function() {\n      var out = [event, \':\'];\n      for (var id in listeners) {\n        if (listeners.hasOwnProperty(id)) out.push(\'|\', id, \'|\');\n      }\n      return out.join(\'\');\n    };\n  };\n\n  var broadcastEvent = function() {\n    var args = new Array(arguments.length);\n    var l = arguments.length;\n    for (var i = 0; i < l; i++) args[i] = arguments[i];\n    var event = args.shift();\n    if (listeners[event]) listeners[event].broadcast(args);\n  };\n\n  var contains = function(value, array) {\n    for (var i in array) {\n      if (array[i] === value) return true;\n    }\n    return false;\n  };\n\n  var clone = function(obj) {\n    if (obj === null) return null;\n    var f = function() {};\n    f.prototype = obj;\n    return new f();\n  };\n\n  var stringify = function(obj) {\n    if (typeof obj === \'object\') {\n      var out = [];\n      if (obj.push) {\n        // Array.\n        for (var p in obj) out.push(obj[p]);\n        return \'[\' + out.join(\',\') + \']\';\n      } else {\n        // Other object.\n        for (var p in obj) out.push(\"\'\" + p + \"\': \" + obj[p]);\n        return \'{\' + out.join(\',\') + \'}\';\n      }\n    } else return String(obj);\n  };\n\n  var trim = function(str) {\n    return str.replace(/^\\s+|\\s+$/g, \'\');\n  };\n\n  // Functions that will be invoked by the native SDK whenever a \"change\" event occurs.\n  var changeHandlers = {\n    state: function(val) {\n      if (state === STATES.LOADING) {\n        broadcastEvent(EVENTS.INFO, \'Native SDK initialized.\');\n      }\n      state = val;\n      broadcastEvent(EVENTS.INFO, \'Set state to \' + stringify(val));\n      broadcastEvent(EVENTS.STATECHANGE, state);\n    },\n\n    viewable: function(val) {\n      isViewable = val;\n      broadcastEvent(EVENTS.INFO, \'Set isViewable to \' + stringify(val));\n      broadcastEvent(EVENTS.VIEWABLECHANGE, isViewable);\n    },\n\n    placementType: function(val) {\n      broadcastEvent(EVENTS.INFO, \'Set placementType to \' + stringify(val));\n      placementType = val;\n    },\n\n    screenSize: function(val) {\n      broadcastEvent(EVENTS.INFO, \'Set screenSize to \' + stringify(val));\n      for (var key in val) {\n        if (val.hasOwnProperty(key)) screenSize[key] = val[key];\n      }\n\n      if (!hasSetCustomSize) {\n        expandProperties[\'width\'] = screenSize[\'width\'];\n        expandProperties[\'height\'] = screenSize[\'height\'];\n      }\n    },\n\n    expandProperties: function(val) {\n      broadcastEvent(EVENTS.INFO, \'Merging expandProperties with \' + stringify(val));\n      for (var key in val) {\n        if (val.hasOwnProperty(key)) expandProperties[key] = val[key];\n      }\n    },\n\n    supports: function(val) {\n      broadcastEvent(EVENTS.INFO, \'Set supports to \' + stringify(val));\n        supports = val;\n    },\n  };\n\n  var validate = function(obj, validators, action, merge) {\n    if (!merge) {\n      // Check to see if any required properties are missing.\n      if (obj === null) {\n        broadcastEvent(EVENTS.ERROR, \'Required object not provided.\', action);\n        return false;\n      } else {\n        for (var i in validators) {\n          if (validators.hasOwnProperty(i) && obj[i] === undefined) {\n            broadcastEvent(EVENTS.ERROR, \'Object is missing required property: \' + i + \'.\', action);\n            return false;\n          }\n        }\n      }\n    }\n\n    for (var prop in obj) {\n      var validator = validators[prop];\n      var value = obj[prop];\n      if (validator && !validator(value)) {\n        // Failed validation.\n        broadcastEvent(EVENTS.ERROR, \'Value of property \' + prop + \' is invalid.\',\n          action);\n        return false;\n      }\n    }\n    return true;\n  };\n\n  var expandPropertyValidators = {\n    width: function(v) { return !isNaN(v) && v >= 0; },\n    height: function(v) { return !isNaN(v) && v >= 0; },\n    useCustomClose: function(v) { return (typeof v === \'boolean\'); },\n    lockOrientation: function(v) { return (typeof v === \'boolean\'); }\n  };\n\n  //////////////////////////////////////////////////////////////////////////////////////////////////\n\n  bridge.addEventListener(\'change\', function(properties) {\n    for (var p in properties) {\n      if (properties.hasOwnProperty(p)) {\n        var handler = changeHandlers[p];\n        handler(properties[p]);\n      }\n    }\n  });\n\n  bridge.addEventListener(\'error\', function(message, action) {\n    broadcastEvent(EVENTS.ERROR, message, action);\n  });\n\n  bridge.addEventListener(\'ready\', function() {\n    broadcastEvent(EVENTS.READY);\n  });\n\n  //////////////////////////////////////////////////////////////////////////////////////////////////\n\n  mraid.addEventListener = function(event, listener) {\n    if (!event || !listener) {\n      broadcastEvent(EVENTS.ERROR, \'Both event and listener are required.\', \'addEventListener\');\n    } else if (!contains(event, EVENTS)) {\n      broadcastEvent(EVENTS.ERROR, \'Unknown MRAID event: \' + event, \'addEventListener\');\n    } else {\n      if (!listeners[event]) listeners[event] = new EventListeners(event);\n      listeners[event].add(listener);\n    }\n  };\n\n  mraid.close = function() {\n    if (state === STATES.HIDDEN) {\n      broadcastEvent(EVENTS.ERROR, \'Ad cannot be closed when it is already hidden.\',\n        \'close\');\n    } else bridge.executeNativeCall(\'close\');\n  };\n\n  mraid.expand = function(URL) {\n    if (this.getState() !== STATES.DEFAULT) {\n      broadcastEvent(EVENTS.ERROR, \'Ad can only be expanded from the default state.\', \'expand\');\n    } else {\n      var args = [\'expand\'];\n\n      if (this.getHasSetCustomClose()) {\n        args = args.concat([\'shouldUseCustomClose\', expandProperties.useCustomClose ? \'true\' : \'false\']);\n      }\n\n      if (this.getHasSetCustomSize()) {\n        if (expandProperties.width >= 0 && expandProperties.height >= 0) {\n          args = args.concat([\'w\', expandProperties.width, \'h\', expandProperties.height]);\n        }\n      }\n\n      if (typeof expandProperties.lockOrientation !== \'undefined\') {\n        args = args.concat([\'lockOrientation\', expandProperties.lockOrientation]);\n      }\n\n      if (URL) {\n        args = args.concat([\'url\', URL]);\n      }\n\n      bridge.executeNativeCall.apply(this, args);\n    }\n  };\n\n  mraid.getHasSetCustomClose = function() {\n      return hasSetCustomClose;\n  };\n\n  mraid.getHasSetCustomSize = function() {\n      return hasSetCustomSize;\n  };\n\n  mraid.getExpandProperties = function() {\n    var properties = {\n      width: expandProperties.width,\n      height: expandProperties.height,\n      useCustomClose: expandProperties.useCustomClose,\n      isModal: expandProperties.isModal\n    };\n    return properties;\n  };\n\n  mraid.getPlacementType = function() {\n    return placementType;\n  };\n\n  mraid.getState = function() {\n    return state;\n  };\n\n  mraid.getVersion = function() {\n    return mraid.VERSION;\n  };\n\n  mraid.isViewable = function() {\n    return isViewable;\n  };\n\n  mraid.open = function(URL) {\n    if (!URL) broadcastEvent(EVENTS.ERROR, \'URL is required.\', \'open\');\n    else bridge.executeNativeCall(\'open\', \'url\', URL);\n  };\n\n  mraid.removeEventListener = function(event, listener) {\n    if (!event) broadcastEvent(EVENTS.ERROR, \'Event is required.\', \'removeEventListener\');\n    else {\n      if (listener && (!listeners[event] || !listeners[event].remove(listener))) {\n        broadcastEvent(EVENTS.ERROR, \'Listener not currently registered for event.\',\n          \'removeEventListener\');\n        return;\n      } else if (listeners[event]) listeners[event].removeAll();\n\n      if (listeners[event] && listeners[event].count === 0) {\n        listeners[event] = null;\n        delete listeners[event];\n      }\n    }\n  };\n\n  mraid.setExpandProperties = function(properties) {\n    if (validate(properties, expandPropertyValidators, \'setExpandProperties\', true)) {\n      if (properties.hasOwnProperty(\'width\') || properties.hasOwnProperty(\'height\')) {\n        hasSetCustomSize = true;\n      }\n\n      if (properties.hasOwnProperty(\'useCustomClose\')) hasSetCustomClose = true;\n\n      var desiredProperties = [\'width\', \'height\', \'useCustomClose\', \'lockOrientation\'];\n      var length = desiredProperties.length;\n      for (var i = 0; i < length; i++) {\n        var propname = desiredProperties[i];\n        if (properties.hasOwnProperty(propname)) expandProperties[propname] = properties[propname];\n      }\n    }\n  };\n\n  mraid.useCustomClose = function(shouldUseCustomClose) {\n    expandProperties.useCustomClose = shouldUseCustomClose;\n    hasSetCustomClose = true;\n    bridge.executeNativeCall(\'usecustomclose\', \'shouldUseCustomClose\', shouldUseCustomClose);\n  };\n\n  // MRAID 2.0 APIs ////////////////////////////////////////////////////////////////////////////////\n\n  mraid.createCalendarEvent = function(parameters) {\n    CalendarEventParser.initialize(parameters);\n    if (CalendarEventParser.parse()) {\n      bridge.executeNativeCall.apply(this, CalendarEventParser.arguments);\n    } else {\n      broadcastEvent(EVENTS.ERROR, CalendarEventParser.errors[0], \'createCalendarEvent\');\n    }\n  };\n\n  mraid.supports = function(feature) {\n    return supports[feature];\n  };\n\n  mraid.playVideo = function(uri) {\n    if (!mraid.isViewable()) {\n      broadcastEvent(EVENTS.ERROR, \'playVideo cannot be called until the ad is viewable\', \'playVideo\');\n      return;\n    }\n\n    if (!uri) {\n      broadcastEvent(EVENTS.ERROR, \'playVideo must be called with a valid URI\', \'playVideo\');\n    } else {\n      bridge.executeNativeCall.apply(this, [\'playVideo\', \'uri\', uri]);\n    }\n  };\n\n  mraid.storePicture = function(uri) {\n    if (!mraid.isViewable()) {\n      broadcastEvent(EVENTS.ERROR, \'storePicture cannot be called until the ad is viewable\', \'storePicture\');\n      return;\n    }\n\n    if (!uri) {\n      broadcastEvent(EVENTS.ERROR, \'storePicture must be called with a valid URI\', \'storePicture\');\n    } else {\n      bridge.executeNativeCall.apply(this, [\'storePicture\', \'uri\', uri]);\n    }\n  };\n\n  mraid.resize = function() {\n    bridge.executeNativeCall(\'resize\');\n  };\n\n  mraid.getResizeProperties = function() {\n    bridge.executeNativeCall(\'getResizeProperties\');\n  };\n\n  mraid.setResizeProperties = function(resizeProperties) {\n    bridge.executeNativeCall(\'setResizeProperties\', \'resizeProperties\', resizeProperties);\n  };\n\n  mraid.getCurrentPosition = function() {\n    bridge.executeNativeCall(\'getCurrentPosition\');\n  };\n\n  mraid.getDefaultPosition = function() {\n    bridge.executeNativeCall(\'getDefaultPosition\');\n  };\n\n  mraid.getMaxSize = function() {\n    bridge.executeNativeCall(\'getMaxSize\');\n  };\n\n  mraid.getScreenSize = function() {\n    bridge.executeNativeCall(\'getScreenSize\');\n  };\n\n  var CalendarEventParser = {\n    initialize: function(parameters) {\n      this.parameters = parameters;\n      this.errors = [];\n      this.arguments = [\'createCalendarEvent\'];\n    },\n\n    parse: function() {\n      if (!this.parameters) {\n        this.errors.push(\'The object passed to createCalendarEvent cannot be null.\');\n      } else {\n        this.parseDescription();\n        this.parseLocation();\n        this.parseSummary();\n        this.parseStartAndEndDates();\n        this.parseReminder();\n        this.parseRecurrence();\n        this.parseTransparency();\n      }\n\n      var errorCount = this.errors.length;\n      if (errorCount) {\n        this.arguments.length = 0;\n      }\n\n      return (errorCount === 0);\n    },\n\n    parseDescription: function() {\n      this._processStringValue(\'description\');\n    },\n\n    parseLocation: function() {\n      this._processStringValue(\'location\');\n    },\n\n    parseSummary: function() {\n      this._processStringValue(\'summary\');\n    },\n\n    parseStartAndEndDates: function() {\n      this._processDateValue(\'start\');\n      this._processDateValue(\'end\');\n    },\n\n    parseReminder: function() {\n      var reminder = this._getParameter(\'reminder\');\n      if (!reminder) {\n        return;\n      }\n\n      if (reminder < 0) {\n        this.arguments.push(\'relativeReminder\');\n        this.arguments.push(parseInt(reminder) / 1000);\n      } else {\n        this.arguments.push(\'absoluteReminder\');\n        this.arguments.push(reminder);\n      }\n    },\n\n    parseRecurrence: function() {\n      var recurrenceDict = this._getParameter(\'recurrence\');\n      if (!recurrenceDict) {\n        return;\n      }\n\n      this.parseRecurrenceInterval(recurrenceDict);\n      this.parseRecurrenceFrequency(recurrenceDict);\n      this.parseRecurrenceEndDate(recurrenceDict);\n      this.parseRecurrenceArrayValue(recurrenceDict, \'daysInWeek\');\n      this.parseRecurrenceArrayValue(recurrenceDict, \'daysInMonth\');\n      this.parseRecurrenceArrayValue(recurrenceDict, \'daysInYear\');\n      this.parseRecurrenceArrayValue(recurrenceDict, \'monthsInYear\');\n    },\n\n    parseTransparency: function() {\n      var validValues = [\'opaque\', \'transparent\'];\n\n      if (this.parameters.hasOwnProperty(\'transparency\')) {\n        var transparency = this.parameters[\'transparency\'];\n        if (contains(transparency, validValues)) {\n          this.arguments.push(\'transparency\');\n          this.arguments.push(transparency);\n        } else {\n          this.errors.push(\'transparency must be opaque or transparent\');\n        }\n      }\n    },\n\n    parseRecurrenceArrayValue: function(recurrenceDict, kind) {\n      if (recurrenceDict.hasOwnProperty(kind)) {\n        var array = recurrenceDict[kind];\n        if (!array || !(array instanceof Array)) {\n          this.errors.push(kind + \' must be an array.\');\n        } else {\n          var arrayStr = array.join(\',\');\n          this.arguments.push(kind);\n          this.arguments.push(arrayStr);\n        }\n      }\n    },\n\n    parseRecurrenceInterval: function(recurrenceDict) {\n      if (recurrenceDict.hasOwnProperty(\'interval\')) {\n        var interval = recurrenceDict[\'interval\'];\n        if (!interval) {\n          this.errors.push(\'Recurrence interval cannot be null.\');\n        } else {\n          this.arguments.push(\'interval\');\n          this.arguments.push(interval);\n        }\n      } else {\n        // If a recurrence rule was specified without an interval, use a default value of 1.\n        this.arguments.push(\'interval\');\n        this.arguments.push(1);\n      }\n    },\n\n    parseRecurrenceFrequency: function(recurrenceDict) {\n      if (recurrenceDict.hasOwnProperty(\'frequency\')) {\n        var frequency = recurrenceDict[\'frequency\'];\n        var validFrequencies = [\'daily\', \'weekly\', \'monthly\', \'yearly\'];\n        if (contains(frequency, validFrequencies)) {\n          this.arguments.push(\'frequency\');\n          this.arguments.push(frequency);\n        } else {\n          this.errors.push(\'Recurrence frequency must be one of: \"daily\", \"weekly\", \"monthly\", \"yearly\".\');\n        }\n      }\n    },\n\n    parseRecurrenceEndDate: function(recurrenceDict) {\n      var expires = recurrenceDict[\'expires\'];\n\n      if (!expires) {\n        return;\n      }\n\n      this.arguments.push(\'expires\');\n      this.arguments.push(expires);\n    },\n\n    _getParameter: function(key) {\n      if (this.parameters.hasOwnProperty(key)) {\n        return this.parameters[key];\n      }\n\n      return null;\n    },\n\n    _processStringValue: function(kind) {\n      if (this.parameters.hasOwnProperty(kind)) {\n        var value = this.parameters[kind];\n        this.arguments.push(kind);\n        this.arguments.push(value);\n      }\n    },\n\n    _processDateValue: function(kind) {\n      if (this.parameters.hasOwnProperty(kind)) {\n        var dateString = this._getParameter(kind);\n        this.arguments.push(kind);\n        this.arguments.push(dateString);\n      }\n    },\n  };\n}());\n</script>"

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    move-object v0, p0

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/adsdk/sdk/mraid/MraidView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 5

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "javascript:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-super {p0, p1}, Lcom/adsdk/sdk/mraid/BaseWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/adsdk/sdk/mraid/HttpClientFactory;->create()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v1

    const-string v0, ""

    :try_start_0
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    const-string v3, "User-Agent"

    const-string v4, "http.agent"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/adsdk/sdk/mraid/Strings;->fromStream(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    :cond_2
    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/mraid/MraidView;->loadHtmlData(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "MoPub"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Mraid loadUrl failed (IllegalArgumentException): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/adsdk/sdk/mraid/MraidView;->notifyOnFailureListener()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-direct {p0}, Lcom/adsdk/sdk/mraid/MraidView;->notifyOnFailureListener()V

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-direct {p0}, Lcom/adsdk/sdk/mraid/MraidView;->notifyOnFailureListener()V

    goto :goto_0
.end method

.method public onResetUserClick()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adsdk/sdk/mraid/MraidView;->mClicked:Z

    return-void
.end method

.method public onUserClick()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adsdk/sdk/mraid/MraidView;->mClicked:Z

    return-void
.end method

.method setMraidDisplayController(Lcom/adsdk/sdk/mraid/MraidDisplayController;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lcom/adsdk/sdk/mraid/MraidView;->mDisplayController:Lcom/adsdk/sdk/mraid/MraidDisplayController;

    return-void
.end method

.method public setMraidListener(Lcom/adsdk/sdk/mraid/MraidView$MraidListener;)V
    .locals 1

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidView;->mListenerInfo:Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;

    invoke-static {v0, p1}, Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;->access$1(Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;Lcom/adsdk/sdk/mraid/MraidView$MraidListener;)V

    return-void
.end method

.method public setOnCloseButtonStateChange(Lcom/adsdk/sdk/mraid/MraidView$OnCloseButtonStateChangeListener;)V
    .locals 1

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidView;->mListenerInfo:Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;

    invoke-static {v0, p1}, Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;->access$2(Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;Lcom/adsdk/sdk/mraid/MraidView$OnCloseButtonStateChangeListener;)V

    return-void
.end method

.method public setOnOpenListener(Lcom/adsdk/sdk/mraid/MraidView$OnOpenListener;)V
    .locals 1

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidView;->mListenerInfo:Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;

    invoke-static {v0, p1}, Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;->access$4(Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;Lcom/adsdk/sdk/mraid/MraidView$OnOpenListener;)V

    return-void
.end method

.method public wasClicked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/adsdk/sdk/mraid/MraidView;->mClicked:Z

    return v0
.end method
