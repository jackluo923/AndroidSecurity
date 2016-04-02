.class public Lcom/alipay/kabaoprod/core/model/model/BizItem;
.super Lcom/alipay/kabaoprod/service/facade/model/ToString;


# instance fields
.field public bizItemCode:Ljava/lang/String;

.field public bizItemName:Ljava/lang/String;

.field public bizItemProp:Ljava/util/Map;
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

.field public bizItemValue:Ljava/lang/String;

.field public index:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/kabaoprod/service/facade/model/ToString;-><init>()V

    const/16 v0, 0x64

    iput v0, p0, Lcom/alipay/kabaoprod/core/model/model/BizItem;->index:I

    return-void
.end method


# virtual methods
.method public getBizItemCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/kabaoprod/core/model/model/BizItem;->bizItemCode:Ljava/lang/String;

    return-object v0
.end method

.method public getBizItemName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/kabaoprod/core/model/model/BizItem;->bizItemName:Ljava/lang/String;

    return-object v0
.end method

.method public getBizItemProp()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/kabaoprod/core/model/model/BizItem;->bizItemProp:Ljava/util/Map;

    return-object v0
.end method

.method public getBizItemValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/kabaoprod/core/model/model/BizItem;->bizItemValue:Ljava/lang/String;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    iget v0, p0, Lcom/alipay/kabaoprod/core/model/model/BizItem;->index:I

    return v0
.end method

.method public setBizItemCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/kabaoprod/core/model/model/BizItem;->bizItemCode:Ljava/lang/String;

    return-void
.end method

.method public setBizItemName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/kabaoprod/core/model/model/BizItem;->bizItemName:Ljava/lang/String;

    return-void
.end method

.method public setBizItemProp(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alipay/kabaoprod/core/model/model/BizItem;->bizItemProp:Ljava/util/Map;

    return-void
.end method

.method public setBizItemValue(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/kabaoprod/core/model/model/BizItem;->bizItemValue:Ljava/lang/String;

    return-void
.end method

.method public setIndex(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/kabaoprod/core/model/model/BizItem;->index:I

    return-void
.end method
