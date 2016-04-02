.class public Lorg/apache/http/client/protocol/RequestAddCookies;
.super Ljava/lang/Object;
.source "RequestAddCookies.java"

# interfaces
.implements Lorg/apache/http/HttpRequestInterceptor;


# annotations
.annotation build Lorg/apache/http/annotation/Immutable;
.end annotation


# instance fields
.field private final log:Lorg/apache/commons/logging/Log;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/client/protocol/RequestAddCookies;->log:Lorg/apache/commons/logging/Log;

    .line 83
    return-void
.end method


# virtual methods
.method public process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V
    .locals 29
    .param p1, "request"    # Lorg/apache/http/HttpRequest;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    if-nez p1, :cond_0

    .line 88
    new-instance v26, Ljava/lang/IllegalArgumentException;

    const-string v27, "HTTP request may not be null"

    invoke-direct/range {v26 .. v27}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v26

    .line 90
    :cond_0
    if-nez p2, :cond_1

    .line 91
    new-instance v26, Ljava/lang/IllegalArgumentException;

    const-string v27, "HTTP context may not be null"

    invoke-direct/range {v26 .. v27}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v26

    .line 94
    :cond_1
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Lorg/apache/http/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v15

    .line 95
    .local v15, "method":Ljava/lang/String;
    const-string v26, "CONNECT"

    move-object/from16 v0, v26

    invoke-virtual {v15, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_2

    .line 218
    :goto_0
    return-void

    .line 100
    :cond_2
    const-string v26, "http.cookie-store"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/http/client/CookieStore;

    .line 102
    .local v7, "cookieStore":Lorg/apache/http/client/CookieStore;
    if-nez v7, :cond_3

    .line 103
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/client/protocol/RequestAddCookies;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v26, v0

    const-string v27, "Cookie store not available in HTTP context"

    invoke-interface/range {v26 .. v27}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    goto :goto_0

    .line 108
    :cond_3
    const-string v26, "http.cookiespec-registry"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/apache/http/cookie/CookieSpecRegistry;

    .line 110
    .local v20, "registry":Lorg/apache/http/cookie/CookieSpecRegistry;
    if-nez v20, :cond_4

    .line 111
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/client/protocol/RequestAddCookies;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v26, v0

    const-string v27, "CookieSpec registry not available in HTTP context"

    invoke-interface/range {v26 .. v27}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    goto :goto_0

    .line 116
    :cond_4
    const-string v26, "http.target_host"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lorg/apache/http/HttpHost;

    .line 118
    .local v24, "targetHost":Lorg/apache/http/HttpHost;
    if-nez v24, :cond_5

    .line 119
    new-instance v26, Ljava/lang/IllegalStateException;

    const-string v27, "Target host not specified in HTTP context"

    invoke-direct/range {v26 .. v27}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v26

    .line 123
    :cond_5
    const-string v26, "http.connection"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/http/conn/ManagedClientConnection;

    .line 125
    .local v3, "conn":Lorg/apache/http/conn/ManagedClientConnection;
    if-nez v3, :cond_6

    .line 126
    new-instance v26, Ljava/lang/IllegalStateException;

    const-string v27, "Client connection not specified in HTTP context"

    invoke-direct/range {v26 .. v27}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v26

    .line 129
    :cond_6
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lorg/apache/http/client/params/HttpClientParams;->getCookiePolicy(Lorg/apache/http/params/HttpParams;)Ljava/lang/String;

    move-result-object v18

    .line 130
    .local v18, "policy":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/client/protocol/RequestAddCookies;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v26

    if-eqz v26, :cond_7

    .line 131
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/client/protocol/RequestAddCookies;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "CookieSpec selected: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-interface/range {v26 .. v27}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 135
    :cond_7
    move-object/from16 v0, p1

    instance-of v0, v0, Lorg/apache/http/client/methods/HttpUriRequest;

    move/from16 v26, v0

    if-eqz v26, :cond_b

    move-object/from16 v26, p1

    .line 136
    check-cast v26, Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface/range {v26 .. v26}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v21

    .line 146
    .local v21, "requestURI":Ljava/net/URI;
    :goto_1
    invoke-virtual/range {v24 .. v24}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v12

    .line 147
    .local v12, "hostName":Ljava/lang/String;
    invoke-virtual/range {v24 .. v24}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v19

    .line 148
    .local v19, "port":I
    if-gez v19, :cond_8

    .line 151
    const-string v26, "http.scheme-registry"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lorg/apache/http/conn/scheme/SchemeRegistry;

    .line 153
    .local v23, "sr":Lorg/apache/http/conn/scheme/SchemeRegistry;
    if-eqz v23, :cond_c

    .line 154
    invoke-virtual/range {v24 .. v24}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->get(Ljava/lang/String;)Lorg/apache/http/conn/scheme/Scheme;

    move-result-object v22

    .line 155
    .local v22, "scheme":Lorg/apache/http/conn/scheme/Scheme;
    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/apache/http/conn/scheme/Scheme;->resolvePort(I)I

    move-result v19

    .line 161
    .end local v22    # "scheme":Lorg/apache/http/conn/scheme/Scheme;
    .end local v23    # "sr":Lorg/apache/http/conn/scheme/SchemeRegistry;
    :cond_8
    :goto_2
    new-instance v5, Lorg/apache/http/cookie/CookieOrigin;

    invoke-virtual/range {v21 .. v21}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v26

    invoke-interface {v3}, Lorg/apache/http/conn/ManagedClientConnection;->isSecure()Z

    move-result v27

    move/from16 v0, v19

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-direct {v5, v12, v0, v1, v2}, Lorg/apache/http/cookie/CookieOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    .line 168
    .local v5, "cookieOrigin":Lorg/apache/http/cookie/CookieOrigin;
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v26

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/cookie/CookieSpecRegistry;->getCookieSpec(Ljava/lang/String;Lorg/apache/http/params/HttpParams;)Lorg/apache/http/cookie/CookieSpec;

    move-result-object v6

    .line 170
    .local v6, "cookieSpec":Lorg/apache/http/cookie/CookieSpec;
    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {v7}, Lorg/apache/http/client/CookieStore;->getCookies()Ljava/util/List;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 172
    .local v8, "cookies":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 173
    .local v14, "matchedCookies":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    new-instance v17, Ljava/util/Date;

    invoke-direct/range {v17 .. v17}, Ljava/util/Date;-><init>()V

    .line 174
    .local v17, "now":Ljava/util/Date;
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :cond_9
    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_e

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/http/cookie/Cookie;

    .line 175
    .local v4, "cookie":Lorg/apache/http/cookie/Cookie;
    move-object/from16 v0, v17

    invoke-interface {v4, v0}, Lorg/apache/http/cookie/Cookie;->isExpired(Ljava/util/Date;)Z

    move-result v26

    if-nez v26, :cond_d

    .line 176
    invoke-interface {v6, v4, v5}, Lorg/apache/http/cookie/CookieSpec;->match(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)Z

    move-result v26

    if-eqz v26, :cond_9

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/client/protocol/RequestAddCookies;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v26

    if-eqz v26, :cond_a

    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/client/protocol/RequestAddCookies;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Cookie "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " match "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-interface/range {v26 .. v27}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 180
    :cond_a
    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 139
    .end local v4    # "cookie":Lorg/apache/http/cookie/Cookie;
    .end local v5    # "cookieOrigin":Lorg/apache/http/cookie/CookieOrigin;
    .end local v6    # "cookieSpec":Lorg/apache/http/cookie/CookieSpec;
    .end local v8    # "cookies":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    .end local v12    # "hostName":Ljava/lang/String;
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v14    # "matchedCookies":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    .end local v17    # "now":Ljava/util/Date;
    .end local v19    # "port":I
    .end local v21    # "requestURI":Ljava/net/URI;
    :cond_b
    :try_start_0
    new-instance v21, Ljava/net/URI;

    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v21    # "requestURI":Ljava/net/URI;
    goto/16 :goto_1

    .line 140
    .end local v21    # "requestURI":Ljava/net/URI;
    :catch_0
    move-exception v9

    .line 141
    .local v9, "ex":Ljava/net/URISyntaxException;
    new-instance v26, Lorg/apache/http/ProtocolException;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Invalid request URI: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-direct {v0, v1, v9}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v26

    .line 157
    .end local v9    # "ex":Ljava/net/URISyntaxException;
    .restart local v12    # "hostName":Ljava/lang/String;
    .restart local v19    # "port":I
    .restart local v21    # "requestURI":Ljava/net/URI;
    .restart local v23    # "sr":Lorg/apache/http/conn/scheme/SchemeRegistry;
    :cond_c
    invoke-interface {v3}, Lorg/apache/http/conn/ManagedClientConnection;->getRemotePort()I

    move-result v19

    goto/16 :goto_2

    .line 183
    .end local v23    # "sr":Lorg/apache/http/conn/scheme/SchemeRegistry;
    .restart local v4    # "cookie":Lorg/apache/http/cookie/Cookie;
    .restart local v5    # "cookieOrigin":Lorg/apache/http/cookie/CookieOrigin;
    .restart local v6    # "cookieSpec":Lorg/apache/http/cookie/CookieSpec;
    .restart local v8    # "cookies":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    .restart local v13    # "i$":Ljava/util/Iterator;
    .restart local v14    # "matchedCookies":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    .restart local v17    # "now":Ljava/util/Date;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/client/protocol/RequestAddCookies;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v26

    if-eqz v26, :cond_9

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/client/protocol/RequestAddCookies;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Cookie "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " expired"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-interface/range {v26 .. v27}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 189
    .end local v4    # "cookie":Lorg/apache/http/cookie/Cookie;
    :cond_e
    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v26

    if-nez v26, :cond_f

    .line 190
    invoke-interface {v6, v14}, Lorg/apache/http/cookie/CookieSpec;->formatCookies(Ljava/util/List;)Ljava/util/List;

    move-result-object v11

    .line 191
    .local v11, "headers":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/Header;>;"
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_f

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/http/Header;

    .line 192
    .local v10, "header":Lorg/apache/http/Header;
    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Lorg/apache/http/HttpRequest;->addHeader(Lorg/apache/http/Header;)V

    goto :goto_4

    .line 196
    .end local v10    # "header":Lorg/apache/http/Header;
    .end local v11    # "headers":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/Header;>;"
    :cond_f
    invoke-interface {v6}, Lorg/apache/http/cookie/CookieSpec;->getVersion()I

    move-result v25

    .line 197
    .local v25, "ver":I
    if-lez v25, :cond_13

    .line 198
    const/16 v16, 0x0

    .line 199
    .local v16, "needVersionHeader":Z
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_10
    :goto_5
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_12

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/http/cookie/Cookie;

    .line 200
    .restart local v4    # "cookie":Lorg/apache/http/cookie/Cookie;
    invoke-interface {v4}, Lorg/apache/http/cookie/Cookie;->getVersion()I

    move-result v26

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_11

    instance-of v0, v4, Lorg/apache/http/cookie/SetCookie2;

    move/from16 v26, v0

    if-nez v26, :cond_10

    .line 201
    :cond_11
    const/16 v16, 0x1

    goto :goto_5

    .line 205
    .end local v4    # "cookie":Lorg/apache/http/cookie/Cookie;
    :cond_12
    if-eqz v16, :cond_13

    .line 206
    invoke-interface {v6}, Lorg/apache/http/cookie/CookieSpec;->getVersionHeader()Lorg/apache/http/Header;

    move-result-object v10

    .line 207
    .restart local v10    # "header":Lorg/apache/http/Header;
    if-eqz v10, :cond_13

    .line 209
    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Lorg/apache/http/HttpRequest;->addHeader(Lorg/apache/http/Header;)V

    .line 216
    .end local v10    # "header":Lorg/apache/http/Header;
    .end local v16    # "needVersionHeader":Z
    :cond_13
    const-string v26, "http.cookie-spec"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-interface {v0, v1, v6}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 217
    const-string v26, "http.cookie-origin"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-interface {v0, v1, v5}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0
.end method
