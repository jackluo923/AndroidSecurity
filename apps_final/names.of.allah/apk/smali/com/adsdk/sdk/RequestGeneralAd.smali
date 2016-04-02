.class public Lcom/adsdk/sdk/RequestGeneralAd;
.super Lcom/adsdk/sdk/RequestAd;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/adsdk/sdk/RequestAd",
        "<",
        "Lcom/adsdk/sdk/AdResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static final RELOAD_AFTER_NO_AD:I = 0x14


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/adsdk/sdk/RequestAd;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    invoke-direct {p0}, Lcom/adsdk/sdk/RequestAd;-><init>()V

    iput-object p1, p0, Lcom/adsdk/sdk/RequestGeneralAd;->is:Ljava/io/InputStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "Parse is null"

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adsdk/sdk/RequestGeneralAd;->is:Ljava/io/InputStream;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 2

    :try_start_0
    new-instance v0, Ljava/util/Scanner;

    invoke-direct {v0, p1}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    const-string v1, "\\A"

    invoke-virtual {v0, v1}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Scanner;->next()Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_0
.end method

.method private getAttribute(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-interface {p1, p2}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    if-eqz v0, :cond_0

    invoke-interface {v0, p3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getCustomEvents(Lorg/w3c/dom/Document;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Document;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/adsdk/sdk/customevents/CustomEvent;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "customevents"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    if-eqz v0, :cond_0

    const-string v3, "customevent"

    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-lt v1, v0, :cond_1

    :cond_0
    return-object v2

    :cond_1
    invoke-interface {v3, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    const-string v4, "class"

    invoke-direct {p0, v0, v4}, Lcom/adsdk/sdk/RequestGeneralAd;->getTextValue(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "parameter"

    invoke-direct {p0, v0, v5}, Lcom/adsdk/sdk/RequestGeneralAd;->getTextValue(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "pixel"

    invoke-direct {p0, v0, v6}, Lcom/adsdk/sdk/RequestGeneralAd;->getTextValue(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v6, Lcom/adsdk/sdk/customevents/CustomEvent;

    invoke-direct {v6, v4, v5, v0}, Lcom/adsdk/sdk/customevents/CustomEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private getInteger(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private getTextValue(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private getValue(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    invoke-interface {p1, p2}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getValueAsBoolean(Lorg/w3c/dom/Document;Ljava/lang/String;)Z
    .locals 2

    const-string v0, "yes"

    invoke-direct {p0, p1, p2}, Lcom/adsdk/sdk/RequestGeneralAd;->getValue(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private getValueAsInt(Lorg/w3c/dom/Document;Ljava/lang/String;)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/adsdk/sdk/RequestGeneralAd;->getValue(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adsdk/sdk/RequestGeneralAd;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method parse(Ljava/io/InputStream;Z)Lcom/adsdk/sdk/AdResponse;
    .locals 6

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    new-instance v1, Lcom/adsdk/sdk/AdResponse;

    invoke-direct {v1}, Lcom/adsdk/sdk/AdResponse;-><init>()V

    if-eqz p2, :cond_2

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v0}, Lcom/adsdk/sdk/AdResponse;->setCustomEvents(Ljava/util/List;)V

    invoke-static {p1}, Lcom/adsdk/sdk/video/VASTParser;->createVastFromStream(Ljava/io/InputStream;)Lcom/adsdk/sdk/video/VAST;

    move-result-object v0

    invoke-static {v0}, Lcom/adsdk/sdk/video/VASTParser;->fillVideoDataFromVast(Lcom/adsdk/sdk/video/VAST;)Lcom/adsdk/sdk/video/VideoData;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Lcom/adsdk/sdk/AdResponse;->setType(I)V

    invoke-virtual {v1}, Lcom/adsdk/sdk/AdResponse;->getRefresh()I

    move-result v0

    if-gtz v0, :cond_0

    const/16 v0, 0x14

    invoke-virtual {v1, v0}, Lcom/adsdk/sdk/AdResponse;->setRefresh(I)V

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {v1, v0}, Lcom/adsdk/sdk/AdResponse;->setVideoData(Lcom/adsdk/sdk/video/VideoData;)V

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Lcom/adsdk/sdk/AdResponse;->setType(I)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/adsdk/sdk/RequestException;

    const-string v2, "Cannot parse Response"

    invoke-direct {v1, v2, v0}, Lcom/adsdk/sdk/RequestException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    :try_start_1
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    sget-boolean v3, Lcom/adsdk/sdk/Log;->LOGGING_ENABLED:Z

    if-eqz v3, :cond_3

    invoke-direct {p0, p1}, Lcom/adsdk/sdk/RequestGeneralAd;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Ad RequestPerform HTTP Response: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    const-string v3, "ISO-8859-1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    new-instance v0, Lorg/xml/sax/InputSource;

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v4}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    :cond_3
    const-string v3, "ISO-8859-1"

    invoke-virtual {v0, v3}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v2

    if-nez v2, :cond_4

    new-instance v0, Lcom/adsdk/sdk/RequestException;

    const-string v1, "Document is not an xml"

    invoke-direct {v0, v1}, Lcom/adsdk/sdk/RequestException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    :catch_1
    move-exception v0

    new-instance v1, Lcom/adsdk/sdk/RequestException;

    const-string v2, "Cannot parse Response"

    invoke-direct {v1, v2, v0}, Lcom/adsdk/sdk/RequestException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_4
    :try_start_2
    const-string v3, "error"

    invoke-direct {p0, v0, v3}, Lcom/adsdk/sdk/RequestGeneralAd;->getValue(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    new-instance v0, Lcom/adsdk/sdk/RequestException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error Response received: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/adsdk/sdk/RequestException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    :catch_2
    move-exception v0

    new-instance v1, Lcom/adsdk/sdk/RequestException;

    const-string v2, "Cannot read Response"

    invoke-direct {v1, v2, v0}, Lcom/adsdk/sdk/RequestException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_5
    :try_start_3
    const-string v3, "type"

    invoke-interface {v2, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Lorg/w3c/dom/Element;->normalize()V

    const-string v2, "imageAd"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/adsdk/sdk/AdResponse;->setType(I)V

    const-string v2, "bannerwidth"

    invoke-direct {p0, v0, v2}, Lcom/adsdk/sdk/RequestGeneralAd;->getValueAsInt(Lorg/w3c/dom/Document;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/adsdk/sdk/AdResponse;->setBannerWidth(I)V

    const-string v2, "bannerheight"

    invoke-direct {p0, v0, v2}, Lcom/adsdk/sdk/RequestGeneralAd;->getValueAsInt(Lorg/w3c/dom/Document;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/adsdk/sdk/AdResponse;->setBannerHeight(I)V

    const-string v2, "clicktype"

    invoke-direct {p0, v0, v2}, Lcom/adsdk/sdk/RequestGeneralAd;->getValue(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/adsdk/sdk/data/ClickType;->getValue(Ljava/lang/String;)Lcom/adsdk/sdk/data/ClickType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/adsdk/sdk/AdResponse;->setClickType(Lcom/adsdk/sdk/data/ClickType;)V

    const-string v2, "clickurl"

    invoke-direct {p0, v0, v2}, Lcom/adsdk/sdk/RequestGeneralAd;->getValue(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/adsdk/sdk/AdResponse;->setClickUrl(Ljava/lang/String;)V

    const-string v2, "imageurl"

    invoke-direct {p0, v0, v2}, Lcom/adsdk/sdk/RequestGeneralAd;->getValue(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/adsdk/sdk/AdResponse;->setImageUrl(Ljava/lang/String;)V

    const-string v2, "refresh"

    invoke-direct {p0, v0, v2}, Lcom/adsdk/sdk/RequestGeneralAd;->getValueAsInt(Lorg/w3c/dom/Document;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/adsdk/sdk/AdResponse;->setRefresh(I)V

    const-string v2, "scale"

    invoke-direct {p0, v0, v2}, Lcom/adsdk/sdk/RequestGeneralAd;->getValueAsBoolean(Lorg/w3c/dom/Document;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/adsdk/sdk/AdResponse;->setScale(Z)V

    const-string v2, "skippreflight"

    invoke-direct {p0, v0, v2}, Lcom/adsdk/sdk/RequestGeneralAd;->getValueAsBoolean(Lorg/w3c/dom/Document;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/adsdk/sdk/AdResponse;->setSkipPreflight(Z)V

    :cond_6
    :goto_1
    invoke-direct {p0, v0}, Lcom/adsdk/sdk/RequestGeneralAd;->getCustomEvents(Lorg/w3c/dom/Document;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adsdk/sdk/AdResponse;->setCustomEvents(Ljava/util/List;)V
    :try_end_3
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v0

    new-instance v1, Lcom/adsdk/sdk/RequestException;

    const-string v2, "Cannot read Response"

    invoke-direct {v1, v2, v0}, Lcom/adsdk/sdk/RequestException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_7
    :try_start_4
    const-string v2, "textAd"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/adsdk/sdk/AdResponse;->setType(I)V

    const-string v2, "htmlString"

    invoke-direct {p0, v0, v2}, Lcom/adsdk/sdk/RequestGeneralAd;->getValue(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/adsdk/sdk/AdResponse;->setText(Ljava/lang/String;)V

    const-string v2, "htmlString"

    const-string v3, "skipoverlaybutton"

    invoke-direct {p0, v0, v2, v3}, Lcom/adsdk/sdk/RequestGeneralAd;->getAttribute(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "PARSER"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SkipOverlay: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/adsdk/sdk/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_8

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/adsdk/sdk/AdResponse;->setSkipOverlay(I)V

    :cond_8
    const-string v2, "clicktype"

    invoke-direct {p0, v0, v2}, Lcom/adsdk/sdk/RequestGeneralAd;->getValue(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/adsdk/sdk/data/ClickType;->getValue(Ljava/lang/String;)Lcom/adsdk/sdk/data/ClickType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/adsdk/sdk/AdResponse;->setClickType(Lcom/adsdk/sdk/data/ClickType;)V

    const-string v2, "clickurl"

    invoke-direct {p0, v0, v2}, Lcom/adsdk/sdk/RequestGeneralAd;->getValue(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/adsdk/sdk/AdResponse;->setClickUrl(Ljava/lang/String;)V

    const-string v2, "refresh"

    invoke-direct {p0, v0, v2}, Lcom/adsdk/sdk/RequestGeneralAd;->getValueAsInt(Lorg/w3c/dom/Document;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/adsdk/sdk/AdResponse;->setRefresh(I)V

    const-string v2, "scale"

    invoke-direct {p0, v0, v2}, Lcom/adsdk/sdk/RequestGeneralAd;->getValueAsBoolean(Lorg/w3c/dom/Document;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/adsdk/sdk/AdResponse;->setScale(Z)V

    const-string v2, "skippreflight"

    invoke-direct {p0, v0, v2}, Lcom/adsdk/sdk/RequestGeneralAd;->getValueAsBoolean(Lorg/w3c/dom/Document;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/adsdk/sdk/AdResponse;->setSkipPreflight(Z)V

    goto :goto_1

    :cond_9
    const-string v2, "mraidAd"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/adsdk/sdk/AdResponse;->setType(I)V

    const-string v2, "htmlString"

    invoke-direct {p0, v0, v2}, Lcom/adsdk/sdk/RequestGeneralAd;->getValue(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/adsdk/sdk/AdResponse;->setText(Ljava/lang/String;)V

    const-string v2, "htmlString"

    const-string v3, "skipoverlaybutton"

    invoke-direct {p0, v0, v2, v3}, Lcom/adsdk/sdk/RequestGeneralAd;->getAttribute(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "PARSER"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SkipOverlay: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/adsdk/sdk/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_a

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/adsdk/sdk/AdResponse;->setSkipOverlay(I)V

    :cond_a
    const-string v2, "clicktype"

    invoke-direct {p0, v0, v2}, Lcom/adsdk/sdk/RequestGeneralAd;->getValue(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/adsdk/sdk/data/ClickType;->getValue(Ljava/lang/String;)Lcom/adsdk/sdk/data/ClickType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/adsdk/sdk/AdResponse;->setClickType(Lcom/adsdk/sdk/data/ClickType;)V

    const-string v2, "clickurl"

    invoke-direct {p0, v0, v2}, Lcom/adsdk/sdk/RequestGeneralAd;->getValue(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/adsdk/sdk/AdResponse;->setClickUrl(Ljava/lang/String;)V

    const-string v2, "urltype"

    invoke-direct {p0, v0, v2}, Lcom/adsdk/sdk/RequestGeneralAd;->getValue(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/adsdk/sdk/AdResponse;->setUrlType(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/adsdk/sdk/AdResponse;->setRefresh(I)V

    const-string v2, "scale"

    invoke-direct {p0, v0, v2}, Lcom/adsdk/sdk/RequestGeneralAd;->getValueAsBoolean(Lorg/w3c/dom/Document;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/adsdk/sdk/AdResponse;->setScale(Z)V

    const-string v2, "skippreflight"

    invoke-direct {p0, v0, v2}, Lcom/adsdk/sdk/RequestGeneralAd;->getValueAsBoolean(Lorg/w3c/dom/Document;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/adsdk/sdk/AdResponse;->setSkipPreflight(Z)V

    goto/16 :goto_1

    :cond_b
    const-string v2, "noAd"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/adsdk/sdk/AdResponse;->setType(I)V

    invoke-virtual {v1}, Lcom/adsdk/sdk/AdResponse;->getRefresh()I

    move-result v2

    if-gtz v2, :cond_6

    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Lcom/adsdk/sdk/AdResponse;->setRefresh(I)V

    goto/16 :goto_1

    :cond_c
    new-instance v0, Lcom/adsdk/sdk/RequestException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown response type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/adsdk/sdk/RequestException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3
.end method

.method bridge synthetic parse(Ljava/io/InputStream;Z)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/adsdk/sdk/RequestGeneralAd;->parse(Ljava/io/InputStream;Z)Lcom/adsdk/sdk/AdResponse;

    move-result-object v0

    return-object v0
.end method

.method parseTestString()Lcom/adsdk/sdk/AdResponse;
    .locals 2

    iget-object v0, p0, Lcom/adsdk/sdk/RequestGeneralAd;->is:Ljava/io/InputStream;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/adsdk/sdk/RequestGeneralAd;->parse(Ljava/io/InputStream;Z)Lcom/adsdk/sdk/AdResponse;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic parseTestString()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/adsdk/sdk/RequestGeneralAd;->parseTestString()Lcom/adsdk/sdk/AdResponse;

    move-result-object v0

    return-object v0
.end method
