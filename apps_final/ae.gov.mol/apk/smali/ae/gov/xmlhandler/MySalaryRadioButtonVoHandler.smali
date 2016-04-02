.class public Lae/gov/xmlhandler/MySalaryRadioButtonVoHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "MySalaryRadioButtonVoHandler.java"


# instance fields
.field currentElement:Ljava/lang/Boolean;

.field currentValue:Ljava/lang/String;

.field private mArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/MySalaryRadioButtonVo;",
            ">;"
        }
    .end annotation
.end field

.field mSalaryRadioButtonVo:Lae/gov/mol/vo/MySalaryRadioButtonVo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 19
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lae/gov/xmlhandler/MySalaryRadioButtonVoHandler;->currentElement:Ljava/lang/Boolean;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lae/gov/xmlhandler/MySalaryRadioButtonVoHandler;->currentValue:Ljava/lang/String;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lae/gov/xmlhandler/MySalaryRadioButtonVoHandler;->mArrayList:Ljava/util/ArrayList;

    .line 15
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
    .line 98
    iget-object v0, p0, Lae/gov/xmlhandler/MySalaryRadioButtonVoHandler;->currentElement:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lae/gov/xmlhandler/MySalaryRadioButtonVoHandler;->currentValue:Ljava/lang/String;

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

    iput-object v0, p0, Lae/gov/xmlhandler/MySalaryRadioButtonVoHandler;->currentValue:Ljava/lang/String;

    .line 101
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
    .line 76
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lae/gov/xmlhandler/MySalaryRadioButtonVoHandler;->currentElement:Ljava/lang/Boolean;

    .line 78
    const-string v0, "detail_id"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    iget-object v0, p0, Lae/gov/xmlhandler/MySalaryRadioButtonVoHandler;->mSalaryRadioButtonVo:Lae/gov/mol/vo/MySalaryRadioButtonVo;

    iget-object v1, p0, Lae/gov/xmlhandler/MySalaryRadioButtonVoHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/MySalaryRadioButtonVo;->setDetail_id(Ljava/lang/String;)V

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    const-string v0, "detail_des"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 83
    iget-object v0, p0, Lae/gov/xmlhandler/MySalaryRadioButtonVoHandler;->mSalaryRadioButtonVo:Lae/gov/mol/vo/MySalaryRadioButtonVo;

    iget-object v1, p0, Lae/gov/xmlhandler/MySalaryRadioButtonVoHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/MySalaryRadioButtonVo;->setDetail_des(Ljava/lang/String;)V

    goto :goto_0

    .line 85
    :cond_2
    const-string v0, "detail_des_eng"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 86
    iget-object v0, p0, Lae/gov/xmlhandler/MySalaryRadioButtonVoHandler;->mSalaryRadioButtonVo:Lae/gov/mol/vo/MySalaryRadioButtonVo;

    iget-object v1, p0, Lae/gov/xmlhandler/MySalaryRadioButtonVoHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/MySalaryRadioButtonVo;->setDetail_des_eng(Ljava/lang/String;)V

    goto :goto_0

    .line 88
    :cond_3
    const-string v0, "RadioButtonComplaint"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lae/gov/xmlhandler/MySalaryRadioButtonVoHandler;->mArrayList:Ljava/util/ArrayList;

    iget-object v1, p0, Lae/gov/xmlhandler/MySalaryRadioButtonVoHandler;->mSalaryRadioButtonVo:Lae/gov/mol/vo/MySalaryRadioButtonVo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getCurrentElement()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lae/gov/xmlhandler/MySalaryRadioButtonVoHandler;->currentElement:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getCurrentValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lae/gov/xmlhandler/MySalaryRadioButtonVoHandler;->currentValue:Ljava/lang/String;

    return-object v0
.end method

.method public getmArrayList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/MySalaryRadioButtonVo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lae/gov/xmlhandler/MySalaryRadioButtonVoHandler;->mArrayList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getmSalaryRadioButtonVo()Lae/gov/mol/vo/MySalaryRadioButtonVo;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lae/gov/xmlhandler/MySalaryRadioButtonVoHandler;->mSalaryRadioButtonVo:Lae/gov/mol/vo/MySalaryRadioButtonVo;

    return-object v0
.end method

.method public setCurrentElement(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "currentElement"    # Ljava/lang/Boolean;

    .prologue
    .line 44
    iput-object p1, p0, Lae/gov/xmlhandler/MySalaryRadioButtonVoHandler;->currentElement:Ljava/lang/Boolean;

    .line 45
    return-void
.end method

.method public setCurrentValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "currentValue"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lae/gov/xmlhandler/MySalaryRadioButtonVoHandler;->currentValue:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setmArrayList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/MySalaryRadioButtonVo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p1, "mArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lae/gov/mol/vo/MySalaryRadioButtonVo;>;"
    iput-object p1, p0, Lae/gov/xmlhandler/MySalaryRadioButtonVoHandler;->mArrayList:Ljava/util/ArrayList;

    .line 57
    return-void
.end method

.method public setmSalaryRadioButtonVo(Lae/gov/mol/vo/MySalaryRadioButtonVo;)V
    .locals 0
    .param p1, "mSalaryRadioButtonVo"    # Lae/gov/mol/vo/MySalaryRadioButtonVo;

    .prologue
    .line 28
    iput-object p1, p0, Lae/gov/xmlhandler/MySalaryRadioButtonVoHandler;->mSalaryRadioButtonVo:Lae/gov/mol/vo/MySalaryRadioButtonVo;

    .line 29
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
    .line 64
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lae/gov/xmlhandler/MySalaryRadioButtonVoHandler;->currentElement:Ljava/lang/Boolean;

    .line 65
    const-string v0, ""

    iput-object v0, p0, Lae/gov/xmlhandler/MySalaryRadioButtonVoHandler;->currentValue:Ljava/lang/String;

    .line 66
    const-string v0, "RadioButtonComplaint"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    new-instance v0, Lae/gov/mol/vo/MySalaryRadioButtonVo;

    invoke-direct {v0}, Lae/gov/mol/vo/MySalaryRadioButtonVo;-><init>()V

    iput-object v0, p0, Lae/gov/xmlhandler/MySalaryRadioButtonVoHandler;->mSalaryRadioButtonVo:Lae/gov/mol/vo/MySalaryRadioButtonVo;

    .line 69
    :cond_0
    return-void
.end method
