.class final Lcom/stanfy/gsonxml/XmlReader$AttributesData;
.super Ljava/lang/Object;
.source "XmlReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stanfy/gsonxml/XmlReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AttributesData"
.end annotation


# instance fields
.field count:I

.field names:[Ljava/lang/String;

.field ns:[Ljava/lang/String;

.field values:[Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "capacity"    # I

    .prologue
    .line 708
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 706
    const/4 v0, 0x0

    iput v0, p0, Lcom/stanfy/gsonxml/XmlReader$AttributesData;->count:I

    .line 709
    invoke-direct {p0, p1}, Lcom/stanfy/gsonxml/XmlReader$AttributesData;->createArrays(I)V

    .line 710
    return-void
.end method

.method private createArrays(I)V
    .locals 1
    .param p1, "capacity"    # I

    .prologue
    .line 713
    new-array v0, p1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/stanfy/gsonxml/XmlReader$AttributesData;->names:[Ljava/lang/String;

    .line 714
    new-array v0, p1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/stanfy/gsonxml/XmlReader$AttributesData;->values:[Ljava/lang/String;

    .line 715
    new-array v0, p1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/stanfy/gsonxml/XmlReader$AttributesData;->ns:[Ljava/lang/String;

    .line 716
    return-void
.end method


# virtual methods
.method public fill(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 719
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    .line 720
    .local v0, "aCount":I
    iget-object v2, p0, Lcom/stanfy/gsonxml/XmlReader$AttributesData;->names:[Ljava/lang/String;

    array-length v2, v2

    if-le v0, v2, :cond_0

    .line 721
    invoke-direct {p0, v0}, Lcom/stanfy/gsonxml/XmlReader$AttributesData;->createArrays(I)V

    .line 724
    :cond_0
    iput v0, p0, Lcom/stanfy/gsonxml/XmlReader$AttributesData;->count:I

    .line 725
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_1

    .line 730
    return-void

    .line 726
    :cond_1
    iget-object v2, p0, Lcom/stanfy/gsonxml/XmlReader$AttributesData;->names:[Ljava/lang/String;

    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 727
    iget-object v2, p0, Lcom/stanfy/gsonxml/XmlReader$AttributesData;->ns:[Ljava/lang/String;

    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributePrefix(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 728
    iget-object v2, p0, Lcom/stanfy/gsonxml/XmlReader$AttributesData;->values:[Ljava/lang/String;

    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 725
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getName(I)Ljava/lang/String;
    .locals 3
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 733
    iget-object v0, p0, Lcom/stanfy/gsonxml/XmlReader$AttributesData;->names:[Ljava/lang/String;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/stanfy/gsonxml/XmlReader$AttributesData;->ns:[Ljava/lang/String;

    aget-object v1, v1, p1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/stanfy/gsonxml/XmlReader;->nameWithNs(Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
