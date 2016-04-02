.class public Lorg/apache/http/impl/cookie/BestMatchSpecFactory;
.super Ljava/lang/Object;
.source "BestMatchSpecFactory.java"

# interfaces
.implements Lorg/apache/http/cookie/CookieSpecFactory;


# annotations
.annotation build Lorg/apache/http/annotation/Immutable;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newInstance(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/cookie/CookieSpec;
    .locals 5
    .param p1, "params"    # Lorg/apache/http/params/HttpParams;

    .prologue
    .line 56
    if-eqz p1, :cond_1

    .line 58
    const/4 v1, 0x0

    .line 59
    .local v1, "patterns":[Ljava/lang/String;
    const-string v3, "http.protocol.cookie-datepatterns"

    invoke-interface {p1, v3}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 61
    .local v0, "param":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    if-eqz v0, :cond_0

    .line 62
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v3

    new-array v1, v3, [Ljava/lang/String;

    .line 63
    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "patterns":[Ljava/lang/String;
    check-cast v1, [Ljava/lang/String;

    .line 65
    .restart local v1    # "patterns":[Ljava/lang/String;
    :cond_0
    const-string v3, "http.protocol.single-cookie-header"

    const/4 v4, 0x0

    invoke-interface {p1, v3, v4}, Lorg/apache/http/params/HttpParams;->getBooleanParameter(Ljava/lang/String;Z)Z

    move-result v2

    .line 68
    .local v2, "singleHeader":Z
    new-instance v3, Lorg/apache/http/impl/cookie/BestMatchSpec;

    invoke-direct {v3, v1, v2}, Lorg/apache/http/impl/cookie/BestMatchSpec;-><init>([Ljava/lang/String;Z)V

    .line 70
    .end local v0    # "param":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    .end local v1    # "patterns":[Ljava/lang/String;
    .end local v2    # "singleHeader":Z
    :goto_0
    return-object v3

    :cond_1
    new-instance v3, Lorg/apache/http/impl/cookie/BestMatchSpec;

    invoke-direct {v3}, Lorg/apache/http/impl/cookie/BestMatchSpec;-><init>()V

    goto :goto_0
.end method
