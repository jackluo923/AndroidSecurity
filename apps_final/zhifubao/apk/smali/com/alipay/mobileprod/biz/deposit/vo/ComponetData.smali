.class public Lcom/alipay/mobileprod/biz/deposit/vo/ComponetData;
.super Lcom/alipay/mobileprod/core/model/deposit/ToString;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public displayValue:Ljava/lang/String;

.field public index:Ljava/lang/String;

.field public state:Ljava/lang/String;

.field public value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/alipay/mobileprod/core/model/deposit/ToString;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobileprod/biz/deposit/vo/ComponetData;->displayValue:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileprod/biz/deposit/vo/ComponetData;->value:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileprod/biz/deposit/vo/ComponetData;->index:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileprod/biz/deposit/vo/ComponetData;->state:Ljava/lang/String;

    return-void
.end method
