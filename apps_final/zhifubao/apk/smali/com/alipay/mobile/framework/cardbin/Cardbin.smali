.class public Lcom/alipay/mobile/framework/cardbin/Cardbin;
.super Ljava/lang/Object;
.source "Cardbin.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/j256/ormlite/table/DatabaseTable;
    tableName = "cardbin_table"
.end annotation


# static fields
.field public static final BIN_VALUE:Ljava/lang/String; = "binValue"

.field public static final CARD_LENGTH:Ljava/lang/String; = "cardLength"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private bandAlias:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private binValue:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private cardLength:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private cardName:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private cardType:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private id:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        generatedId = true
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBandAlias()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/alipay/mobile/framework/cardbin/Cardbin;->bandAlias:Ljava/lang/String;

    return-object v0
.end method

.method public getBinValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/alipay/mobile/framework/cardbin/Cardbin;->binValue:Ljava/lang/String;

    return-object v0
.end method

.method public getCardLength()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/alipay/mobile/framework/cardbin/Cardbin;->cardLength:I

    return v0
.end method

.method public getCardName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/alipay/mobile/framework/cardbin/Cardbin;->cardName:Ljava/lang/String;

    return-object v0
.end method

.method public getCardType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/alipay/mobile/framework/cardbin/Cardbin;->cardType:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/alipay/mobile/framework/cardbin/Cardbin;->id:I

    return v0
.end method

.method public setBandAlias(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/alipay/mobile/framework/cardbin/Cardbin;->bandAlias:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setBinValue(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/alipay/mobile/framework/cardbin/Cardbin;->binValue:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setCardLength(I)V
    .locals 0

    .prologue
    .line 73
    iput p1, p0, Lcom/alipay/mobile/framework/cardbin/Cardbin;->cardLength:I

    .line 74
    return-void
.end method

.method public setCardName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/alipay/mobile/framework/cardbin/Cardbin;->cardName:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setCardType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/alipay/mobile/framework/cardbin/Cardbin;->cardType:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setId(I)V
    .locals 0

    .prologue
    .line 57
    iput p1, p0, Lcom/alipay/mobile/framework/cardbin/Cardbin;->id:I

    .line 58
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, " ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/cardbin/Cardbin;->getBinValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 103
    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/cardbin/Cardbin;->getCardLength()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 104
    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/cardbin/Cardbin;->getCardType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 105
    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/cardbin/Cardbin;->getCardName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 106
    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/cardbin/Cardbin;->getBandAlias()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 102
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
