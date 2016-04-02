.class public Lcom/alipay/mobilesecurity/core/model/account/ClearAccountV2Req;
.super Lcom/alipay/mobilesecurity/common/service/model/ToString;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public clientId:Ljava/lang/String;

.field public logonId:Ljava/lang/String;

.field public mspTid:Lcom/alipay/mobilesecurity/core/model/Tid;

.field public productId:Ljava/lang/String;

.field public productVersion:Ljava/lang/String;

.field public uttid:Ljava/lang/String;

.field public walletTid:Lcom/alipay/mobilesecurity/core/model/Tid;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilesecurity/common/service/model/ToString;-><init>()V

    return-void
.end method
