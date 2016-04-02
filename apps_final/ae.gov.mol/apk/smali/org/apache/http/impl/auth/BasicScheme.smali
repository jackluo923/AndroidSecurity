.class public Lorg/apache/http/impl/auth/BasicScheme;
.super Lorg/apache/http/impl/auth/RFC2617Scheme;
.source "BasicScheme.java"


# annotations
.annotation build Lorg/apache/http/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private complete:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Lorg/apache/http/impl/auth/RFC2617Scheme;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/http/impl/auth/BasicScheme;->complete:Z

    .line 66
    return-void
.end method

.method public static authenticate(Lorg/apache/http/auth/Credentials;Ljava/lang/String;Z)Lorg/apache/http/Header;
    .locals 5
    .param p0, "credentials"    # Lorg/apache/http/auth/Credentials;
    .param p1, "charset"    # Ljava/lang/String;
    .param p2, "proxy"    # Z

    .prologue
    .line 151
    if-nez p0, :cond_0

    .line 152
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Credentials may not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 154
    :cond_0
    if-nez p1, :cond_1

    .line 155
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "charset may not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 158
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 159
    .local v2, "tmp":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Lorg/apache/http/auth/Credentials;->getUserPrincipal()Ljava/security/Principal;

    move-result-object v3

    invoke-interface {v3}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-interface {p0}, Lorg/apache/http/auth/Credentials;->getPassword()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    const-string v3, "null"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lorg/apache/http/util/EncodingUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([B)[B

    move-result-object v0

    .line 166
    .local v0, "base64password":[B
    new-instance v1, Lorg/apache/http/util/CharArrayBuffer;

    const/16 v3, 0x20

    invoke-direct {v1, v3}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 167
    .local v1, "buffer":Lorg/apache/http/util/CharArrayBuffer;
    if-eqz p2, :cond_3

    .line 168
    const-string v3, "Proxy-Authorization"

    invoke-virtual {v1, v3}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 172
    :goto_1
    const-string v3, ": Basic "

    invoke-virtual {v1, v3}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 173
    const/4 v3, 0x0

    array-length v4, v0

    invoke-virtual {v1, v0, v3, v4}, Lorg/apache/http/util/CharArrayBuffer;->append([BII)V

    .line 175
    new-instance v3, Lorg/apache/http/message/BufferedHeader;

    invoke-direct {v3, v1}, Lorg/apache/http/message/BufferedHeader;-><init>(Lorg/apache/http/util/CharArrayBuffer;)V

    return-object v3

    .line 161
    .end local v0    # "base64password":[B
    .end local v1    # "buffer":Lorg/apache/http/util/CharArrayBuffer;
    :cond_2
    invoke-interface {p0}, Lorg/apache/http/auth/Credentials;->getPassword()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 170
    .restart local v0    # "base64password":[B
    .restart local v1    # "buffer":Lorg/apache/http/util/CharArrayBuffer;
    :cond_3
    const-string v3, "Authorization"

    invoke-virtual {v1, v3}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public authenticate(Lorg/apache/http/auth/Credentials;Lorg/apache/http/HttpRequest;)Lorg/apache/http/Header;
    .locals 3
    .param p1, "credentials"    # Lorg/apache/http/auth/Credentials;
    .param p2, "request"    # Lorg/apache/http/HttpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/auth/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 127
    if-nez p1, :cond_0

    .line 128
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Credentials may not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 130
    :cond_0
    if-nez p2, :cond_1

    .line 131
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "HTTP request may not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 134
    :cond_1
    invoke-interface {p2}, Lorg/apache/http/HttpRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/http/auth/params/AuthParams;->getCredentialCharset(Lorg/apache/http/params/HttpParams;)Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, "charset":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/http/impl/auth/BasicScheme;->isProxy()Z

    move-result v1

    invoke-static {p1, v0, v1}, Lorg/apache/http/impl/auth/BasicScheme;->authenticate(Lorg/apache/http/auth/Credentials;Ljava/lang/String;Z)Lorg/apache/http/Header;

    move-result-object v1

    return-object v1
.end method

.method public getSchemeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    const-string v0, "basic"

    return-object v0
.end method

.method public isComplete()Z
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Lorg/apache/http/impl/auth/BasicScheme;->complete:Z

    return v0
.end method

.method public isConnectionBased()Z
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    return v0
.end method

.method public processChallenge(Lorg/apache/http/Header;)V
    .locals 1
    .param p1, "header"    # Lorg/apache/http/Header;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/auth/MalformedChallengeException;
        }
    .end annotation

    .prologue
    .line 88
    invoke-super {p0, p1}, Lorg/apache/http/impl/auth/RFC2617Scheme;->processChallenge(Lorg/apache/http/Header;)V

    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/http/impl/auth/BasicScheme;->complete:Z

    .line 90
    return-void
.end method
