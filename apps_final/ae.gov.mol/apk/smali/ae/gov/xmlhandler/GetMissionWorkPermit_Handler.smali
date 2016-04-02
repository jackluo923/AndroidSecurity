.class public Lae/gov/xmlhandler/GetMissionWorkPermit_Handler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "GetMissionWorkPermit_Handler.java"


# instance fields
.field private IsElementOpen:Ljava/lang/Boolean;

.field private mCurrentElementValue:Ljava/lang/String;

.field private mEnq_GetMissionWorkPermit:Lae/gov/mol/vo/Enq_GetMissionWorkPermit;

.field private mEnq_GetMissionWorkPermits:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/Enq_GetMissionWorkPermit;",
            ">;"
        }
    .end annotation
.end field

.field private missionCompanyInfo:Lae/gov/mol/vo/Enq_GetMissionWorkPermit$MissionCompanyInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 18
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lae/gov/xmlhandler/GetMissionWorkPermit_Handler;->IsElementOpen:Ljava/lang/Boolean;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lae/gov/xmlhandler/GetMissionWorkPermit_Handler;->mCurrentElementValue:Ljava/lang/String;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lae/gov/xmlhandler/GetMissionWorkPermit_Handler;->mEnq_GetMissionWorkPermits:Ljava/util/ArrayList;

    .line 27
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 32
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/DefaultHandler;->characters([CII)V

    .line 33
    iget-object v0, p0, Lae/gov/xmlhandler/GetMissionWorkPermit_Handler;->IsElementOpen:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lae/gov/xmlhandler/GetMissionWorkPermit_Handler;->mCurrentElementValue:Ljava/lang/String;

    .line 36
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
    .line 41
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/DefaultHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lae/gov/xmlhandler/GetMissionWorkPermit_Handler;->IsElementOpen:Ljava/lang/Boolean;

    .line 44
    const-string v0, "companyno"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45
    iget-object v0, p0, Lae/gov/xmlhandler/GetMissionWorkPermit_Handler;->mEnq_GetMissionWorkPermit:Lae/gov/mol/vo/Enq_GetMissionWorkPermit;

    iget-object v1, p0, Lae/gov/xmlhandler/GetMissionWorkPermit_Handler;->mCurrentElementValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/Enq_GetMissionWorkPermit;->setCompanyno(Ljava/lang/String;)V

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    const-string v0, "WorkPermitNumber"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 47
    iget-object v0, p0, Lae/gov/xmlhandler/GetMissionWorkPermit_Handler;->mEnq_GetMissionWorkPermit:Lae/gov/mol/vo/Enq_GetMissionWorkPermit;

    iget-object v1, p0, Lae/gov/xmlhandler/GetMissionWorkPermit_Handler;->mCurrentElementValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/Enq_GetMissionWorkPermit;->setWorkPermitNumber(Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :cond_2
    const-string v0, "TransactionNumber"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 49
    iget-object v0, p0, Lae/gov/xmlhandler/GetMissionWorkPermit_Handler;->mEnq_GetMissionWorkPermit:Lae/gov/mol/vo/Enq_GetMissionWorkPermit;

    iget-object v1, p0, Lae/gov/xmlhandler/GetMissionWorkPermit_Handler;->mCurrentElementValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/Enq_GetMissionWorkPermit;->setTransactionNumber(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :cond_3
    const-string v0, "PersonNameArb"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 51
    iget-object v0, p0, Lae/gov/xmlhandler/GetMissionWorkPermit_Handler;->mEnq_GetMissionWorkPermit:Lae/gov/mol/vo/Enq_GetMissionWorkPermit;

    iget-object v1, p0, Lae/gov/xmlhandler/GetMissionWorkPermit_Handler;->mCurrentElementValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/Enq_GetMissionWorkPermit;->setPersonNameArb(Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :cond_4
    const-string v0, "PersonNameEng"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 53
    iget-object v0, p0, Lae/gov/xmlhandler/GetMissionWorkPermit_Handler;->mEnq_GetMissionWorkPermit:Lae/gov/mol/vo/Enq_GetMissionWorkPermit;

    iget-object v1, p0, Lae/gov/xmlhandler/GetMissionWorkPermit_Handler;->mCurrentElementValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/Enq_GetMissionWorkPermit;->setPersonNameEng(Ljava/lang/String;)V

    goto :goto_0

    .line 54
    :cond_5
    const-string v0, "nationality"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 55
    iget-object v0, p0, Lae/gov/xmlhandler/GetMissionWorkPermit_Handler;->mEnq_GetMissionWorkPermit:Lae/gov/mol/vo/Enq_GetMissionWorkPermit;

    iget-object v1, p0, Lae/gov/xmlhandler/GetMissionWorkPermit_Handler;->mCurrentElementValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/Enq_GetMissionWorkPermit;->setNationality(Ljava/lang/String;)V

    goto :goto_0

    .line 56
    :cond_6
    const-string v0, "emp_card_expiry"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 57
    iget-object v0, p0, Lae/gov/xmlhandler/GetMissionWorkPermit_Handler;->mEnq_GetMissionWorkPermit:Lae/gov/mol/vo/Enq_GetMissionWorkPermit;

    iget-object v1, p0, Lae/gov/xmlhandler/GetMissionWorkPermit_Handler;->mCurrentElementValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/Enq_GetMissionWorkPermit;->setEmp_card_expiry(Ljava/lang/String;)V

    goto :goto_0

    .line 58
    :cond_7
    const-string v0, "PayCard_No"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 59
    iget-object v0, p0, Lae/gov/xmlhandler/GetMissionWorkPermit_Handler;->mEnq_GetMissionWorkPermit:Lae/gov/mol/vo/Enq_GetMissionWorkPermit;

    iget-object v1, p0, Lae/gov/xmlhandler/GetMissionWorkPermit_Handler;->mCurrentElementValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/Enq_GetMissionWorkPermit;->setPayCard_No(Ljava/lang/String;)V

    goto :goto_0

    .line 60
    :cond_8
    const-string v0, "Link"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 61
    iget-object v0, p0, Lae/gov/xmlhandler/GetMissionWorkPermit_Handler;->mEnq_GetMissionWorkPermit:Lae/gov/mol/vo/Enq_GetMissionWorkPermit;

    iget-object v1, p0, Lae/gov/xmlhandler/GetMissionWorkPermit_Handler;->mCurrentElementValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/Enq_GetMissionWorkPermit;->setLink(Ljava/lang/String;)V

    goto :goto_0

    .line 62
    :cond_9
    const-string v0, "MissionPermitsPaid"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "MissionPermitsUnPaid"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 63
    :cond_a
    iget-object v0, p0, Lae/gov/xmlhandler/GetMissionWorkPermit_Handler;->mEnq_GetMissionWorkPermits:Ljava/util/ArrayList;

    iget-object v1, p0, Lae/gov/xmlhandler/GetMissionWorkPermit_Handler;->mEnq_GetMissionWorkPermit:Lae/gov/mol/vo/Enq_GetMissionWorkPermit;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 64
    :cond_b
    const-string v0, "comcode"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 65
    iget-object v0, p0, Lae/gov/xmlhandler/GetMissionWorkPermit_Handler;->missionCompanyInfo:Lae/gov/mol/vo/Enq_GetMissionWorkPermit$MissionCompanyInfo;

    iget-object v1, p0, Lae/gov/xmlhandler/GetMissionWorkPermit_Handler;->mCurrentElementValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/Enq_GetMissionWorkPermit$MissionCompanyInfo;->setComcode(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 66
    :cond_c
    const-string v0, "comnamearb"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 67
    iget-object v0, p0, Lae/gov/xmlhandler/GetMissionWorkPermit_Handler;->missionCompanyInfo:Lae/gov/mol/vo/Enq_GetMissionWorkPermit$MissionCompanyInfo;

    iget-object v1, p0, Lae/gov/xmlhandler/GetMissionWorkPermit_Handler;->mCurrentElementValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/Enq_GetMissionWorkPermit$MissionCompanyInfo;->setComnamearb(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 68
    :cond_d
    const-string v0, "comnameeng"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 69
    iget-object v0, p0, Lae/gov/xmlhandler/GetMissionWorkPermit_Handler;->missionCompanyInfo:Lae/gov/mol/vo/Enq_GetMissionWorkPermit$MissionCompanyInfo;

    iget-object v1, p0, Lae/gov/xmlhandler/GetMissionWorkPermit_Handler;->mCurrentElementValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/Enq_GetMissionWorkPermit$MissionCompanyInfo;->setComnameeng(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 70
    :cond_e
    const-string v0, "pendingpayment"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 71
    iget-object v0, p0, Lae/gov/xmlhandler/GetMissionWorkPermit_Handler;->missionCompanyInfo:Lae/gov/mol/vo/Enq_GetMissionWorkPermit$MissionCompanyInfo;

    iget-object v1, p0, Lae/gov/xmlhandler/GetMissionWorkPermit_Handler;->mCurrentElementValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/Enq_GetMissionWorkPermit$MissionCompanyInfo;->setPendingpayment(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 72
    :cond_f
    const-string v0, "RequiredGrnt"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lae/gov/xmlhandler/GetMissionWorkPermit_Handler;->missionCompanyInfo:Lae/gov/mol/vo/Enq_GetMissionWorkPermit$MissionCompanyInfo;

    iget-object v1, p0, Lae/gov/xmlhandler/GetMissionWorkPermit_Handler;->mCurrentElementValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/Enq_GetMissionWorkPermit$MissionCompanyInfo;->setRequiredGrnt(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public getMissionCompanyInfo()Lae/gov/mol/vo/Enq_GetMissionWorkPermit$MissionCompanyInfo;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lae/gov/xmlhandler/GetMissionWorkPermit_Handler;->missionCompanyInfo:Lae/gov/mol/vo/Enq_GetMissionWorkPermit$MissionCompanyInfo;

    return-object v0
.end method

.method public getmEnq_GetMissionWorkPermits()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/Enq_GetMissionWorkPermit;",
            ">;"
        }
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lae/gov/xmlhandler/GetMissionWorkPermit_Handler;->mEnq_GetMissionWorkPermits:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setMissionCompanyInfo(Lae/gov/mol/vo/Enq_GetMissionWorkPermit$MissionCompanyInfo;)V
    .locals 0
    .param p1, "missionCompanyInfo"    # Lae/gov/mol/vo/Enq_GetMissionWorkPermit$MissionCompanyInfo;

    .prologue
    .line 103
    iput-object p1, p0, Lae/gov/xmlhandler/GetMissionWorkPermit_Handler;->missionCompanyInfo:Lae/gov/mol/vo/Enq_GetMissionWorkPermit$MissionCompanyInfo;

    .line 104
    return-void
.end method

.method public setmEnq_GetMissionWorkPermits(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/Enq_GetMissionWorkPermit;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 95
    .local p1, "mEnq_GetMissionWorkPermits":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lae/gov/mol/vo/Enq_GetMissionWorkPermit;>;"
    iput-object p1, p0, Lae/gov/xmlhandler/GetMissionWorkPermit_Handler;->mEnq_GetMissionWorkPermits:Ljava/util/ArrayList;

    .line 96
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
    .line 80
    invoke-super {p0, p1, p2, p3, p4}, Lorg/xml/sax/helpers/DefaultHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 81
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lae/gov/xmlhandler/GetMissionWorkPermit_Handler;->IsElementOpen:Ljava/lang/Boolean;

    .line 82
    const-string v0, ""

    iput-object v0, p0, Lae/gov/xmlhandler/GetMissionWorkPermit_Handler;->mCurrentElementValue:Ljava/lang/String;

    .line 83
    const-string v0, "MissionPermitsPaid"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MissionPermitsUnPaid"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 84
    :cond_0
    new-instance v0, Lae/gov/mol/vo/Enq_GetMissionWorkPermit;

    invoke-direct {v0}, Lae/gov/mol/vo/Enq_GetMissionWorkPermit;-><init>()V

    iput-object v0, p0, Lae/gov/xmlhandler/GetMissionWorkPermit_Handler;->mEnq_GetMissionWorkPermit:Lae/gov/mol/vo/Enq_GetMissionWorkPermit;

    .line 88
    :cond_1
    :goto_0
    return-void

    .line 85
    :cond_2
    const-string v0, "MissionCompanyInfo"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    invoke-static {}, Lae/gov/mol/vo/Enq_GetMissionWorkPermit$MissionCompanyInfo;->getInstance()Lae/gov/mol/vo/Enq_GetMissionWorkPermit$MissionCompanyInfo;

    move-result-object v0

    iput-object v0, p0, Lae/gov/xmlhandler/GetMissionWorkPermit_Handler;->missionCompanyInfo:Lae/gov/mol/vo/Enq_GetMissionWorkPermit$MissionCompanyInfo;

    goto :goto_0
.end method
