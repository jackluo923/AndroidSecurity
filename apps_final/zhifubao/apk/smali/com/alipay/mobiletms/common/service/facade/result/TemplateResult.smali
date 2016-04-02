.class public Lcom/alipay/mobiletms/common/service/facade/result/TemplateResult;
.super Lcom/alipay/mobiletms/common/service/facade/model/MobiletmsResult;
.source "TemplateResult.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public pageData:Ljava/lang/String;

.field public template:Lcom/alipay/mobiletms/common/service/facade/rpc/Template;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public templateJson:Ljava/lang/String;

.field public templateLayout:Lcom/alipay/mobiletms/common/service/facade/result/TemplateLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/alipay/mobiletms/common/service/facade/model/MobiletmsResult;-><init>()V

    .line 41
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobiletms/common/service/facade/result/TemplateResult;->templateJson:Ljava/lang/String;

    .line 51
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobiletms/common/service/facade/result/TemplateResult;->pageData:Ljava/lang/String;

    .line 34
    return-void
.end method
