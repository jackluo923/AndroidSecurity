.class public Lae/gov/xmlhandler/PublicNotificationHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "PublicNotificationHandler.java"


# instance fields
.field currentElement:Ljava/lang/Boolean;

.field currentValue:Ljava/lang/String;

.field private mArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/PublicNotificationVo;",
            ">;"
        }
    .end annotation
.end field

.field mPublicNotificationVo:Lae/gov/mol/vo/PublicNotificationVo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 20
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lae/gov/xmlhandler/PublicNotificationHandler;->currentElement:Ljava/lang/Boolean;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lae/gov/xmlhandler/PublicNotificationHandler;->currentValue:Ljava/lang/String;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lae/gov/xmlhandler/PublicNotificationHandler;->mArrayList:Ljava/util/ArrayList;

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
    .line 79
    iget-object v0, p0, Lae/gov/xmlhandler/PublicNotificationHandler;->currentElement:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lae/gov/xmlhandler/PublicNotificationHandler;->currentValue:Ljava/lang/String;

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

    iput-object v0, p0, Lae/gov/xmlhandler/PublicNotificationHandler;->currentValue:Ljava/lang/String;

    .line 82
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
    .line 61
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lae/gov/xmlhandler/PublicNotificationHandler;->currentElement:Ljava/lang/Boolean;

    .line 63
    const-string v0, "Notification_Eng"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 64
    iget-object v0, p0, Lae/gov/xmlhandler/PublicNotificationHandler;->mPublicNotificationVo:Lae/gov/mol/vo/PublicNotificationVo;

    iget-object v1, p0, Lae/gov/xmlhandler/PublicNotificationHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/PublicNotificationVo;->setNotification_Eng(Ljava/lang/String;)V

    .line 69
    :cond_0
    :goto_0
    const-string v0, "PublicNotification"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    iget-object v0, p0, Lae/gov/xmlhandler/PublicNotificationHandler;->mArrayList:Ljava/util/ArrayList;

    iget-object v1, p0, Lae/gov/xmlhandler/PublicNotificationHandler;->mPublicNotificationVo:Lae/gov/mol/vo/PublicNotificationVo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    :cond_1
    return-void

    .line 66
    :cond_2
    const-string v0, "Notification_arb"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lae/gov/xmlhandler/PublicNotificationHandler;->mPublicNotificationVo:Lae/gov/mol/vo/PublicNotificationVo;

    iget-object v1, p0, Lae/gov/xmlhandler/PublicNotificationHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lae/gov/mol/vo/PublicNotificationVo;->setNotification_arb(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getmArrayList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/PublicNotificationVo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26
    iget-object v0, p0, Lae/gov/xmlhandler/PublicNotificationHandler;->mArrayList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getmPublicNotificationVo()Lae/gov/mol/vo/PublicNotificationVo;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lae/gov/xmlhandler/PublicNotificationHandler;->mPublicNotificationVo:Lae/gov/mol/vo/PublicNotificationVo;

    return-object v0
.end method

.method public setmArrayList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lae/gov/mol/vo/PublicNotificationVo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p1, "mArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lae/gov/mol/vo/PublicNotificationVo;>;"
    iput-object p1, p0, Lae/gov/xmlhandler/PublicNotificationHandler;->mArrayList:Ljava/util/ArrayList;

    .line 31
    return-void
.end method

.method public setmPublicNotificationVo(Lae/gov/mol/vo/PublicNotificationVo;)V
    .locals 0
    .param p1, "mPublicNotificationVo"    # Lae/gov/mol/vo/PublicNotificationVo;

    .prologue
    .line 39
    iput-object p1, p0, Lae/gov/xmlhandler/PublicNotificationHandler;->mPublicNotificationVo:Lae/gov/mol/vo/PublicNotificationVo;

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
    .line 49
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lae/gov/xmlhandler/PublicNotificationHandler;->currentElement:Ljava/lang/Boolean;

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lae/gov/xmlhandler/PublicNotificationHandler;->currentValue:Ljava/lang/String;

    .line 51
    const-string v0, "PublicNotification"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    new-instance v0, Lae/gov/mol/vo/PublicNotificationVo;

    invoke-direct {v0}, Lae/gov/mol/vo/PublicNotificationVo;-><init>()V

    iput-object v0, p0, Lae/gov/xmlhandler/PublicNotificationHandler;->mPublicNotificationVo:Lae/gov/mol/vo/PublicNotificationVo;

    .line 54
    :cond_0
    return-void
.end method
