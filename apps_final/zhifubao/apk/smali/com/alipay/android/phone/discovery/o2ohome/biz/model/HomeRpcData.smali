.class public Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;
.super Ljava/lang/Object;
.source "HomeRpcData.java"


# instance fields
.field final INTERVAL_SEC_DEF:J

.field private pollTimeMillis:J

.field private rpcData:Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;->pollTimeMillis:J

    .line 17
    const-wide/16 v0, 0x1e

    iput-wide v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;->INTERVAL_SEC_DEF:J

    .line 11
    return-void
.end method


# virtual methods
.method public getPollTimeMillis()J
    .locals 2

    .prologue
    .line 29
    iget-wide v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;->pollTimeMillis:J

    return-wide v0
.end method

.method public getRpcData()Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;->rpcData:Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;

    return-object v0
.end method

.method public isNeedRefresh()Z
    .locals 6

    .prologue
    const-wide/16 v0, 0x1e

    .line 42
    .line 43
    const-string/jumbo v2, "O2OHOME_RPCPOLL_INTERVAL"

    invoke-static {v2}, Lcom/alipay/android/phone/discovery/o2ohome/util/ConfigServiceUtils;->getConfigValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 44
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 46
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    int-to-long v2, v2

    .line 50
    :goto_0
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gtz v4, :cond_2

    .line 55
    :cond_0
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;->pollTimeMillis:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    mul-long/2addr v0, v4

    cmp-long v0, v2, v0

    if-lez v0, :cond_1

    .line 56
    const/4 v0, 0x1

    .line 59
    :goto_2
    return v0

    :catch_0
    move-exception v2

    move-wide v2, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    move-wide v0, v2

    goto :goto_1
.end method

.method public setPollTimeMillis()V
    .locals 2

    .prologue
    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;->pollTimeMillis:J

    .line 34
    return-void
.end method

.method public setRpcData(Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/HomeRpcData;->rpcData:Lcom/alipay/mobilecsa/common/service/rpc/response/HomePageRes;

    .line 26
    return-void
.end method
