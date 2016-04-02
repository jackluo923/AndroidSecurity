.class public Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;
.super Lcom/alipay/mobile/common/transport/Request;
.source "HttpUrlRequest.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:[B

.field private c:Ljava/lang/String;

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/http/Header;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 62
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/Request;-><init>()V

    .line 54
    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->h:Z

    .line 57
    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->i:Z

    .line 63
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->a:Ljava/lang/String;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->d:Ljava/util/ArrayList;

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->e:Ljava/util/Map;

    .line 66
    const-string/jumbo v0, "application/x-www-form-urlencoded"

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->c:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[BLjava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/http/Header;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 78
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/Request;-><init>()V

    .line 54
    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->h:Z

    .line 57
    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->i:Z

    .line 79
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->a:Ljava/lang/String;

    .line 80
    iput-object p2, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->b:[B

    .line 81
    iput-object p3, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->d:Ljava/util/ArrayList;

    .line 82
    iput-object p4, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->e:Ljava/util/Map;

    .line 83
    const-string/jumbo v0, "application/x-www-form-urlencoded"

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->c:Ljava/lang/String;

    .line 84
    return-void
.end method


# virtual methods
.method public addHeader(Lorg/apache/http/Header;)V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    return-void
.end method

.method public addTags(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->e:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 191
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->e:Ljava/util/Map;

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->e:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 248
    if-ne p0, p1, :cond_1

    .line 265
    :cond_0
    :goto_0
    return v0

    .line 250
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 251
    goto :goto_0

    .line 252
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 253
    goto :goto_0

    .line 254
    :cond_3
    check-cast p1, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    .line 255
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->b:[B

    if-nez v2, :cond_4

    .line 256
    iget-object v2, p1, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->b:[B

    if-eqz v2, :cond_5

    move v0, v1

    .line 257
    goto :goto_0

    .line 258
    :cond_4
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->b:[B

    iget-object v3, p1, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->b:[B

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    .line 259
    goto :goto_0

    .line 260
    :cond_5
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->a:Ljava/lang/String;

    if-nez v2, :cond_6

    .line 261
    iget-object v2, p1, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->a:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    .line 262
    goto :goto_0

    .line 263
    :cond_6
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 264
    goto :goto_0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getHeaders()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/http/Header;",
            ">;"
        }
    .end annotation

    .prologue
    .line 168
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->d:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getReqData()[B

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReqData()[B
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->b:[B

    return-object v0
.end method

.method public getTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->e:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 203
    const/4 v0, 0x0

    .line 205
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getTags()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 227
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->e:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->e:Ljava/util/Map;

    .line 230
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    goto :goto_0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->a:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 235
    const/4 v0, 0x1

    .line 238
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->e:Ljava/util/Map;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->e:Ljava/util/Map;

    const-string/jumbo v2, "reqDataDigest"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 239
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->e:Ljava/util/Map;

    const-string/jumbo v1, "reqDataDigest"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    .line 242
    :cond_0
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->a:Ljava/lang/String;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    .line 243
    return v0

    .line 242
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public isBgRpc()Z
    .locals 1

    .prologue
    .line 277
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->f:Z

    return v0
.end method

.method public isCompress()Z
    .locals 1

    .prologue
    .line 294
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->i:Z

    return v0
.end method

.method public isContainerHeader(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 303
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/Header;

    .line 304
    invoke-interface {v0}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    const/4 v0, 0x1

    .line 308
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isResetCookie()Z
    .locals 1

    .prologue
    .line 209
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->g:Z

    return v0
.end method

.method public isUseEtag()Z
    .locals 1

    .prologue
    .line 285
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->h:Z

    return v0
.end method

.method public setBgRpc(Z)V
    .locals 0

    .prologue
    .line 281
    iput-boolean p1, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->f:Z

    .line 282
    return-void
.end method

.method public setCompress(Z)V
    .locals 0

    .prologue
    .line 298
    iput-boolean p1, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->i:Z

    .line 299
    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->c:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public setHeaders(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/http/Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 149
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->d:Ljava/util/ArrayList;

    .line 150
    return-void
.end method

.method public setReqData([B)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->b:[B

    .line 121
    return-void
.end method

.method public setResetCookie(Z)V
    .locals 0

    .prologue
    .line 213
    iput-boolean p1, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->g:Z

    .line 214
    return-void
.end method

.method public setTags(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 178
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->e:Ljava/util/Map;

    .line 179
    return-void
.end method

.method public setUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->a:Ljava/lang/String;

    return-object p1
.end method

.method public setUseEtag(Z)V
    .locals 0

    .prologue
    .line 289
    iput-boolean p1, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->h:Z

    .line 290
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 222
    const-string/jumbo v1, "Url : %s,HttpHeader: %s, Tags: %s, Body:%s"

    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getUrl()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getHeaders()Ljava/util/ArrayList;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getTags()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v3, 0x3

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->b:[B

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v4, p0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->b:[B

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method
