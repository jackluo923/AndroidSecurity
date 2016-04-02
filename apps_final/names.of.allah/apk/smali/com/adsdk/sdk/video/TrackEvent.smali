.class public Lcom/adsdk/sdk/video/TrackEvent;
.super Ljava/lang/Object;


# instance fields
.field public retries:I

.field public timestamp:J

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/adsdk/sdk/video/TrackEvent;->retries:I

    return-void
.end method
