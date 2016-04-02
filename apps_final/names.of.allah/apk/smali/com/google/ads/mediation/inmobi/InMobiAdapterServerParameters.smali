.class public Lcom/google/ads/mediation/inmobi/InMobiAdapterServerParameters;
.super Lcom/google/ads/mediation/g;


# instance fields
.field public appId:Ljava/lang/String;
    .annotation runtime Lcom/google/ads/mediation/i;
        a = "pubid"
    .end annotation
.end field

.field public isUDIDHashAllowed:Ljava/lang/String;
    .annotation runtime Lcom/google/ads/mediation/i;
        a = "isUDIDHashAllowed"
        b = false
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/ads/mediation/g;-><init>()V

    const-string v0, "true"

    iput-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapterServerParameters;->isUDIDHashAllowed:Ljava/lang/String;

    return-void
.end method
