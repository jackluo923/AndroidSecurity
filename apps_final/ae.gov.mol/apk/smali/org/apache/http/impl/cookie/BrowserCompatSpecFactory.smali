.class public Lorg/apache/http/impl/cookie/BrowserCompatSpecFactory;
.super Ljava/lang/Object;
.source "BrowserCompatSpecFactory.java"

# interfaces
.implements Lorg/apache/http/cookie/CookieSpecFactory;


# annotations
.annotation build Lorg/apache/http/annotation/Immutable;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newInstance(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/cookie/CookieSpec;
    .locals 3
    .param p1, "params"    # Lorg/apache/http/params/HttpParams;

    .prologue
    .line 55
    if-eqz p1, :cond_1

    .line 57
    const/4 v1, 0x0

    .line 58
    .local v1, "patterns":[Ljava/lang/String;
    const-string v2, "http.protocol.cookie-datepatterns"

    invoke-interface {p1, v2}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 60
    .local v0, "param":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    if-eqz v0, :cond_0

    .line 61
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    new-array v1, v2, [Ljava/lang/String;

    .line 62
    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "patterns":[Ljava/lang/String;
    check-cast v1, [Ljava/lang/String;

    .line 64
    .restart local v1    # "patterns":[Ljava/lang/String;
    :cond_0
    new-instance v2, Lorg/apache/http/impl/cookie/BrowserCompatSpec;

    invoke-direct {v2, v1}, Lorg/apache/http/impl/cookie/BrowserCompatSpec;-><init>([Ljava/lang/String;)V

    .line 66
    .end local v0    # "param":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    .end local v1    # "patterns":[Ljava/lang/String;
    :goto_0
    return-object v2

    :cond_1
    new-instance v2, Lorg/apache/http/impl/cookie/BrowserCompatSpec;

    invoke-direct {v2}, Lorg/apache/http/impl/cookie/BrowserCompatSpec;-><init>()V

    goto :goto_0
.end method
