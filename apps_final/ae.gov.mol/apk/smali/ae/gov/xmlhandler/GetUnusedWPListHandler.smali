.class public Lae/gov/xmlhandler/GetUnusedWPListHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "GetUnusedWPListHandler.java"


# instance fields
.field currentElement:Ljava/lang/Boolean;

.field currentValue:Ljava/lang/String;

.field public mContext:Landroid/content/Context;

.field mGetUnusedWPListVos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/GetUnusedWP;",
            ">;"
        }
    .end annotation
.end field

.field nGetUnusedWP:Lae/gov/mol/vo/GetUnusedWP;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 17
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lae/gov/xmlhandler/GetUnusedWPListHandler;->currentElement:Ljava/lang/Boolean;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lae/gov/xmlhandler/GetUnusedWPListHandler;->currentValue:Ljava/lang/String;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lae/gov/xmlhandler/GetUnusedWPListHandler;->mGetUnusedWPListVos:Ljava/util/ArrayList;

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
    iget-object v0, p0, Lae/gov/xmlhandler/GetUnusedWPListHandler;->currentElement:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lae/gov/xmlhandler/GetUnusedWPListHandler;->currentValue:Ljava/lang/String;

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

    iput-object v0, p0, Lae/gov/xmlhandler/GetUnusedWPListHandler;->currentValue:Ljava/lang/String;

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
    .line 50
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lae/gov/xmlhandler/GetUnusedWPListHandler;->currentElement:Ljava/lang/Boolean;

    .line 53
    const-string v0, "CardNumber"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    iget-object v0, p0, Lae/gov/xmlhandler/GetUnusedWPListHandler;->nGetUnusedWP:Lae/gov/mol/vo/GetUnusedWP;

    iget-object v1, p0, Lae/gov/xmlhandler/GetUnusedWPListHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/GetUnusedWP;->setCardNumber(Ljava/lang/String;)V

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 56
    :cond_1
    const-string v0, "CardExpiryDate"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 57
    iget-object v0, p0, Lae/gov/xmlhandler/GetUnusedWPListHandler;->nGetUnusedWP:Lae/gov/mol/vo/GetUnusedWP;

    iget-object v1, p0, Lae/gov/xmlhandler/GetUnusedWPListHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/GetUnusedWP;->setCardExpiryDate(Ljava/lang/String;)V

    goto :goto_0

    .line 59
    :cond_2
    const-string v0, "CardDescription_eng"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 60
    iget-object v0, p0, Lae/gov/xmlhandler/GetUnusedWPListHandler;->nGetUnusedWP:Lae/gov/mol/vo/GetUnusedWP;

    iget-object v1, p0, Lae/gov/xmlhandler/GetUnusedWPListHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/GetUnusedWP;->setCardDescription_eng(Ljava/lang/String;)V

    goto :goto_0

    .line 63
    :cond_3
    const-string v0, "CardDescription_arb"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 64
    iget-object v0, p0, Lae/gov/xmlhandler/GetUnusedWPListHandler;->nGetUnusedWP:Lae/gov/mol/vo/GetUnusedWP;

    iget-object v1, p0, Lae/gov/xmlhandler/GetUnusedWPListHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/GetUnusedWP;->setCardDescription_arb(Ljava/lang/String;)V

    goto :goto_0

    .line 67
    :cond_4
    const-string v0, "PersonCode"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 68
    iget-object v0, p0, Lae/gov/xmlhandler/GetUnusedWPListHandler;->nGetUnusedWP:Lae/gov/mol/vo/GetUnusedWP;

    iget-object v1, p0, Lae/gov/xmlhandler/GetUnusedWPListHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/GetUnusedWP;->setPersonCode(Ljava/lang/String;)V

    goto :goto_0

    .line 71
    :cond_5
    const-string v0, "PersonName_arb"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 72
    iget-object v0, p0, Lae/gov/xmlhandler/GetUnusedWPListHandler;->nGetUnusedWP:Lae/gov/mol/vo/GetUnusedWP;

    iget-object v1, p0, Lae/gov/xmlhandler/GetUnusedWPListHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/GetUnusedWP;->setPersonName_arb(Ljava/lang/String;)V

    goto :goto_0

    .line 76
    :cond_6
    const-string v0, "PersonName_eng"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 77
    iget-object v0, p0, Lae/gov/xmlhandler/GetUnusedWPListHandler;->nGetUnusedWP:Lae/gov/mol/vo/GetUnusedWP;

    iget-object v1, p0, Lae/gov/xmlhandler/GetUnusedWPListHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/GetUnusedWP;->setPersonName_eng(Ljava/lang/String;)V

    goto :goto_0

    .line 80
    :cond_7
    const-string v0, "Nationality_arb"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 81
    iget-object v0, p0, Lae/gov/xmlhandler/GetUnusedWPListHandler;->nGetUnusedWP:Lae/gov/mol/vo/GetUnusedWP;

    iget-object v1, p0, Lae/gov/xmlhandler/GetUnusedWPListHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/GetUnusedWP;->setNationality_arb(Ljava/lang/String;)V

    goto :goto_0

    .line 83
    :cond_8
    const-string v0, "Natioanlity_eng"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 84
    iget-object v0, p0, Lae/gov/xmlhandler/GetUnusedWPListHandler;->nGetUnusedWP:Lae/gov/mol/vo/GetUnusedWP;

    iget-object v1, p0, Lae/gov/xmlhandler/GetUnusedWPListHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/GetUnusedWP;->setNatioanlity_eng(Ljava/lang/String;)V

    goto :goto_0

    .line 86
    :cond_9
    const-string v0, "PassportNo"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 87
    iget-object v0, p0, Lae/gov/xmlhandler/GetUnusedWPListHandler;->nGetUnusedWP:Lae/gov/mol/vo/GetUnusedWP;

    iget-object v1, p0, Lae/gov/xmlhandler/GetUnusedWPListHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/GetUnusedWP;->setPassportNo(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 89
    :cond_a
    const-string v0, "getUnusedWP"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lae/gov/xmlhandler/GetUnusedWPListHandler;->mGetUnusedWPListVos:Ljava/util/ArrayList;

    iget-object v1, p0, Lae/gov/xmlhandler/GetUnusedWPListHandler;->nGetUnusedWP:Lae/gov/mol/vo/GetUnusedWP;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public getmGetUnusedWPListVos()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/GetUnusedWP;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26
    iget-object v0, p0, Lae/gov/xmlhandler/GetUnusedWPListHandler;->mGetUnusedWPListVos:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setmGetUnusedWPListVos(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/GetUnusedWP;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p1, "mGetUnusedWPListVos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lae/gov/mol/vo/GetUnusedWP;>;"
    iput-object p1, p0, Lae/gov/xmlhandler/GetUnusedWPListHandler;->mGetUnusedWPListVos:Ljava/util/ArrayList;

    .line 31
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
    .line 38
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lae/gov/xmlhandler/GetUnusedWPListHandler;->currentElement:Ljava/lang/Boolean;

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lae/gov/xmlhandler/GetUnusedWPListHandler;->currentValue:Ljava/lang/String;

    .line 40
    const-string v0, "getUnusedWP"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    new-instance v0, Lae/gov/mol/vo/GetUnusedWP;

    invoke-direct {v0}, Lae/gov/mol/vo/GetUnusedWP;-><init>()V

    iput-object v0, p0, Lae/gov/xmlhandler/GetUnusedWPListHandler;->nGetUnusedWP:Lae/gov/mol/vo/GetUnusedWP;

    .line 43
    :cond_0
    return-void
.end method
