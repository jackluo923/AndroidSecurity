.class public abstract Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;
.super Lorg/apache/http/client/methods/HttpRequestBase;
.source "HttpEntityEnclosingRequestBase.java"

# interfaces
.implements Lorg/apache/http/HttpEntityEnclosingRequest;


# annotations
.annotation build Lorg/apache/http/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private entity:Lorg/apache/http/HttpEntity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lorg/apache/http/client/methods/HttpRequestBase;-><init>()V

    .line 52
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 69
    invoke-super {p0}, Lorg/apache/http/client/methods/HttpRequestBase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;

    .line 71
    .local v0, "clone":Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;
    iget-object v1, p0, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->entity:Lorg/apache/http/HttpEntity;

    if-eqz v1, :cond_0

    .line 72
    iget-object v1, p0, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->entity:Lorg/apache/http/HttpEntity;

    invoke-static {v1}, Lorg/apache/http/client/utils/CloneUtils;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/HttpEntity;

    iput-object v1, v0, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->entity:Lorg/apache/http/HttpEntity;

    .line 74
    :cond_0
    return-object v0
.end method

.method public expectContinue()Z
    .locals 3

    .prologue
    .line 63
    const-string v1, "Expect"

    invoke-virtual {p0, v1}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 64
    .local v0, "expect":Lorg/apache/http/Header;
    if-eqz v0, :cond_0

    const-string v1, "100-Continue"

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getEntity()Lorg/apache/http/HttpEntity;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->entity:Lorg/apache/http/HttpEntity;

    return-object v0
.end method

.method public setEntity(Lorg/apache/http/HttpEntity;)V
    .locals 0
    .param p1, "entity"    # Lorg/apache/http/HttpEntity;

    .prologue
    .line 59
    iput-object p1, p0, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->entity:Lorg/apache/http/HttpEntity;

    .line 60
    return-void
.end method
