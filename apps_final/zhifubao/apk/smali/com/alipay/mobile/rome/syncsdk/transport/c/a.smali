.class public abstract Lcom/alipay/mobile/rome/syncsdk/transport/c/a;
.super Ljava/lang/Object;
.source "Packet.java"


# static fields
.field private static final h:Ljava/lang/String;


# instance fields
.field protected a:B

.field protected b:B

.field protected c:B

.field protected d:I

.field protected e:B

.field protected f:[B

.field protected g:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "sync_link_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/alipay/mobile/rome/syncsdk/transport/c/a;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/rome/syncsdk/transport/c/a;->h:Ljava/lang/String;

    .line 16
    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/c/a;->e:B

    .line 43
    return-void
.end method

.method public static a(Lcom/alipay/mobile/rome/syncsdk/transport/c/a;)Z
    .locals 2

    .prologue
    .line 51
    iget-byte v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/c/a;->a:B

    sget v1, Lcom/alipay/mobile/rome/syncsdk/transport/c/b;->c:I

    if-ne v0, v1, :cond_0

    .line 52
    const/4 v0, 0x1

    .line 54
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 77
    iget-byte v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/c/a;->b:B

    return v0
.end method

.method public final a(I)V
    .locals 1

    .prologue
    .line 84
    int-to-byte v0, p1

    iput-byte v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/c/a;->b:B

    .line 85
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 188
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 190
    :try_start_0
    const-string/jumbo v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 191
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/rome/syncsdk/transport/c/a;->a([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    :goto_0
    return-void

    .line 192
    :catch_0
    move-exception v0

    .line 193
    sget-object v1, Lcom/alipay/mobile/rome/syncsdk/transport/c/a;->h:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setDataStr: [ Exception "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " ]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 196
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/c/a;->g:[B

    .line 197
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/c/a;->d:I

    goto :goto_0
.end method

.method public final a([B)V
    .locals 1

    .prologue
    .line 154
    iput-object p1, p0, Lcom/alipay/mobile/rome/syncsdk/transport/c/a;->g:[B

    .line 155
    array-length v0, p1

    iput v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/c/a;->d:I

    .line 156
    return-void
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 91
    iget-byte v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/c/a;->c:B

    return v0
.end method

.method public final b(I)V
    .locals 1

    .prologue
    .line 98
    int-to-byte v0, p1

    iput-byte v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/c/a;->c:B

    .line 99
    return-void
.end method

.method public final b([B)V
    .locals 1

    .prologue
    .line 162
    invoke-static {p1}, Lcom/alipay/mobile/rome/syncsdk/util/ZipUtils;->unGZipBytes([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/c/a;->g:[B

    .line 163
    array-length v0, p1

    iput v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/c/a;->d:I

    .line 164
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/c/a;->e:B

    .line 165
    return-void
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/c/a;->d:I

    return v0
.end method

.method public abstract c([B)V
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 119
    iget-byte v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/c/a;->e:B

    return v0
.end method

.method public final e()Ljava/lang/String;
    .locals 5

    .prologue
    .line 171
    const-string/jumbo v1, ""

    .line 173
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/c/a;->g:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/c/a;->g:[B

    array-length v0, v0

    if-lez v0, :cond_0

    .line 175
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/rome/syncsdk/transport/c/a;->g:[B

    const-string/jumbo v3, "UTF-8"

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    :goto_0
    return-object v0

    .line 176
    :catch_0
    move-exception v0

    .line 177
    sget-object v2, Lcom/alipay/mobile/rome/syncsdk/transport/c/a;->h:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "getDataStr: [ Exception "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " ]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public abstract f()[B
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 216
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 218
    :try_start_0
    const-string/jumbo v1, "version"

    iget-byte v2, p0, Lcom/alipay/mobile/rome/syncsdk/transport/c/a;->a:B

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 219
    const-string/jumbo v1, "packetType"

    iget-byte v2, p0, Lcom/alipay/mobile/rome/syncsdk/transport/c/a;->b:B

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 220
    const-string/jumbo v1, "packetReqOrRep"

    iget-byte v2, p0, Lcom/alipay/mobile/rome/syncsdk/transport/c/a;->c:B

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 221
    const-string/jumbo v1, "dataLen"

    iget v2, p0, Lcom/alipay/mobile/rome/syncsdk/transport/c/a;->d:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 222
    const-string/jumbo v1, "isDataGziped"

    iget-byte v2, p0, Lcom/alipay/mobile/rome/syncsdk/transport/c/a;->e:B

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 223
    const-string/jumbo v1, "extField"

    iget-object v2, p0, Lcom/alipay/mobile/rome/syncsdk/transport/c/a;->f:[B

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 224
    const-string/jumbo v1, "dataStr"

    invoke-virtual {p0}, Lcom/alipay/mobile/rome/syncsdk/transport/c/a;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 225
    :catch_0
    move-exception v0

    .line 226
    sget-object v1, Lcom/alipay/mobile/rome/syncsdk/transport/c/a;->h:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "toString: [ Exception "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " ]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    const-string/jumbo v0, "Pakcet toString failed"

    goto :goto_0
.end method
