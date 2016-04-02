.class public Lcom/alipay/mobilesecurity/core/model/securityverify/QueryBizReq;
.super Lcom/alipay/mobilesecurity/common/service/model/ToString;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public bizNo:Ljava/lang/String;

.field public bizType:Ljava/lang/String;

.field public extendInfos:Ljava/util/Map;
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

.field public token:Ljava/lang/String;

.field public userId:Ljava/lang/String;

.field public verifyType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobilesecurity/common/service/model/ToString;-><init>()V

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobilesecurity/core/model/securityverify/QueryBizReq;->extendInfos:Ljava/util/Map;

    return-void
.end method
