.class public final Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBMap$Builder;
.super Lcom/squareup/wire/Message$Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBMap;",
        ">;"
    }
.end annotation


# instance fields
.field public key:Ljava/lang/String;

.field public value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBMap;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBMap;->key:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBMap$Builder;->key:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBMap;->value:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBMap$Builder;->value:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public final build()Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBMap;
    .locals 2

    new-instance v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBMap;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBMap;-><init>(Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBMap$Builder;Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBMap;)V

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBMap$Builder;->build()Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBMap;

    move-result-object v0

    return-object v0
.end method

.method public final key(Ljava/lang/String;)Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBMap$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBMap$Builder;->key:Ljava/lang/String;

    return-object p0
.end method

.method public final value(Ljava/lang/String;)Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBMap$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBMap$Builder;->value:Ljava/lang/String;

    return-object p0
.end method
