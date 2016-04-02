.class public Lae/gov/xmlhandler/NationalLabourCardListHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "NationalLabourCardListHandler.java"


# instance fields
.field currentElement:Ljava/lang/Boolean;

.field currentValue:Ljava/lang/String;

.field public mContext:Landroid/content/Context;

.field private mLabourCardListVos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/NationalLabourCardListVo;",
            ">;"
        }
    .end annotation
.end field

.field mNationalLabourCardListVo:Lae/gov/mol/vo/NationalLabourCardListVo;


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

    iput-object v0, p0, Lae/gov/xmlhandler/NationalLabourCardListHandler;->currentElement:Ljava/lang/Boolean;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lae/gov/xmlhandler/NationalLabourCardListHandler;->currentValue:Ljava/lang/String;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lae/gov/xmlhandler/NationalLabourCardListHandler;->mLabourCardListVos:Ljava/util/ArrayList;

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
    .line 100
    iget-object v0, p0, Lae/gov/xmlhandler/NationalLabourCardListHandler;->currentElement:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lae/gov/xmlhandler/NationalLabourCardListHandler;->currentValue:Ljava/lang/String;

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

    iput-object v0, p0, Lae/gov/xmlhandler/NationalLabourCardListHandler;->currentValue:Ljava/lang/String;

    .line 103
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
    .line 52
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lae/gov/xmlhandler/NationalLabourCardListHandler;->currentElement:Ljava/lang/Boolean;

    .line 54
    const-string v0, "PersonCode"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    iget-object v0, p0, Lae/gov/xmlhandler/NationalLabourCardListHandler;->mNationalLabourCardListVo:Lae/gov/mol/vo/NationalLabourCardListVo;

    iget-object v1, p0, Lae/gov/xmlhandler/NationalLabourCardListHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/NationalLabourCardListVo;->setPersonCode(Ljava/lang/String;)V

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 56
    :cond_1
    const-string v0, "PersonName_arb"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 57
    iget-object v0, p0, Lae/gov/xmlhandler/NationalLabourCardListHandler;->mNationalLabourCardListVo:Lae/gov/mol/vo/NationalLabourCardListVo;

    iget-object v1, p0, Lae/gov/xmlhandler/NationalLabourCardListHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/NationalLabourCardListVo;->setPersonName_arb(Ljava/lang/String;)V

    goto :goto_0

    .line 58
    :cond_2
    const-string v0, "PersonName_eng"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 59
    iget-object v0, p0, Lae/gov/xmlhandler/NationalLabourCardListHandler;->mNationalLabourCardListVo:Lae/gov/mol/vo/NationalLabourCardListVo;

    iget-object v1, p0, Lae/gov/xmlhandler/NationalLabourCardListHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/NationalLabourCardListVo;->setPersonName_eng(Ljava/lang/String;)V

    goto :goto_0

    .line 61
    :cond_3
    const-string v0, "Sex_arb"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 62
    iget-object v0, p0, Lae/gov/xmlhandler/NationalLabourCardListHandler;->mNationalLabourCardListVo:Lae/gov/mol/vo/NationalLabourCardListVo;

    iget-object v1, p0, Lae/gov/xmlhandler/NationalLabourCardListHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/NationalLabourCardListVo;->setSex_arb(Ljava/lang/String;)V

    goto :goto_0

    .line 64
    :cond_4
    const-string v0, "Sex_eng"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 65
    iget-object v0, p0, Lae/gov/xmlhandler/NationalLabourCardListHandler;->mNationalLabourCardListVo:Lae/gov/mol/vo/NationalLabourCardListVo;

    iget-object v1, p0, Lae/gov/xmlhandler/NationalLabourCardListHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/NationalLabourCardListVo;->setSex_eng(Ljava/lang/String;)V

    goto :goto_0

    .line 67
    :cond_5
    const-string v0, "CardNumber"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 68
    iget-object v0, p0, Lae/gov/xmlhandler/NationalLabourCardListHandler;->mNationalLabourCardListVo:Lae/gov/mol/vo/NationalLabourCardListVo;

    iget-object v1, p0, Lae/gov/xmlhandler/NationalLabourCardListHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/NationalLabourCardListVo;->setCardNumber(Ljava/lang/String;)V

    goto :goto_0

    .line 70
    :cond_6
    const-string v0, "CardIssueDate"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 71
    iget-object v0, p0, Lae/gov/xmlhandler/NationalLabourCardListHandler;->mNationalLabourCardListVo:Lae/gov/mol/vo/NationalLabourCardListVo;

    iget-object v1, p0, Lae/gov/xmlhandler/NationalLabourCardListHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/NationalLabourCardListVo;->setCardIssueDate(Ljava/lang/String;)V

    goto :goto_0

    .line 73
    :cond_7
    const-string v0, "CardExpiryDate"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 74
    iget-object v0, p0, Lae/gov/xmlhandler/NationalLabourCardListHandler;->mNationalLabourCardListVo:Lae/gov/mol/vo/NationalLabourCardListVo;

    iget-object v1, p0, Lae/gov/xmlhandler/NationalLabourCardListHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/NationalLabourCardListVo;->setCardExpiryDate(Ljava/lang/String;)V

    goto :goto_0

    .line 76
    :cond_8
    const-string v0, "TotalSalary"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 77
    iget-object v0, p0, Lae/gov/xmlhandler/NationalLabourCardListHandler;->mNationalLabourCardListVo:Lae/gov/mol/vo/NationalLabourCardListVo;

    iget-object v1, p0, Lae/gov/xmlhandler/NationalLabourCardListHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/NationalLabourCardListVo;->setTotalSalary(Ljava/lang/String;)V

    goto :goto_0

    .line 79
    :cond_9
    const-string v0, "nat_arb"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 80
    iget-object v0, p0, Lae/gov/xmlhandler/NationalLabourCardListHandler;->mNationalLabourCardListVo:Lae/gov/mol/vo/NationalLabourCardListVo;

    iget-object v1, p0, Lae/gov/xmlhandler/NationalLabourCardListHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/NationalLabourCardListVo;->setNat_arb(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 82
    :cond_a
    const-string v0, "nat_eng"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 83
    iget-object v0, p0, Lae/gov/xmlhandler/NationalLabourCardListHandler;->mNationalLabourCardListVo:Lae/gov/mol/vo/NationalLabourCardListVo;

    iget-object v1, p0, Lae/gov/xmlhandler/NationalLabourCardListHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/NationalLabourCardListVo;->setNat_eng(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 85
    :cond_b
    const-string v0, "JobType_arb"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 86
    iget-object v0, p0, Lae/gov/xmlhandler/NationalLabourCardListHandler;->mNationalLabourCardListVo:Lae/gov/mol/vo/NationalLabourCardListVo;

    iget-object v1, p0, Lae/gov/xmlhandler/NationalLabourCardListHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/NationalLabourCardListVo;->setJobType_arb(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 88
    :cond_c
    const-string v0, "JobType_eng"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 89
    iget-object v0, p0, Lae/gov/xmlhandler/NationalLabourCardListHandler;->mNationalLabourCardListVo:Lae/gov/mol/vo/NationalLabourCardListVo;

    iget-object v1, p0, Lae/gov/xmlhandler/NationalLabourCardListHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/NationalLabourCardListVo;->setJobType_eng(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 90
    :cond_d
    const-string v0, "NationalCardList"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lae/gov/xmlhandler/NationalLabourCardListHandler;->mLabourCardListVos:Ljava/util/ArrayList;

    iget-object v1, p0, Lae/gov/xmlhandler/NationalLabourCardListHandler;->mNationalLabourCardListVo:Lae/gov/mol/vo/NationalLabourCardListVo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public getmLabourCardListVos()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/NationalLabourCardListVo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27
    iget-object v0, p0, Lae/gov/xmlhandler/NationalLabourCardListHandler;->mLabourCardListVos:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setmLabourCardListVos(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/NationalLabourCardListVo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p1, "mLabourCardListVos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lae/gov/mol/vo/NationalLabourCardListVo;>;"
    iput-object p1, p0, Lae/gov/xmlhandler/NationalLabourCardListHandler;->mLabourCardListVos:Ljava/util/ArrayList;

    .line 33
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
    .line 39
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lae/gov/xmlhandler/NationalLabourCardListHandler;->currentElement:Ljava/lang/Boolean;

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lae/gov/xmlhandler/NationalLabourCardListHandler;->currentValue:Ljava/lang/String;

    .line 41
    const-string v0, "NationalCardList"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    new-instance v0, Lae/gov/mol/vo/NationalLabourCardListVo;

    invoke-direct {v0}, Lae/gov/mol/vo/NationalLabourCardListVo;-><init>()V

    iput-object v0, p0, Lae/gov/xmlhandler/NationalLabourCardListHandler;->mNationalLabourCardListVo:Lae/gov/mol/vo/NationalLabourCardListVo;

    .line 45
    :cond_0
    return-void
.end method
