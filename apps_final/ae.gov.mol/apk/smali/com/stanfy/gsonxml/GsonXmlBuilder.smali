.class public Lcom/stanfy/gsonxml/GsonXmlBuilder;
.super Ljava/lang/Object;
.source "GsonXmlBuilder.java"


# instance fields
.field private coreBuilder:Lcom/google/gson/GsonBuilder;

.field private final options:Lcom/stanfy/gsonxml/XmlReader$Options;

.field private xmlParserCreator:Lcom/stanfy/gsonxml/XmlParserCreator;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lcom/stanfy/gsonxml/XmlReader$Options;

    invoke-direct {v0}, Lcom/stanfy/gsonxml/XmlReader$Options;-><init>()V

    iput-object v0, p0, Lcom/stanfy/gsonxml/GsonXmlBuilder;->options:Lcom/stanfy/gsonxml/XmlReader$Options;

    .line 20
    iget-object v0, p0, Lcom/stanfy/gsonxml/GsonXmlBuilder;->options:Lcom/stanfy/gsonxml/XmlReader$Options;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/stanfy/gsonxml/XmlReader$Options;->skipRoot:Z

    .line 22
    iget-object v0, p0, Lcom/stanfy/gsonxml/GsonXmlBuilder;->options:Lcom/stanfy/gsonxml/XmlReader$Options;

    iput-boolean v2, v0, Lcom/stanfy/gsonxml/XmlReader$Options;->namespaces:Z

    .line 24
    iget-object v0, p0, Lcom/stanfy/gsonxml/GsonXmlBuilder;->options:Lcom/stanfy/gsonxml/XmlReader$Options;

    iput-boolean v2, v0, Lcom/stanfy/gsonxml/XmlReader$Options;->sameNameList:Z

    .line 8
    return-void
.end method


# virtual methods
.method public create()Lcom/stanfy/gsonxml/GsonXml;
    .locals 6

    .prologue
    .line 161
    iget-object v3, p0, Lcom/stanfy/gsonxml/GsonXmlBuilder;->coreBuilder:Lcom/google/gson/GsonBuilder;

    if-nez v3, :cond_0

    .line 162
    new-instance v3, Lcom/google/gson/GsonBuilder;

    invoke-direct {v3}, Lcom/google/gson/GsonBuilder;-><init>()V

    iput-object v3, p0, Lcom/stanfy/gsonxml/GsonXmlBuilder;->coreBuilder:Lcom/google/gson/GsonBuilder;

    .line 164
    :cond_0
    const/4 v1, 0x0

    .line 166
    .local v1, "mGsonXml":Lcom/stanfy/gsonxml/GsonXml;
    :try_start_0
    new-instance v2, Lcom/stanfy/gsonxml/GsonXml;

    iget-object v3, p0, Lcom/stanfy/gsonxml/GsonXmlBuilder;->coreBuilder:Lcom/google/gson/GsonBuilder;

    invoke-virtual {v3}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v3

    iget-object v4, p0, Lcom/stanfy/gsonxml/GsonXmlBuilder;->xmlParserCreator:Lcom/stanfy/gsonxml/XmlParserCreator;

    iget-object v5, p0, Lcom/stanfy/gsonxml/GsonXmlBuilder;->options:Lcom/stanfy/gsonxml/XmlReader$Options;

    invoke-direct {v2, v3, v4, v5}, Lcom/stanfy/gsonxml/GsonXml;-><init>(Lcom/google/gson/Gson;Lcom/stanfy/gsonxml/XmlParserCreator;Lcom/stanfy/gsonxml/XmlReader$Options;)V
    :try_end_0
    .catch Ljava/lang/VerifyError; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "mGsonXml":Lcom/stanfy/gsonxml/GsonXml;
    .local v2, "mGsonXml":Lcom/stanfy/gsonxml/GsonXml;
    move-object v1, v2

    .line 170
    .end local v2    # "mGsonXml":Lcom/stanfy/gsonxml/GsonXml;
    .restart local v1    # "mGsonXml":Lcom/stanfy/gsonxml/GsonXml;
    :goto_0
    return-object v1

    .line 167
    :catch_0
    move-exception v0

    .line 168
    .local v0, "e":Ljava/lang/VerifyError;
    invoke-virtual {v0}, Ljava/lang/VerifyError;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lae/gov/mol/helper/CommonMethods;->Log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setPrimitiveArrays(Z)Lcom/stanfy/gsonxml/GsonXmlBuilder;
    .locals 1
    .param p1, "primitiveArrays"    # Z

    .prologue
    .line 139
    iget-object v0, p0, Lcom/stanfy/gsonxml/GsonXmlBuilder;->options:Lcom/stanfy/gsonxml/XmlReader$Options;

    iput-boolean p1, v0, Lcom/stanfy/gsonxml/XmlReader$Options;->primitiveArrays:Z

    .line 140
    return-object p0
.end method

.method public setRootArrayPrimitive(Z)Lcom/stanfy/gsonxml/GsonXmlBuilder;
    .locals 1
    .param p1, "rootArrayPrimitive"    # Z

    .prologue
    .line 150
    iget-object v0, p0, Lcom/stanfy/gsonxml/GsonXmlBuilder;->options:Lcom/stanfy/gsonxml/XmlReader$Options;

    iput-boolean p1, v0, Lcom/stanfy/gsonxml/XmlReader$Options;->rootArrayPrimitive:Z

    .line 151
    return-object p0
.end method

.method public setSameNameLists(Z)Lcom/stanfy/gsonxml/GsonXmlBuilder;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 118
    iget-object v0, p0, Lcom/stanfy/gsonxml/GsonXmlBuilder;->options:Lcom/stanfy/gsonxml/XmlReader$Options;

    iput-boolean p1, v0, Lcom/stanfy/gsonxml/XmlReader$Options;->sameNameList:Z

    .line 119
    return-object p0
.end method

.method public setSkipRoot(Z)Lcom/stanfy/gsonxml/GsonXmlBuilder;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 64
    iget-object v0, p0, Lcom/stanfy/gsonxml/GsonXmlBuilder;->options:Lcom/stanfy/gsonxml/XmlReader$Options;

    iput-boolean p1, v0, Lcom/stanfy/gsonxml/XmlReader$Options;->skipRoot:Z

    .line 65
    return-object p0
.end method

.method public setTreatNamespaces(Z)Lcom/stanfy/gsonxml/GsonXmlBuilder;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 86
    iget-object v0, p0, Lcom/stanfy/gsonxml/GsonXmlBuilder;->options:Lcom/stanfy/gsonxml/XmlReader$Options;

    iput-boolean p1, v0, Lcom/stanfy/gsonxml/XmlReader$Options;->namespaces:Z

    .line 87
    return-object p0
.end method

.method public setXmlParserCreator(Lcom/stanfy/gsonxml/XmlParserCreator;)Lcom/stanfy/gsonxml/GsonXmlBuilder;
    .locals 0
    .param p1, "xmlParserCreator"    # Lcom/stanfy/gsonxml/XmlParserCreator;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/stanfy/gsonxml/GsonXmlBuilder;->xmlParserCreator:Lcom/stanfy/gsonxml/XmlParserCreator;

    .line 43
    return-object p0
.end method

.method public wrap(Lcom/google/gson/GsonBuilder;)Lcom/stanfy/gsonxml/GsonXmlBuilder;
    .locals 0
    .param p1, "gsonBuilder"    # Lcom/google/gson/GsonBuilder;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/stanfy/gsonxml/GsonXmlBuilder;->coreBuilder:Lcom/google/gson/GsonBuilder;

    .line 33
    return-object p0
.end method
