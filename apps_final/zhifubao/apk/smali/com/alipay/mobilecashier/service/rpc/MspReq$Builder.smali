.class public final Lcom/alipay/mobilecashier/service/rpc/MspReq$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "MspReq.java"


# instance fields
.field public api_nm:Ljava/lang/String;

.field public api_nsp:Ljava/lang/String;

.field public api_ver:Ljava/lang/String;

.field public auth_key:Ljava/lang/String;

.field public device:Ljava/lang/String;

.field public imei:Ljava/lang/String;

.field public imsi:Ljava/lang/String;

.field public mac:Ljava/lang/String;

.field public os_id:Ljava/lang/String;

.field public params:Ljava/lang/String;

.field public session:Ljava/lang/String;

.field public tid:Ljava/lang/String;

.field public ua:Ljava/lang/String;

.field public ver:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 166
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobilecashier/service/rpc/MspReq;)V
    .locals 1

    .prologue
    .line 169
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 170
    if-nez p1, :cond_0

    .line 185
    :goto_0
    return-void

    .line 171
    :cond_0
    iget-object v0, p1, Lcom/alipay/mobilecashier/service/rpc/MspReq;->api_nsp:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq$Builder;->api_nsp:Ljava/lang/String;

    .line 172
    iget-object v0, p1, Lcom/alipay/mobilecashier/service/rpc/MspReq;->api_nm:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq$Builder;->api_nm:Ljava/lang/String;

    .line 173
    iget-object v0, p1, Lcom/alipay/mobilecashier/service/rpc/MspReq;->api_ver:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq$Builder;->api_ver:Ljava/lang/String;

    .line 174
    iget-object v0, p1, Lcom/alipay/mobilecashier/service/rpc/MspReq;->params:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq$Builder;->params:Ljava/lang/String;

    .line 175
    iget-object v0, p1, Lcom/alipay/mobilecashier/service/rpc/MspReq;->auth_key:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq$Builder;->auth_key:Ljava/lang/String;

    .line 176
    iget-object v0, p1, Lcom/alipay/mobilecashier/service/rpc/MspReq;->ver:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq$Builder;->ver:Ljava/lang/String;

    .line 177
    iget-object v0, p1, Lcom/alipay/mobilecashier/service/rpc/MspReq;->ua:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq$Builder;->ua:Ljava/lang/String;

    .line 178
    iget-object v0, p1, Lcom/alipay/mobilecashier/service/rpc/MspReq;->device:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq$Builder;->device:Ljava/lang/String;

    .line 179
    iget-object v0, p1, Lcom/alipay/mobilecashier/service/rpc/MspReq;->session:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq$Builder;->session:Ljava/lang/String;

    .line 180
    iget-object v0, p1, Lcom/alipay/mobilecashier/service/rpc/MspReq;->tid:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq$Builder;->tid:Ljava/lang/String;

    .line 181
    iget-object v0, p1, Lcom/alipay/mobilecashier/service/rpc/MspReq;->imsi:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq$Builder;->imsi:Ljava/lang/String;

    .line 182
    iget-object v0, p1, Lcom/alipay/mobilecashier/service/rpc/MspReq;->imei:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq$Builder;->imei:Ljava/lang/String;

    .line 183
    iget-object v0, p1, Lcom/alipay/mobilecashier/service/rpc/MspReq;->mac:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq$Builder;->mac:Ljava/lang/String;

    .line 184
    iget-object v0, p1, Lcom/alipay/mobilecashier/service/rpc/MspReq;->os_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq$Builder;->os_id:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public final api_nm(Ljava/lang/String;)Lcom/alipay/mobilecashier/service/rpc/MspReq$Builder;
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq$Builder;->api_nm:Ljava/lang/String;

    .line 197
    return-object p0
.end method

.method public final api_nsp(Ljava/lang/String;)Lcom/alipay/mobilecashier/service/rpc/MspReq$Builder;
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq$Builder;->api_nsp:Ljava/lang/String;

    .line 189
    return-object p0
.end method

.method public final api_ver(Ljava/lang/String;)Lcom/alipay/mobilecashier/service/rpc/MspReq$Builder;
    .locals 0

    .prologue
    .line 201
    iput-object p1, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq$Builder;->api_ver:Ljava/lang/String;

    .line 202
    return-object p0
.end method

.method public final auth_key(Ljava/lang/String;)Lcom/alipay/mobilecashier/service/rpc/MspReq$Builder;
    .locals 0

    .prologue
    .line 214
    iput-object p1, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq$Builder;->auth_key:Ljava/lang/String;

    .line 215
    return-object p0
.end method

.method public final build()Lcom/alipay/mobilecashier/service/rpc/MspReq;
    .locals 2

    .prologue
    .line 268
    new-instance v0, Lcom/alipay/mobilecashier/service/rpc/MspReq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobilecashier/service/rpc/MspReq;-><init>(Lcom/alipay/mobilecashier/service/rpc/MspReq$Builder;B)V

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/alipay/mobilecashier/service/rpc/MspReq$Builder;->build()Lcom/alipay/mobilecashier/service/rpc/MspReq;

    move-result-object v0

    return-object v0
.end method

.method public final device(Ljava/lang/String;)Lcom/alipay/mobilecashier/service/rpc/MspReq$Builder;
    .locals 0

    .prologue
    .line 229
    iput-object p1, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq$Builder;->device:Ljava/lang/String;

    .line 230
    return-object p0
.end method

.method public final imei(Ljava/lang/String;)Lcom/alipay/mobilecashier/service/rpc/MspReq$Builder;
    .locals 0

    .prologue
    .line 252
    iput-object p1, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq$Builder;->imei:Ljava/lang/String;

    .line 253
    return-object p0
.end method

.method public final imsi(Ljava/lang/String;)Lcom/alipay/mobilecashier/service/rpc/MspReq$Builder;
    .locals 0

    .prologue
    .line 247
    iput-object p1, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq$Builder;->imsi:Ljava/lang/String;

    .line 248
    return-object p0
.end method

.method public final mac(Ljava/lang/String;)Lcom/alipay/mobilecashier/service/rpc/MspReq$Builder;
    .locals 0

    .prologue
    .line 257
    iput-object p1, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq$Builder;->mac:Ljava/lang/String;

    .line 258
    return-object p0
.end method

.method public final os_id(Ljava/lang/String;)Lcom/alipay/mobilecashier/service/rpc/MspReq$Builder;
    .locals 0

    .prologue
    .line 262
    iput-object p1, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq$Builder;->os_id:Ljava/lang/String;

    .line 263
    return-object p0
.end method

.method public final params(Ljava/lang/String;)Lcom/alipay/mobilecashier/service/rpc/MspReq$Builder;
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq$Builder;->params:Ljava/lang/String;

    .line 207
    return-object p0
.end method

.method public final session(Ljava/lang/String;)Lcom/alipay/mobilecashier/service/rpc/MspReq$Builder;
    .locals 0

    .prologue
    .line 234
    iput-object p1, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq$Builder;->session:Ljava/lang/String;

    .line 235
    return-object p0
.end method

.method public final tid(Ljava/lang/String;)Lcom/alipay/mobilecashier/service/rpc/MspReq$Builder;
    .locals 0

    .prologue
    .line 239
    iput-object p1, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq$Builder;->tid:Ljava/lang/String;

    .line 240
    return-object p0
.end method

.method public final ua(Ljava/lang/String;)Lcom/alipay/mobilecashier/service/rpc/MspReq$Builder;
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq$Builder;->ua:Ljava/lang/String;

    .line 225
    return-object p0
.end method

.method public final ver(Ljava/lang/String;)Lcom/alipay/mobilecashier/service/rpc/MspReq$Builder;
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lcom/alipay/mobilecashier/service/rpc/MspReq$Builder;->ver:Ljava/lang/String;

    .line 220
    return-object p0
.end method
