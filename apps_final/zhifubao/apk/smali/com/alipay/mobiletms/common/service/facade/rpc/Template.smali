.class public Lcom/alipay/mobiletms/common/service/facade/rpc/Template;
.super Lcom/alipay/mobiletms/common/service/facade/model/ToString;
.source "Template.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public data:Ljava/lang/String;

.field public dataObserver:Ljava/lang/String;

.field public format:Ljava/lang/String;

.field public html:Ljava/lang/String;

.field public publishVersion:Ljava/lang/String;

.field public tag:Ljava/lang/String;

.field public time:Ljava/lang/String;

.field public tplId:Ljava/lang/String;

.field public tplVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/alipay/mobiletms/common/service/facade/model/ToString;-><init>()V

    .line 58
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->publishVersion:Ljava/lang/String;

    .line 32
    return-void
.end method
