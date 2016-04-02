.class public Lae/gov/xmlhandler/ItemXMLHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "ItemXMLHandler.java"


# instance fields
.field currentElement:Ljava/lang/Boolean;

.field currentValue:Ljava/lang/String;

.field private itemsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/ServiceGroupdata;",
            ">;"
        }
    .end annotation
.end field

.field public mContext:Landroid/content/Context;

.field mRecentTransactionsdata:Lae/gov/mol/vo/RecentTransactionsdata;

.field private mRecentTransactionsdatas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/RecentTransactionsdata;",
            ">;"
        }
    .end annotation
.end field

.field mServiceGroupDetailsVo:Lae/gov/mol/vo/ServiceGroupDetailsVo;

.field mServiceGroupdata:Lae/gov/mol/vo/ServiceGroupdata;

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
    .line 19
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 21
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lae/gov/xmlhandler/ItemXMLHandler;->currentElement:Ljava/lang/Boolean;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lae/gov/xmlhandler/ItemXMLHandler;->currentValue:Ljava/lang/String;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lae/gov/xmlhandler/ItemXMLHandler;->itemsList:Ljava/util/ArrayList;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lae/gov/xmlhandler/ItemXMLHandler;->serviceGrouplist:Ljava/util/ArrayList;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lae/gov/xmlhandler/ItemXMLHandler;->mRecentTransactionsdatas:Ljava/util/ArrayList;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lae/gov/xmlhandler/ItemXMLHandler;->mServiceVoList:Ljava/util/ArrayList;

    .line 19
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
    .line 204
    iget-object v0, p0, Lae/gov/xmlhandler/ItemXMLHandler;->currentElement:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lae/gov/xmlhandler/ItemXMLHandler;->currentValue:Ljava/lang/String;

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

    iput-object v0, p0, Lae/gov/xmlhandler/ItemXMLHandler;->currentValue:Ljava/lang/String;

    .line 207
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
    .line 81
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lae/gov/xmlhandler/ItemXMLHandler;->currentElement:Ljava/lang/Boolean;

    .line 83
    const-string v0, "ServiceGroup"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 85
    const-string v0, "service_group_id"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 86
    iget-object v0, p0, Lae/gov/xmlhandler/ItemXMLHandler;->mServiceGroupdata:Lae/gov/mol/vo/ServiceGroupdata;

    if-eqz v0, :cond_1

    .line 87
    iget-object v0, p0, Lae/gov/xmlhandler/ItemXMLHandler;->mServiceGroupdata:Lae/gov/mol/vo/ServiceGroupdata;

    iget-object v1, p0, Lae/gov/xmlhandler/ItemXMLHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/ServiceGroupdata;->setService_group_id(Ljava/lang/String;)V

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    iget-object v0, p0, Lae/gov/xmlhandler/ItemXMLHandler;->mServicesVo:Lae/gov/mol/vo/ServicesVo;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lae/gov/xmlhandler/ItemXMLHandler;->mServicesVo:Lae/gov/mol/vo/ServicesVo;

    iget-object v1, p0, Lae/gov/xmlhandler/ItemXMLHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/ServicesVo;->setService_group_id(Ljava/lang/String;)V

    goto :goto_0

    .line 91
    :cond_2
    const-string v0, "service_group_name_eng"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 92
    iget-object v0, p0, Lae/gov/xmlhandler/ItemXMLHandler;->mServiceGroupdata:Lae/gov/mol/vo/ServiceGroupdata;

    if-eqz v0, :cond_3

    .line 93
    iget-object v0, p0, Lae/gov/xmlhandler/ItemXMLHandler;->mServiceGroupdata:Lae/gov/mol/vo/ServiceGroupdata;

    iget-object v1, p0, Lae/gov/xmlhandler/ItemXMLHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/ServiceGroupdata;->setService_group_name_eng(Ljava/lang/String;)V

    goto :goto_0

    .line 94
    :cond_3
    iget-object v0, p0, Lae/gov/xmlhandler/ItemXMLHandler;->mServicesVo:Lae/gov/mol/vo/ServicesVo;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lae/gov/xmlhandler/ItemXMLHandler;->mServicesVo:Lae/gov/mol/vo/ServicesVo;

    iget-object v1, p0, Lae/gov/xmlhandler/ItemXMLHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/ServicesVo;->setService_group_name_eng(Ljava/lang/String;)V

    goto :goto_0

    .line 96
    :cond_4
    const-string v0, "service_group_name_arb"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 97
    iget-object v0, p0, Lae/gov/xmlhandler/ItemXMLHandler;->mServiceGroupdata:Lae/gov/mol/vo/ServiceGroupdata;

    if-eqz v0, :cond_5

    .line 98
    iget-object v0, p0, Lae/gov/xmlhandler/ItemXMLHandler;->mServiceGroupdata:Lae/gov/mol/vo/ServiceGroupdata;

    iget-object v1, p0, Lae/gov/xmlhandler/ItemXMLHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/ServiceGroupdata;->setService_group_name_arb(Ljava/lang/String;)V

    goto :goto_0

    .line 99
    :cond_5
    iget-object v0, p0, Lae/gov/xmlhandler/ItemXMLHandler;->mServicesVo:Lae/gov/mol/vo/ServicesVo;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lae/gov/xmlhandler/ItemXMLHandler;->mServicesVo:Lae/gov/mol/vo/ServicesVo;

    iget-object v1, p0, Lae/gov/xmlhandler/ItemXMLHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/ServicesVo;->setService_group_name_arb(Ljava/lang/String;)V

    goto :goto_0

    .line 102
    :cond_6
    const-string v0, "ServiceGroup"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 103
    iget-object v0, p0, Lae/gov/xmlhandler/ItemXMLHandler;->itemsList:Ljava/util/ArrayList;

    iget-object v1, p0, Lae/gov/xmlhandler/ItemXMLHandler;->mServiceGroupdata:Lae/gov/mol/vo/ServiceGroupdata;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 106
    :cond_7
    const-string v0, "service_code"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 107
    iget-object v0, p0, Lae/gov/xmlhandler/ItemXMLHandler;->mServiceGroupDetailsVo:Lae/gov/mol/vo/ServiceGroupDetailsVo;

    if-eqz v0, :cond_8

    .line 108
    iget-object v0, p0, Lae/gov/xmlhandler/ItemXMLHandler;->mServiceGroupDetailsVo:Lae/gov/mol/vo/ServiceGroupDetailsVo;

    iget-object v1, p0, Lae/gov/xmlhandler/ItemXMLHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/ServiceGroupDetailsVo;->setService_code(Ljava/lang/String;)V

    goto :goto_0

    .line 109
    :cond_8
    iget-object v0, p0, Lae/gov/xmlhandler/ItemXMLHandler;->mServicesVo:Lae/gov/mol/vo/ServicesVo;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lae/gov/xmlhandler/ItemXMLHandler;->mServicesVo:Lae/gov/mol/vo/ServicesVo;

    iget-object v1, p0, Lae/gov/xmlhandler/ItemXMLHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/ServicesVo;->setService_code(Ljava/lang/String;)V

    goto :goto_0

    .line 112
    :cond_9
    const-string v0, "service_name_arb"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 113
    iget-object v0, p0, Lae/gov/xmlhandler/ItemXMLHandler;->mServiceGroupDetailsVo:Lae/gov/mol/vo/ServiceGroupDetailsVo;

    if-eqz v0, :cond_a

    .line 114
    iget-object v0, p0, Lae/gov/xmlhandler/ItemXMLHandler;->mServiceGroupDetailsVo:Lae/gov/mol/vo/ServiceGroupDetailsVo;

    iget-object v1, p0, Lae/gov/xmlhandler/ItemXMLHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/ServiceGroupDetailsVo;->setService_name_arb(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 115
    :cond_a
    iget-object v0, p0, Lae/gov/xmlhandler/ItemXMLHandler;->mServicesVo:Lae/gov/mol/vo/ServicesVo;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lae/gov/xmlhandler/ItemXMLHandler;->mServicesVo:Lae/gov/mol/vo/ServicesVo;

    iget-object v1, p0, Lae/gov/xmlhandler/ItemXMLHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/ServicesVo;->setService_definition_arb(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 117
    :cond_b
    const-string v0, "service_name_eng"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 118
    iget-object v0, p0, Lae/gov/xmlhandler/ItemXMLHandler;->mServiceGroupDetailsVo:Lae/gov/mol/vo/ServiceGroupDetailsVo;

    if-eqz v0, :cond_c

    .line 119
    iget-object v0, p0, Lae/gov/xmlhandler/ItemXMLHandler;->mServiceGroupDetailsVo:Lae/gov/mol/vo/ServiceGroupDetailsVo;

    iget-object v1, p0, Lae/gov/xmlhandler/ItemXMLHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/ServiceGroupDetailsVo;->setService_name_eng(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 120
    :cond_c
    iget-object v0, p0, Lae/gov/xmlhandler/ItemXMLHandler;->mServicesVo:Lae/gov/mol/vo/ServicesVo;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lae/gov/xmlhandler/ItemXMLHandler;->mServicesVo:Lae/gov/mol/vo/ServicesVo;

    iget-object v1, p0, Lae/gov/xmlhandler/ItemXMLHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/ServicesVo;->setService_definition_eng(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 123
    :cond_d
    const-string v0, "ServiceCategory"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 124
    iget-object v0, p0, Lae/gov/xmlhandler/ItemXMLHandler;->serviceGrouplist:Ljava/util/ArrayList;

    iget-object v1, p0, Lae/gov/xmlhandler/ItemXMLHandler;->mServiceGroupDetailsVo:Lae/gov/mol/vo/ServiceGroupDetailsVo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 126
    :cond_e
    const-string v0, "TransactionNo"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 127
    iget-object v0, p0, Lae/gov/xmlhandler/ItemXMLHandler;->mRecentTransactionsdata:Lae/gov/mol/vo/RecentTransactionsdata;

    iget-object v1, p0, Lae/gov/xmlhandler/ItemXMLHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/RecentTransactionsdata;->setTransactionNo(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 128
    :cond_f
    const-string v0, "service_arabic_name"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 129
    iget-object v0, p0, Lae/gov/xmlhandler/ItemXMLHandler;->mRecentTransactionsdata:Lae/gov/mol/vo/RecentTransactionsdata;

    iget-object v1, p0, Lae/gov/xmlhandler/ItemXMLHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/RecentTransactionsdata;->setService_arabic_name(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 130
    :cond_10
    const-string v0, "service_name"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 131
    iget-object v0, p0, Lae/gov/xmlhandler/ItemXMLHandler;->mRecentTransactionsdata:Lae/gov/mol/vo/RecentTransactionsdata;

    iget-object v1, p0, Lae/gov/xmlhandler/ItemXMLHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/RecentTransactionsdata;->setService_name(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 132
    :cond_11
    const-string v0, "tran_date"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 133
    iget-object v0, p0, Lae/gov/xmlhandler/ItemXMLHandler;->mRecentTransactionsdata:Lae/gov/mol/vo/RecentTransactionsdata;

    iget-object v1, p0, Lae/gov/xmlhandler/ItemXMLHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/RecentTransactionsdata;->setTran_date(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 134
    :cond_12
    const-string v0, "status"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 135
    iget-object v0, p0, Lae/gov/xmlhandler/ItemXMLHandler;->mRecentTransactionsdata:Lae/gov/mol/vo/RecentTransactionsdata;

    if-eqz v0, :cond_13

    .line 136
    iget-object v0, p0, Lae/gov/xmlhandler/ItemXMLHandler;->mRecentTransactionsdata:Lae/gov/mol/vo/RecentTransactionsdata;

    iget-object v1, p0, Lae/gov/xmlhandler/ItemXMLHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/RecentTransactionsdata;->setStatus(Ljava/lang/String;)V

    .line 137
    :cond_13
    iget-object v0, p0, Lae/gov/xmlhandler/ItemXMLHandler;->mServicesVo:Lae/gov/mol/vo/ServicesVo;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lae/gov/xmlhandler/ItemXMLHandler;->mServicesVo:Lae/gov/mol/vo/ServicesVo;

    iget-object v1, p0, Lae/gov/xmlhandler/ItemXMLHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/ServicesVo;->setStatus(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 139
    :cond_14
    const-string v0, "TransactionInfo"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 140
    iget-object v0, p0, Lae/gov/xmlhandler/ItemXMLHandler;->mRecentTransactionsdatas:Ljava/util/ArrayList;

    iget-object v1, p0, Lae/gov/xmlhandler/ItemXMLHandler;->mRecentTransactionsdata:Lae/gov/mol/vo/RecentTransactionsdata;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 143
    :cond_15
    const-string v0, "service_group_id"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 144
    iget-object v0, p0, Lae/gov/xmlhandler/ItemXMLHandler;->mServicesVo:Lae/gov/mol/vo/ServicesVo;

    iget-object v1, p0, Lae/gov/xmlhandler/ItemXMLHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/ServicesVo;->setService_group_id(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 146
    :cond_16
    const-string v0, "service_group_name_eng"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 147
    iget-object v0, p0, Lae/gov/xmlhandler/ItemXMLHandler;->mServicesVo:Lae/gov/mol/vo/ServicesVo;

    iget-object v1, p0, Lae/gov/xmlhandler/ItemXMLHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/ServicesVo;->setService_group_name_eng(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 149
    :cond_17
    const-string v0, "service_code"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 150
    iget-object v0, p0, Lae/gov/xmlhandler/ItemXMLHandler;->mServicesVo:Lae/gov/mol/vo/ServicesVo;

    iget-object v1, p0, Lae/gov/xmlhandler/ItemXMLHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/ServicesVo;->setService_code(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 152
    :cond_18
    const-string v0, "service_group_name_arb"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 153
    iget-object v0, p0, Lae/gov/xmlhandler/ItemXMLHandler;->mServicesVo:Lae/gov/mol/vo/ServicesVo;

    iget-object v1, p0, Lae/gov/xmlhandler/ItemXMLHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/ServicesVo;->setService_group_name_arb(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 155
    :cond_19
    const-string v0, "Service_definition_eng"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 156
    iget-object v0, p0, Lae/gov/xmlhandler/ItemXMLHandler;->mServicesVo:Lae/gov/mol/vo/ServicesVo;

    iget-object v1, p0, Lae/gov/xmlhandler/ItemXMLHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/ServicesVo;->setService_definition_eng(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 158
    :cond_1a
    const-string v0, "Service_definition_arb"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 159
    iget-object v0, p0, Lae/gov/xmlhandler/ItemXMLHandler;->mServicesVo:Lae/gov/mol/vo/ServicesVo;

    iget-object v1, p0, Lae/gov/xmlhandler/ItemXMLHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/ServicesVo;->setService_definition_arb(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 161
    :cond_1b
    const-string v0, "Application_form_eng"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 162
    iget-object v0, p0, Lae/gov/xmlhandler/ItemXMLHandler;->mServicesVo:Lae/gov/mol/vo/ServicesVo;

    iget-object v1, p0, Lae/gov/xmlhandler/ItemXMLHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/ServicesVo;->setApplication_form_eng(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 165
    :cond_1c
    const-string v0, "Application_form_arb"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 166
    iget-object v0, p0, Lae/gov/xmlhandler/ItemXMLHandler;->mServicesVo:Lae/gov/mol/vo/ServicesVo;

    iget-object v1, p0, Lae/gov/xmlhandler/ItemXMLHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/ServicesVo;->setApplication_form_arb(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 169
    :cond_1d
    const-string v0, "Required_documents_eng"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 170
    iget-object v0, p0, Lae/gov/xmlhandler/ItemXMLHandler;->mServicesVo:Lae/gov/mol/vo/ServicesVo;

    iget-object v1, p0, Lae/gov/xmlhandler/ItemXMLHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/ServicesVo;->setRequired_documents_eng(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 173
    :cond_1e
    const-string v0, "StepsToFollow_eng"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 174
    iget-object v0, p0, Lae/gov/xmlhandler/ItemXMLHandler;->mServicesVo:Lae/gov/mol/vo/ServicesVo;

    iget-object v1, p0, Lae/gov/xmlhandler/ItemXMLHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/ServicesVo;->setStepsToFollow_eng(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 177
    :cond_1f
    const-string v0, "WhereToApply_eng"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 178
    iget-object v0, p0, Lae/gov/xmlhandler/ItemXMLHandler;->mServicesVo:Lae/gov/mol/vo/ServicesVo;

    iget-object v1, p0, Lae/gov/xmlhandler/ItemXMLHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/ServicesVo;->setWhereToApply_eng(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 181
    :cond_20
    const-string v0, "Fees_eng"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 182
    iget-object v0, p0, Lae/gov/xmlhandler/ItemXMLHandler;->mServicesVo:Lae/gov/mol/vo/ServicesVo;

    iget-object v1, p0, Lae/gov/xmlhandler/ItemXMLHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/ServicesVo;->setFees_eng(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 185
    :cond_21
    const-string v0, "nooftransactions"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 186
    iget-object v0, p0, Lae/gov/xmlhandler/ItemXMLHandler;->mServicesVo:Lae/gov/mol/vo/ServicesVo;

    iget-object v1, p0, Lae/gov/xmlhandler/ItemXMLHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/ServicesVo;->setNooftransactions(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 189
    :cond_22
    const-string v0, "time_eng"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 190
    iget-object v0, p0, Lae/gov/xmlhandler/ItemXMLHandler;->mServicesVo:Lae/gov/mol/vo/ServicesVo;

    iget-object v1, p0, Lae/gov/xmlhandler/ItemXMLHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/ServicesVo;->setTime_eng(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 193
    :cond_23
    const-string v0, "Services"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lae/gov/xmlhandler/ItemXMLHandler;->mServiceVoList:Ljava/util/ArrayList;

    iget-object v1, p0, Lae/gov/xmlhandler/ItemXMLHandler;->mServicesVo:Lae/gov/mol/vo/ServicesVo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public getItemsList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/ServiceGroupdata;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lae/gov/xmlhandler/ItemXMLHandler;->itemsList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getRecentTransactionlist()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/RecentTransactionsdata;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lae/gov/xmlhandler/ItemXMLHandler;->mRecentTransactionsdatas:Ljava/util/ArrayList;

    return-object v0
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
    .line 46
    iget-object v0, p0, Lae/gov/xmlhandler/ItemXMLHandler;->serviceGrouplist:Ljava/util/ArrayList;

    return-object v0
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
    .line 34
    iget-object v0, p0, Lae/gov/xmlhandler/ItemXMLHandler;->mServiceVoList:Ljava/util/ArrayList;

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
    .line 38
    .local p1, "mServiceVoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lae/gov/mol/vo/ServicesVo;>;"
    iput-object p1, p0, Lae/gov/xmlhandler/ItemXMLHandler;->mServiceVoList:Ljava/util/ArrayList;

    .line 39
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
    .line 58
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lae/gov/xmlhandler/ItemXMLHandler;->currentElement:Ljava/lang/Boolean;

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lae/gov/xmlhandler/ItemXMLHandler;->currentValue:Ljava/lang/String;

    .line 60
    const-string v0, "ServiceGroup"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    new-instance v0, Lae/gov/mol/vo/ServiceGroupdata;

    invoke-direct {v0}, Lae/gov/mol/vo/ServiceGroupdata;-><init>()V

    iput-object v0, p0, Lae/gov/xmlhandler/ItemXMLHandler;->mServiceGroupdata:Lae/gov/mol/vo/ServiceGroupdata;

    .line 63
    :cond_0
    const-string v0, "ServiceCategory"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    new-instance v0, Lae/gov/mol/vo/ServiceGroupDetailsVo;

    invoke-direct {v0}, Lae/gov/mol/vo/ServiceGroupDetailsVo;-><init>()V

    iput-object v0, p0, Lae/gov/xmlhandler/ItemXMLHandler;->mServiceGroupDetailsVo:Lae/gov/mol/vo/ServiceGroupDetailsVo;

    .line 67
    :cond_1
    const-string v0, "TransactionInfo"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 68
    new-instance v0, Lae/gov/mol/vo/RecentTransactionsdata;

    invoke-direct {v0}, Lae/gov/mol/vo/RecentTransactionsdata;-><init>()V

    iput-object v0, p0, Lae/gov/xmlhandler/ItemXMLHandler;->mRecentTransactionsdata:Lae/gov/mol/vo/RecentTransactionsdata;

    .line 70
    :cond_2
    const-string v0, "Services"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 71
    new-instance v0, Lae/gov/mol/vo/ServicesVo;

    invoke-direct {v0}, Lae/gov/mol/vo/ServicesVo;-><init>()V

    iput-object v0, p0, Lae/gov/xmlhandler/ItemXMLHandler;->mServicesVo:Lae/gov/mol/vo/ServicesVo;

    .line 74
    :cond_3
    return-void
.end method
