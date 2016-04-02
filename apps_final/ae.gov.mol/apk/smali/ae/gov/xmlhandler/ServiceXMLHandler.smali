.class public Lae/gov/xmlhandler/ServiceXMLHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "ServiceXMLHandler.java"


# instance fields
.field currentElement:Ljava/lang/Boolean;

.field currentValue:Ljava/lang/String;

.field public mContext:Landroid/content/Context;

.field private mServiceVoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/ServicesVo;",
            ">;"
        }
    .end annotation
.end field

.field mServicesVo:Lae/gov/mol/vo/ServicesVo;


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

    iput-object v0, p0, Lae/gov/xmlhandler/ServiceXMLHandler;->currentElement:Ljava/lang/Boolean;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lae/gov/xmlhandler/ServiceXMLHandler;->currentValue:Ljava/lang/String;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lae/gov/xmlhandler/ServiceXMLHandler;->mServiceVoList:Ljava/util/ArrayList;

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
    .line 141
    iget-object v0, p0, Lae/gov/xmlhandler/ServiceXMLHandler;->currentElement:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lae/gov/xmlhandler/ServiceXMLHandler;->currentValue:Ljava/lang/String;

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

    iput-object v0, p0, Lae/gov/xmlhandler/ServiceXMLHandler;->currentValue:Ljava/lang/String;

    .line 144
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

    iput-object v0, p0, Lae/gov/xmlhandler/ServiceXMLHandler;->currentElement:Ljava/lang/Boolean;

    .line 52
    const-string v0, "service_group_id"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    iget-object v0, p0, Lae/gov/xmlhandler/ServiceXMLHandler;->mServicesVo:Lae/gov/mol/vo/ServicesVo;

    iget-object v1, p0, Lae/gov/xmlhandler/ServiceXMLHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/ServicesVo;->setService_group_id(Ljava/lang/String;)V

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    const-string v0, "service_group_name_eng"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 56
    iget-object v0, p0, Lae/gov/xmlhandler/ServiceXMLHandler;->mServicesVo:Lae/gov/mol/vo/ServicesVo;

    iget-object v1, p0, Lae/gov/xmlhandler/ServiceXMLHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/ServicesVo;->setService_group_name_eng(Ljava/lang/String;)V

    goto :goto_0

    .line 58
    :cond_2
    const-string v0, "service_code"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 59
    iget-object v0, p0, Lae/gov/xmlhandler/ServiceXMLHandler;->mServicesVo:Lae/gov/mol/vo/ServicesVo;

    iget-object v1, p0, Lae/gov/xmlhandler/ServiceXMLHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/ServicesVo;->setService_code(Ljava/lang/String;)V

    goto :goto_0

    .line 61
    :cond_3
    const-string v0, "service_group_name_arb"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 62
    iget-object v0, p0, Lae/gov/xmlhandler/ServiceXMLHandler;->mServicesVo:Lae/gov/mol/vo/ServicesVo;

    iget-object v1, p0, Lae/gov/xmlhandler/ServiceXMLHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/ServicesVo;->setService_group_name_arb(Ljava/lang/String;)V

    goto :goto_0

    .line 64
    :cond_4
    const-string v0, "Service_definition_eng"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 65
    iget-object v0, p0, Lae/gov/xmlhandler/ServiceXMLHandler;->mServicesVo:Lae/gov/mol/vo/ServicesVo;

    iget-object v1, p0, Lae/gov/xmlhandler/ServiceXMLHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/ServicesVo;->setService_definition_eng(Ljava/lang/String;)V

    goto :goto_0

    .line 67
    :cond_5
    const-string v0, "Service_definition_arb"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 68
    iget-object v0, p0, Lae/gov/xmlhandler/ServiceXMLHandler;->mServicesVo:Lae/gov/mol/vo/ServicesVo;

    iget-object v1, p0, Lae/gov/xmlhandler/ServiceXMLHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/ServicesVo;->setService_definition_arb(Ljava/lang/String;)V

    goto :goto_0

    .line 70
    :cond_6
    const-string v0, "Application_form_eng"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 71
    iget-object v0, p0, Lae/gov/xmlhandler/ServiceXMLHandler;->mServicesVo:Lae/gov/mol/vo/ServicesVo;

    iget-object v1, p0, Lae/gov/xmlhandler/ServiceXMLHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/ServicesVo;->setApplication_form_eng(Ljava/lang/String;)V

    goto :goto_0

    .line 74
    :cond_7
    const-string v0, "Application_form_arb"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 75
    iget-object v0, p0, Lae/gov/xmlhandler/ServiceXMLHandler;->mServicesVo:Lae/gov/mol/vo/ServicesVo;

    iget-object v1, p0, Lae/gov/xmlhandler/ServiceXMLHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/ServicesVo;->setApplication_form_arb(Ljava/lang/String;)V

    goto :goto_0

    .line 79
    :cond_8
    const-string v0, "Required_documents_eng"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 80
    iget-object v0, p0, Lae/gov/xmlhandler/ServiceXMLHandler;->mServicesVo:Lae/gov/mol/vo/ServicesVo;

    iget-object v1, p0, Lae/gov/xmlhandler/ServiceXMLHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/ServicesVo;->setRequired_documents_eng(Ljava/lang/String;)V

    goto :goto_0

    .line 83
    :cond_9
    const-string v0, "Required_documents_arb"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 84
    iget-object v0, p0, Lae/gov/xmlhandler/ServiceXMLHandler;->mServicesVo:Lae/gov/mol/vo/ServicesVo;

    iget-object v1, p0, Lae/gov/xmlhandler/ServiceXMLHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/ServicesVo;->setRequired_documents_arb(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 87
    :cond_a
    const-string v0, "conditions_arb"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 88
    iget-object v0, p0, Lae/gov/xmlhandler/ServiceXMLHandler;->mServicesVo:Lae/gov/mol/vo/ServicesVo;

    iget-object v1, p0, Lae/gov/xmlhandler/ServiceXMLHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/ServicesVo;->setConditions_arb(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 90
    :cond_b
    const-string v0, "conditions_eng"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 91
    iget-object v0, p0, Lae/gov/xmlhandler/ServiceXMLHandler;->mServicesVo:Lae/gov/mol/vo/ServicesVo;

    iget-object v1, p0, Lae/gov/xmlhandler/ServiceXMLHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/ServicesVo;->setConditions_eng(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 93
    :cond_c
    const-string v0, "StepsToFollow_eng"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 94
    iget-object v0, p0, Lae/gov/xmlhandler/ServiceXMLHandler;->mServicesVo:Lae/gov/mol/vo/ServicesVo;

    iget-object v1, p0, Lae/gov/xmlhandler/ServiceXMLHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/ServicesVo;->setStepsToFollow_eng(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 97
    :cond_d
    const-string v0, "StepsToFollow_arb"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 98
    iget-object v0, p0, Lae/gov/xmlhandler/ServiceXMLHandler;->mServicesVo:Lae/gov/mol/vo/ServicesVo;

    iget-object v1, p0, Lae/gov/xmlhandler/ServiceXMLHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/ServicesVo;->setStepsToFollow_arb(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 101
    :cond_e
    const-string v0, "WhereToApply_eng"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 102
    iget-object v0, p0, Lae/gov/xmlhandler/ServiceXMLHandler;->mServicesVo:Lae/gov/mol/vo/ServicesVo;

    iget-object v1, p0, Lae/gov/xmlhandler/ServiceXMLHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/ServicesVo;->setWhereToApply_eng(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 105
    :cond_f
    const-string v0, "WhereToApply_arb"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 106
    iget-object v0, p0, Lae/gov/xmlhandler/ServiceXMLHandler;->mServicesVo:Lae/gov/mol/vo/ServicesVo;

    iget-object v1, p0, Lae/gov/xmlhandler/ServiceXMLHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/ServicesVo;->setWhereToApply_arb(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 109
    :cond_10
    const-string v0, "Fees_eng"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 110
    iget-object v0, p0, Lae/gov/xmlhandler/ServiceXMLHandler;->mServicesVo:Lae/gov/mol/vo/ServicesVo;

    iget-object v1, p0, Lae/gov/xmlhandler/ServiceXMLHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/ServicesVo;->setFees_eng(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 113
    :cond_11
    const-string v0, "Fees_arb"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 114
    iget-object v0, p0, Lae/gov/xmlhandler/ServiceXMLHandler;->mServicesVo:Lae/gov/mol/vo/ServicesVo;

    iget-object v1, p0, Lae/gov/xmlhandler/ServiceXMLHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/ServicesVo;->setFees_arb(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 117
    :cond_12
    const-string v0, "nooftransactions"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 118
    iget-object v0, p0, Lae/gov/xmlhandler/ServiceXMLHandler;->mServicesVo:Lae/gov/mol/vo/ServicesVo;

    iget-object v1, p0, Lae/gov/xmlhandler/ServiceXMLHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/ServicesVo;->setNooftransactions(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 121
    :cond_13
    const-string v0, "time_eng"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 122
    iget-object v0, p0, Lae/gov/xmlhandler/ServiceXMLHandler;->mServicesVo:Lae/gov/mol/vo/ServicesVo;

    iget-object v1, p0, Lae/gov/xmlhandler/ServiceXMLHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/ServicesVo;->setTime_eng(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 125
    :cond_14
    const-string v0, "time_arb"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 126
    iget-object v0, p0, Lae/gov/xmlhandler/ServiceXMLHandler;->mServicesVo:Lae/gov/mol/vo/ServicesVo;

    iget-object v1, p0, Lae/gov/xmlhandler/ServiceXMLHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/ServicesVo;->setTime_arb(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 130
    :cond_15
    const-string v0, "Services"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lae/gov/xmlhandler/ServiceXMLHandler;->mServiceVoList:Ljava/util/ArrayList;

    iget-object v1, p0, Lae/gov/xmlhandler/ServiceXMLHandler;->mServicesVo:Lae/gov/mol/vo/ServicesVo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public getmServiceVoList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/ServicesVo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 25
    iget-object v0, p0, Lae/gov/xmlhandler/ServiceXMLHandler;->mServiceVoList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setmServiceVoList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/ServicesVo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p1, "mServiceVoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lae/gov/mol/vo/ServicesVo;>;"
    iput-object p1, p0, Lae/gov/xmlhandler/ServiceXMLHandler;->mServiceVoList:Ljava/util/ArrayList;

    .line 30
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
    .line 37
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lae/gov/xmlhandler/ServiceXMLHandler;->currentElement:Ljava/lang/Boolean;

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lae/gov/xmlhandler/ServiceXMLHandler;->currentValue:Ljava/lang/String;

    .line 40
    const-string v0, "Services"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    new-instance v0, Lae/gov/mol/vo/ServicesVo;

    invoke-direct {v0}, Lae/gov/mol/vo/ServicesVo;-><init>()V

    iput-object v0, p0, Lae/gov/xmlhandler/ServiceXMLHandler;->mServicesVo:Lae/gov/mol/vo/ServicesVo;

    .line 44
    :cond_0
    return-void
.end method
