.class public Lae/gov/xmlhandler/MyContractDetailsHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "MyContractDetailsHandler.java"


# instance fields
.field currentElement:Ljava/lang/Boolean;

.field currentValue:Ljava/lang/String;

.field public mContext:Landroid/content/Context;

.field mMyContactVo:Lae/gov/mol/vo/MyContactVo;

.field private mMyContractList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/MyContactVo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 18
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lae/gov/xmlhandler/MyContractDetailsHandler;->currentElement:Ljava/lang/Boolean;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lae/gov/xmlhandler/MyContractDetailsHandler;->currentValue:Ljava/lang/String;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lae/gov/xmlhandler/MyContractDetailsHandler;->mMyContractList:Ljava/util/ArrayList;

    .line 16
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 2
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 176
    iget-object v0, p0, Lae/gov/xmlhandler/MyContractDetailsHandler;->currentElement:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lae/gov/xmlhandler/MyContractDetailsHandler;->currentValue:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/gov/xmlhandler/MyContractDetailsHandler;->currentValue:Ljava/lang/String;

    .line 179
    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lae/gov/xmlhandler/MyContractDetailsHandler;->currentElement:Ljava/lang/Boolean;

    .line 86
    const-string v0, "CardNo"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    iget-object v0, p0, Lae/gov/xmlhandler/MyContractDetailsHandler;->mMyContactVo:Lae/gov/mol/vo/MyContactVo;

    iget-object v1, p0, Lae/gov/xmlhandler/MyContractDetailsHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/MyContactVo;->setCardNumber(Ljava/lang/String;)V

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    const-string v0, "CardStartDate"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 92
    iget-object v0, p0, Lae/gov/xmlhandler/MyContractDetailsHandler;->mMyContactVo:Lae/gov/mol/vo/MyContactVo;

    iget-object v1, p0, Lae/gov/xmlhandler/MyContractDetailsHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/MyContactVo;->setCardStartDate(Ljava/lang/String;)V

    goto :goto_0

    .line 94
    :cond_2
    const-string v0, "CardExpiry"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 96
    iget-object v0, p0, Lae/gov/xmlhandler/MyContractDetailsHandler;->mMyContactVo:Lae/gov/mol/vo/MyContactVo;

    iget-object v1, p0, Lae/gov/xmlhandler/MyContractDetailsHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/MyContactVo;->setCardExpiry(Ljava/lang/String;)V

    goto :goto_0

    .line 99
    :cond_3
    const-string v0, "ContractType"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 101
    iget-object v0, p0, Lae/gov/xmlhandler/MyContractDetailsHandler;->mMyContactVo:Lae/gov/mol/vo/MyContactVo;

    iget-object v1, p0, Lae/gov/xmlhandler/MyContractDetailsHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/MyContactVo;->setContractType(Ljava/lang/String;)V

    goto :goto_0

    .line 104
    :cond_4
    const-string v0, "contractStartDate"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 106
    iget-object v0, p0, Lae/gov/xmlhandler/MyContractDetailsHandler;->mMyContactVo:Lae/gov/mol/vo/MyContactVo;

    iget-object v1, p0, Lae/gov/xmlhandler/MyContractDetailsHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/MyContactVo;->setContractStartDate(Ljava/lang/String;)V

    goto :goto_0

    .line 110
    :cond_5
    const-string v0, "contractEndDate"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 112
    iget-object v0, p0, Lae/gov/xmlhandler/MyContractDetailsHandler;->mMyContactVo:Lae/gov/mol/vo/MyContactVo;

    iget-object v1, p0, Lae/gov/xmlhandler/MyContractDetailsHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/MyContactVo;->setContractEndDate(Ljava/lang/String;)V

    goto :goto_0

    .line 116
    :cond_6
    const-string v0, "JobDescriptionEnglish"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 118
    iget-object v0, p0, Lae/gov/xmlhandler/MyContractDetailsHandler;->mMyContactVo:Lae/gov/mol/vo/MyContactVo;

    iget-object v1, p0, Lae/gov/xmlhandler/MyContractDetailsHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/MyContactVo;->setJobDescriptionEnglish(Ljava/lang/String;)V

    goto :goto_0

    .line 121
    :cond_7
    const-string v0, "JobDescriptionArabic"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 123
    iget-object v0, p0, Lae/gov/xmlhandler/MyContractDetailsHandler;->mMyContactVo:Lae/gov/mol/vo/MyContactVo;

    iget-object v1, p0, Lae/gov/xmlhandler/MyContractDetailsHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/MyContactVo;->setJobDescriptionArabic(Ljava/lang/String;)V

    goto :goto_0

    .line 126
    :cond_8
    const-string v0, "BasicSalary"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 127
    iget-object v0, p0, Lae/gov/xmlhandler/MyContractDetailsHandler;->mMyContactVo:Lae/gov/mol/vo/MyContactVo;

    iget-object v1, p0, Lae/gov/xmlhandler/MyContractDetailsHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/MyContactVo;->setBasicSalary(Ljava/lang/String;)V

    goto :goto_0

    .line 129
    :cond_9
    const-string v0, "TotalSalary"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 130
    iget-object v0, p0, Lae/gov/xmlhandler/MyContractDetailsHandler;->mMyContactVo:Lae/gov/mol/vo/MyContactVo;

    iget-object v1, p0, Lae/gov/xmlhandler/MyContractDetailsHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/MyContactVo;->setTotalSalary(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 132
    :cond_a
    const-string v0, "AllowanceTransportArabic"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 133
    iget-object v0, p0, Lae/gov/xmlhandler/MyContractDetailsHandler;->mMyContactVo:Lae/gov/mol/vo/MyContactVo;

    iget-object v1, p0, Lae/gov/xmlhandler/MyContractDetailsHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/MyContactVo;->setAllowanceTransportArabic(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 135
    :cond_b
    const-string v0, "AllowanceTransportEnglish"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 136
    iget-object v0, p0, Lae/gov/xmlhandler/MyContractDetailsHandler;->mMyContactVo:Lae/gov/mol/vo/MyContactVo;

    iget-object v1, p0, Lae/gov/xmlhandler/MyContractDetailsHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/MyContactVo;->setAllowanceTransportEnglish(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 138
    :cond_c
    const-string v0, "Allowance1ResidenceArabic"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 139
    iget-object v0, p0, Lae/gov/xmlhandler/MyContractDetailsHandler;->mMyContactVo:Lae/gov/mol/vo/MyContactVo;

    iget-object v1, p0, Lae/gov/xmlhandler/MyContractDetailsHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/MyContactVo;->setAllowance1ResidenceArabic(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 141
    :cond_d
    const-string v0, "Allowance1ResidenceEnglish"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 142
    iget-object v0, p0, Lae/gov/xmlhandler/MyContractDetailsHandler;->mMyContactVo:Lae/gov/mol/vo/MyContactVo;

    iget-object v1, p0, Lae/gov/xmlhandler/MyContractDetailsHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/MyContactVo;->setAllowance1ResidenceEnglish(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 144
    :cond_e
    const-string v0, "Allowance2ResidenceArabic"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 145
    iget-object v0, p0, Lae/gov/xmlhandler/MyContractDetailsHandler;->mMyContactVo:Lae/gov/mol/vo/MyContactVo;

    iget-object v1, p0, Lae/gov/xmlhandler/MyContractDetailsHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/MyContactVo;->setAllowance2ResidenceArabic(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 146
    :cond_f
    const-string v0, "Allowance2ResidenceEnglish"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 147
    iget-object v0, p0, Lae/gov/xmlhandler/MyContractDetailsHandler;->mMyContactVo:Lae/gov/mol/vo/MyContactVo;

    iget-object v1, p0, Lae/gov/xmlhandler/MyContractDetailsHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/MyContactVo;->setAllowance2ResidenceEnglish(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 149
    :cond_10
    const-string v0, "Allowance3ResidenceArabic"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 150
    iget-object v0, p0, Lae/gov/xmlhandler/MyContractDetailsHandler;->mMyContactVo:Lae/gov/mol/vo/MyContactVo;

    iget-object v1, p0, Lae/gov/xmlhandler/MyContractDetailsHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/MyContactVo;->setAllowance3ResidenceArabic(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 152
    :cond_11
    const-string v0, "Allowance3ResidenceEnglish"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 153
    iget-object v0, p0, Lae/gov/xmlhandler/MyContractDetailsHandler;->mMyContactVo:Lae/gov/mol/vo/MyContactVo;

    iget-object v1, p0, Lae/gov/xmlhandler/MyContractDetailsHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/MyContactVo;->setAllowance3ResidenceEnglish(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 154
    :cond_12
    const-string v0, "Allowance4ResidenceArabic"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 155
    iget-object v0, p0, Lae/gov/xmlhandler/MyContractDetailsHandler;->mMyContactVo:Lae/gov/mol/vo/MyContactVo;

    iget-object v1, p0, Lae/gov/xmlhandler/MyContractDetailsHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/MyContactVo;->setAllowance4ResidenceArabic(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 157
    :cond_13
    const-string v0, "Allowance4ResidenceEnglish"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 158
    iget-object v0, p0, Lae/gov/xmlhandler/MyContractDetailsHandler;->mMyContactVo:Lae/gov/mol/vo/MyContactVo;

    iget-object v1, p0, Lae/gov/xmlhandler/MyContractDetailsHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/MyContactVo;->setAllowance4ResidenceEnglish(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 162
    :cond_14
    const-string v0, "ContractDetails"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lae/gov/xmlhandler/MyContractDetailsHandler;->mMyContractList:Ljava/util/ArrayList;

    iget-object v1, p0, Lae/gov/xmlhandler/MyContractDetailsHandler;->mMyContactVo:Lae/gov/mol/vo/MyContactVo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public getCurrentElement()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lae/gov/xmlhandler/MyContractDetailsHandler;->currentElement:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getCurrentValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lae/gov/xmlhandler/MyContractDetailsHandler;->currentValue:Ljava/lang/String;

    return-object v0
.end method

.method public getmContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lae/gov/xmlhandler/MyContractDetailsHandler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getmMyContactVo()Lae/gov/mol/vo/MyContactVo;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lae/gov/xmlhandler/MyContractDetailsHandler;->mMyContactVo:Lae/gov/mol/vo/MyContactVo;

    return-object v0
.end method

.method public getmMyContractList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/MyContactVo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lae/gov/xmlhandler/MyContractDetailsHandler;->mMyContractList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setCurrentElement(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "currentElement"    # Ljava/lang/Boolean;

    .prologue
    .line 26
    iput-object p1, p0, Lae/gov/xmlhandler/MyContractDetailsHandler;->currentElement:Ljava/lang/Boolean;

    .line 27
    return-void
.end method

.method public setCurrentValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "currentValue"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lae/gov/xmlhandler/MyContractDetailsHandler;->currentValue:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setmContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 50
    iput-object p1, p0, Lae/gov/xmlhandler/MyContractDetailsHandler;->mContext:Landroid/content/Context;

    .line 51
    return-void
.end method

.method public setmMyContactVo(Lae/gov/mol/vo/MyContactVo;)V
    .locals 0
    .param p1, "mMyContactVo"    # Lae/gov/mol/vo/MyContactVo;

    .prologue
    .line 42
    iput-object p1, p0, Lae/gov/xmlhandler/MyContractDetailsHandler;->mMyContactVo:Lae/gov/mol/vo/MyContactVo;

    .line 43
    return-void
.end method

.method public setmMyContractList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/MyContactVo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p1, "mMyContractList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lae/gov/mol/vo/MyContactVo;>;"
    iput-object p1, p0, Lae/gov/xmlhandler/MyContractDetailsHandler;->mMyContractList:Ljava/util/ArrayList;

    .line 63
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 70
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lae/gov/xmlhandler/MyContractDetailsHandler;->currentElement:Ljava/lang/Boolean;

    .line 71
    const-string v0, ""

    iput-object v0, p0, Lae/gov/xmlhandler/MyContractDetailsHandler;->currentValue:Ljava/lang/String;

    .line 72
    const-string v0, "ContractDetails"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    new-instance v0, Lae/gov/mol/vo/MyContactVo;

    invoke-direct {v0}, Lae/gov/mol/vo/MyContactVo;-><init>()V

    iput-object v0, p0, Lae/gov/xmlhandler/MyContractDetailsHandler;->mMyContactVo:Lae/gov/mol/vo/MyContactVo;

    .line 75
    :cond_0
    return-void
.end method
