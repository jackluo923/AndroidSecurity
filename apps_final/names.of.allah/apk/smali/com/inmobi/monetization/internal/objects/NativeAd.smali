.class public Lcom/inmobi/monetization/internal/objects/NativeAd;
.super Lcom/inmobi/monetization/IMNative;


# instance fields
.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Lcom/inmobi/monetization/internal/TrackerView;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/inmobi/monetization/IMNative;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/inmobi/monetization/internal/objects/NativeAd;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/inmobi/monetization/internal/objects/NativeAd;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/inmobi/monetization/internal/objects/NativeAd;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/inmobi/monetization/internal/objects/NativeAd;->e:Lcom/inmobi/monetization/internal/TrackerView;

    iput-object p1, p0, Lcom/inmobi/monetization/internal/objects/NativeAd;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/inmobi/monetization/internal/objects/NativeAd;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/inmobi/monetization/internal/objects/NativeAd;->d:Ljava/lang/String;

    return-void
.end method
