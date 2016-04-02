.class final enum Lcom/adsdk/sdk/mraid/BaseInterstitialActivity$JavaScriptWebViewCallbacks;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/adsdk/sdk/mraid/BaseInterstitialActivity$JavaScriptWebViewCallbacks;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/adsdk/sdk/mraid/BaseInterstitialActivity$JavaScriptWebViewCallbacks;

.field public static final enum WEB_VIEW_DID_APPEAR:Lcom/adsdk/sdk/mraid/BaseInterstitialActivity$JavaScriptWebViewCallbacks;

.field public static final enum WEB_VIEW_DID_CLOSE:Lcom/adsdk/sdk/mraid/BaseInterstitialActivity$JavaScriptWebViewCallbacks;


# instance fields
.field private mUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/adsdk/sdk/mraid/BaseInterstitialActivity$JavaScriptWebViewCallbacks;

    const-string v1, "WEB_VIEW_DID_APPEAR"

    const-string v2, "javascript:webviewDidAppear();"

    invoke-direct {v0, v1, v3, v2}, Lcom/adsdk/sdk/mraid/BaseInterstitialActivity$JavaScriptWebViewCallbacks;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/adsdk/sdk/mraid/BaseInterstitialActivity$JavaScriptWebViewCallbacks;->WEB_VIEW_DID_APPEAR:Lcom/adsdk/sdk/mraid/BaseInterstitialActivity$JavaScriptWebViewCallbacks;

    new-instance v0, Lcom/adsdk/sdk/mraid/BaseInterstitialActivity$JavaScriptWebViewCallbacks;

    const-string v1, "WEB_VIEW_DID_CLOSE"

    const-string v2, "javascript:webviewDidClose();"

    invoke-direct {v0, v1, v4, v2}, Lcom/adsdk/sdk/mraid/BaseInterstitialActivity$JavaScriptWebViewCallbacks;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/adsdk/sdk/mraid/BaseInterstitialActivity$JavaScriptWebViewCallbacks;->WEB_VIEW_DID_CLOSE:Lcom/adsdk/sdk/mraid/BaseInterstitialActivity$JavaScriptWebViewCallbacks;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/adsdk/sdk/mraid/BaseInterstitialActivity$JavaScriptWebViewCallbacks;

    sget-object v1, Lcom/adsdk/sdk/mraid/BaseInterstitialActivity$JavaScriptWebViewCallbacks;->WEB_VIEW_DID_APPEAR:Lcom/adsdk/sdk/mraid/BaseInterstitialActivity$JavaScriptWebViewCallbacks;

    aput-object v1, v0, v3

    sget-object v1, Lcom/adsdk/sdk/mraid/BaseInterstitialActivity$JavaScriptWebViewCallbacks;->WEB_VIEW_DID_CLOSE:Lcom/adsdk/sdk/mraid/BaseInterstitialActivity$JavaScriptWebViewCallbacks;

    aput-object v1, v0, v4

    sput-object v0, Lcom/adsdk/sdk/mraid/BaseInterstitialActivity$JavaScriptWebViewCallbacks;->ENUM$VALUES:[Lcom/adsdk/sdk/mraid/BaseInterstitialActivity$JavaScriptWebViewCallbacks;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/adsdk/sdk/mraid/BaseInterstitialActivity$JavaScriptWebViewCallbacks;->mUrl:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adsdk/sdk/mraid/BaseInterstitialActivity$JavaScriptWebViewCallbacks;
    .locals 1

    const-class v0, Lcom/adsdk/sdk/mraid/BaseInterstitialActivity$JavaScriptWebViewCallbacks;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/adsdk/sdk/mraid/BaseInterstitialActivity$JavaScriptWebViewCallbacks;

    return-object v0
.end method

.method public static values()[Lcom/adsdk/sdk/mraid/BaseInterstitialActivity$JavaScriptWebViewCallbacks;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/adsdk/sdk/mraid/BaseInterstitialActivity$JavaScriptWebViewCallbacks;->ENUM$VALUES:[Lcom/adsdk/sdk/mraid/BaseInterstitialActivity$JavaScriptWebViewCallbacks;

    array-length v1, v0

    new-array v2, v1, [Lcom/adsdk/sdk/mraid/BaseInterstitialActivity$JavaScriptWebViewCallbacks;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method protected final getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/BaseInterstitialActivity$JavaScriptWebViewCallbacks;->mUrl:Ljava/lang/String;

    return-object v0
.end method
