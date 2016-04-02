.class public Lae/gov/xmlhandler/ServiceGroupDetailsXMLHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "ServiceGroupDetailsXMLHandler.java"


# instance fields
.field currentElement:Ljava/lang/Boolean;

.field currentValue:Ljava/lang/String;

.field mServiceGroupDetailsVo:Lae/gov/mol/vo/ServiceGroupDetailsVo;

.field private serviceGrouplist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/ServiceGroupDetailsVo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 18
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lae/gov/xmlhandler/ServiceGroupDetailsXMLHandler;->currentElement:Ljava/lang/Boolean;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lae/gov/xmlhandler/ServiceGroupDetailsXMLHandler;->currentValue:Ljava/lang/String;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lae/gov/xmlhandler/ServiceGroupDetailsXMLHandler;->serviceGrouplist:Ljava/util/ArrayList;

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
    .line 80
    iget-object v0, p0, Lae/gov/xmlhandler/ServiceGroupDetailsXMLHandler;->currentElement:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lae/gov/xmlhandler/ServiceGroupDetailsXMLHandler;->currentValue:Ljava/lang/String;

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

    iput-object v0, p0, Lae/gov/xmlhandler/ServiceGroupDetailsXMLHandler;->currentValue:Ljava/lang/String;

    .line 83
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

    iput-object v0, p0, Lae/gov/xmlhandler/ServiceGroupDetailsXMLHandler;->currentElement:Ljava/lang/Boolean;

    .line 54
    const-string v0, "ServiceGroup"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 57
    const-string v0, "service_code"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    iget-object v0, p0, Lae/gov/xmlhandler/ServiceGroupDetailsXMLHandler;->mServiceGroupDetailsVo:Lae/gov/mol/vo/ServiceGroupDetailsVo;

    iget-object v1, p0, Lae/gov/xmlhandler/ServiceGroupDetailsXMLHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/ServiceGroupDetailsVo;->setService_code(Ljava/lang/String;)V

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    const-string v0, "service_name_arb"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 64
    iget-object v0, p0, Lae/gov/xmlhandler/ServiceGroupDetailsXMLHandler;->mServiceGroupDetailsVo:Lae/gov/mol/vo/ServiceGroupDetailsVo;

    iget-object v1, p0, Lae/gov/xmlhandler/ServiceGroupDetailsXMLHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/ServiceGroupDetailsVo;->setService_name_arb(Ljava/lang/String;)V

    goto :goto_0

    .line 65
    :cond_2
    const-string v0, "service_name_eng"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 66
    iget-object v0, p0, Lae/gov/xmlhandler/ServiceGroupDetailsXMLHandler;->mServiceGroupDetailsVo:Lae/gov/mol/vo/ServiceGroupDetailsVo;

    iget-object v1, p0, Lae/gov/xmlhandler/ServiceGroupDetailsXMLHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/ServiceGroupDetailsVo;->setService_name_eng(Ljava/lang/String;)V

    goto :goto_0

    .line 68
    :cond_3
    const-string v0, "ServiceCategory"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lae/gov/xmlhandler/ServiceGroupDetailsXMLHandler;->serviceGrouplist:Ljava/util/ArrayList;

    iget-object v1, p0, Lae/gov/xmlhandler/ServiceGroupDetailsXMLHandler;->mServiceGroupDetailsVo:Lae/gov/mol/vo/ServiceGroupDetailsVo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getServiceGrouplist()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/ServiceGroupDetailsVo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30
    iget-object v0, p0, Lae/gov/xmlhandler/ServiceGroupDetailsXMLHandler;->serviceGrouplist:Ljava/util/ArrayList;

    return-object v0
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

    iput-object v0, p0, Lae/gov/xmlhandler/ServiceGroupDetailsXMLHandler;->currentElement:Ljava/lang/Boolean;

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lae/gov/xmlhandler/ServiceGroupDetailsXMLHandler;->currentValue:Ljava/lang/String;

    .line 41
    const-string v0, "ServiceCategory"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    new-instance v0, Lae/gov/mol/vo/ServiceGroupDetailsVo;

    invoke-direct {v0}, Lae/gov/mol/vo/ServiceGroupDetailsVo;-><init>()V

    iput-object v0, p0, Lae/gov/xmlhandler/ServiceGroupDetailsXMLHandler;->mServiceGroupDetailsVo:Lae/gov/mol/vo/ServiceGroupDetailsVo;

    .line 45
    :cond_0
    return-void
.end method
