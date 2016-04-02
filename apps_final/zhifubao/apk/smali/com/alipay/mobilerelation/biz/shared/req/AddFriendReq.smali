.class public Lcom/alipay/mobilerelation/biz/shared/req/AddFriendReq;
.super Lcom/alipay/mobilerelation/core/model/req/SimpleCommonReq;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public bizType:Ljava/lang/String;

.field public message:Ljava/lang/String;

.field public remarkName:Ljava/lang/String;

.field public showRealName:Z

.field public source:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilerelation/core/model/req/SimpleCommonReq;-><init>()V

    return-void
.end method
