.class public Lae/gov/xmlhandler/InspectionStatusHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "InspectionStatusHandler.java"


# instance fields
.field currentElement:Ljava/lang/Boolean;

.field currentValue:Ljava/lang/String;

.field isInspectionStatus:Z

.field isInspectionStatusParent:Z

.field private mArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/InspectionRequestAndStatusVo;",
            ">;"
        }
    .end annotation
.end field

.field mInspectionRequestVo:Lae/gov/mol/vo/InspectionRequestAndStatusVo;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 15
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lae/gov/xmlhandler/InspectionStatusHandler;->mArrayList:Ljava/util/ArrayList;

    .line 19
    iput-boolean v1, p0, Lae/gov/xmlhandler/InspectionStatusHandler;->isInspectionStatus:Z

    .line 20
    iput-boolean v1, p0, Lae/gov/xmlhandler/InspectionStatusHandler;->isInspectionStatusParent:Z

    .line 30
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lae/gov/xmlhandler/InspectionStatusHandler;->currentElement:Ljava/lang/Boolean;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lae/gov/xmlhandler/InspectionStatusHandler;->currentValue:Ljava/lang/String;

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
    .line 95
    iget-object v0, p0, Lae/gov/xmlhandler/InspectionStatusHandler;->currentElement:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lae/gov/xmlhandler/InspectionStatusHandler;->currentValue:Ljava/lang/String;

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

    iput-object v0, p0, Lae/gov/xmlhandler/InspectionStatusHandler;->currentValue:Ljava/lang/String;

    .line 98
    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 52
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lae/gov/xmlhandler/InspectionStatusHandler;->currentElement:Ljava/lang/Boolean;

    .line 54
    const-string v0, "code"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    iget-object v0, p0, Lae/gov/xmlhandler/InspectionStatusHandler;->mInspectionRequestVo:Lae/gov/mol/vo/InspectionRequestAndStatusVo;

    iget-object v1, p0, Lae/gov/xmlhandler/InspectionStatusHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/InspectionRequestAndStatusVo;->setCode(Ljava/lang/String;)V

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    const-string v0, "com_code"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 58
    iget-object v0, p0, Lae/gov/xmlhandler/InspectionStatusHandler;->mInspectionRequestVo:Lae/gov/mol/vo/InspectionRequestAndStatusVo;

    iget-object v1, p0, Lae/gov/xmlhandler/InspectionStatusHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/InspectionRequestAndStatusVo;->setCom_code(Ljava/lang/String;)V

    goto :goto_0

    .line 60
    :cond_2
    const-string v0, "comNameA"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 61
    iget-object v0, p0, Lae/gov/xmlhandler/InspectionStatusHandler;->mInspectionRequestVo:Lae/gov/mol/vo/InspectionRequestAndStatusVo;

    iget-object v1, p0, Lae/gov/xmlhandler/InspectionStatusHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/InspectionRequestAndStatusVo;->setComNameA(Ljava/lang/String;)V

    goto :goto_0

    .line 63
    :cond_3
    const-string v0, "comNameE"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 64
    iget-object v0, p0, Lae/gov/xmlhandler/InspectionStatusHandler;->mInspectionRequestVo:Lae/gov/mol/vo/InspectionRequestAndStatusVo;

    iget-object v1, p0, Lae/gov/xmlhandler/InspectionStatusHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/InspectionRequestAndStatusVo;->setComNameE(Ljava/lang/String;)V

    goto :goto_0

    .line 66
    :cond_4
    const-string v0, "PerNameA"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 67
    iget-object v0, p0, Lae/gov/xmlhandler/InspectionStatusHandler;->mInspectionRequestVo:Lae/gov/mol/vo/InspectionRequestAndStatusVo;

    iget-object v1, p0, Lae/gov/xmlhandler/InspectionStatusHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/InspectionRequestAndStatusVo;->setPerNameA(Ljava/lang/String;)V

    goto :goto_0

    .line 69
    :cond_5
    const-string v0, "PerNameE"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 70
    iget-object v0, p0, Lae/gov/xmlhandler/InspectionStatusHandler;->mInspectionRequestVo:Lae/gov/mol/vo/InspectionRequestAndStatusVo;

    iget-object v1, p0, Lae/gov/xmlhandler/InspectionStatusHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/InspectionRequestAndStatusVo;->setPerNameE(Ljava/lang/String;)V

    goto :goto_0

    .line 72
    :cond_6
    const-string v0, "PassportNumber"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 73
    iget-object v0, p0, Lae/gov/xmlhandler/InspectionStatusHandler;->mInspectionRequestVo:Lae/gov/mol/vo/InspectionRequestAndStatusVo;

    iget-object v1, p0, Lae/gov/xmlhandler/InspectionStatusHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/InspectionRequestAndStatusVo;->setPassportNumber(Ljava/lang/String;)V

    goto :goto_0

    .line 75
    :cond_7
    const-string v0, "Nationality"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 76
    iget-object v0, p0, Lae/gov/xmlhandler/InspectionStatusHandler;->mInspectionRequestVo:Lae/gov/mol/vo/InspectionRequestAndStatusVo;

    iget-object v1, p0, Lae/gov/xmlhandler/InspectionStatusHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/InspectionRequestAndStatusVo;->setNationality(Ljava/lang/String;)V

    goto :goto_0

    .line 78
    :cond_8
    const-string v0, "InspectionStatus"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lae/gov/xmlhandler/InspectionStatusHandler;->isInspectionStatus:Z

    if-nez v0, :cond_9

    .line 79
    iget-object v0, p0, Lae/gov/xmlhandler/InspectionStatusHandler;->mInspectionRequestVo:Lae/gov/mol/vo/InspectionRequestAndStatusVo;

    iget-object v1, p0, Lae/gov/xmlhandler/InspectionStatusHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/InspectionRequestAndStatusVo;->setInspectionStatus(Ljava/lang/String;)V

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lae/gov/xmlhandler/InspectionStatusHandler;->isInspectionStatus:Z

    goto/16 :goto_0

    .line 82
    :cond_9
    const-string v0, "InspectionStatus"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lae/gov/xmlhandler/InspectionStatusHandler;->isInspectionStatus:Z

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lae/gov/xmlhandler/InspectionStatusHandler;->mArrayList:Ljava/util/ArrayList;

    iget-object v1, p0, Lae/gov/xmlhandler/InspectionStatusHandler;->mInspectionRequestVo:Lae/gov/mol/vo/InspectionRequestAndStatusVo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    iput-boolean v2, p0, Lae/gov/xmlhandler/InspectionStatusHandler;->isInspectionStatus:Z

    .line 85
    iput-boolean v2, p0, Lae/gov/xmlhandler/InspectionStatusHandler;->isInspectionStatusParent:Z

    goto/16 :goto_0
.end method

.method public getmArrayList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/InspectionRequestAndStatusVo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 23
    iget-object v0, p0, Lae/gov/xmlhandler/InspectionStatusHandler;->mArrayList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setmArrayList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/InspectionRequestAndStatusVo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p1, "mArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lae/gov/mol/vo/InspectionRequestAndStatusVo;>;"
    iput-object p1, p0, Lae/gov/xmlhandler/InspectionStatusHandler;->mArrayList:Ljava/util/ArrayList;

    .line 28
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 2
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
    const/4 v1, 0x1

    .line 39
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lae/gov/xmlhandler/InspectionStatusHandler;->currentElement:Ljava/lang/Boolean;

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lae/gov/xmlhandler/InspectionStatusHandler;->currentValue:Ljava/lang/String;

    .line 41
    const-string v0, "InspectionStatus"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lae/gov/xmlhandler/InspectionStatusHandler;->isInspectionStatusParent:Z

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lae/gov/mol/vo/InspectionRequestAndStatusVo;

    invoke-direct {v0}, Lae/gov/mol/vo/InspectionRequestAndStatusVo;-><init>()V

    iput-object v0, p0, Lae/gov/xmlhandler/InspectionStatusHandler;->mInspectionRequestVo:Lae/gov/mol/vo/InspectionRequestAndStatusVo;

    .line 43
    iput-boolean v1, p0, Lae/gov/xmlhandler/InspectionStatusHandler;->isInspectionStatusParent:Z

    .line 45
    :cond_0
    return-void
.end method
