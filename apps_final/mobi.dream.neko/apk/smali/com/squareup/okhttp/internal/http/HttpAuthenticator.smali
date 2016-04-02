.class public final Lcom/squareup/okhttp/internal/http/HttpAuthenticator;
.super Ljava/lang/Object;
.source "HttpAuthenticator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/okhttp/internal/http/HttpAuthenticator$Challenge;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method private static getConnectToInetAddress(Ljava/net/Proxy;Ljava/net/URL;)Ljava/net/InetAddress;
    .locals 2
    .param p0, "proxy"    # Ljava/net/Proxy;
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    goto :goto_0
.end method

.method private static getCredentials(Lcom/squareup/okhttp/internal/http/RawHeaders;Ljava/lang/String;Ljava/net/Proxy;Ljava/net/URL;)Ljava/lang/String;
    .locals 16
    .param p0, "responseHeaders"    # Lcom/squareup/okhttp/internal/http/RawHeaders;
    .param p1, "challengeHeader"    # Ljava/lang/String;
    .param p2, "proxy"    # Ljava/net/Proxy;
    .param p3, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    invoke-static/range {p0 .. p1}, Lcom/squareup/okhttp/internal/http/HttpAuthenticator;->parseChallenges(Lcom/squareup/okhttp/internal/http/RawHeaders;Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    .line 72
    .local v11, "challenges":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/http/HttpAuthenticator$Challenge;>;"
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    const/4 v0, 0x0

    .line 100
    :goto_0
    return-object v0

    .line 76
    :cond_0
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/squareup/okhttp/internal/http/HttpAuthenticator$Challenge;

    .line 79
    .local v10, "challenge":Lcom/squareup/okhttp/internal/http/HttpAuthenticator$Challenge;
    invoke-virtual/range {p0 .. p0}, Lcom/squareup/okhttp/internal/http/RawHeaders;->getResponseCode()I

    move-result v0

    const/16 v1, 0x197

    if-ne v0, v1, :cond_2

    .line 80
    invoke-virtual/range {p2 .. p2}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v14

    check-cast v14, Ljava/net/InetSocketAddress;

    .line 81
    .local v14, "proxyAddress":Ljava/net/InetSocketAddress;
    invoke-virtual {v14}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    invoke-static/range {p2 .. p3}, Lcom/squareup/okhttp/internal/http/HttpAuthenticator;->getConnectToInetAddress(Ljava/net/Proxy;Ljava/net/URL;)Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v14}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    invoke-virtual/range {p3 .. p3}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v10, Lcom/squareup/okhttp/internal/http/HttpAuthenticator$Challenge;->realm:Ljava/lang/String;

    iget-object v5, v10, Lcom/squareup/okhttp/internal/http/HttpAuthenticator$Challenge;->scheme:Ljava/lang/String;

    sget-object v7, Ljava/net/Authenticator$RequestorType;->PROXY:Ljava/net/Authenticator$RequestorType;

    move-object/from16 v6, p3

    invoke-static/range {v0 .. v7}, Ljava/net/Authenticator;->requestPasswordAuthentication(Ljava/lang/String;Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/net/Authenticator$RequestorType;)Ljava/net/PasswordAuthentication;

    move-result-object v8

    .line 89
    .end local v14    # "proxyAddress":Ljava/net/InetSocketAddress;
    .local v8, "auth":Ljava/net/PasswordAuthentication;
    :goto_1
    if-eqz v8, :cond_1

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Ljava/net/PasswordAuthentication;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/net/PasswordAuthentication;->getPassword()[C

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 95
    .local v15, "usernameAndPassword":Ljava/lang/String;
    const-string v0, "ISO-8859-1"

    invoke-virtual {v15, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    .line 96
    .local v9, "bytes":[B
    invoke-static {v9}, Lcom/squareup/okhttp/internal/Base64;->encode([B)Ljava/lang/String;

    move-result-object v12

    .line 97
    .local v12, "encoded":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v10, Lcom/squareup/okhttp/internal/http/HttpAuthenticator$Challenge;->scheme:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 85
    .end local v8    # "auth":Ljava/net/PasswordAuthentication;
    .end local v9    # "bytes":[B
    .end local v12    # "encoded":Ljava/lang/String;
    .end local v15    # "usernameAndPassword":Ljava/lang/String;
    :cond_2
    invoke-virtual/range {p3 .. p3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static/range {p2 .. p3}, Lcom/squareup/okhttp/internal/http/HttpAuthenticator;->getConnectToInetAddress(Ljava/net/Proxy;Ljava/net/URL;)Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Ljava/net/URL;->getPort()I

    move-result v2

    invoke-virtual/range {p3 .. p3}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v10, Lcom/squareup/okhttp/internal/http/HttpAuthenticator$Challenge;->realm:Ljava/lang/String;

    iget-object v5, v10, Lcom/squareup/okhttp/internal/http/HttpAuthenticator$Challenge;->scheme:Ljava/lang/String;

    sget-object v7, Ljava/net/Authenticator$RequestorType;->SERVER:Ljava/net/Authenticator$RequestorType;

    move-object/from16 v6, p3

    invoke-static/range {v0 .. v7}, Ljava/net/Authenticator;->requestPasswordAuthentication(Ljava/lang/String;Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/net/Authenticator$RequestorType;)Ljava/net/PasswordAuthentication;

    move-result-object v8

    .restart local v8    # "auth":Ljava/net/PasswordAuthentication;
    goto :goto_1

    .line 100
    .end local v8    # "auth":Ljava/net/PasswordAuthentication;
    .end local v10    # "challenge":Lcom/squareup/okhttp/internal/http/HttpAuthenticator$Challenge;
    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private static parseChallenges(Lcom/squareup/okhttp/internal/http/RawHeaders;Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .param p0, "responseHeaders"    # Lcom/squareup/okhttp/internal/http/RawHeaders;
    .param p1, "challengeHeader"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/okhttp/internal/http/RawHeaders;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/internal/http/HttpAuthenticator$Challenge;",
            ">;"
        }
    .end annotation

    .prologue
    .line 119
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 120
    .local v4, "result":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/http/HttpAuthenticator$Challenge;>;"
    const/4 v0, 0x0

    .local v0, "h":I
    :goto_0
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/RawHeaders;->length()I

    move-result v8

    if-ge v0, v8, :cond_2

    .line 121
    invoke-virtual {p0, v0}, Lcom/squareup/okhttp/internal/http/RawHeaders;->getFieldName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 120
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 124
    :cond_1
    invoke-virtual {p0, v0}, Lcom/squareup/okhttp/internal/http/RawHeaders;->getValue(I)Ljava/lang/String;

    move-result-object v7

    .line 125
    .local v7, "value":Ljava/lang/String;
    const/4 v1, 0x0

    .line 126
    .local v1, "pos":I
    :goto_1
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v1, v8, :cond_0

    .line 127
    move v6, v1

    .line 128
    .local v6, "tokenStart":I
    const-string v8, " "

    invoke-static {v7, v1, v8}, Lcom/squareup/okhttp/internal/http/HeaderParser;->skipUntil(Ljava/lang/String;ILjava/lang/String;)I

    move-result v1

    .line 130
    invoke-virtual {v7, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 131
    .local v5, "scheme":Ljava/lang/String;
    invoke-static {v7, v1}, Lcom/squareup/okhttp/internal/http/HeaderParser;->skipWhitespace(Ljava/lang/String;I)I

    move-result v1

    .line 137
    const-string v8, "realm=\""

    const/4 v9, 0x0

    const-string v10, "realm=\""

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v7, v1, v8, v9, v10}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 141
    const-string v8, "realm=\""

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v1, v8

    .line 142
    move v3, v1

    .line 143
    .local v3, "realmStart":I
    const-string v8, "\""

    invoke-static {v7, v1, v8}, Lcom/squareup/okhttp/internal/http/HeaderParser;->skipUntil(Ljava/lang/String;ILjava/lang/String;)I

    move-result v1

    .line 144
    invoke-virtual {v7, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 145
    .local v2, "realm":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    .line 146
    const-string v8, ","

    invoke-static {v7, v1, v8}, Lcom/squareup/okhttp/internal/http/HeaderParser;->skipUntil(Ljava/lang/String;ILjava/lang/String;)I

    move-result v1

    .line 147
    add-int/lit8 v1, v1, 0x1

    .line 148
    invoke-static {v7, v1}, Lcom/squareup/okhttp/internal/http/HeaderParser;->skipWhitespace(Ljava/lang/String;I)I

    move-result v1

    .line 149
    new-instance v8, Lcom/squareup/okhttp/internal/http/HttpAuthenticator$Challenge;

    invoke-direct {v8, v5, v2}, Lcom/squareup/okhttp/internal/http/HttpAuthenticator$Challenge;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 152
    .end local v1    # "pos":I
    .end local v2    # "realm":Ljava/lang/String;
    .end local v3    # "realmStart":I
    .end local v5    # "scheme":Ljava/lang/String;
    .end local v6    # "tokenStart":I
    .end local v7    # "value":Ljava/lang/String;
    :cond_2
    return-object v4
.end method

.method public static processAuthHeader(ILcom/squareup/okhttp/internal/http/RawHeaders;Lcom/squareup/okhttp/internal/http/RawHeaders;Ljava/net/Proxy;Ljava/net/URL;)Z
    .locals 5
    .param p0, "responseCode"    # I
    .param p1, "responseHeaders"    # Lcom/squareup/okhttp/internal/http/RawHeaders;
    .param p2, "successorRequestHeaders"    # Lcom/squareup/okhttp/internal/http/RawHeaders;
    .param p3, "proxy"    # Ljava/net/Proxy;
    .param p4, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x197

    .line 46
    if-eq p0, v4, :cond_0

    const/16 v3, 0x191

    if-eq p0, v3, :cond_0

    .line 47
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 51
    :cond_0
    if-ne p0, v4, :cond_1

    const-string v0, "Proxy-Authenticate"

    .line 53
    .local v0, "challengeHeader":Ljava/lang/String;
    :goto_0
    invoke-static {p1, v0, p3, p4}, Lcom/squareup/okhttp/internal/http/HttpAuthenticator;->getCredentials(Lcom/squareup/okhttp/internal/http/RawHeaders;Ljava/lang/String;Ljava/net/Proxy;Ljava/net/URL;)Ljava/lang/String;

    move-result-object v1

    .line 54
    .local v1, "credentials":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 55
    const/4 v3, 0x0

    .line 61
    :goto_1
    return v3

    .line 51
    .end local v0    # "challengeHeader":Ljava/lang/String;
    .end local v1    # "credentials":Ljava/lang/String;
    :cond_1
    const-string v0, "WWW-Authenticate"

    goto :goto_0

    .line 59
    .restart local v0    # "challengeHeader":Ljava/lang/String;
    .restart local v1    # "credentials":Ljava/lang/String;
    :cond_2
    if-ne p0, v4, :cond_3

    const-string v2, "Proxy-Authorization"

    .line 60
    .local v2, "fieldName":Ljava/lang/String;
    :goto_2
    invoke-virtual {p2, v2, v1}, Lcom/squareup/okhttp/internal/http/RawHeaders;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const/4 v3, 0x1

    goto :goto_1

    .line 59
    .end local v2    # "fieldName":Ljava/lang/String;
    :cond_3
    const-string v2, "Authorization"

    goto :goto_2
.end method
