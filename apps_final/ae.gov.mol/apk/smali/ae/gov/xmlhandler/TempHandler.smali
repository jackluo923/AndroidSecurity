.class public Lae/gov/xmlhandler/TempHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "TempHandler.java"


# instance fields
.field private _inSection:Z

.field private _isIcon:Z

.field private mTempVo:Lae/gov/mol/vo/Temperature;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 2
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I

    .prologue
    .line 115
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 116
    .local v0, "chars":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 118
    iget-boolean v1, p0, Lae/gov/xmlhandler/TempHandler;->_inSection:Z

    if-eqz v1, :cond_0

    .line 119
    iget-object v1, p0, Lae/gov/xmlhandler/TempHandler;->mTempVo:Lae/gov/mol/vo/Temperature;

    invoke-virtual {v1, v0}, Lae/gov/mol/vo/Temperature;->setTempValue(Ljava/lang/String;)V

    .line 121
    :cond_0
    iget-boolean v1, p0, Lae/gov/xmlhandler/TempHandler;->_isIcon:Z

    if-eqz v1, :cond_1

    .line 122
    iget-object v1, p0, Lae/gov/xmlhandler/TempHandler;->mTempVo:Lae/gov/mol/vo/Temperature;

    invoke-virtual {v1, v0}, Lae/gov/mol/vo/Temperature;->setIcon(Ljava/lang/String;)V

    .line 125
    :cond_1
    return-void
.end method

.method public endDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 58
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 95
    const-string v0, "endElement"

    invoke-static {v0, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    const-string v0, "temperature"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    iput-boolean v1, p0, Lae/gov/xmlhandler/TempHandler;->_inSection:Z

    .line 100
    :cond_0
    const-string v0, "weather"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    iput-boolean v1, p0, Lae/gov/xmlhandler/TempHandler;->_isIcon:Z

    .line 103
    :cond_1
    return-void
.end method

.method public getmTempVo()Lae/gov/mol/vo/Temperature;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lae/gov/xmlhandler/TempHandler;->mTempVo:Lae/gov/mol/vo/Temperature;

    return-object v0
.end method

.method public setmTempVo(Lae/gov/mol/vo/Temperature;)V
    .locals 0
    .param p1, "mTempVo"    # Lae/gov/mol/vo/Temperature;

    .prologue
    .line 47
    iput-object p1, p0, Lae/gov/xmlhandler/TempHandler;->mTempVo:Lae/gov/mol/vo/Temperature;

    .line 48
    return-void
.end method

.method public startDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 39
    new-instance v0, Lae/gov/mol/vo/Temperature;

    invoke-direct {v0}, Lae/gov/mol/vo/Temperature;-><init>()V

    iput-object v0, p0, Lae/gov/xmlhandler/TempHandler;->mTempVo:Lae/gov/mol/vo/Temperature;

    .line 40
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 3
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "atts"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 73
    const-string v0, "temperature"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    iput-boolean v2, p0, Lae/gov/xmlhandler/TempHandler;->_inSection:Z

    .line 76
    iget-object v0, p0, Lae/gov/xmlhandler/TempHandler;->mTempVo:Lae/gov/mol/vo/Temperature;

    const-string v1, "value"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/Temperature;->setTempValue(Ljava/lang/String;)V

    .line 78
    :cond_0
    const-string v0, "weather"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    iput-boolean v2, p0, Lae/gov/xmlhandler/TempHandler;->_isIcon:Z

    .line 80
    iget-object v0, p0, Lae/gov/xmlhandler/TempHandler;->mTempVo:Lae/gov/mol/vo/Temperature;

    const-string v1, "icon"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/Temperature;->setIcon(Ljava/lang/String;)V

    .line 83
    :cond_1
    return-void
.end method
