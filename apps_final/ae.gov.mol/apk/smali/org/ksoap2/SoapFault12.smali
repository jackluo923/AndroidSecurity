.class public Lorg/ksoap2/SoapFault12;
.super Lorg/ksoap2/SoapFault;
.source "SoapFault12.java"


# static fields
.field private static final serialVersionUID:J = 0xf7121L


# instance fields
.field public Code:Lorg/kxml2/kdom/Node;

.field public Detail:Lorg/kxml2/kdom/Node;

.field public Node:Lorg/kxml2/kdom/Node;

.field public Reason:Lorg/kxml2/kdom/Node;

.field public Role:Lorg/kxml2/kdom/Node;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lorg/ksoap2/SoapFault;-><init>()V

    .line 51
    const/16 v0, 0x78

    iput v0, p0, Lorg/ksoap2/SoapFault12;->version:I

    .line 52
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "version"    # I

    .prologue
    .line 55
    invoke-direct {p0}, Lorg/ksoap2/SoapFault;-><init>()V

    .line 56
    iput p1, p0, Lorg/ksoap2/SoapFault12;->version:I

    .line 57
    return-void
.end method

.method private parseSelf(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 5
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    .line 73
    const-string v1, "http://www.w3.org/2003/05/soap-envelope"

    const-string v2, "Fault"

    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 75
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v1

    if-ne v1, v3, :cond_5

    .line 76
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, "name":Ljava/lang/String;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 78
    const-string v1, "Code"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    new-instance v1, Lorg/kxml2/kdom/Node;

    invoke-direct {v1}, Lorg/kxml2/kdom/Node;-><init>()V

    iput-object v1, p0, Lorg/ksoap2/SoapFault12;->Code:Lorg/kxml2/kdom/Node;

    .line 80
    iget-object v1, p0, Lorg/ksoap2/SoapFault12;->Code:Lorg/kxml2/kdom/Node;

    invoke-virtual {v1, p1}, Lorg/kxml2/kdom/Node;->parse(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 97
    :goto_1
    const-string v1, "http://www.w3.org/2003/05/soap-envelope"

    invoke-interface {p1, v4, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 81
    :cond_0
    const-string v1, "Reason"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 82
    new-instance v1, Lorg/kxml2/kdom/Node;

    invoke-direct {v1}, Lorg/kxml2/kdom/Node;-><init>()V

    iput-object v1, p0, Lorg/ksoap2/SoapFault12;->Reason:Lorg/kxml2/kdom/Node;

    .line 83
    iget-object v1, p0, Lorg/ksoap2/SoapFault12;->Reason:Lorg/kxml2/kdom/Node;

    invoke-virtual {v1, p1}, Lorg/kxml2/kdom/Node;->parse(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1

    .line 84
    :cond_1
    const-string v1, "Node"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 85
    new-instance v1, Lorg/kxml2/kdom/Node;

    invoke-direct {v1}, Lorg/kxml2/kdom/Node;-><init>()V

    iput-object v1, p0, Lorg/ksoap2/SoapFault12;->Node:Lorg/kxml2/kdom/Node;

    .line 86
    iget-object v1, p0, Lorg/ksoap2/SoapFault12;->Node:Lorg/kxml2/kdom/Node;

    invoke-virtual {v1, p1}, Lorg/kxml2/kdom/Node;->parse(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1

    .line 87
    :cond_2
    const-string v1, "Role"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 88
    new-instance v1, Lorg/kxml2/kdom/Node;

    invoke-direct {v1}, Lorg/kxml2/kdom/Node;-><init>()V

    iput-object v1, p0, Lorg/ksoap2/SoapFault12;->Role:Lorg/kxml2/kdom/Node;

    .line 89
    iget-object v1, p0, Lorg/ksoap2/SoapFault12;->Role:Lorg/kxml2/kdom/Node;

    invoke-virtual {v1, p1}, Lorg/kxml2/kdom/Node;->parse(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1

    .line 90
    :cond_3
    const-string v1, "Detail"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 91
    new-instance v1, Lorg/kxml2/kdom/Node;

    invoke-direct {v1}, Lorg/kxml2/kdom/Node;-><init>()V

    iput-object v1, p0, Lorg/ksoap2/SoapFault12;->Detail:Lorg/kxml2/kdom/Node;

    .line 92
    iget-object v1, p0, Lorg/ksoap2/SoapFault12;->Detail:Lorg/kxml2/kdom/Node;

    invoke-virtual {v1, p1}, Lorg/kxml2/kdom/Node;->parse(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1

    .line 94
    :cond_4
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "unexpected tag:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 99
    .end local v0    # "name":Ljava/lang/String;
    :cond_5
    const-string v1, "http://www.w3.org/2003/05/soap-envelope"

    const-string v2, "Fault"

    invoke-interface {p1, v4, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 102
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 140
    iget-object v0, p0, Lorg/ksoap2/SoapFault12;->Reason:Lorg/kxml2/kdom/Node;

    const-string v1, "http://www.w3.org/2003/05/soap-envelope"

    const-string v2, "Text"

    invoke-virtual {v0, v1, v2}, Lorg/kxml2/kdom/Node;->getElement(Ljava/lang/String;Ljava/lang/String;)Lorg/kxml2/kdom/Element;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/kxml2/kdom/Element;->getText(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public parse(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 63
    invoke-direct {p0, p1}, Lorg/ksoap2/SoapFault12;->parseSelf(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 65
    iget-object v0, p0, Lorg/ksoap2/SoapFault12;->Code:Lorg/kxml2/kdom/Node;

    const-string v1, "http://www.w3.org/2003/05/soap-envelope"

    const-string v2, "Value"

    invoke-virtual {v0, v1, v2}, Lorg/kxml2/kdom/Node;->getElement(Ljava/lang/String;Ljava/lang/String;)Lorg/kxml2/kdom/Element;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/kxml2/kdom/Element;->getText(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/ksoap2/SoapFault12;->faultcode:Ljava/lang/String;

    .line 66
    iget-object v0, p0, Lorg/ksoap2/SoapFault12;->Reason:Lorg/kxml2/kdom/Node;

    const-string v1, "http://www.w3.org/2003/05/soap-envelope"

    const-string v2, "Text"

    invoke-virtual {v0, v1, v2}, Lorg/kxml2/kdom/Node;->getElement(Ljava/lang/String;Ljava/lang/String;)Lorg/kxml2/kdom/Element;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/kxml2/kdom/Element;->getText(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/ksoap2/SoapFault12;->faultstring:Ljava/lang/String;

    .line 67
    iget-object v0, p0, Lorg/ksoap2/SoapFault12;->Detail:Lorg/kxml2/kdom/Node;

    iput-object v0, p0, Lorg/ksoap2/SoapFault12;->detail:Lorg/kxml2/kdom/Node;

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/ksoap2/SoapFault12;->faultactor:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 145
    iget-object v2, p0, Lorg/ksoap2/SoapFault12;->Reason:Lorg/kxml2/kdom/Node;

    const-string v3, "http://www.w3.org/2003/05/soap-envelope"

    const-string v4, "Text"

    invoke-virtual {v2, v3, v4}, Lorg/kxml2/kdom/Node;->getElement(Ljava/lang/String;Ljava/lang/String;)Lorg/kxml2/kdom/Element;

    move-result-object v2

    invoke-virtual {v2, v5}, Lorg/kxml2/kdom/Element;->getText(I)Ljava/lang/String;

    move-result-object v1

    .line 146
    .local v1, "reason":Ljava/lang/String;
    iget-object v2, p0, Lorg/ksoap2/SoapFault12;->Code:Lorg/kxml2/kdom/Node;

    const-string v3, "http://www.w3.org/2003/05/soap-envelope"

    const-string v4, "Value"

    invoke-virtual {v2, v3, v4}, Lorg/kxml2/kdom/Node;->getElement(Ljava/lang/String;Ljava/lang/String;)Lorg/kxml2/kdom/Element;

    move-result-object v2

    invoke-virtual {v2, v5}, Lorg/kxml2/kdom/Element;->getText(I)Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, "code":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", Reason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public write(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 2
    .param p1, "xw"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    const-string v0, "http://www.w3.org/2003/05/soap-envelope"

    const-string v1, "Fault"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 110
    const-string v0, "http://www.w3.org/2003/05/soap-envelope"

    const-string v1, "Code"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 111
    iget-object v0, p0, Lorg/ksoap2/SoapFault12;->Code:Lorg/kxml2/kdom/Node;

    invoke-virtual {v0, p1}, Lorg/kxml2/kdom/Node;->write(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 112
    const-string v0, "http://www.w3.org/2003/05/soap-envelope"

    const-string v1, "Code"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 113
    const-string v0, "http://www.w3.org/2003/05/soap-envelope"

    const-string v1, "Reason"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 114
    iget-object v0, p0, Lorg/ksoap2/SoapFault12;->Reason:Lorg/kxml2/kdom/Node;

    invoke-virtual {v0, p1}, Lorg/kxml2/kdom/Node;->write(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 115
    const-string v0, "http://www.w3.org/2003/05/soap-envelope"

    const-string v1, "Reason"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 117
    iget-object v0, p0, Lorg/ksoap2/SoapFault12;->Node:Lorg/kxml2/kdom/Node;

    if-eqz v0, :cond_0

    .line 118
    const-string v0, "http://www.w3.org/2003/05/soap-envelope"

    const-string v1, "Node"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 119
    iget-object v0, p0, Lorg/ksoap2/SoapFault12;->Node:Lorg/kxml2/kdom/Node;

    invoke-virtual {v0, p1}, Lorg/kxml2/kdom/Node;->write(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 120
    const-string v0, "http://www.w3.org/2003/05/soap-envelope"

    const-string v1, "Node"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 122
    :cond_0
    iget-object v0, p0, Lorg/ksoap2/SoapFault12;->Role:Lorg/kxml2/kdom/Node;

    if-eqz v0, :cond_1

    .line 123
    const-string v0, "http://www.w3.org/2003/05/soap-envelope"

    const-string v1, "Role"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 124
    iget-object v0, p0, Lorg/ksoap2/SoapFault12;->Role:Lorg/kxml2/kdom/Node;

    invoke-virtual {v0, p1}, Lorg/kxml2/kdom/Node;->write(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 125
    const-string v0, "http://www.w3.org/2003/05/soap-envelope"

    const-string v1, "Role"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 128
    :cond_1
    iget-object v0, p0, Lorg/ksoap2/SoapFault12;->Detail:Lorg/kxml2/kdom/Node;

    if-eqz v0, :cond_2

    .line 129
    const-string v0, "http://www.w3.org/2003/05/soap-envelope"

    const-string v1, "Detail"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 130
    iget-object v0, p0, Lorg/ksoap2/SoapFault12;->Detail:Lorg/kxml2/kdom/Node;

    invoke-virtual {v0, p1}, Lorg/kxml2/kdom/Node;->write(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 131
    const-string v0, "http://www.w3.org/2003/05/soap-envelope"

    const-string v1, "Detail"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 133
    :cond_2
    const-string v0, "http://www.w3.org/2003/05/soap-envelope"

    const-string v1, "Fault"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 134
    return-void
.end method
