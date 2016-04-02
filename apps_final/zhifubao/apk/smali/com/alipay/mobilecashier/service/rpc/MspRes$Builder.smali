.class public final Lcom/alipay/mobilecashier/service/rpc/MspRes$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "MspRes.java"


# instance fields
.field public api_nm:Ljava/lang/String;

.field public api_nsp:Ljava/lang/String;

.field public api_ver:Ljava/lang/String;

.field public code:Ljava/lang/String;

.field public err_msg:Ljava/lang/String;

.field public params:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 102
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobilecashier/service/rpc/MspRes;)V
    .locals 1

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 106
    if-nez p1, :cond_0

    .line 113
    :goto_0
    return-void

    .line 107
    :cond_0
    iget-object v0, p1, Lcom/alipay/mobilecashier/service/rpc/MspRes;->api_nsp:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilecashier/service/rpc/MspRes$Builder;->api_nsp:Ljava/lang/String;

    .line 108
    iget-object v0, p1, Lcom/alipay/mobilecashier/service/rpc/MspRes;->api_nm:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilecashier/service/rpc/MspRes$Builder;->api_nm:Ljava/lang/String;

    .line 109
    iget-object v0, p1, Lcom/alipay/mobilecashier/service/rpc/MspRes;->api_ver:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilecashier/service/rpc/MspRes$Builder;->api_ver:Ljava/lang/String;

    .line 110
    iget-object v0, p1, Lcom/alipay/mobilecashier/service/rpc/MspRes;->params:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilecashier/service/rpc/MspRes$Builder;->params:Ljava/lang/String;

    .line 111
    iget-object v0, p1, Lcom/alipay/mobilecashier/service/rpc/MspRes;->code:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilecashier/service/rpc/MspRes$Builder;->code:Ljava/lang/String;

    .line 112
    iget-object v0, p1, Lcom/alipay/mobilecashier/service/rpc/MspRes;->err_msg:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilecashier/service/rpc/MspRes$Builder;->err_msg:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public final api_nm(Ljava/lang/String;)Lcom/alipay/mobilecashier/service/rpc/MspRes$Builder;
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/alipay/mobilecashier/service/rpc/MspRes$Builder;->api_nm:Ljava/lang/String;

    .line 125
    return-object p0
.end method

.method public final api_nsp(Ljava/lang/String;)Lcom/alipay/mobilecashier/service/rpc/MspRes$Builder;
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/alipay/mobilecashier/service/rpc/MspRes$Builder;->api_nsp:Ljava/lang/String;

    .line 117
    return-object p0
.end method

.method public final api_ver(Ljava/lang/String;)Lcom/alipay/mobilecashier/service/rpc/MspRes$Builder;
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/alipay/mobilecashier/service/rpc/MspRes$Builder;->api_ver:Ljava/lang/String;

    .line 130
    return-object p0
.end method

.method public final build()Lcom/alipay/mobilecashier/service/rpc/MspRes;
    .locals 2

    .prologue
    .line 156
    new-instance v0, Lcom/alipay/mobilecashier/service/rpc/MspRes;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobilecashier/service/rpc/MspRes;-><init>(Lcom/alipay/mobilecashier/service/rpc/MspRes$Builder;B)V

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/alipay/mobilecashier/service/rpc/MspRes$Builder;->build()Lcom/alipay/mobilecashier/service/rpc/MspRes;

    move-result-object v0

    return-object v0
.end method

.method public final code(Ljava/lang/String;)Lcom/alipay/mobilecashier/service/rpc/MspRes$Builder;
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/alipay/mobilecashier/service/rpc/MspRes$Builder;->code:Ljava/lang/String;

    .line 143
    return-object p0
.end method

.method public final err_msg(Ljava/lang/String;)Lcom/alipay/mobilecashier/service/rpc/MspRes$Builder;
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/alipay/mobilecashier/service/rpc/MspRes$Builder;->err_msg:Ljava/lang/String;

    .line 151
    return-object p0
.end method

.method public final params(Ljava/lang/String;)Lcom/alipay/mobilecashier/service/rpc/MspRes$Builder;
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/alipay/mobilecashier/service/rpc/MspRes$Builder;->params:Ljava/lang/String;

    .line 135
    return-object p0
.end method
