.class public Lorg/apache/http/auth/NTUserPrincipal;
.super Ljava/lang/Object;
.source "NTUserPrincipal.java"

# interfaces
.implements Ljava/security/Principal;


# annotations
.annotation build Lorg/apache/http/annotation/Immutable;
.end annotation


# instance fields
.field private final domain:Ljava/lang/String;

.field private final ntname:Ljava/lang/String;

.field private final username:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "username"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    if-nez p2, :cond_0

    .line 53
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "User name may not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 55
    :cond_0
    iput-object p2, p0, Lorg/apache/http/auth/NTUserPrincipal;->username:Ljava/lang/String;

    .line 56
    if-eqz p1, :cond_1

    .line 57
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/http/auth/NTUserPrincipal;->domain:Ljava/lang/String;

    .line 61
    :goto_0
    iget-object v1, p0, Lorg/apache/http/auth/NTUserPrincipal;->domain:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/apache/http/auth/NTUserPrincipal;->domain:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .local v0, "buffer":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lorg/apache/http/auth/NTUserPrincipal;->domain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 65
    iget-object v1, p0, Lorg/apache/http/auth/NTUserPrincipal;->username:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/http/auth/NTUserPrincipal;->ntname:Ljava/lang/String;

    .line 70
    .end local v0    # "buffer":Ljava/lang/StringBuilder;
    :goto_1
    return-void

    .line 59
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/http/auth/NTUserPrincipal;->domain:Ljava/lang/String;

    goto :goto_0

    .line 68
    :cond_2
    iget-object v1, p0, Lorg/apache/http/auth/NTUserPrincipal;->username:Ljava/lang/String;

    iput-object v1, p0, Lorg/apache/http/auth/NTUserPrincipal;->ntname:Ljava/lang/String;

    goto :goto_1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 94
    if-nez p1, :cond_1

    .line 103
    :cond_0
    :goto_0
    return v1

    .line 95
    :cond_1
    if-ne p0, p1, :cond_2

    move v1, v2

    goto :goto_0

    .line 96
    :cond_2
    instance-of v3, p1, Lorg/apache/http/auth/NTUserPrincipal;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 97
    check-cast v0, Lorg/apache/http/auth/NTUserPrincipal;

    .line 98
    .local v0, "that":Lorg/apache/http/auth/NTUserPrincipal;
    iget-object v3, p0, Lorg/apache/http/auth/NTUserPrincipal;->username:Ljava/lang/String;

    iget-object v4, v0, Lorg/apache/http/auth/NTUserPrincipal;->username:Ljava/lang/String;

    invoke-static {v3, v4}, Lorg/apache/http/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/apache/http/auth/NTUserPrincipal;->domain:Ljava/lang/String;

    iget-object v4, v0, Lorg/apache/http/auth/NTUserPrincipal;->domain:Ljava/lang/String;

    invoke-static {v3, v4}, Lorg/apache/http/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    .line 100
    goto :goto_0
.end method

.method public getDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lorg/apache/http/auth/NTUserPrincipal;->domain:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lorg/apache/http/auth/NTUserPrincipal;->ntname:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lorg/apache/http/auth/NTUserPrincipal;->username:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 86
    const/16 v0, 0x11

    .line 87
    .local v0, "hash":I
    iget-object v1, p0, Lorg/apache/http/auth/NTUserPrincipal;->username:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/http/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    .line 88
    iget-object v1, p0, Lorg/apache/http/auth/NTUserPrincipal;->domain:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/http/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    .line 89
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lorg/apache/http/auth/NTUserPrincipal;->ntname:Ljava/lang/String;

    return-object v0
.end method
