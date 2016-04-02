.class public Lcom/inmobi/commons/ads/cache/AdData;
.super Ljava/lang/Object;


# instance fields
.field private a:J

.field private b:Ljava/lang/String;

.field private c:J

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdId()J
    .locals 2

    iget-wide v0, p0, Lcom/inmobi/commons/ads/cache/AdData;->a:J

    return-wide v0
.end method

.method public getAdType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/commons/ads/cache/AdData;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/commons/ads/cache/AdData;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/commons/ads/cache/AdData;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/inmobi/commons/ads/cache/AdData;->c:J

    return-wide v0
.end method

.method public setAdId(J)V
    .locals 0

    iput-wide p1, p0, Lcom/inmobi/commons/ads/cache/AdData;->a:J

    return-void
.end method

.method public setAdType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inmobi/commons/ads/cache/AdData;->e:Ljava/lang/String;

    return-void
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inmobi/commons/ads/cache/AdData;->b:Ljava/lang/String;

    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inmobi/commons/ads/cache/AdData;->d:Ljava/lang/String;

    return-void
.end method

.method public setTimestamp(J)V
    .locals 0

    iput-wide p1, p0, Lcom/inmobi/commons/ads/cache/AdData;->c:J

    return-void
.end method
