.class public Lorg/apache/http/cookie/CookieIdentityComparator;
.super Ljava/lang/Object;
.source "CookieIdentityComparator.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/util/Comparator",
        "<",
        "Lorg/apache/http/cookie/Cookie;",
        ">;"
    }
.end annotation

.annotation build Lorg/apache/http/annotation/Immutable;
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x3dfc6d99bbaa936cL


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 43
    check-cast p1, Lorg/apache/http/cookie/Cookie;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lorg/apache/http/cookie/Cookie;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/http/cookie/CookieIdentityComparator;->compare(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/Cookie;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/Cookie;)I
    .locals 9
    .param p1, "c1"    # Lorg/apache/http/cookie/Cookie;
    .param p2, "c2"    # Lorg/apache/http/cookie/Cookie;

    .prologue
    const/16 v8, 0x2e

    const/4 v7, -0x1

    .line 49
    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    .line 50
    .local v4, "res":I
    if-nez v4, :cond_2

    .line 52
    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, "d1":Ljava/lang/String;
    if-nez v0, :cond_6

    .line 54
    const-string v0, ""

    .line 58
    :cond_0
    :goto_0
    invoke-interface {p2}, Lorg/apache/http/cookie/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v1

    .line 59
    .local v1, "d2":Ljava/lang/String;
    if-nez v1, :cond_7

    .line 60
    const-string v1, ""

    .line 64
    :cond_1
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v4

    .line 66
    .end local v0    # "d1":Ljava/lang/String;
    .end local v1    # "d2":Ljava/lang/String;
    :cond_2
    if-nez v4, :cond_5

    .line 67
    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 68
    .local v2, "p1":Ljava/lang/String;
    if-nez v2, :cond_3

    .line 69
    const-string v2, "/"

    .line 71
    :cond_3
    invoke-interface {p2}, Lorg/apache/http/cookie/Cookie;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 72
    .local v3, "p2":Ljava/lang/String;
    if-nez v3, :cond_4

    .line 73
    const-string v3, "/"

    .line 75
    :cond_4
    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    .line 77
    .end local v2    # "p1":Ljava/lang/String;
    .end local v3    # "p2":Ljava/lang/String;
    :cond_5
    return v4

    .line 55
    .restart local v0    # "d1":Ljava/lang/String;
    :cond_6
    invoke-virtual {v0, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ne v5, v7, :cond_0

    .line 56
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".local"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 61
    .restart local v1    # "d2":Ljava/lang/String;
    :cond_7
    invoke-virtual {v1, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ne v5, v7, :cond_1

    .line 62
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".local"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method
