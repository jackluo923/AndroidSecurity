.class public Lcom/inmobi/androidsdk/impl/imai/db/ClickData;
.super Ljava/lang/Object;


# instance fields
.field private a:J

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:I

.field private e:Z

.field private f:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZI)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/inmobi/androidsdk/impl/imai/IMAICore;->getRandomNumber()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/androidsdk/impl/imai/db/ClickData;->setClickId(J)V

    invoke-virtual {p0, p1}, Lcom/inmobi/androidsdk/impl/imai/db/ClickData;->setClickUrl(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/inmobi/androidsdk/impl/imai/db/ClickData;->setFollowRedirect(Z)V

    invoke-virtual {p0, p3}, Lcom/inmobi/androidsdk/impl/imai/db/ClickData;->setPingWv(Z)V

    invoke-virtual {p0, p4}, Lcom/inmobi/androidsdk/impl/imai/db/ClickData;->setRetryCount(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/androidsdk/impl/imai/db/ClickData;->setTimestamp(J)V

    return-void
.end method


# virtual methods
.method public getClickId()J
    .locals 2

    iget-wide v0, p0, Lcom/inmobi/androidsdk/impl/imai/db/ClickData;->a:J

    return-wide v0
.end method

.method public getClickUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/imai/db/ClickData;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getRetryCount()I
    .locals 1

    iget v0, p0, Lcom/inmobi/androidsdk/impl/imai/db/ClickData;->d:I

    return v0
.end method

.method public getTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/inmobi/androidsdk/impl/imai/db/ClickData;->f:J

    return-wide v0
.end method

.method public isFollowRedirects()Z
    .locals 1

    iget-boolean v0, p0, Lcom/inmobi/androidsdk/impl/imai/db/ClickData;->e:Z

    return v0
.end method

.method public isPingWv()Z
    .locals 1

    iget-boolean v0, p0, Lcom/inmobi/androidsdk/impl/imai/db/ClickData;->c:Z

    return v0
.end method

.method public setClickId(J)V
    .locals 0

    iput-wide p1, p0, Lcom/inmobi/androidsdk/impl/imai/db/ClickData;->a:J

    return-void
.end method

.method public setClickUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/imai/db/ClickData;->b:Ljava/lang/String;

    return-void
.end method

.method public setFollowRedirect(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/inmobi/androidsdk/impl/imai/db/ClickData;->e:Z

    return-void
.end method

.method public setPingWv(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/inmobi/androidsdk/impl/imai/db/ClickData;->c:Z

    return-void
.end method

.method public setRetryCount(I)V
    .locals 0

    iput p1, p0, Lcom/inmobi/androidsdk/impl/imai/db/ClickData;->d:I

    return-void
.end method

.method public setTimestamp(J)V
    .locals 0

    iput-wide p1, p0, Lcom/inmobi/androidsdk/impl/imai/db/ClickData;->f:J

    return-void
.end method
