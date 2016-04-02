.class public final Lcom/squareup/okhttp/internal/http/RawHeaders;
.super Ljava/lang/Object;
.source "RawHeaders.java"


# static fields
.field private static final FIELD_NAME_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private httpMinorVersion:I

.field private final namesAndValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private requestLine:Ljava/lang/String;

.field private responseCode:I

.field private responseMessage:Ljava/lang/String;

.field private statusLine:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Lcom/squareup/okhttp/internal/http/RawHeaders$1;

    invoke-direct {v0}, Lcom/squareup/okhttp/internal/http/RawHeaders$1;-><init>()V

    sput-object v0, Lcom/squareup/okhttp/internal/http/RawHeaders;->FIELD_NAME_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/RawHeaders;->namesAndValues:Ljava/util/List;

    .line 71
    const/4 v0, 0x1

    iput v0, p0, Lcom/squareup/okhttp/internal/http/RawHeaders;->httpMinorVersion:I

    .line 72
    const/4 v0, -0x1

    iput v0, p0, Lcom/squareup/okhttp/internal/http/RawHeaders;->responseCode:I

    .line 76
    return-void
.end method

.method public constructor <init>(Lcom/squareup/okhttp/internal/http/RawHeaders;)V
    .locals 2
    .param p1, "copyFrom"    # Lcom/squareup/okhttp/internal/http/RawHeaders;

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/RawHeaders;->namesAndValues:Ljava/util/List;

    .line 71
    const/4 v0, 0x1

    iput v0, p0, Lcom/squareup/okhttp/internal/http/RawHeaders;->httpMinorVersion:I

    .line 72
    const/4 v0, -0x1

    iput v0, p0, Lcom/squareup/okhttp/internal/http/RawHeaders;->responseCode:I

    .line 79
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/RawHeaders;->namesAndValues:Ljava/util/List;

    iget-object v1, p1, Lcom/squareup/okhttp/internal/http/RawHeaders;->namesAndValues:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 80
    iget-object v0, p1, Lcom/squareup/okhttp/internal/http/RawHeaders;->requestLine:Ljava/lang/String;

    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/RawHeaders;->requestLine:Ljava/lang/String;

    .line 81
    iget-object v0, p1, Lcom/squareup/okhttp/internal/http/RawHeaders;->statusLine:Ljava/lang/String;

    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/RawHeaders;->statusLine:Ljava/lang/String;

    .line 82
    iget v0, p1, Lcom/squareup/okhttp/internal/http/RawHeaders;->httpMinorVersion:I

    iput v0, p0, Lcom/squareup/okhttp/internal/http/RawHeaders;->httpMinorVersion:I

    .line 83
    iget v0, p1, Lcom/squareup/okhttp/internal/http/RawHeaders;->responseCode:I

    iput v0, p0, Lcom/squareup/okhttp/internal/http/RawHeaders;->responseCode:I

    .line 84
    iget-object v0, p1, Lcom/squareup/okhttp/internal/http/RawHeaders;->responseMessage:Ljava/lang/String;

    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/RawHeaders;->responseMessage:Ljava/lang/String;

    .line 85
    return-void
.end method

.method private addLenient(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 209
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/RawHeaders;->namesAndValues:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/RawHeaders;->namesAndValues:Ljava/util/List;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    return-void
.end method

.method public static fromBytes(Ljava/io/InputStream;)Lcom/squareup/okhttp/internal/http/RawHeaders;
    .locals 3
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 300
    :cond_0
    new-instance v0, Lcom/squareup/okhttp/internal/http/RawHeaders;

    invoke-direct {v0}, Lcom/squareup/okhttp/internal/http/RawHeaders;-><init>()V

    .line 301
    .local v0, "headers":Lcom/squareup/okhttp/internal/http/RawHeaders;
    invoke-static {p0}, Lcom/squareup/okhttp/internal/Util;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/http/RawHeaders;->setStatusLine(Ljava/lang/String;)V

    .line 302
    invoke-static {p0, v0}, Lcom/squareup/okhttp/internal/http/RawHeaders;->readHeaders(Ljava/io/InputStream;Lcom/squareup/okhttp/internal/http/RawHeaders;)V

    .line 303
    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/RawHeaders;->getResponseCode()I

    move-result v1

    const/16 v2, 0x64

    if-eq v1, v2, :cond_0

    .line 304
    return-object v0
.end method

.method public static fromMultimap(Ljava/util/Map;Z)Lcom/squareup/okhttp/internal/http/RawHeaders;
    .locals 8
    .param p1, "response"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;Z)",
            "Lcom/squareup/okhttp/internal/http/RawHeaders;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 349
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    if-nez p1, :cond_0

    new-instance v7, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v7}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v7

    .line 350
    :cond_0
    new-instance v4, Lcom/squareup/okhttp/internal/http/RawHeaders;

    invoke-direct {v4}, Lcom/squareup/okhttp/internal/http/RawHeaders;-><init>()V

    .line 351
    .local v4, "result":Lcom/squareup/okhttp/internal/http/RawHeaders;
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 352
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 353
    .local v1, "fieldName":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 354
    .local v6, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_2

    .line 355
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 356
    .local v5, "value":Ljava/lang/String;
    invoke-direct {v4, v1, v5}, Lcom/squareup/okhttp/internal/http/RawHeaders;->addLenient(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 358
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "value":Ljava/lang/String;
    :cond_2
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    .line 359
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v4, v7}, Lcom/squareup/okhttp/internal/http/RawHeaders;->setStatusLine(Ljava/lang/String;)V

    goto :goto_0

    .line 362
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v1    # "fieldName":Ljava/lang/String;
    .end local v6    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    return-object v4
.end method

.method public static fromNameValueBlock(Ljava/util/List;)Lcom/squareup/okhttp/internal/http/RawHeaders;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/squareup/okhttp/internal/http/RawHeaders;"
        }
    .end annotation

    .prologue
    .line 405
    .local p0, "nameValueBlock":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    rem-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_0

    .line 406
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected name value block: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 408
    :cond_0
    new-instance v3, Lcom/squareup/okhttp/internal/http/RawHeaders;

    invoke-direct {v3}, Lcom/squareup/okhttp/internal/http/RawHeaders;-><init>()V

    .line 409
    .local v3, "result":Lcom/squareup/okhttp/internal/http/RawHeaders;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_3

    .line 410
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 411
    .local v2, "name":Ljava/lang/String;
    add-int/lit8 v6, v1, 0x1

    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 412
    .local v5, "values":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "start":I
    :goto_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v4, v6, :cond_2

    .line 413
    const/4 v6, 0x0

    invoke-virtual {v5, v6, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 414
    .local v0, "end":I
    const/4 v6, -0x1

    if-ne v0, v6, :cond_1

    .line 415
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    .line 417
    :cond_1
    iget-object v6, v3, Lcom/squareup/okhttp/internal/http/RawHeaders;->namesAndValues:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 418
    iget-object v6, v3, Lcom/squareup/okhttp/internal/http/RawHeaders;->namesAndValues:Ljava/util/List;

    invoke-virtual {v5, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 419
    add-int/lit8 v4, v0, 0x1

    .line 420
    goto :goto_1

    .line 409
    .end local v0    # "end":I
    :cond_2
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 422
    .end local v2    # "name":Ljava/lang/String;
    .end local v4    # "start":I
    .end local v5    # "values":Ljava/lang/String;
    :cond_3
    return-object v3
.end method

.method public static readHeaders(Ljava/io/InputStream;Lcom/squareup/okhttp/internal/http/RawHeaders;)V
    .locals 2
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "out"    # Lcom/squareup/okhttp/internal/http/RawHeaders;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 311
    :goto_0
    invoke-static {p0}, Lcom/squareup/okhttp/internal/Util;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .local v0, "line":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 312
    invoke-virtual {p1, v0}, Lcom/squareup/okhttp/internal/http/RawHeaders;->addLine(Ljava/lang/String;)V

    goto :goto_0

    .line 314
    :cond_0
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 196
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "fieldname == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 197
    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "value == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v1, :cond_2

    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v1, :cond_3

    .line 199
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected header: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 201
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/squareup/okhttp/internal/http/RawHeaders;->addLenient(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    return-void
.end method

.method public addAll(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 223
    .local p2, "headerFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 224
    .local v1, "value":Ljava/lang/String;
    invoke-virtual {p0, p1, v1}, Lcom/squareup/okhttp/internal/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 226
    .end local v1    # "value":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public addLine(Ljava/lang/String;)V
    .locals 3
    .param p1, "line"    # Ljava/lang/String;

    .prologue
    .line 186
    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 187
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 188
    const-string v1, ""

    invoke-direct {p0, v1, p1}, Lcom/squareup/okhttp/internal/http/RawHeaders;->addLenient(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    :goto_0
    return-void

    .line 190
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/squareup/okhttp/internal/http/RawHeaders;->addLenient(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public addSpdyRequestHeaders(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "version"    # Ljava/lang/String;
    .param p4, "host"    # Ljava/lang/String;
    .param p5, "scheme"    # Ljava/lang/String;

    .prologue
    .line 152
    const-string v0, ":method"

    invoke-virtual {p0, v0, p1}, Lcom/squareup/okhttp/internal/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const-string v0, ":scheme"

    invoke-virtual {p0, v0, p5}, Lcom/squareup/okhttp/internal/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const-string v0, ":path"

    invoke-virtual {p0, v0, p2}, Lcom/squareup/okhttp/internal/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const-string v0, ":version"

    invoke-virtual {p0, v0, p3}, Lcom/squareup/okhttp/internal/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const-string v0, ":host"

    invoke-virtual {p0, v0, p4}, Lcom/squareup/okhttp/internal/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method public computeResponseStatusLineFromSpdyHeaders()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 126
    const/4 v2, 0x0

    .line 127
    .local v2, "status":Ljava/lang/String;
    const/4 v3, 0x0

    .line 128
    .local v3, "version":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/squareup/okhttp/internal/http/RawHeaders;->namesAndValues:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 129
    iget-object v4, p0, Lcom/squareup/okhttp/internal/http/RawHeaders;->namesAndValues:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 130
    .local v1, "name":Ljava/lang/String;
    const-string v4, ":status"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 131
    iget-object v4, p0, Lcom/squareup/okhttp/internal/http/RawHeaders;->namesAndValues:Ljava/util/List;

    add-int/lit8 v5, v0, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "status":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 128
    .restart local v2    # "status":Ljava/lang/String;
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 132
    :cond_1
    const-string v4, ":version"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 133
    iget-object v4, p0, Lcom/squareup/okhttp/internal/http/RawHeaders;->namesAndValues:Ljava/util/List;

    add-int/lit8 v5, v0, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "version":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .restart local v3    # "version":Ljava/lang/String;
    goto :goto_1

    .line 136
    .end local v1    # "name":Ljava/lang/String;
    :cond_2
    if-eqz v2, :cond_3

    if-nez v3, :cond_4

    .line 137
    :cond_3
    new-instance v4, Ljava/net/ProtocolException;

    const-string v5, "Expected \':status\' and \':version\' headers not present"

    invoke-direct {v4, v5}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 139
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/squareup/okhttp/internal/http/RawHeaders;->setStatusLine(Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 262
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/RawHeaders;->namesAndValues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x2

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 263
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/RawHeaders;->namesAndValues:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 264
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/RawHeaders;->namesAndValues:Ljava/util/List;

    add-int/lit8 v2, v0, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 267
    :goto_1
    return-object v1

    .line 262
    :cond_0
    add-int/lit8 v0, v0, -0x2

    goto :goto_0

    .line 267
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getAll(Ljava/util/Set;)Lcom/squareup/okhttp/internal/http/RawHeaders;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/squareup/okhttp/internal/http/RawHeaders;"
        }
    .end annotation

    .prologue
    .line 272
    .local p1, "fieldNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v2, Lcom/squareup/okhttp/internal/http/RawHeaders;

    invoke-direct {v2}, Lcom/squareup/okhttp/internal/http/RawHeaders;-><init>()V

    .line 273
    .local v2, "result":Lcom/squareup/okhttp/internal/http/RawHeaders;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/RawHeaders;->namesAndValues:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 274
    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/RawHeaders;->namesAndValues:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 275
    .local v0, "fieldName":Ljava/lang/String;
    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 276
    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/RawHeaders;->namesAndValues:Ljava/util/List;

    add-int/lit8 v4, v1, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lcom/squareup/okhttp/internal/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    :cond_0
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 279
    .end local v0    # "fieldName":Ljava/lang/String;
    :cond_1
    return-object v2
.end method

.method public getFieldName(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 244
    mul-int/lit8 v0, p1, 0x2

    .line 245
    .local v0, "fieldNameIndex":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/RawHeaders;->namesAndValues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 246
    :cond_0
    const/4 v1, 0x0

    .line 248
    :goto_0
    return-object v1

    :cond_1
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/RawHeaders;->namesAndValues:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0
.end method

.method public getHttpMinorVersion()I
    .locals 2

    .prologue
    .line 168
    iget v0, p0, Lcom/squareup/okhttp/internal/http/RawHeaders;->httpMinorVersion:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/squareup/okhttp/internal/http/RawHeaders;->httpMinorVersion:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getResponseCode()I
    .locals 1

    .prologue
    .line 173
    iget v0, p0, Lcom/squareup/okhttp/internal/http/RawHeaders;->responseCode:I

    return v0
.end method

.method public getResponseMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/RawHeaders;->responseMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusLine()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/RawHeaders;->statusLine:Ljava/lang/String;

    return-object v0
.end method

.method public getValue(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 253
    mul-int/lit8 v1, p1, 0x2

    add-int/lit8 v0, v1, 0x1

    .line 254
    .local v0, "valueIndex":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/RawHeaders;->namesAndValues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 255
    :cond_0
    const/4 v1, 0x0

    .line 257
    :goto_0
    return-object v1

    :cond_1
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/RawHeaders;->namesAndValues:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/RawHeaders;->namesAndValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public removeAll(Ljava/lang/String;)V
    .locals 2
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 214
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/RawHeaders;->namesAndValues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 215
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/RawHeaders;->namesAndValues:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 216
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/RawHeaders;->namesAndValues:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 217
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/RawHeaders;->namesAndValues:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 214
    :cond_0
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 220
    :cond_1
    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 233
    invoke-virtual {p0, p1}, Lcom/squareup/okhttp/internal/http/RawHeaders;->removeAll(Ljava/lang/String;)V

    .line 234
    invoke-virtual {p0, p1, p2}, Lcom/squareup/okhttp/internal/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    return-void
.end method

.method public setRequestLine(Ljava/lang/String;)V
    .locals 0
    .param p1, "requestLine"    # Ljava/lang/String;

    .prologue
    .line 89
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 90
    iput-object p1, p0, Lcom/squareup/okhttp/internal/http/RawHeaders;->requestLine:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setStatusLine(Ljava/lang/String;)V
    .locals 9
    .param p1, "statusLine"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x20

    const/16 v7, 0xd

    const/16 v6, 0x9

    const/16 v5, 0xc

    .line 97
    iget-object v4, p0, Lcom/squareup/okhttp/internal/http/RawHeaders;->responseMessage:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 98
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "statusLine is already set"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 102
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v7, :cond_2

    const/4 v1, 0x1

    .line 103
    .local v1, "hasMessage":Z
    :goto_0
    const-string v4, "HTTP/1."

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v4, v5, :cond_1

    const/16 v4, 0x8

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v8, :cond_1

    if-eqz v1, :cond_3

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v8, :cond_3

    .line 107
    :cond_1
    new-instance v4, Ljava/net/ProtocolException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected status line: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 102
    .end local v1    # "hasMessage":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 109
    .restart local v1    # "hasMessage":Z
    :cond_3
    const/4 v4, 0x7

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/lit8 v2, v4, -0x30

    .line 110
    .local v2, "httpMinorVersion":I
    if-ltz v2, :cond_4

    if-le v2, v6, :cond_5

    .line 111
    :cond_4
    new-instance v4, Ljava/net/ProtocolException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected status line: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 115
    :cond_5
    const/16 v4, 0x9

    const/16 v5, 0xc

    :try_start_0
    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 119
    .local v3, "responseCode":I
    if-eqz v1, :cond_6

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    :goto_1
    iput-object v4, p0, Lcom/squareup/okhttp/internal/http/RawHeaders;->responseMessage:Ljava/lang/String;

    .line 120
    iput v3, p0, Lcom/squareup/okhttp/internal/http/RawHeaders;->responseCode:I

    .line 121
    iput-object p1, p0, Lcom/squareup/okhttp/internal/http/RawHeaders;->statusLine:Ljava/lang/String;

    .line 122
    iput v2, p0, Lcom/squareup/okhttp/internal/http/RawHeaders;->httpMinorVersion:I

    .line 123
    return-void

    .line 116
    .end local v3    # "responseCode":I
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/net/ProtocolException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected status line: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 119
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v3    # "responseCode":I
    :cond_6
    const-string v4, ""

    goto :goto_1
.end method

.method public toBytes()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 284
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x100

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 285
    .local v1, "result":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/RawHeaders;->requestLine:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/RawHeaders;->namesAndValues:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 287
    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/RawHeaders;->namesAndValues:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/RawHeaders;->namesAndValues:Ljava/util/List;

    add-int/lit8 v4, v0, 0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 292
    :cond_0
    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ISO-8859-1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    return-object v2
.end method

.method public toMultimap(Z)Ljava/util/Map;
    .locals 9
    .param p1, "response"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 321
    new-instance v4, Ljava/util/TreeMap;

    sget-object v6, Lcom/squareup/okhttp/internal/http/RawHeaders;->FIELD_NAME_COMPARATOR:Ljava/util/Comparator;

    invoke-direct {v4, v6}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 322
    .local v4, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v6, p0, Lcom/squareup/okhttp/internal/http/RawHeaders;->namesAndValues:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_1

    .line 323
    iget-object v6, p0, Lcom/squareup/okhttp/internal/http/RawHeaders;->namesAndValues:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 324
    .local v1, "fieldName":Ljava/lang/String;
    iget-object v6, p0, Lcom/squareup/okhttp/internal/http/RawHeaders;->namesAndValues:Ljava/util/List;

    add-int/lit8 v7, v2, 0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 326
    .local v5, "value":Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 327
    .local v0, "allValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 328
    .local v3, "otherValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v3, :cond_0

    .line 329
    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 331
    :cond_0
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 332
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v4, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 334
    .end local v0    # "allValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "fieldName":Ljava/lang/String;
    .end local v3    # "otherValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "value":Ljava/lang/String;
    :cond_1
    if-eqz p1, :cond_3

    iget-object v6, p0, Lcom/squareup/okhttp/internal/http/RawHeaders;->statusLine:Ljava/lang/String;

    if-eqz v6, :cond_3

    .line 335
    iget-object v6, p0, Lcom/squareup/okhttp/internal/http/RawHeaders;->statusLine:Ljava/lang/String;

    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v4, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    :cond_2
    :goto_1
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v6

    return-object v6

    .line 336
    :cond_3
    iget-object v6, p0, Lcom/squareup/okhttp/internal/http/RawHeaders;->requestLine:Ljava/lang/String;

    if-eqz v6, :cond_2

    .line 337
    iget-object v6, p0, Lcom/squareup/okhttp/internal/http/RawHeaders;->requestLine:Ljava/lang/String;

    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v4, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public toNameValueBlock()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 371
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 372
    .local v3, "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 373
    .local v4, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v6, p0, Lcom/squareup/okhttp/internal/http/RawHeaders;->namesAndValues:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_4

    .line 374
    iget-object v6, p0, Lcom/squareup/okhttp/internal/http/RawHeaders;->namesAndValues:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 375
    .local v2, "name":Ljava/lang/String;
    iget-object v6, p0, Lcom/squareup/okhttp/internal/http/RawHeaders;->namesAndValues:Ljava/util/List;

    add-int/lit8 v7, v0, 0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 378
    .local v5, "value":Ljava/lang/String;
    const-string v6, "connection"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "host"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "keep-alive"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "proxy-connection"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "transfer-encoding"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 373
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 387
    :cond_1
    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 388
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 389
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 394
    :cond_2
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_0

    .line 395
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 396
    add-int/lit8 v7, v1, 0x1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v6, v1, 0x1

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "\u0000"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v7, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 394
    :cond_3
    add-int/lit8 v1, v1, 0x2

    goto :goto_2

    .line 401
    .end local v1    # "j":I
    .end local v2    # "name":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :cond_4
    return-object v4
.end method
