.class public Lcom/alipay/kabaoprod/core/model/model/IndexPassDetail;
.super Lcom/alipay/kabaoprod/service/facade/model/ToString;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public freeze:Z

.field public hidden:Z

.field public isMark:Z

.field public outlineContent:Ljava/lang/String;

.field public targetUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/alipay/kabaoprod/service/facade/model/ToString;-><init>()V

    iput-boolean v0, p0, Lcom/alipay/kabaoprod/core/model/model/IndexPassDetail;->isMark:Z

    iput-boolean v0, p0, Lcom/alipay/kabaoprod/core/model/model/IndexPassDetail;->freeze:Z

    iput-boolean v0, p0, Lcom/alipay/kabaoprod/core/model/model/IndexPassDetail;->hidden:Z

    return-void
.end method
