.class public abstract Lorg/ksoap2/transport/Transport;
.super Ljava/lang/Object;
.source "Transport.java"


# static fields
.field protected static final CONTENT_TYPE_SOAP_XML_CHARSET_UTF_8:Ljava/lang/String; = "application/soap+xml;charset=utf-8"

.field protected static final CONTENT_TYPE_XML_CHARSET_UTF_8:Ljava/lang/String; = "text/xml;charset=utf-8"

.field protected static final USER_AGENT:Ljava/lang/String; = "ksoap2-android/2.6.0+"


# instance fields
.field private bufferLength:I

.field public debug:Z

.field protected proxy:Ljava/net/Proxy;

.field public requestDump:Ljava/lang/String;

.field public responseDump:Ljava/lang/String;

.field protected timeout:I

.field protected url:Ljava/lang/String;

.field private xmlVersionTag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/16 v0, 0x4e20

    iput v0, p0, Lorg/ksoap2/transport/Transport;->timeout:I

    .line 58
    const-string v0, ""

    iput-object v0, p0, Lorg/ksoap2/transport/Transport;->xmlVersionTag:Ljava/lang/String;

    .line 65
    const/high16 v0, 0x40000

    iput v0, p0, Lorg/ksoap2/transport/Transport;->bufferLength:I

    .line 68
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/ksoap2/transport/Transport;-><init>(Ljava/net/Proxy;Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "timeout"    # I

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/16 v0, 0x4e20

    iput v0, p0, Lorg/ksoap2/transport/Transport;->timeout:I

    .line 58
    const-string v0, ""

    iput-object v0, p0, Lorg/ksoap2/transport/Transport;->xmlVersionTag:Ljava/lang/String;

    .line 65
    const/high16 v0, 0x40000

    iput v0, p0, Lorg/ksoap2/transport/Transport;->bufferLength:I

    .line 75
    iput-object p1, p0, Lorg/ksoap2/transport/Transport;->url:Ljava/lang/String;

    .line 76
    iput p2, p0, Lorg/ksoap2/transport/Transport;->timeout:I

    .line 77
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "timeout"    # I
    .param p3, "bufferLength"    # I

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/16 v0, 0x4e20

    iput v0, p0, Lorg/ksoap2/transport/Transport;->timeout:I

    .line 58
    const-string v0, ""

    iput-object v0, p0, Lorg/ksoap2/transport/Transport;->xmlVersionTag:Ljava/lang/String;

    .line 65
    const/high16 v0, 0x40000

    iput v0, p0, Lorg/ksoap2/transport/Transport;->bufferLength:I

    .line 80
    iput-object p1, p0, Lorg/ksoap2/transport/Transport;->url:Ljava/lang/String;

    .line 81
    iput p2, p0, Lorg/ksoap2/transport/Transport;->timeout:I

    .line 82
    iput p3, p0, Lorg/ksoap2/transport/Transport;->bufferLength:I

    .line 83
    return-void
.end method

.method public constructor <init>(Ljava/net/Proxy;Ljava/lang/String;)V
    .locals 1
    .param p1, "proxy"    # Ljava/net/Proxy;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/16 v0, 0x4e20

    iput v0, p0, Lorg/ksoap2/transport/Transport;->timeout:I

    .line 58
    const-string v0, ""

    iput-object v0, p0, Lorg/ksoap2/transport/Transport;->xmlVersionTag:Ljava/lang/String;

    .line 65
    const/high16 v0, 0x40000

    iput v0, p0, Lorg/ksoap2/transport/Transport;->bufferLength:I

    .line 94
    iput-object p1, p0, Lorg/ksoap2/transport/Transport;->proxy:Ljava/net/Proxy;

    .line 95
    iput-object p2, p0, Lorg/ksoap2/transport/Transport;->url:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public constructor <init>(Ljava/net/Proxy;Ljava/lang/String;I)V
    .locals 1
    .param p1, "proxy"    # Ljava/net/Proxy;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "timeout"    # I

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/16 v0, 0x4e20

    iput v0, p0, Lorg/ksoap2/transport/Transport;->timeout:I

    .line 58
    const-string v0, ""

    iput-object v0, p0, Lorg/ksoap2/transport/Transport;->xmlVersionTag:Ljava/lang/String;

    .line 65
    const/high16 v0, 0x40000

    iput v0, p0, Lorg/ksoap2/transport/Transport;->bufferLength:I

    .line 99
    iput-object p1, p0, Lorg/ksoap2/transport/Transport;->proxy:Ljava/net/Proxy;

    .line 100
    iput-object p2, p0, Lorg/ksoap2/transport/Transport;->url:Ljava/lang/String;

    .line 101
    iput p3, p0, Lorg/ksoap2/transport/Transport;->timeout:I

    .line 102
    return-void
.end method

.method public constructor <init>(Ljava/net/Proxy;Ljava/lang/String;II)V
    .locals 1
    .param p1, "proxy"    # Ljava/net/Proxy;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "timeout"    # I
    .param p4, "bufferLength"    # I

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/16 v0, 0x4e20

    iput v0, p0, Lorg/ksoap2/transport/Transport;->timeout:I

    .line 58
    const-string v0, ""

    iput-object v0, p0, Lorg/ksoap2/transport/Transport;->xmlVersionTag:Ljava/lang/String;

    .line 65
    const/high16 v0, 0x40000

    iput v0, p0, Lorg/ksoap2/transport/Transport;->bufferLength:I

    .line 105
    iput-object p1, p0, Lorg/ksoap2/transport/Transport;->proxy:Ljava/net/Proxy;

    .line 106
    iput-object p2, p0, Lorg/ksoap2/transport/Transport;->url:Ljava/lang/String;

    .line 107
    iput p3, p0, Lorg/ksoap2/transport/Transport;->timeout:I

    .line 108
    iput p4, p0, Lorg/ksoap2/transport/Transport;->bufferLength:I

    .line 109
    return-void
.end method


# virtual methods
.method public abstract call(Ljava/lang/String;Lorg/ksoap2/SoapEnvelope;Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation
.end method

.method public abstract call(Ljava/lang/String;Lorg/ksoap2/SoapEnvelope;Ljava/util/List;Ljava/io/File;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation
.end method

.method public call(Ljava/lang/String;Lorg/ksoap2/SoapEnvelope;)V
    .locals 1
    .param p1, "soapAction"    # Ljava/lang/String;
    .param p2, "envelope"    # Lorg/ksoap2/SoapEnvelope;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 227
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/ksoap2/transport/Transport;->call(Ljava/lang/String;Lorg/ksoap2/SoapEnvelope;Ljava/util/List;)Ljava/util/List;

    .line 228
    return-void
.end method

.method protected createRequestData(Lorg/ksoap2/SoapEnvelope;)[B
    .locals 1
    .param p1, "envelope"    # Lorg/ksoap2/SoapEnvelope;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 148
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/ksoap2/transport/Transport;->createRequestData(Lorg/ksoap2/SoapEnvelope;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method protected createRequestData(Lorg/ksoap2/SoapEnvelope;Ljava/lang/String;)[B
    .locals 4
    .param p1, "envelope"    # Lorg/ksoap2/SoapEnvelope;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 129
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    iget v3, p0, Lorg/ksoap2/transport/Transport;->bufferLength:I

    invoke-direct {v0, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 130
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    const/4 v1, 0x0

    .line 131
    .local v1, "result":[B
    iget-object v3, p0, Lorg/ksoap2/transport/Transport;->xmlVersionTag:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 132
    new-instance v2, Lorg/kxml2/io/KXmlSerializer;

    invoke-direct {v2}, Lorg/kxml2/io/KXmlSerializer;-><init>()V

    .line 133
    .local v2, "xw":Lorg/xmlpull/v1/XmlSerializer;
    invoke-interface {v2, v0, p2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 134
    invoke-virtual {p1, v2}, Lorg/ksoap2/SoapEnvelope;->write(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 135
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

    .line 136
    const/16 v3, 0xd

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 137
    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 138
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 139
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 140
    const/4 v2, 0x0

    .line 141
    const/4 v0, 0x0

    .line 142
    return-object v1
.end method

.method public getHost()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 237
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lorg/ksoap2/transport/Transport;->url:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 257
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lorg/ksoap2/transport/Transport;->url:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPort()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 247
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lorg/ksoap2/transport/Transport;->url:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->getPort()I

    move-result v0

    return v0
.end method

.method public abstract getServiceConnection()Lorg/ksoap2/transport/ServiceConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected parseResponse(Lorg/ksoap2/SoapEnvelope;Ljava/io/InputStream;)V
    .locals 3
    .param p1, "envelope"    # Lorg/ksoap2/SoapEnvelope;
    .param p2, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 115
    new-instance v0, Lorg/kxml2/io/KXmlParser;

    invoke-direct {v0}, Lorg/kxml2/io/KXmlParser;-><init>()V

    .line 116
    .local v0, "xp":Lorg/xmlpull/v1/XmlPullParser;
    const-string v1, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 117
    const/4 v1, 0x0

    invoke-interface {v0, p2, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 118
    invoke-virtual {p1, v0}, Lorg/ksoap2/SoapEnvelope;->parse(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 122
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    .line 123
    return-void
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 176
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 158
    iput-object p1, p0, Lorg/ksoap2/transport/Transport;->url:Ljava/lang/String;

    .line 159
    return-void
.end method

.method public setXmlVersionTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 169
    iput-object p1, p0, Lorg/ksoap2/transport/Transport;->xmlVersionTag:Ljava/lang/String;

    .line 170
    return-void
.end method
