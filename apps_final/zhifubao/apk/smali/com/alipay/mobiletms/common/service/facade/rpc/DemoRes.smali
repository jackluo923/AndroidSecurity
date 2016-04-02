.class public Lcom/alipay/mobiletms/common/service/facade/rpc/DemoRes;
.super Lcom/alipay/mobiletms/common/service/facade/model/ToString;
.source "DemoRes.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public bizRes:Ljava/lang/String;

.field public templateResult:Lcom/alipay/mobiletms/common/service/facade/result/TemplateResult;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/alipay/mobiletms/common/service/facade/model/ToString;-><init>()V

    .line 42
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobiletms/common/service/facade/rpc/DemoRes;->bizRes:Ljava/lang/String;

    .line 33
    return-void
.end method
