.class public Lcom/alipay/mobile/common/cache/mem/Entity;
.super Ljava/lang/Object;
.source "Entity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected mGroup:Ljava/lang/String;

.field protected mOwner:Ljava/lang/String;

.field protected mValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    if-nez p1, :cond_0

    .line 29
    const-string/jumbo v0, "-"

    iput-object v0, p0, Lcom/alipay/mobile/common/cache/mem/Entity;->mOwner:Ljava/lang/String;

    .line 33
    :goto_0
    iput-object p2, p0, Lcom/alipay/mobile/common/cache/mem/Entity;->mGroup:Ljava/lang/String;

    .line 34
    iput-object p3, p0, Lcom/alipay/mobile/common/cache/mem/Entity;->mValue:Ljava/lang/Object;

    .line 35
    return-void

    .line 31
    :cond_0
    iput-object p1, p0, Lcom/alipay/mobile/common/cache/mem/Entity;->mOwner:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public authenticate(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 65
    iget-object v2, p0, Lcom/alipay/mobile/common/cache/mem/Entity;->mOwner:Ljava/lang/String;

    const-string/jumbo v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 75
    :cond_0
    :goto_0
    return v0

    .line 69
    :cond_1
    if-nez p1, :cond_2

    .line 70
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "Entity"

    const-string/jumbo v3, "authenticate: owner is null"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 71
    goto :goto_0

    .line 72
    :cond_2
    iget-object v2, p0, Lcom/alipay/mobile/common/cache/mem/Entity;->mOwner:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 75
    goto :goto_0
.end method

.method public getGroup()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alipay/mobile/common/cache/mem/Entity;->mGroup:Ljava/lang/String;

    return-object v0
.end method

.method public getOwner()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alipay/mobile/common/cache/mem/Entity;->mOwner:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lcom/alipay/mobile/common/cache/mem/Entity;->mValue:Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 80
    const-string/jumbo v0, "value: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/alipay/mobile/common/cache/mem/Entity;->mValue:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
