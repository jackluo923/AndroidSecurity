.class public Lae/gov/xmlhandler/MobilePath_Handler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "MobilePath_Handler.java"


# instance fields
.field MobilePathArray:[Ljava/lang/String;

.field private MobilePathVos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/MobilePathVo;",
            ">;"
        }
    .end annotation
.end field

.field currentElement:Ljava/lang/Boolean;

.field currentValue:Ljava/lang/String;

.field public mContext:Landroid/content/Context;

.field mMobilePath:Lae/gov/mol/vo/MobilePathVo;

.field track_currentValue:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 12
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 13
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lae/gov/xmlhandler/MobilePath_Handler;->currentElement:Ljava/lang/Boolean;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lae/gov/xmlhandler/MobilePath_Handler;->currentValue:Ljava/lang/String;

    .line 17
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lae/gov/xmlhandler/MobilePath_Handler;->MobilePathArray:[Ljava/lang/String;

    .line 18
    iput v1, p0, Lae/gov/xmlhandler/MobilePath_Handler;->track_currentValue:I

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lae/gov/xmlhandler/MobilePath_Handler;->MobilePathVos:Ljava/util/ArrayList;

    .line 12
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 3
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Lae/gov/xmlhandler/MobilePath_Handler;->currentElement:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lae/gov/xmlhandler/MobilePath_Handler;->currentElement:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lae/gov/xmlhandler/MobilePath_Handler;->currentValue:Ljava/lang/String;

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

    iput-object v0, p0, Lae/gov/xmlhandler/MobilePath_Handler;->currentValue:Ljava/lang/String;

    .line 99
    iget v0, p0, Lae/gov/xmlhandler/MobilePath_Handler;->track_currentValue:I

    if-nez v0, :cond_1

    .line 101
    iget-object v0, p0, Lae/gov/xmlhandler/MobilePath_Handler;->MobilePathArray:[Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lae/gov/xmlhandler/MobilePath_Handler;->currentValue:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 102
    iget v0, p0, Lae/gov/xmlhandler/MobilePath_Handler;->track_currentValue:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lae/gov/xmlhandler/MobilePath_Handler;->track_currentValue:I

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    iget-object v0, p0, Lae/gov/xmlhandler/MobilePath_Handler;->MobilePathArray:[Ljava/lang/String;

    const/4 v1, 0x1

    iget-object v2, p0, Lae/gov/xmlhandler/MobilePath_Handler;->currentValue:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 107
    iget v0, p0, Lae/gov/xmlhandler/MobilePath_Handler;->track_currentValue:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lae/gov/xmlhandler/MobilePath_Handler;->track_currentValue:I

    goto :goto_0
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

    .line 71
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lae/gov/xmlhandler/MobilePath_Handler;->currentElement:Ljava/lang/Boolean;

    .line 74
    const-string v0, "path"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    iget-object v0, p0, Lae/gov/xmlhandler/MobilePath_Handler;->mMobilePath:Lae/gov/mol/vo/MobilePathVo;

    iget-object v1, p0, Lae/gov/xmlhandler/MobilePath_Handler;->MobilePathArray:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/MobilePathVo;->setpath(Ljava/lang/String;)V

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    const-string v0, "appVersion"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lae/gov/xmlhandler/MobilePath_Handler;->mMobilePath:Lae/gov/mol/vo/MobilePathVo;

    iget-object v1, p0, Lae/gov/xmlhandler/MobilePath_Handler;->MobilePathArray:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/MobilePathVo;->setappVersion(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 27
    iget-object v0, p0, Lae/gov/xmlhandler/MobilePath_Handler;->MobilePathArray:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 32
    iget-object v0, p0, Lae/gov/xmlhandler/MobilePath_Handler;->MobilePathArray:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getmMobilePath()Lae/gov/mol/vo/MobilePathVo;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lae/gov/xmlhandler/MobilePath_Handler;->mMobilePath:Lae/gov/mol/vo/MobilePathVo;

    return-object v0
.end method

.method public setmMobilePath(Lae/gov/mol/vo/MobilePathVo;)V
    .locals 0
    .param p1, "mMobilePath"    # Lae/gov/mol/vo/MobilePathVo;

    .prologue
    .line 39
    iput-object p1, p0, Lae/gov/xmlhandler/MobilePath_Handler;->mMobilePath:Lae/gov/mol/vo/MobilePathVo;

    .line 40
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
    .line 47
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lae/gov/xmlhandler/MobilePath_Handler;->currentElement:Ljava/lang/Boolean;

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lae/gov/xmlhandler/MobilePath_Handler;->currentValue:Ljava/lang/String;

    .line 49
    const-string v0, "NewDataSet"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    const-string v0, "MobileLoc"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    const-string v0, "path"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    new-instance v0, Lae/gov/mol/vo/MobilePathVo;

    invoke-direct {v0}, Lae/gov/mol/vo/MobilePathVo;-><init>()V

    iput-object v0, p0, Lae/gov/xmlhandler/MobilePath_Handler;->mMobilePath:Lae/gov/mol/vo/MobilePathVo;

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    const-string v0, "appVersion"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    new-instance v0, Lae/gov/mol/vo/MobilePathVo;

    invoke-direct {v0}, Lae/gov/mol/vo/MobilePathVo;-><init>()V

    iput-object v0, p0, Lae/gov/xmlhandler/MobilePath_Handler;->mMobilePath:Lae/gov/mol/vo/MobilePathVo;

    goto :goto_0
.end method
