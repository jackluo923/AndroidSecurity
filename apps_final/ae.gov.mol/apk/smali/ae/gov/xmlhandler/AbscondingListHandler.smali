.class public Lae/gov/xmlhandler/AbscondingListHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "AbscondingListHandler.java"


# instance fields
.field abscondingListVo:Lae/gov/mol/vo/AbscondingListVo;

.field currentElement:Ljava/lang/Boolean;

.field currentValue:Ljava/lang/String;

.field mAbscondingListVos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/AbscondingListVo;",
            ">;"
        }
    .end annotation
.end field

.field public mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 18
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lae/gov/xmlhandler/AbscondingListHandler;->currentElement:Ljava/lang/Boolean;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lae/gov/xmlhandler/AbscondingListHandler;->currentValue:Ljava/lang/String;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lae/gov/xmlhandler/AbscondingListHandler;->mAbscondingListVos:Ljava/util/ArrayList;

    .line 17
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
    .line 101
    iget-object v0, p0, Lae/gov/xmlhandler/AbscondingListHandler;->currentElement:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lae/gov/xmlhandler/AbscondingListHandler;->currentValue:Ljava/lang/String;

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

    iput-object v0, p0, Lae/gov/xmlhandler/AbscondingListHandler;->currentValue:Ljava/lang/String;

    .line 104
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
    .line 51
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lae/gov/xmlhandler/AbscondingListHandler;->currentElement:Ljava/lang/Boolean;

    .line 54
    const-string v0, "CardNumber"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    iget-object v0, p0, Lae/gov/xmlhandler/AbscondingListHandler;->abscondingListVo:Lae/gov/mol/vo/AbscondingListVo;

    iget-object v1, p0, Lae/gov/xmlhandler/AbscondingListHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/AbscondingListVo;->setCardNumber(Ljava/lang/String;)V

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    const-string v0, "CardExpiryDate"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 58
    iget-object v0, p0, Lae/gov/xmlhandler/AbscondingListHandler;->abscondingListVo:Lae/gov/mol/vo/AbscondingListVo;

    iget-object v1, p0, Lae/gov/xmlhandler/AbscondingListHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/AbscondingListVo;->setCardExpiryDate(Ljava/lang/String;)V

    goto :goto_0

    .line 60
    :cond_2
    const-string v0, "CardDescription_eng"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 61
    iget-object v0, p0, Lae/gov/xmlhandler/AbscondingListHandler;->abscondingListVo:Lae/gov/mol/vo/AbscondingListVo;

    iget-object v1, p0, Lae/gov/xmlhandler/AbscondingListHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/AbscondingListVo;->setCardDescription_eng(Ljava/lang/String;)V

    goto :goto_0

    .line 64
    :cond_3
    const-string v0, "CardDescription_arb"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 65
    iget-object v0, p0, Lae/gov/xmlhandler/AbscondingListHandler;->abscondingListVo:Lae/gov/mol/vo/AbscondingListVo;

    iget-object v1, p0, Lae/gov/xmlhandler/AbscondingListHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/AbscondingListVo;->setCardDescription_arb(Ljava/lang/String;)V

    goto :goto_0

    .line 68
    :cond_4
    const-string v0, "PersonCode"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 69
    iget-object v0, p0, Lae/gov/xmlhandler/AbscondingListHandler;->abscondingListVo:Lae/gov/mol/vo/AbscondingListVo;

    iget-object v1, p0, Lae/gov/xmlhandler/AbscondingListHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/AbscondingListVo;->setPersonCode(Ljava/lang/String;)V

    goto :goto_0

    .line 72
    :cond_5
    const-string v0, "PersonName_arb"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 73
    iget-object v0, p0, Lae/gov/xmlhandler/AbscondingListHandler;->abscondingListVo:Lae/gov/mol/vo/AbscondingListVo;

    iget-object v1, p0, Lae/gov/xmlhandler/AbscondingListHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/AbscondingListVo;->setPersonName_arb(Ljava/lang/String;)V

    goto :goto_0

    .line 77
    :cond_6
    const-string v0, "PersonName_eng"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 78
    iget-object v0, p0, Lae/gov/xmlhandler/AbscondingListHandler;->abscondingListVo:Lae/gov/mol/vo/AbscondingListVo;

    iget-object v1, p0, Lae/gov/xmlhandler/AbscondingListHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/AbscondingListVo;->setPersonName_eng(Ljava/lang/String;)V

    goto :goto_0

    .line 81
    :cond_7
    const-string v0, "Nationality_arb"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 82
    iget-object v0, p0, Lae/gov/xmlhandler/AbscondingListHandler;->abscondingListVo:Lae/gov/mol/vo/AbscondingListVo;

    iget-object v1, p0, Lae/gov/xmlhandler/AbscondingListHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/AbscondingListVo;->setNationality_arb(Ljava/lang/String;)V

    goto :goto_0

    .line 84
    :cond_8
    const-string v0, "Natioanlity_eng"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 85
    iget-object v0, p0, Lae/gov/xmlhandler/AbscondingListHandler;->abscondingListVo:Lae/gov/mol/vo/AbscondingListVo;

    iget-object v1, p0, Lae/gov/xmlhandler/AbscondingListHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/AbscondingListVo;->setNatioanlity_eng(Ljava/lang/String;)V

    goto :goto_0

    .line 87
    :cond_9
    const-string v0, "PassportNo"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 88
    iget-object v0, p0, Lae/gov/xmlhandler/AbscondingListHandler;->abscondingListVo:Lae/gov/mol/vo/AbscondingListVo;

    iget-object v1, p0, Lae/gov/xmlhandler/AbscondingListHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/AbscondingListVo;->setPassportNo(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 90
    :cond_a
    const-string v0, "AbscondingList"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lae/gov/xmlhandler/AbscondingListHandler;->mAbscondingListVos:Ljava/util/ArrayList;

    iget-object v1, p0, Lae/gov/xmlhandler/AbscondingListHandler;->abscondingListVo:Lae/gov/mol/vo/AbscondingListVo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public getmAbscondingListVos()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/AbscondingListVo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27
    iget-object v0, p0, Lae/gov/xmlhandler/AbscondingListHandler;->mAbscondingListVos:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setmAbscondingListVos(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/AbscondingListVo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p1, "mAbscondingListVos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lae/gov/mol/vo/AbscondingListVo;>;"
    iput-object p1, p0, Lae/gov/xmlhandler/AbscondingListHandler;->mAbscondingListVos:Ljava/util/ArrayList;

    .line 32
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

    iput-object v0, p0, Lae/gov/xmlhandler/AbscondingListHandler;->currentElement:Ljava/lang/Boolean;

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lae/gov/xmlhandler/AbscondingListHandler;->currentValue:Ljava/lang/String;

    .line 41
    const-string v0, "AbscondingList"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    new-instance v0, Lae/gov/mol/vo/AbscondingListVo;

    invoke-direct {v0}, Lae/gov/mol/vo/AbscondingListVo;-><init>()V

    iput-object v0, p0, Lae/gov/xmlhandler/AbscondingListHandler;->abscondingListVo:Lae/gov/mol/vo/AbscondingListVo;

    .line 44
    :cond_0
    return-void
.end method
