.class public abstract Lcom/adsdk/sdk/customevents/CustomEventFullscreen;
.super Ljava/lang/Object;


# instance fields
.field protected listener:Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;

.field protected trackingPixel:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract loadFullscreen(Landroid/content/Context;Lcom/adsdk/sdk/customevents/CustomEventFullscreen$CustomEventFullscreenListener;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method protected reportImpression()V
    .locals 2

    new-instance v0, Lcom/adsdk/sdk/customevents/CustomEventFullscreen$1;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/customevents/CustomEventFullscreen$1;-><init>(Lcom/adsdk/sdk/customevents/CustomEventFullscreen;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public abstract showFullscreen()V
.end method
