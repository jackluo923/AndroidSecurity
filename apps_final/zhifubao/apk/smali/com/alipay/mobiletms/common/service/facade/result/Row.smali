.class public Lcom/alipay/mobiletms/common/service/facade/result/Row;
.super Lcom/alipay/mobiletms/common/service/facade/model/ToString;
.source "Row.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public jsonData:Ljava/lang/String;

.field public tplId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/alipay/mobiletms/common/service/facade/model/ToString;-><init>()V

    .line 41
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobiletms/common/service/facade/result/Row;->tplId:Ljava/lang/String;

    .line 46
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobiletms/common/service/facade/result/Row;->jsonData:Ljava/lang/String;

    .line 32
    return-void
.end method
