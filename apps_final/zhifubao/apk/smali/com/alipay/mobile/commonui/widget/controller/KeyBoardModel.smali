.class public Lcom/alipay/mobile/commonui/widget/controller/KeyBoardModel;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/controller/KeyBoardModel;->d:I

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/controller/KeyBoardModel;->a:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/controller/KeyBoardModel;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getTab()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/controller/KeyBoardModel;->d:I

    return v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/controller/KeyBoardModel;->c:I

    return v0
.end method

.method public setId(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/mobile/commonui/widget/controller/KeyBoardModel;->a:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/controller/KeyBoardModel;->b:Ljava/lang/String;

    return-void
.end method

.method public setTab(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/mobile/commonui/widget/controller/KeyBoardModel;->d:I

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/mobile/commonui/widget/controller/KeyBoardModel;->c:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "KeyBoardModel [id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/alipay/mobile/commonui/widget/controller/KeyBoardModel;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/controller/KeyBoardModel;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alipay/mobile/commonui/widget/controller/KeyBoardModel;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", tab="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alipay/mobile/commonui/widget/controller/KeyBoardModel;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
