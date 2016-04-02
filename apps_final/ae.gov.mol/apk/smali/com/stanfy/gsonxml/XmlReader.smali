.class public Lcom/stanfy/gsonxml/XmlReader;
.super Lcom/google/gson/stream/JsonReader;
.source "XmlReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stanfy/gsonxml/XmlReader$AttributesData;,
        Lcom/stanfy/gsonxml/XmlReader$Options;,
        Lcom/stanfy/gsonxml/XmlReader$Scope;,
        Lcom/stanfy/gsonxml/XmlReader$TokenRef;,
        Lcom/stanfy/gsonxml/XmlReader$ValueRef;,
        Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$google$gson$stream$JsonToken:[I = null

.field private static synthetic $SWITCH_TABLE$com$stanfy$gsonxml$XmlReader$Scope:[I = null

.field private static final END_TAG:I = 0x2

.field private static final IGNORE:I = -0x1

.field private static final START_TAG:I = 0x1

.field private static final VALUE:I = 0x3


# instance fields
.field private final attributes:Lcom/stanfy/gsonxml/XmlReader$AttributesData;

.field private endReached:Z

.field private expectedToken:Lcom/google/gson/stream/JsonToken;

.field private firstStart:Z

.field private lastTextWiteSpace:Z

.field private final options:Lcom/stanfy/gsonxml/XmlReader$Options;

.field private skipping:Z

.field private stack:[Lcom/stanfy/gsonxml/XmlReader$Scope;

.field private stackSize:I

.field private textNameCounter:I

.field private token:Lcom/google/gson/stream/JsonToken;

.field private tokensQueue:Lcom/stanfy/gsonxml/XmlReader$TokenRef;

.field private tokensQueueStart:Lcom/stanfy/gsonxml/XmlReader$TokenRef;

.field private valuesQueue:Lcom/stanfy/gsonxml/XmlReader$ValueRef;

.field private valuesQueueStart:Lcom/stanfy/gsonxml/XmlReader$ValueRef;

.field private final xmlParser:Lorg/xmlpull/v1/XmlPullParser;

.field private final xmlToken:Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;


# direct methods
.method static synthetic $SWITCH_TABLE$com$google$gson$stream$JsonToken()[I
    .locals 3

    .prologue
    .line 13
    sget-object v0, Lcom/stanfy/gsonxml/XmlReader;->$SWITCH_TABLE$com$google$gson$stream$JsonToken:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/google/gson/stream/JsonToken;->values()[Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/google/gson/stream/JsonToken;->BEGIN_ARRAY:Lcom/google/gson/stream/JsonToken;

    invoke-virtual {v1}, Lcom/google/gson/stream/JsonToken;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_9

    :goto_1
    :try_start_1
    sget-object v1, Lcom/google/gson/stream/JsonToken;->BEGIN_OBJECT:Lcom/google/gson/stream/JsonToken;

    invoke-virtual {v1}, Lcom/google/gson/stream/JsonToken;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_8

    :goto_2
    :try_start_2
    sget-object v1, Lcom/google/gson/stream/JsonToken;->BOOLEAN:Lcom/google/gson/stream/JsonToken;

    invoke-virtual {v1}, Lcom/google/gson/stream/JsonToken;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_7

    :goto_3
    :try_start_3
    sget-object v1, Lcom/google/gson/stream/JsonToken;->END_ARRAY:Lcom/google/gson/stream/JsonToken;

    invoke-virtual {v1}, Lcom/google/gson/stream/JsonToken;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_6

    :goto_4
    :try_start_4
    sget-object v1, Lcom/google/gson/stream/JsonToken;->END_DOCUMENT:Lcom/google/gson/stream/JsonToken;

    invoke-virtual {v1}, Lcom/google/gson/stream/JsonToken;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_5

    :goto_5
    :try_start_5
    sget-object v1, Lcom/google/gson/stream/JsonToken;->END_OBJECT:Lcom/google/gson/stream/JsonToken;

    invoke-virtual {v1}, Lcom/google/gson/stream/JsonToken;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_4

    :goto_6
    :try_start_6
    sget-object v1, Lcom/google/gson/stream/JsonToken;->NAME:Lcom/google/gson/stream/JsonToken;

    invoke-virtual {v1}, Lcom/google/gson/stream/JsonToken;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_3

    :goto_7
    :try_start_7
    sget-object v1, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    invoke-virtual {v1}, Lcom/google/gson/stream/JsonToken;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_2

    :goto_8
    :try_start_8
    sget-object v1, Lcom/google/gson/stream/JsonToken;->NUMBER:Lcom/google/gson/stream/JsonToken;

    invoke-virtual {v1}, Lcom/google/gson/stream/JsonToken;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_1

    :goto_9
    :try_start_9
    sget-object v1, Lcom/google/gson/stream/JsonToken;->STRING:Lcom/google/gson/stream/JsonToken;

    invoke-virtual {v1}, Lcom/google/gson/stream/JsonToken;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_0

    :goto_a
    sput-object v0, Lcom/stanfy/gsonxml/XmlReader;->$SWITCH_TABLE$com$google$gson$stream$JsonToken:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_a

    :catch_1
    move-exception v1

    goto :goto_9

    :catch_2
    move-exception v1

    goto :goto_8

    :catch_3
    move-exception v1

    goto :goto_7

    :catch_4
    move-exception v1

    goto :goto_6

    :catch_5
    move-exception v1

    goto :goto_5

    :catch_6
    move-exception v1

    goto :goto_4

    :catch_7
    move-exception v1

    goto :goto_3

    :catch_8
    move-exception v1

    goto :goto_2

    :catch_9
    move-exception v1

    goto :goto_1
.end method

.method static synthetic $SWITCH_TABLE$com$stanfy$gsonxml$XmlReader$Scope()[I
    .locals 3

    .prologue
    .line 13
    sget-object v0, Lcom/stanfy/gsonxml/XmlReader;->$SWITCH_TABLE$com$stanfy$gsonxml$XmlReader$Scope:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/stanfy/gsonxml/XmlReader$Scope;->values()[Lcom/stanfy/gsonxml/XmlReader$Scope;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/stanfy/gsonxml/XmlReader$Scope;->INSIDE_ARRAY:Lcom/stanfy/gsonxml/XmlReader$Scope;

    invoke-virtual {v1}, Lcom/stanfy/gsonxml/XmlReader$Scope;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_6

    :goto_1
    :try_start_1
    sget-object v1, Lcom/stanfy/gsonxml/XmlReader$Scope;->INSIDE_EMBEDDED_ARRAY:Lcom/stanfy/gsonxml/XmlReader$Scope;

    invoke-virtual {v1}, Lcom/stanfy/gsonxml/XmlReader$Scope;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_5

    :goto_2
    :try_start_2
    sget-object v1, Lcom/stanfy/gsonxml/XmlReader$Scope;->INSIDE_OBJECT:Lcom/stanfy/gsonxml/XmlReader$Scope;

    invoke-virtual {v1}, Lcom/stanfy/gsonxml/XmlReader$Scope;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_4

    :goto_3
    :try_start_3
    sget-object v1, Lcom/stanfy/gsonxml/XmlReader$Scope;->INSIDE_PRIMITIVE_ARRAY:Lcom/stanfy/gsonxml/XmlReader$Scope;

    invoke-virtual {v1}, Lcom/stanfy/gsonxml/XmlReader$Scope;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_4
    :try_start_4
    sget-object v1, Lcom/stanfy/gsonxml/XmlReader$Scope;->INSIDE_PRIMITIVE_EMBEDDED_ARRAY:Lcom/stanfy/gsonxml/XmlReader$Scope;

    invoke-virtual {v1}, Lcom/stanfy/gsonxml/XmlReader$Scope;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_2

    :goto_5
    :try_start_5
    sget-object v1, Lcom/stanfy/gsonxml/XmlReader$Scope;->NAME:Lcom/stanfy/gsonxml/XmlReader$Scope;

    invoke-virtual {v1}, Lcom/stanfy/gsonxml/XmlReader$Scope;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1

    :goto_6
    :try_start_6
    sget-object v1, Lcom/stanfy/gsonxml/XmlReader$Scope;->PRIMITIVE_VALUE:Lcom/stanfy/gsonxml/XmlReader$Scope;

    invoke-virtual {v1}, Lcom/stanfy/gsonxml/XmlReader$Scope;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_0

    :goto_7
    sput-object v0, Lcom/stanfy/gsonxml/XmlReader;->$SWITCH_TABLE$com$stanfy$gsonxml$XmlReader$Scope:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_7

    :catch_1
    move-exception v1

    goto :goto_6

    :catch_2
    move-exception v1

    goto :goto_5

    :catch_3
    move-exception v1

    goto :goto_4

    :catch_4
    move-exception v1

    goto :goto_3

    :catch_5
    move-exception v1

    goto :goto_2

    :catch_6
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>(Ljava/io/Reader;Lcom/stanfy/gsonxml/XmlParserCreator;Lcom/stanfy/gsonxml/XmlReader$Options;)V
    .locals 4
    .param p1, "in"    # Ljava/io/Reader;
    .param p2, "creator"    # Lcom/stanfy/gsonxml/XmlParserCreator;
    .param p3, "options"    # Lcom/stanfy/gsonxml/XmlReader$Options;

    .prologue
    const/4 v2, 0x0

    .line 71
    invoke-direct {p0, p1}, Lcom/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 50
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/stanfy/gsonxml/XmlReader;->firstStart:Z

    iput-boolean v2, p0, Lcom/stanfy/gsonxml/XmlReader;->lastTextWiteSpace:Z

    .line 55
    iput v2, p0, Lcom/stanfy/gsonxml/XmlReader;->textNameCounter:I

    .line 58
    const/16 v1, 0x20

    new-array v1, v1, [Lcom/stanfy/gsonxml/XmlReader$Scope;

    iput-object v1, p0, Lcom/stanfy/gsonxml/XmlReader;->stack:[Lcom/stanfy/gsonxml/XmlReader$Scope;

    .line 60
    iput v2, p0, Lcom/stanfy/gsonxml/XmlReader;->stackSize:I

    .line 65
    new-instance v1, Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;-><init>(Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;)V

    iput-object v1, p0, Lcom/stanfy/gsonxml/XmlReader;->xmlToken:Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;

    .line 68
    new-instance v1, Lcom/stanfy/gsonxml/XmlReader$AttributesData;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Lcom/stanfy/gsonxml/XmlReader$AttributesData;-><init>(I)V

    iput-object v1, p0, Lcom/stanfy/gsonxml/XmlReader;->attributes:Lcom/stanfy/gsonxml/XmlReader$AttributesData;

    .line 72
    invoke-interface {p2}, Lcom/stanfy/gsonxml/XmlParserCreator;->createParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    iput-object v1, p0, Lcom/stanfy/gsonxml/XmlReader;->xmlParser:Lorg/xmlpull/v1/XmlPullParser;

    .line 73
    iput-object p3, p0, Lcom/stanfy/gsonxml/XmlReader;->options:Lcom/stanfy/gsonxml/XmlReader$Options;

    .line 74
    iget-object v1, p0, Lcom/stanfy/gsonxml/XmlReader;->xmlToken:Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;

    const/4 v2, -0x1

    iput v2, v1, Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;->type:I

    .line 76
    :try_start_0
    iget-object v1, p0, Lcom/stanfy/gsonxml/XmlReader;->xmlParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1, p1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 77
    iget-object v1, p0, Lcom/stanfy/gsonxml/XmlReader;->xmlParser:Lorg/xmlpull/v1/XmlPullParser;

    const-string v2, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    iget-boolean v3, p3, Lcom/stanfy/gsonxml/XmlReader$Options;->namespaces:Z

    invoke-interface {v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    return-void

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private adaptCurrentToken()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x3

    .line 188
    iget-object v2, p0, Lcom/stanfy/gsonxml/XmlReader;->token:Lcom/google/gson/stream/JsonToken;

    iget-object v3, p0, Lcom/stanfy/gsonxml/XmlReader;->expectedToken:Lcom/google/gson/stream/JsonToken;

    if-ne v2, v3, :cond_1

    .line 260
    :cond_0
    :goto_0
    return-void

    .line 189
    :cond_1
    iget-object v2, p0, Lcom/stanfy/gsonxml/XmlReader;->expectedToken:Lcom/google/gson/stream/JsonToken;

    sget-object v3, Lcom/google/gson/stream/JsonToken;->BEGIN_ARRAY:Lcom/google/gson/stream/JsonToken;

    if-ne v2, v3, :cond_0

    .line 191
    invoke-static {}, Lcom/stanfy/gsonxml/XmlReader;->$SWITCH_TABLE$com$google$gson$stream$JsonToken()[I

    move-result-object v2

    iget-object v3, p0, Lcom/stanfy/gsonxml/XmlReader;->token:Lcom/google/gson/stream/JsonToken;

    invoke-virtual {v3}, Lcom/google/gson/stream/JsonToken;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 195
    :pswitch_1
    sget-object v2, Lcom/google/gson/stream/JsonToken;->BEGIN_ARRAY:Lcom/google/gson/stream/JsonToken;

    iput-object v2, p0, Lcom/stanfy/gsonxml/XmlReader;->token:Lcom/google/gson/stream/JsonToken;

    .line 197
    iget-object v2, p0, Lcom/stanfy/gsonxml/XmlReader;->stack:[Lcom/stanfy/gsonxml/XmlReader$Scope;

    iget v3, p0, Lcom/stanfy/gsonxml/XmlReader;->stackSize:I

    add-int/lit8 v3, v3, -0x1

    aget-object v0, v2, v3

    .line 199
    .local v0, "lastScope":Lcom/stanfy/gsonxml/XmlReader$Scope;
    invoke-direct {p0}, Lcom/stanfy/gsonxml/XmlReader;->peekNextToken()Lcom/google/gson/stream/JsonToken;

    move-result-object v2

    sget-object v3, Lcom/google/gson/stream/JsonToken;->NAME:Lcom/google/gson/stream/JsonToken;

    if-ne v2, v3, :cond_0

    .line 200
    iget-object v2, p0, Lcom/stanfy/gsonxml/XmlReader;->options:Lcom/stanfy/gsonxml/XmlReader$Options;

    iget-boolean v2, v2, Lcom/stanfy/gsonxml/XmlReader$Options;->sameNameList:Z

    if-eqz v2, :cond_2

    .line 201
    iget v2, p0, Lcom/stanfy/gsonxml/XmlReader;->stackSize:I

    invoke-direct {p0, v4, v2}, Lcom/stanfy/gsonxml/XmlReader;->cleanupScopeStack(II)I

    .line 204
    sget-object v2, Lcom/google/gson/stream/JsonToken;->BEGIN_OBJECT:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v2}, Lcom/stanfy/gsonxml/XmlReader;->pushToQueue(Lcom/google/gson/stream/JsonToken;)V

    .line 206
    sget-object v2, Lcom/stanfy/gsonxml/XmlReader$Scope;->INSIDE_EMBEDDED_ARRAY:Lcom/stanfy/gsonxml/XmlReader$Scope;

    invoke-direct {p0, v2}, Lcom/stanfy/gsonxml/XmlReader;->push(Lcom/stanfy/gsonxml/XmlReader$Scope;)V

    .line 207
    sget-object v2, Lcom/stanfy/gsonxml/XmlReader$Scope;->INSIDE_OBJECT:Lcom/stanfy/gsonxml/XmlReader$Scope;

    invoke-direct {p0, v2}, Lcom/stanfy/gsonxml/XmlReader;->push(Lcom/stanfy/gsonxml/XmlReader$Scope;)V

    .line 208
    sget-object v2, Lcom/stanfy/gsonxml/XmlReader$Scope;->NAME:Lcom/stanfy/gsonxml/XmlReader$Scope;

    if-ne v0, v2, :cond_0

    .line 209
    sget-object v2, Lcom/stanfy/gsonxml/XmlReader$Scope;->NAME:Lcom/stanfy/gsonxml/XmlReader$Scope;

    invoke-direct {p0, v2}, Lcom/stanfy/gsonxml/XmlReader;->push(Lcom/stanfy/gsonxml/XmlReader$Scope;)V

    goto :goto_0

    .line 213
    :cond_2
    invoke-direct {p0}, Lcom/stanfy/gsonxml/XmlReader;->nextToken()Lcom/google/gson/stream/JsonToken;

    .line 214
    invoke-direct {p0}, Lcom/stanfy/gsonxml/XmlReader;->nextValue()Lcom/stanfy/gsonxml/XmlReader$ValueRef;

    .line 216
    iget v1, p0, Lcom/stanfy/gsonxml/XmlReader;->stackSize:I

    .line 217
    .local v1, "pushPos":I
    iget-object v2, p0, Lcom/stanfy/gsonxml/XmlReader;->options:Lcom/stanfy/gsonxml/XmlReader$Options;

    iget-boolean v2, v2, Lcom/stanfy/gsonxml/XmlReader$Options;->primitiveArrays:Z

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/stanfy/gsonxml/XmlReader;->peekNextToken()Lcom/google/gson/stream/JsonToken;

    move-result-object v2

    if-nez v2, :cond_3

    .line 219
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/stanfy/gsonxml/XmlReader;->fillQueues(Z)V

    .line 221
    :cond_3
    invoke-direct {p0, v4, v1}, Lcom/stanfy/gsonxml/XmlReader;->cleanupScopeStack(II)I

    move-result v1

    .line 223
    iget-object v2, p0, Lcom/stanfy/gsonxml/XmlReader;->options:Lcom/stanfy/gsonxml/XmlReader$Options;

    iget-boolean v2, v2, Lcom/stanfy/gsonxml/XmlReader$Options;->primitiveArrays:Z

    if-eqz v2, :cond_4

    invoke-direct {p0}, Lcom/stanfy/gsonxml/XmlReader;->peekNextToken()Lcom/google/gson/stream/JsonToken;

    move-result-object v2

    sget-object v3, Lcom/google/gson/stream/JsonToken;->STRING:Lcom/google/gson/stream/JsonToken;

    if-ne v2, v3, :cond_4

    .line 225
    sget-object v2, Lcom/stanfy/gsonxml/XmlReader$Scope;->INSIDE_PRIMITIVE_ARRAY:Lcom/stanfy/gsonxml/XmlReader$Scope;

    invoke-direct {p0, v1, v2}, Lcom/stanfy/gsonxml/XmlReader;->pushAt(ILcom/stanfy/gsonxml/XmlReader$Scope;)V

    goto :goto_0

    .line 228
    :cond_4
    sget-object v2, Lcom/stanfy/gsonxml/XmlReader$Scope;->INSIDE_ARRAY:Lcom/stanfy/gsonxml/XmlReader$Scope;

    invoke-direct {p0, v1, v2}, Lcom/stanfy/gsonxml/XmlReader;->pushAt(ILcom/stanfy/gsonxml/XmlReader$Scope;)V

    .line 229
    iget v2, p0, Lcom/stanfy/gsonxml/XmlReader;->stackSize:I

    add-int/lit8 v3, v1, 0x1

    if-le v2, v3, :cond_5

    iget-object v2, p0, Lcom/stanfy/gsonxml/XmlReader;->stack:[Lcom/stanfy/gsonxml/XmlReader$Scope;

    add-int/lit8 v3, v1, 0x1

    aget-object v2, v2, v3

    sget-object v3, Lcom/stanfy/gsonxml/XmlReader$Scope;->INSIDE_OBJECT:Lcom/stanfy/gsonxml/XmlReader$Scope;

    if-eq v2, v3, :cond_6

    .line 230
    :cond_5
    add-int/lit8 v2, v1, 0x1

    sget-object v3, Lcom/stanfy/gsonxml/XmlReader$Scope;->INSIDE_OBJECT:Lcom/stanfy/gsonxml/XmlReader$Scope;

    invoke-direct {p0, v2, v3}, Lcom/stanfy/gsonxml/XmlReader;->pushAt(ILcom/stanfy/gsonxml/XmlReader$Scope;)V

    .line 232
    :cond_6
    invoke-direct {p0}, Lcom/stanfy/gsonxml/XmlReader;->peekNextToken()Lcom/google/gson/stream/JsonToken;

    move-result-object v2

    sget-object v3, Lcom/google/gson/stream/JsonToken;->BEGIN_OBJECT:Lcom/google/gson/stream/JsonToken;

    if-eq v2, v3, :cond_0

    .line 233
    sget-object v2, Lcom/google/gson/stream/JsonToken;->BEGIN_OBJECT:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v2}, Lcom/stanfy/gsonxml/XmlReader;->pushToQueue(Lcom/google/gson/stream/JsonToken;)V

    goto/16 :goto_0

    .line 242
    .end local v0    # "lastScope":Lcom/stanfy/gsonxml/XmlReader$Scope;
    .end local v1    # "pushPos":I
    :pswitch_2
    iget-object v2, p0, Lcom/stanfy/gsonxml/XmlReader;->options:Lcom/stanfy/gsonxml/XmlReader$Options;

    iget-boolean v2, v2, Lcom/stanfy/gsonxml/XmlReader$Options;->sameNameList:Z

    if-eqz v2, :cond_7

    .line 244
    sget-object v2, Lcom/google/gson/stream/JsonToken;->BEGIN_ARRAY:Lcom/google/gson/stream/JsonToken;

    iput-object v2, p0, Lcom/stanfy/gsonxml/XmlReader;->token:Lcom/google/gson/stream/JsonToken;

    .line 245
    const/4 v2, 0x2

    iget v3, p0, Lcom/stanfy/gsonxml/XmlReader;->stackSize:I

    invoke-direct {p0, v2, v3}, Lcom/stanfy/gsonxml/XmlReader;->cleanupScopeStack(II)I

    .line 247
    sget-object v2, Lcom/google/gson/stream/JsonToken;->STRING:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v2}, Lcom/stanfy/gsonxml/XmlReader;->pushToQueue(Lcom/google/gson/stream/JsonToken;)V

    .line 248
    sget-object v2, Lcom/stanfy/gsonxml/XmlReader$Scope;->INSIDE_PRIMITIVE_EMBEDDED_ARRAY:Lcom/stanfy/gsonxml/XmlReader$Scope;

    invoke-direct {p0, v2}, Lcom/stanfy/gsonxml/XmlReader;->push(Lcom/stanfy/gsonxml/XmlReader$Scope;)V

    goto/16 :goto_0

    .line 252
    :cond_7
    sget-object v2, Lcom/google/gson/stream/JsonToken;->BEGIN_ARRAY:Lcom/google/gson/stream/JsonToken;

    iput-object v2, p0, Lcom/stanfy/gsonxml/XmlReader;->token:Lcom/google/gson/stream/JsonToken;

    .line 253
    sget-object v2, Lcom/google/gson/stream/JsonToken;->END_ARRAY:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v2}, Lcom/stanfy/gsonxml/XmlReader;->pushToQueue(Lcom/google/gson/stream/JsonToken;)V

    goto/16 :goto_0

    .line 191
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private addTextToQueue(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "canBeAppended"    # Z

    .prologue
    .line 563
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/stanfy/gsonxml/XmlReader;->tokensQueue:Lcom/stanfy/gsonxml/XmlReader$TokenRef;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/stanfy/gsonxml/XmlReader;->tokensQueue:Lcom/stanfy/gsonxml/XmlReader$TokenRef;

    iget-object v0, v0, Lcom/stanfy/gsonxml/XmlReader$TokenRef;->token:Lcom/google/gson/stream/JsonToken;

    sget-object v1, Lcom/google/gson/stream/JsonToken;->STRING:Lcom/google/gson/stream/JsonToken;

    if-ne v0, v1, :cond_1

    .line 564
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 565
    iget-object v0, p0, Lcom/stanfy/gsonxml/XmlReader;->valuesQueue:Lcom/stanfy/gsonxml/XmlReader$ValueRef;

    iget-object v1, v0, Lcom/stanfy/gsonxml/XmlReader$ValueRef;->value:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/stanfy/gsonxml/XmlReader$ValueRef;->value:Ljava/lang/String;

    .line 571
    :cond_0
    :goto_0
    return-void

    .line 568
    :cond_1
    sget-object v0, Lcom/google/gson/stream/JsonToken;->STRING:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v0}, Lcom/stanfy/gsonxml/XmlReader;->addToQueue(Lcom/google/gson/stream/JsonToken;)V

    .line 569
    invoke-direct {p0, p1}, Lcom/stanfy/gsonxml/XmlReader;->addToQueue(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private addToQueue(Lcom/google/gson/stream/JsonToken;)V
    .locals 2
    .param p1, "token"    # Lcom/google/gson/stream/JsonToken;

    .prologue
    .line 379
    new-instance v0, Lcom/stanfy/gsonxml/XmlReader$TokenRef;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stanfy/gsonxml/XmlReader$TokenRef;-><init>(Lcom/stanfy/gsonxml/XmlReader$TokenRef;)V

    .line 380
    .local v0, "tokenRef":Lcom/stanfy/gsonxml/XmlReader$TokenRef;
    iput-object p1, v0, Lcom/stanfy/gsonxml/XmlReader$TokenRef;->token:Lcom/google/gson/stream/JsonToken;

    .line 381
    iget-object v1, p0, Lcom/stanfy/gsonxml/XmlReader;->tokensQueue:Lcom/stanfy/gsonxml/XmlReader$TokenRef;

    if-nez v1, :cond_0

    .line 382
    iput-object v0, p0, Lcom/stanfy/gsonxml/XmlReader;->tokensQueue:Lcom/stanfy/gsonxml/XmlReader$TokenRef;

    .line 383
    iput-object v0, p0, Lcom/stanfy/gsonxml/XmlReader;->tokensQueueStart:Lcom/stanfy/gsonxml/XmlReader$TokenRef;

    .line 388
    :goto_0
    return-void

    .line 385
    :cond_0
    iget-object v1, p0, Lcom/stanfy/gsonxml/XmlReader;->tokensQueue:Lcom/stanfy/gsonxml/XmlReader$TokenRef;

    iput-object v0, v1, Lcom/stanfy/gsonxml/XmlReader$TokenRef;->next:Lcom/stanfy/gsonxml/XmlReader$TokenRef;

    .line 386
    iput-object v0, p0, Lcom/stanfy/gsonxml/XmlReader;->tokensQueue:Lcom/stanfy/gsonxml/XmlReader$TokenRef;

    goto :goto_0
.end method

.method private addToQueue(Lcom/stanfy/gsonxml/XmlReader$AttributesData;)V
    .locals 4
    .param p1, "attrData"    # Lcom/stanfy/gsonxml/XmlReader$AttributesData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 412
    iget v0, p1, Lcom/stanfy/gsonxml/XmlReader$AttributesData;->count:I

    .line 413
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 419
    return-void

    .line 414
    :cond_0
    sget-object v2, Lcom/google/gson/stream/JsonToken;->NAME:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v2}, Lcom/stanfy/gsonxml/XmlReader;->addToQueue(Lcom/google/gson/stream/JsonToken;)V

    .line 415
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "@"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/stanfy/gsonxml/XmlReader$AttributesData;->getName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/stanfy/gsonxml/XmlReader;->addToQueue(Ljava/lang/String;)V

    .line 416
    sget-object v2, Lcom/google/gson/stream/JsonToken;->STRING:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v2}, Lcom/stanfy/gsonxml/XmlReader;->addToQueue(Lcom/google/gson/stream/JsonToken;)V

    .line 417
    iget-object v2, p1, Lcom/stanfy/gsonxml/XmlReader$AttributesData;->values:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-direct {p0, v2}, Lcom/stanfy/gsonxml/XmlReader;->addToQueue(Ljava/lang/String;)V

    .line 413
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private addToQueue(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 401
    new-instance v0, Lcom/stanfy/gsonxml/XmlReader$ValueRef;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stanfy/gsonxml/XmlReader$ValueRef;-><init>(Lcom/stanfy/gsonxml/XmlReader$ValueRef;)V

    .line 402
    .local v0, "valueRef":Lcom/stanfy/gsonxml/XmlReader$ValueRef;
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/stanfy/gsonxml/XmlReader$ValueRef;->value:Ljava/lang/String;

    .line 403
    iget-object v1, p0, Lcom/stanfy/gsonxml/XmlReader;->valuesQueue:Lcom/stanfy/gsonxml/XmlReader$ValueRef;

    if-nez v1, :cond_0

    .line 404
    iput-object v0, p0, Lcom/stanfy/gsonxml/XmlReader;->valuesQueue:Lcom/stanfy/gsonxml/XmlReader$ValueRef;

    .line 405
    iput-object v0, p0, Lcom/stanfy/gsonxml/XmlReader;->valuesQueueStart:Lcom/stanfy/gsonxml/XmlReader$ValueRef;

    .line 410
    :goto_0
    return-void

    .line 407
    :cond_0
    iget-object v1, p0, Lcom/stanfy/gsonxml/XmlReader;->valuesQueue:Lcom/stanfy/gsonxml/XmlReader$ValueRef;

    iput-object v0, v1, Lcom/stanfy/gsonxml/XmlReader$ValueRef;->next:Lcom/stanfy/gsonxml/XmlReader$ValueRef;

    .line 408
    iput-object v0, p0, Lcom/stanfy/gsonxml/XmlReader;->valuesQueue:Lcom/stanfy/gsonxml/XmlReader$ValueRef;

    goto :goto_0
.end method

.method private cleanupScopeStack(II)I
    .locals 5
    .param p1, "count"    # I
    .param p2, "oldStackSize"    # I

    .prologue
    .line 174
    iget v0, p0, Lcom/stanfy/gsonxml/XmlReader;->stackSize:I

    .line 175
    .local v0, "curStackSize":I
    if-ge p2, v0, :cond_2

    .line 176
    move v1, p2

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_1

    .line 179
    iget v2, p0, Lcom/stanfy/gsonxml/XmlReader;->stackSize:I

    sub-int/2addr v2, p1

    iput v2, p0, Lcom/stanfy/gsonxml/XmlReader;->stackSize:I

    .line 183
    .end local v1    # "i":I
    :goto_1
    iget v2, p0, Lcom/stanfy/gsonxml/XmlReader;->stackSize:I

    if-gez v2, :cond_0

    const/4 v2, 0x0

    iput v2, p0, Lcom/stanfy/gsonxml/XmlReader;->stackSize:I

    .line 184
    :cond_0
    sub-int v2, p2, p1

    return v2

    .line 177
    .restart local v1    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/stanfy/gsonxml/XmlReader;->stack:[Lcom/stanfy/gsonxml/XmlReader$Scope;

    sub-int v3, v1, p1

    iget-object v4, p0, Lcom/stanfy/gsonxml/XmlReader;->stack:[Lcom/stanfy/gsonxml/XmlReader$Scope;

    aget-object v4, v4, v1

    aput-object v4, v2, v3

    .line 176
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 181
    .end local v1    # "i":I
    :cond_2
    iget v2, p0, Lcom/stanfy/gsonxml/XmlReader;->stackSize:I

    sub-int v3, p1, p2

    add-int/2addr v3, v0

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/stanfy/gsonxml/XmlReader;->stackSize:I

    goto :goto_1
.end method

.method private dump(Z)V
    .locals 4
    .param p1, "showToken"    # Z

    .prologue
    .line 85
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/stanfy/gsonxml/XmlReader;->stackSize:I

    if-lt v0, v1, :cond_1

    .line 88
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/io/PrintStream;->println()V

    .line 90
    if-eqz p1, :cond_0

    .line 91
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/stanfy/gsonxml/XmlReader;->token:Lcom/google/gson/stream/JsonToken;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 93
    :cond_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v2, p0, Lcom/stanfy/gsonxml/XmlReader;->tokensQueueStart:Lcom/stanfy/gsonxml/XmlReader$TokenRef;

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 94
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v2, p0, Lcom/stanfy/gsonxml/XmlReader;->valuesQueueStart:Lcom/stanfy/gsonxml/XmlReader$ValueRef;

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 95
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "----------------------"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 96
    return-void

    .line 86
    :cond_1
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/stanfy/gsonxml/XmlReader;->stack:[Lcom/stanfy/gsonxml/XmlReader$Scope;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 85
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private ensureStack()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 620
    iget v1, p0, Lcom/stanfy/gsonxml/XmlReader;->stackSize:I

    iget-object v2, p0, Lcom/stanfy/gsonxml/XmlReader;->stack:[Lcom/stanfy/gsonxml/XmlReader$Scope;

    array-length v2, v2

    if-ne v1, v2, :cond_0

    .line 621
    iget v1, p0, Lcom/stanfy/gsonxml/XmlReader;->stackSize:I

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [Lcom/stanfy/gsonxml/XmlReader$Scope;

    .line 622
    .local v0, "newStack":[Lcom/stanfy/gsonxml/XmlReader$Scope;
    iget-object v1, p0, Lcom/stanfy/gsonxml/XmlReader;->stack:[Lcom/stanfy/gsonxml/XmlReader$Scope;

    iget v2, p0, Lcom/stanfy/gsonxml/XmlReader;->stackSize:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 623
    iput-object v0, p0, Lcom/stanfy/gsonxml/XmlReader;->stack:[Lcom/stanfy/gsonxml/XmlReader$Scope;

    .line 625
    .end local v0    # "newStack":[Lcom/stanfy/gsonxml/XmlReader$Scope;
    :cond_0
    return-void
.end method

.method private expect(Lcom/google/gson/stream/JsonToken;)V
    .locals 4
    .param p1, "token"    # Lcom/google/gson/stream/JsonToken;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/stanfy/gsonxml/XmlReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    .line 121
    .local v0, "actual":Lcom/google/gson/stream/JsonToken;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/stanfy/gsonxml/XmlReader;->token:Lcom/google/gson/stream/JsonToken;

    .line 122
    if-eq v0, p1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " expected, but met "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 123
    :cond_0
    return-void
.end method

.method private fillQueues(Z)V
    .locals 4
    .param p1, "force"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 423
    move v0, p1

    .line 425
    .local v0, "mustRepeat":Z
    :cond_0
    iget-object v2, p0, Lcom/stanfy/gsonxml/XmlReader;->tokensQueue:Lcom/stanfy/gsonxml/XmlReader$TokenRef;

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/stanfy/gsonxml/XmlReader;->endReached:Z

    if-eqz v2, :cond_3

    :cond_1
    if-nez v0, :cond_3

    .line 459
    :cond_2
    :goto_0
    return-void

    .line 426
    :cond_3
    invoke-direct {p0}, Lcom/stanfy/gsonxml/XmlReader;->nextXmlInfo()Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;

    move-result-object v1

    .line 427
    .local v1, "xml":Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;
    iget-boolean v2, p0, Lcom/stanfy/gsonxml/XmlReader;->endReached:Z

    if-eqz v2, :cond_4

    .line 428
    iget-object v2, p0, Lcom/stanfy/gsonxml/XmlReader;->options:Lcom/stanfy/gsonxml/XmlReader$Options;

    iget-boolean v2, v2, Lcom/stanfy/gsonxml/XmlReader$Options;->skipRoot:Z

    if-nez v2, :cond_2

    sget-object v2, Lcom/google/gson/stream/JsonToken;->END_OBJECT:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v2}, Lcom/stanfy/gsonxml/XmlReader;->addToQueue(Lcom/google/gson/stream/JsonToken;)V

    goto :goto_0

    .line 431
    :cond_4
    iget v2, v1, Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;->type:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 433
    const/4 v0, 0x0

    .line 437
    iget v2, v1, Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;->type:I

    packed-switch v2, :pswitch_data_0

    .line 457
    :goto_1
    iget-boolean v2, p0, Lcom/stanfy/gsonxml/XmlReader;->skipping:Z

    if-eqz v2, :cond_0

    goto :goto_0

    .line 439
    :pswitch_0
    iget-boolean v2, p0, Lcom/stanfy/gsonxml/XmlReader;->firstStart:Z

    if-eqz v2, :cond_5

    .line 440
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/stanfy/gsonxml/XmlReader;->firstStart:Z

    .line 441
    invoke-direct {p0, v1}, Lcom/stanfy/gsonxml/XmlReader;->processRoot(Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;)V

    goto :goto_1

    .line 443
    :cond_5
    invoke-direct {p0, v1}, Lcom/stanfy/gsonxml/XmlReader;->processStart(Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;)V

    goto :goto_1

    .line 447
    :pswitch_1
    invoke-direct {p0, v1}, Lcom/stanfy/gsonxml/XmlReader;->processText(Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;)Z

    move-result v0

    .line 448
    goto :goto_1

    .line 450
    :pswitch_2
    invoke-direct {p0, v1}, Lcom/stanfy/gsonxml/XmlReader;->processEnd(Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;)V

    goto :goto_1

    .line 437
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private fixScopeStack()V
    .locals 2

    .prologue
    .line 574
    iget v0, p0, Lcom/stanfy/gsonxml/XmlReader;->stackSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/stanfy/gsonxml/XmlReader;->stackSize:I

    .line 575
    iget v0, p0, Lcom/stanfy/gsonxml/XmlReader;->stackSize:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/stanfy/gsonxml/XmlReader;->stack:[Lcom/stanfy/gsonxml/XmlReader$Scope;

    iget v1, p0, Lcom/stanfy/gsonxml/XmlReader;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    sget-object v1, Lcom/stanfy/gsonxml/XmlReader$Scope;->NAME:Lcom/stanfy/gsonxml/XmlReader$Scope;

    if-ne v0, v1, :cond_0

    .line 576
    iget v0, p0, Lcom/stanfy/gsonxml/XmlReader;->stackSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/stanfy/gsonxml/XmlReader;->stackSize:I

    .line 578
    :cond_0
    return-void
.end method

.method static nameWithNs(Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .locals 6
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 660
    move-object v3, p0

    .line 661
    .local v3, "result":Ljava/lang/String;
    move-object v2, p1

    .line 662
    .local v2, "ns":Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 663
    if-eqz p2, :cond_0

    .line 664
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    invoke-interface {p2, v4}, Lorg/xmlpull/v1/XmlPullParser;->getNamespaceCount(I)I

    move-result v0

    .line 665
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_2

    .line 672
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_0
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "<"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ">"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 674
    :cond_1
    return-object v3

    .line 666
    .restart local v0    # "count":I
    .restart local v1    # "i":I
    :cond_2
    invoke-interface {p2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespaceUri(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 667
    invoke-interface {p2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespacePrefix(I)Ljava/lang/String;

    move-result-object v2

    .line 668
    goto :goto_1

    .line 665
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private nextToken()Lcom/google/gson/stream/JsonToken;
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/stanfy/gsonxml/XmlReader;->tokensQueueStart:Lcom/stanfy/gsonxml/XmlReader$TokenRef;

    .line 102
    .local v0, "ref":Lcom/stanfy/gsonxml/XmlReader$TokenRef;
    if-nez v0, :cond_0

    .line 103
    sget-object v1, Lcom/google/gson/stream/JsonToken;->END_DOCUMENT:Lcom/google/gson/stream/JsonToken;

    .line 108
    :goto_0
    return-object v1

    .line 106
    :cond_0
    iget-object v1, v0, Lcom/stanfy/gsonxml/XmlReader$TokenRef;->next:Lcom/stanfy/gsonxml/XmlReader$TokenRef;

    iput-object v1, p0, Lcom/stanfy/gsonxml/XmlReader;->tokensQueueStart:Lcom/stanfy/gsonxml/XmlReader$TokenRef;

    .line 107
    iget-object v1, p0, Lcom/stanfy/gsonxml/XmlReader;->tokensQueue:Lcom/stanfy/gsonxml/XmlReader$TokenRef;

    if-ne v0, v1, :cond_1

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/stanfy/gsonxml/XmlReader;->tokensQueue:Lcom/stanfy/gsonxml/XmlReader$TokenRef;

    .line 108
    :cond_1
    iget-object v1, v0, Lcom/stanfy/gsonxml/XmlReader$TokenRef;->token:Lcom/google/gson/stream/JsonToken;

    goto :goto_0
.end method

.method private nextValue()Lcom/stanfy/gsonxml/XmlReader$ValueRef;
    .locals 3

    .prologue
    .line 112
    iget-object v0, p0, Lcom/stanfy/gsonxml/XmlReader;->valuesQueueStart:Lcom/stanfy/gsonxml/XmlReader$ValueRef;

    .line 113
    .local v0, "ref":Lcom/stanfy/gsonxml/XmlReader$ValueRef;
    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No value can be given"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 114
    :cond_0
    iget-object v1, p0, Lcom/stanfy/gsonxml/XmlReader;->valuesQueue:Lcom/stanfy/gsonxml/XmlReader$ValueRef;

    if-ne v0, v1, :cond_1

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/stanfy/gsonxml/XmlReader;->valuesQueue:Lcom/stanfy/gsonxml/XmlReader$ValueRef;

    .line 115
    :cond_1
    iget-object v1, v0, Lcom/stanfy/gsonxml/XmlReader$ValueRef;->next:Lcom/stanfy/gsonxml/XmlReader$ValueRef;

    iput-object v1, p0, Lcom/stanfy/gsonxml/XmlReader;->valuesQueueStart:Lcom/stanfy/gsonxml/XmlReader$ValueRef;

    .line 116
    return-object v0
.end method

.method private nextXmlInfo()Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x1

    .line 329
    iget-object v4, p0, Lcom/stanfy/gsonxml/XmlReader;->xmlParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextToken()I

    move-result v3

    .line 331
    .local v3, "type":I
    iget-object v1, p0, Lcom/stanfy/gsonxml/XmlReader;->xmlToken:Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;

    .line 332
    .local v1, "info":Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;
    invoke-virtual {v1}, Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;->clear()V

    .line 334
    packed-switch v3, :pswitch_data_0

    .line 372
    :goto_0
    iput v6, v1, Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;->type:I

    .line 375
    :cond_0
    :goto_1
    return-object v1

    .line 337
    :pswitch_0
    iput v5, v1, Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;->type:I

    .line 338
    iget-object v4, p0, Lcom/stanfy/gsonxml/XmlReader;->xmlParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;->name:Ljava/lang/String;

    .line 339
    iget-object v4, p0, Lcom/stanfy/gsonxml/XmlReader;->xmlParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;->ns:Ljava/lang/String;

    .line 340
    iget-object v4, p0, Lcom/stanfy/gsonxml/XmlReader;->xmlParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    .line 341
    .local v0, "aCount":I
    if-lez v0, :cond_0

    .line 342
    iget-object v4, p0, Lcom/stanfy/gsonxml/XmlReader;->attributes:Lcom/stanfy/gsonxml/XmlReader$AttributesData;

    iget-object v5, p0, Lcom/stanfy/gsonxml/XmlReader;->xmlParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-virtual {v4, v5}, Lcom/stanfy/gsonxml/XmlReader$AttributesData;->fill(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 343
    iget-object v4, p0, Lcom/stanfy/gsonxml/XmlReader;->attributes:Lcom/stanfy/gsonxml/XmlReader$AttributesData;

    iput-object v4, v1, Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;->attributesData:Lcom/stanfy/gsonxml/XmlReader$AttributesData;

    goto :goto_1

    .line 348
    .end local v0    # "aCount":I
    :pswitch_1
    const/4 v4, 0x2

    iput v4, v1, Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;->type:I

    .line 349
    iget-object v4, p0, Lcom/stanfy/gsonxml/XmlReader;->xmlParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;->name:Ljava/lang/String;

    .line 350
    iget-object v4, p0, Lcom/stanfy/gsonxml/XmlReader;->xmlParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;->ns:Ljava/lang/String;

    goto :goto_1

    .line 355
    :pswitch_2
    iget-object v4, p0, Lcom/stanfy/gsonxml/XmlReader;->xmlParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 356
    .local v2, "text":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 357
    iput-boolean v5, p0, Lcom/stanfy/gsonxml/XmlReader;->lastTextWiteSpace:Z

    .line 358
    iput v6, v1, Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;->type:I

    goto :goto_1

    .line 361
    :cond_1
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/stanfy/gsonxml/XmlReader;->lastTextWiteSpace:Z

    .line 362
    const/4 v4, 0x3

    iput v4, v1, Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;->type:I

    .line 363
    iput-object v2, v1, Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;->value:Ljava/lang/String;

    goto :goto_1

    .line 368
    .end local v2    # "text":Ljava/lang/String;
    :pswitch_3
    iput-boolean v5, p0, Lcom/stanfy/gsonxml/XmlReader;->endReached:Z

    goto :goto_0

    .line 334
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private peekNextToken()Lcom/google/gson/stream/JsonToken;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/stanfy/gsonxml/XmlReader;->tokensQueueStart:Lcom/stanfy/gsonxml/XmlReader$TokenRef;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/stanfy/gsonxml/XmlReader;->tokensQueueStart:Lcom/stanfy/gsonxml/XmlReader$TokenRef;

    iget-object v0, v0, Lcom/stanfy/gsonxml/XmlReader$TokenRef;->token:Lcom/google/gson/stream/JsonToken;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private processEnd(Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;)V
    .locals 3
    .param p1, "xml"    # Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;

    .prologue
    .line 581
    invoke-static {}, Lcom/stanfy/gsonxml/XmlReader;->$SWITCH_TABLE$com$stanfy$gsonxml$XmlReader$Scope()[I

    move-result-object v0

    iget-object v1, p0, Lcom/stanfy/gsonxml/XmlReader;->stack:[Lcom/stanfy/gsonxml/XmlReader$Scope;

    iget v2, p0, Lcom/stanfy/gsonxml/XmlReader;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/stanfy/gsonxml/XmlReader$Scope;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 617
    :goto_0
    return-void

    .line 584
    :pswitch_0
    sget-object v0, Lcom/google/gson/stream/JsonToken;->END_OBJECT:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v0}, Lcom/stanfy/gsonxml/XmlReader;->addToQueue(Lcom/google/gson/stream/JsonToken;)V

    .line 585
    const/4 v0, 0x0

    iput v0, p0, Lcom/stanfy/gsonxml/XmlReader;->textNameCounter:I

    .line 586
    invoke-direct {p0}, Lcom/stanfy/gsonxml/XmlReader;->fixScopeStack()V

    goto :goto_0

    .line 590
    :pswitch_1
    iget v0, p0, Lcom/stanfy/gsonxml/XmlReader;->stackSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/stanfy/gsonxml/XmlReader;->stackSize:I

    goto :goto_0

    .line 595
    :pswitch_2
    sget-object v0, Lcom/google/gson/stream/JsonToken;->END_ARRAY:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v0}, Lcom/stanfy/gsonxml/XmlReader;->addToQueue(Lcom/google/gson/stream/JsonToken;)V

    .line 596
    sget-object v0, Lcom/google/gson/stream/JsonToken;->END_OBJECT:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v0}, Lcom/stanfy/gsonxml/XmlReader;->addToQueue(Lcom/google/gson/stream/JsonToken;)V

    .line 597
    iget v0, p0, Lcom/stanfy/gsonxml/XmlReader;->stackSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/stanfy/gsonxml/XmlReader;->stackSize:I

    .line 598
    invoke-direct {p0}, Lcom/stanfy/gsonxml/XmlReader;->fixScopeStack()V

    goto :goto_0

    .line 603
    :pswitch_3
    sget-object v0, Lcom/google/gson/stream/JsonToken;->END_ARRAY:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v0}, Lcom/stanfy/gsonxml/XmlReader;->addToQueue(Lcom/google/gson/stream/JsonToken;)V

    .line 604
    invoke-direct {p0}, Lcom/stanfy/gsonxml/XmlReader;->fixScopeStack()V

    goto :goto_0

    .line 608
    :pswitch_4
    iget-boolean v0, p0, Lcom/stanfy/gsonxml/XmlReader;->lastTextWiteSpace:Z

    if-eqz v0, :cond_0

    .line 609
    const-string v0, ""

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/stanfy/gsonxml/XmlReader;->addTextToQueue(Ljava/lang/String;Z)V

    .line 611
    :cond_0
    invoke-direct {p0}, Lcom/stanfy/gsonxml/XmlReader;->fixScopeStack()V

    goto :goto_0

    .line 581
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method private processRoot(Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;)V
    .locals 3
    .param p1, "xml"    # Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 462
    iget-object v0, p0, Lcom/stanfy/gsonxml/XmlReader;->options:Lcom/stanfy/gsonxml/XmlReader$Options;

    iget-boolean v0, v0, Lcom/stanfy/gsonxml/XmlReader$Options;->skipRoot:Z

    if-nez v0, :cond_0

    .line 464
    iget-object v0, p0, Lcom/stanfy/gsonxml/XmlReader;->expectedToken:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v0}, Lcom/stanfy/gsonxml/XmlReader;->addToQueue(Lcom/google/gson/stream/JsonToken;)V

    .line 465
    sget-object v0, Lcom/stanfy/gsonxml/XmlReader$Scope;->INSIDE_OBJECT:Lcom/stanfy/gsonxml/XmlReader$Scope;

    invoke-direct {p0, v0}, Lcom/stanfy/gsonxml/XmlReader;->push(Lcom/stanfy/gsonxml/XmlReader$Scope;)V

    .line 466
    invoke-direct {p0, p1}, Lcom/stanfy/gsonxml/XmlReader;->processStart(Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;)V

    .line 490
    :goto_0
    return-void

    .line 468
    :cond_0
    iget-object v0, p1, Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;->attributesData:Lcom/stanfy/gsonxml/XmlReader$AttributesData;

    if-eqz v0, :cond_1

    .line 470
    sget-object v0, Lcom/google/gson/stream/JsonToken;->BEGIN_OBJECT:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v0}, Lcom/stanfy/gsonxml/XmlReader;->addToQueue(Lcom/google/gson/stream/JsonToken;)V

    .line 471
    sget-object v0, Lcom/stanfy/gsonxml/XmlReader$Scope;->INSIDE_OBJECT:Lcom/stanfy/gsonxml/XmlReader$Scope;

    invoke-direct {p0, v0}, Lcom/stanfy/gsonxml/XmlReader;->push(Lcom/stanfy/gsonxml/XmlReader$Scope;)V

    .line 472
    iget-object v0, p1, Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;->attributesData:Lcom/stanfy/gsonxml/XmlReader$AttributesData;

    invoke-direct {p0, v0}, Lcom/stanfy/gsonxml/XmlReader;->addToQueue(Lcom/stanfy/gsonxml/XmlReader$AttributesData;)V

    goto :goto_0

    .line 476
    :cond_1
    invoke-static {}, Lcom/stanfy/gsonxml/XmlReader;->$SWITCH_TABLE$com$google$gson$stream$JsonToken()[I

    move-result-object v0

    iget-object v1, p0, Lcom/stanfy/gsonxml/XmlReader;->expectedToken:Lcom/google/gson/stream/JsonToken;

    invoke-virtual {v1}, Lcom/google/gson/stream/JsonToken;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 486
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "First expectedToken="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/stanfy/gsonxml/XmlReader;->expectedToken:Lcom/google/gson/stream/JsonToken;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (not begin_object/begin_array)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 478
    :pswitch_1
    sget-object v0, Lcom/google/gson/stream/JsonToken;->BEGIN_OBJECT:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v0}, Lcom/stanfy/gsonxml/XmlReader;->addToQueue(Lcom/google/gson/stream/JsonToken;)V

    .line 479
    sget-object v0, Lcom/stanfy/gsonxml/XmlReader$Scope;->INSIDE_OBJECT:Lcom/stanfy/gsonxml/XmlReader$Scope;

    invoke-direct {p0, v0}, Lcom/stanfy/gsonxml/XmlReader;->push(Lcom/stanfy/gsonxml/XmlReader$Scope;)V

    goto :goto_0

    .line 482
    :pswitch_2
    sget-object v0, Lcom/google/gson/stream/JsonToken;->BEGIN_ARRAY:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v0}, Lcom/stanfy/gsonxml/XmlReader;->addToQueue(Lcom/google/gson/stream/JsonToken;)V

    .line 483
    iget-object v0, p0, Lcom/stanfy/gsonxml/XmlReader;->options:Lcom/stanfy/gsonxml/XmlReader$Options;

    iget-boolean v0, v0, Lcom/stanfy/gsonxml/XmlReader$Options;->rootArrayPrimitive:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/stanfy/gsonxml/XmlReader$Scope;->INSIDE_PRIMITIVE_ARRAY:Lcom/stanfy/gsonxml/XmlReader$Scope;

    :goto_1
    invoke-direct {p0, v0}, Lcom/stanfy/gsonxml/XmlReader;->push(Lcom/stanfy/gsonxml/XmlReader$Scope;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/stanfy/gsonxml/XmlReader$Scope;->INSIDE_ARRAY:Lcom/stanfy/gsonxml/XmlReader$Scope;

    goto :goto_1

    .line 476
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private processStart(Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;)V
    .locals 4
    .param p1, "xml"    # Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 494
    const/4 v1, 0x1

    .line 496
    .local v1, "processTagName":Z
    iget-object v2, p0, Lcom/stanfy/gsonxml/XmlReader;->stack:[Lcom/stanfy/gsonxml/XmlReader$Scope;

    iget v3, p0, Lcom/stanfy/gsonxml/XmlReader;->stackSize:I

    add-int/lit8 v3, v3, -0x1

    aget-object v0, v2, v3

    .line 497
    .local v0, "lastScope":Lcom/stanfy/gsonxml/XmlReader$Scope;
    invoke-static {}, Lcom/stanfy/gsonxml/XmlReader;->$SWITCH_TABLE$com$stanfy$gsonxml$XmlReader$Scope()[I

    move-result-object v2

    invoke-virtual {v0}, Lcom/stanfy/gsonxml/XmlReader$Scope;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 518
    :goto_0
    :pswitch_0
    if-eqz v1, :cond_0

    .line 519
    sget-object v2, Lcom/stanfy/gsonxml/XmlReader$Scope;->NAME:Lcom/stanfy/gsonxml/XmlReader$Scope;

    invoke-direct {p0, v2}, Lcom/stanfy/gsonxml/XmlReader;->push(Lcom/stanfy/gsonxml/XmlReader$Scope;)V

    .line 520
    sget-object v2, Lcom/google/gson/stream/JsonToken;->NAME:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v2}, Lcom/stanfy/gsonxml/XmlReader;->addToQueue(Lcom/google/gson/stream/JsonToken;)V

    .line 521
    iget-object v2, p0, Lcom/stanfy/gsonxml/XmlReader;->xmlParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-virtual {p1, v2}, Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;->getName(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/stanfy/gsonxml/XmlReader;->addToQueue(Ljava/lang/String;)V

    .line 522
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/stanfy/gsonxml/XmlReader;->lastTextWiteSpace:Z

    .line 525
    :cond_0
    iget-object v2, p1, Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;->attributesData:Lcom/stanfy/gsonxml/XmlReader$AttributesData;

    if-eqz v2, :cond_3

    .line 526
    iget-object v2, p0, Lcom/stanfy/gsonxml/XmlReader;->stack:[Lcom/stanfy/gsonxml/XmlReader$Scope;

    iget v3, p0, Lcom/stanfy/gsonxml/XmlReader;->stackSize:I

    add-int/lit8 v3, v3, -0x1

    aget-object v0, v2, v3

    .line 527
    sget-object v2, Lcom/stanfy/gsonxml/XmlReader$Scope;->PRIMITIVE_VALUE:Lcom/stanfy/gsonxml/XmlReader$Scope;

    if-ne v0, v2, :cond_1

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Attributes data in primitive scope"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 501
    :pswitch_1
    const/4 v1, 0x0

    .line 502
    sget-object v2, Lcom/stanfy/gsonxml/XmlReader$Scope;->PRIMITIVE_VALUE:Lcom/stanfy/gsonxml/XmlReader$Scope;

    invoke-direct {p0, v2}, Lcom/stanfy/gsonxml/XmlReader;->push(Lcom/stanfy/gsonxml/XmlReader$Scope;)V

    goto :goto_0

    .line 507
    :pswitch_2
    const/4 v1, 0x0

    .line 511
    :pswitch_3
    sget-object v2, Lcom/google/gson/stream/JsonToken;->BEGIN_OBJECT:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v2}, Lcom/stanfy/gsonxml/XmlReader;->addToQueue(Lcom/google/gson/stream/JsonToken;)V

    .line 512
    sget-object v2, Lcom/stanfy/gsonxml/XmlReader$Scope;->INSIDE_OBJECT:Lcom/stanfy/gsonxml/XmlReader$Scope;

    invoke-direct {p0, v2}, Lcom/stanfy/gsonxml/XmlReader;->push(Lcom/stanfy/gsonxml/XmlReader$Scope;)V

    goto :goto_0

    .line 528
    :cond_1
    sget-object v2, Lcom/stanfy/gsonxml/XmlReader$Scope;->NAME:Lcom/stanfy/gsonxml/XmlReader$Scope;

    if-ne v0, v2, :cond_2

    .line 529
    sget-object v2, Lcom/google/gson/stream/JsonToken;->BEGIN_OBJECT:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v2}, Lcom/stanfy/gsonxml/XmlReader;->addToQueue(Lcom/google/gson/stream/JsonToken;)V

    .line 530
    sget-object v2, Lcom/stanfy/gsonxml/XmlReader$Scope;->INSIDE_OBJECT:Lcom/stanfy/gsonxml/XmlReader$Scope;

    invoke-direct {p0, v2}, Lcom/stanfy/gsonxml/XmlReader;->push(Lcom/stanfy/gsonxml/XmlReader$Scope;)V

    .line 533
    :cond_2
    iget-object v2, p1, Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;->attributesData:Lcom/stanfy/gsonxml/XmlReader$AttributesData;

    invoke-direct {p0, v2}, Lcom/stanfy/gsonxml/XmlReader;->addToQueue(Lcom/stanfy/gsonxml/XmlReader$AttributesData;)V

    .line 535
    :cond_3
    return-void

    .line 497
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private processText(Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;)Z
    .locals 6
    .param p1, "xml"    # Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 538
    invoke-static {}, Lcom/stanfy/gsonxml/XmlReader;->$SWITCH_TABLE$com$stanfy$gsonxml$XmlReader$Scope()[I

    move-result-object v3

    iget-object v4, p0, Lcom/stanfy/gsonxml/XmlReader;->stack:[Lcom/stanfy/gsonxml/XmlReader$Scope;

    iget v5, p0, Lcom/stanfy/gsonxml/XmlReader;->stackSize:I

    add-int/lit8 v5, v5, -0x1

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/stanfy/gsonxml/XmlReader$Scope;->ordinal()I

    move-result v4

    aget v3, v3, v4

    sparse-switch v3, :sswitch_data_0

    .line 558
    new-instance v1, Lcom/google/gson/JsonSyntaxException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot process text \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;->value:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' inside scope "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/stanfy/gsonxml/XmlReader;->stack:[Lcom/stanfy/gsonxml/XmlReader$Scope;

    iget v4, p0, Lcom/stanfy/gsonxml/XmlReader;->stackSize:I

    add-int/lit8 v4, v4, -0x1

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 541
    :sswitch_0
    iget-object v2, p1, Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;->value:Ljava/lang/String;

    invoke-direct {p0, v2, v1}, Lcom/stanfy/gsonxml/XmlReader;->addTextToQueue(Ljava/lang/String;Z)V

    .line 555
    :goto_0
    return v1

    .line 545
    :sswitch_1
    iget-object v1, p1, Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;->value:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/stanfy/gsonxml/XmlReader;->addTextToQueue(Ljava/lang/String;Z)V

    move v1, v2

    .line 546
    goto :goto_0

    .line 549
    :sswitch_2
    const-string v0, "$"

    .line 550
    .local v0, "name":Ljava/lang/String;
    iget v2, p0, Lcom/stanfy/gsonxml/XmlReader;->textNameCounter:I

    if-lez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/stanfy/gsonxml/XmlReader;->textNameCounter:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 551
    :cond_0
    iget v2, p0, Lcom/stanfy/gsonxml/XmlReader;->textNameCounter:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/stanfy/gsonxml/XmlReader;->textNameCounter:I

    .line 552
    sget-object v2, Lcom/google/gson/stream/JsonToken;->NAME:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v2}, Lcom/stanfy/gsonxml/XmlReader;->addToQueue(Lcom/google/gson/stream/JsonToken;)V

    .line 553
    invoke-direct {p0, v0}, Lcom/stanfy/gsonxml/XmlReader;->addToQueue(Ljava/lang/String;)V

    .line 554
    iget-object v2, p1, Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;->value:Ljava/lang/String;

    invoke-direct {p0, v2, v1}, Lcom/stanfy/gsonxml/XmlReader;->addTextToQueue(Ljava/lang/String;Z)V

    goto :goto_0

    .line 538
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x6 -> :sswitch_0
        0x7 -> :sswitch_1
    .end sparse-switch
.end method

.method private push(Lcom/stanfy/gsonxml/XmlReader$Scope;)V
    .locals 3
    .param p1, "scope"    # Lcom/stanfy/gsonxml/XmlReader$Scope;

    .prologue
    .line 628
    invoke-direct {p0}, Lcom/stanfy/gsonxml/XmlReader;->ensureStack()V

    .line 629
    iget-object v0, p0, Lcom/stanfy/gsonxml/XmlReader;->stack:[Lcom/stanfy/gsonxml/XmlReader$Scope;

    iget v1, p0, Lcom/stanfy/gsonxml/XmlReader;->stackSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/stanfy/gsonxml/XmlReader;->stackSize:I

    aput-object p1, v0, v1

    .line 630
    return-void
.end method

.method private pushAt(ILcom/stanfy/gsonxml/XmlReader$Scope;)V
    .locals 5
    .param p1, "position"    # I
    .param p2, "scope"    # Lcom/stanfy/gsonxml/XmlReader$Scope;

    .prologue
    .line 632
    move v1, p1

    .line 633
    .local v1, "pos":I
    if-gez v1, :cond_0

    const/4 v1, 0x0

    .line 634
    :cond_0
    invoke-direct {p0}, Lcom/stanfy/gsonxml/XmlReader;->ensureStack()V

    .line 635
    iget v2, p0, Lcom/stanfy/gsonxml/XmlReader;->stackSize:I

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 638
    iget-object v2, p0, Lcom/stanfy/gsonxml/XmlReader;->stack:[Lcom/stanfy/gsonxml/XmlReader$Scope;

    aput-object p2, v2, v1

    .line 639
    iget v2, p0, Lcom/stanfy/gsonxml/XmlReader;->stackSize:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/stanfy/gsonxml/XmlReader;->stackSize:I

    .line 640
    return-void

    .line 636
    :cond_1
    iget-object v2, p0, Lcom/stanfy/gsonxml/XmlReader;->stack:[Lcom/stanfy/gsonxml/XmlReader$Scope;

    add-int/lit8 v3, v0, 0x1

    iget-object v4, p0, Lcom/stanfy/gsonxml/XmlReader;->stack:[Lcom/stanfy/gsonxml/XmlReader$Scope;

    aget-object v4, v4, v0

    aput-object v4, v2, v3

    .line 635
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private pushToQueue(Lcom/google/gson/stream/JsonToken;)V
    .locals 2
    .param p1, "token"    # Lcom/google/gson/stream/JsonToken;

    .prologue
    .line 390
    new-instance v0, Lcom/stanfy/gsonxml/XmlReader$TokenRef;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stanfy/gsonxml/XmlReader$TokenRef;-><init>(Lcom/stanfy/gsonxml/XmlReader$TokenRef;)V

    .line 391
    .local v0, "tokenRef":Lcom/stanfy/gsonxml/XmlReader$TokenRef;
    iput-object p1, v0, Lcom/stanfy/gsonxml/XmlReader$TokenRef;->token:Lcom/google/gson/stream/JsonToken;

    .line 392
    iget-object v1, p0, Lcom/stanfy/gsonxml/XmlReader;->tokensQueueStart:Lcom/stanfy/gsonxml/XmlReader$TokenRef;

    if-nez v1, :cond_0

    .line 393
    iput-object v0, p0, Lcom/stanfy/gsonxml/XmlReader;->tokensQueueStart:Lcom/stanfy/gsonxml/XmlReader$TokenRef;

    .line 394
    iput-object v0, p0, Lcom/stanfy/gsonxml/XmlReader;->tokensQueue:Lcom/stanfy/gsonxml/XmlReader$TokenRef;

    .line 399
    :goto_0
    return-void

    .line 396
    :cond_0
    iget-object v1, p0, Lcom/stanfy/gsonxml/XmlReader;->tokensQueueStart:Lcom/stanfy/gsonxml/XmlReader$TokenRef;

    iput-object v1, v0, Lcom/stanfy/gsonxml/XmlReader$TokenRef;->next:Lcom/stanfy/gsonxml/XmlReader$TokenRef;

    .line 397
    iput-object v0, p0, Lcom/stanfy/gsonxml/XmlReader;->tokensQueueStart:Lcom/stanfy/gsonxml/XmlReader$TokenRef;

    goto :goto_0
.end method


# virtual methods
.method public beginArray()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 137
    sget-object v0, Lcom/google/gson/stream/JsonToken;->BEGIN_ARRAY:Lcom/google/gson/stream/JsonToken;

    iput-object v0, p0, Lcom/stanfy/gsonxml/XmlReader;->expectedToken:Lcom/google/gson/stream/JsonToken;

    .line 138
    iget-object v0, p0, Lcom/stanfy/gsonxml/XmlReader;->expectedToken:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v0}, Lcom/stanfy/gsonxml/XmlReader;->expect(Lcom/google/gson/stream/JsonToken;)V

    .line 139
    return-void
.end method

.method public beginObject()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    sget-object v0, Lcom/google/gson/stream/JsonToken;->BEGIN_OBJECT:Lcom/google/gson/stream/JsonToken;

    iput-object v0, p0, Lcom/stanfy/gsonxml/XmlReader;->expectedToken:Lcom/google/gson/stream/JsonToken;

    .line 128
    iget-object v0, p0, Lcom/stanfy/gsonxml/XmlReader;->expectedToken:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v0}, Lcom/stanfy/gsonxml/XmlReader;->expect(Lcom/google/gson/stream/JsonToken;)V

    .line 129
    return-void
.end method

.method public endArray()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 142
    sget-object v0, Lcom/google/gson/stream/JsonToken;->END_ARRAY:Lcom/google/gson/stream/JsonToken;

    iput-object v0, p0, Lcom/stanfy/gsonxml/XmlReader;->expectedToken:Lcom/google/gson/stream/JsonToken;

    .line 143
    iget-object v0, p0, Lcom/stanfy/gsonxml/XmlReader;->expectedToken:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v0}, Lcom/stanfy/gsonxml/XmlReader;->expect(Lcom/google/gson/stream/JsonToken;)V

    .line 144
    return-void
.end method

.method public endObject()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 132
    sget-object v0, Lcom/google/gson/stream/JsonToken;->END_OBJECT:Lcom/google/gson/stream/JsonToken;

    iput-object v0, p0, Lcom/stanfy/gsonxml/XmlReader;->expectedToken:Lcom/google/gson/stream/JsonToken;

    .line 133
    iget-object v0, p0, Lcom/stanfy/gsonxml/XmlReader;->expectedToken:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v0}, Lcom/stanfy/gsonxml/XmlReader;->expect(Lcom/google/gson/stream/JsonToken;)V

    .line 134
    return-void
.end method

.method public hasNext()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/stanfy/gsonxml/XmlReader;->peek()Lcom/google/gson/stream/JsonToken;

    .line 149
    iget-object v0, p0, Lcom/stanfy/gsonxml/XmlReader;->token:Lcom/google/gson/stream/JsonToken;

    sget-object v1, Lcom/google/gson/stream/JsonToken;->END_OBJECT:Lcom/google/gson/stream/JsonToken;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/stanfy/gsonxml/XmlReader;->token:Lcom/google/gson/stream/JsonToken;

    sget-object v1, Lcom/google/gson/stream/JsonToken;->END_ARRAY:Lcom/google/gson/stream/JsonToken;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nextBoolean()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 295
    sget-object v1, Lcom/google/gson/stream/JsonToken;->BOOLEAN:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v1}, Lcom/stanfy/gsonxml/XmlReader;->expect(Lcom/google/gson/stream/JsonToken;)V

    .line 296
    invoke-direct {p0}, Lcom/stanfy/gsonxml/XmlReader;->nextValue()Lcom/stanfy/gsonxml/XmlReader$ValueRef;

    move-result-object v1

    iget-object v0, v1, Lcom/stanfy/gsonxml/XmlReader$ValueRef;->value:Ljava/lang/String;

    .line 297
    .local v0, "value":Ljava/lang/String;
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 301
    :cond_0
    return v2

    .line 300
    :cond_1
    const-string v1, "false"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 303
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot parse <"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> to boolean"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public nextDouble()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 307
    sget-object v0, Lcom/google/gson/stream/JsonToken;->STRING:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v0}, Lcom/stanfy/gsonxml/XmlReader;->expect(Lcom/google/gson/stream/JsonToken;)V

    .line 308
    invoke-direct {p0}, Lcom/stanfy/gsonxml/XmlReader;->nextValue()Lcom/stanfy/gsonxml/XmlReader$ValueRef;

    move-result-object v0

    iget-object v0, v0, Lcom/stanfy/gsonxml/XmlReader$ValueRef;->value:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public nextInt()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 312
    sget-object v0, Lcom/google/gson/stream/JsonToken;->STRING:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v0}, Lcom/stanfy/gsonxml/XmlReader;->expect(Lcom/google/gson/stream/JsonToken;)V

    .line 313
    invoke-direct {p0}, Lcom/stanfy/gsonxml/XmlReader;->nextValue()Lcom/stanfy/gsonxml/XmlReader$ValueRef;

    move-result-object v0

    iget-object v0, v0, Lcom/stanfy/gsonxml/XmlReader$ValueRef;->value:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public nextLong()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 317
    sget-object v0, Lcom/google/gson/stream/JsonToken;->STRING:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v0}, Lcom/stanfy/gsonxml/XmlReader;->expect(Lcom/google/gson/stream/JsonToken;)V

    .line 318
    invoke-direct {p0}, Lcom/stanfy/gsonxml/XmlReader;->nextValue()Lcom/stanfy/gsonxml/XmlReader$ValueRef;

    move-result-object v0

    iget-object v0, v0, Lcom/stanfy/gsonxml/XmlReader$ValueRef;->value:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public nextName()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 322
    sget-object v0, Lcom/google/gson/stream/JsonToken;->NAME:Lcom/google/gson/stream/JsonToken;

    iput-object v0, p0, Lcom/stanfy/gsonxml/XmlReader;->expectedToken:Lcom/google/gson/stream/JsonToken;

    .line 323
    sget-object v0, Lcom/google/gson/stream/JsonToken;->NAME:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v0}, Lcom/stanfy/gsonxml/XmlReader;->expect(Lcom/google/gson/stream/JsonToken;)V

    .line 324
    invoke-direct {p0}, Lcom/stanfy/gsonxml/XmlReader;->nextValue()Lcom/stanfy/gsonxml/XmlReader$ValueRef;

    move-result-object v0

    iget-object v0, v0, Lcom/stanfy/gsonxml/XmlReader$ValueRef;->value:Ljava/lang/String;

    return-object v0
.end method

.method public nextString()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 290
    sget-object v0, Lcom/google/gson/stream/JsonToken;->STRING:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v0}, Lcom/stanfy/gsonxml/XmlReader;->expect(Lcom/google/gson/stream/JsonToken;)V

    .line 291
    invoke-direct {p0}, Lcom/stanfy/gsonxml/XmlReader;->nextValue()Lcom/stanfy/gsonxml/XmlReader$ValueRef;

    move-result-object v0

    iget-object v0, v0, Lcom/stanfy/gsonxml/XmlReader$ValueRef;->value:Ljava/lang/String;

    return-object v0
.end method

.method public peek()Lcom/google/gson/stream/JsonToken;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 264
    iget-object v1, p0, Lcom/stanfy/gsonxml/XmlReader;->expectedToken:Lcom/google/gson/stream/JsonToken;

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/stanfy/gsonxml/XmlReader;->firstStart:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/gson/stream/JsonToken;->BEGIN_OBJECT:Lcom/google/gson/stream/JsonToken;

    .line 281
    :goto_0
    return-object v1

    .line 266
    :cond_0
    iget-object v1, p0, Lcom/stanfy/gsonxml/XmlReader;->token:Lcom/google/gson/stream/JsonToken;

    if-eqz v1, :cond_1

    .line 268
    :try_start_0
    invoke-direct {p0}, Lcom/stanfy/gsonxml/XmlReader;->adaptCurrentToken()V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    iput-object v2, p0, Lcom/stanfy/gsonxml/XmlReader;->expectedToken:Lcom/google/gson/stream/JsonToken;

    .line 273
    iget-object v1, p0, Lcom/stanfy/gsonxml/XmlReader;->token:Lcom/google/gson/stream/JsonToken;

    goto :goto_0

    .line 269
    :catch_0
    move-exception v0

    .line 270
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v1, Lcom/google/gson/JsonSyntaxException;

    const-string v2, "XML parsing exception"

    invoke-direct {v1, v2, v0}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 278
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    invoke-direct {p0, v1}, Lcom/stanfy/gsonxml/XmlReader;->fillQueues(Z)V

    .line 279
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/stanfy/gsonxml/XmlReader;->expectedToken:Lcom/google/gson/stream/JsonToken;

    .line 281
    invoke-direct {p0}, Lcom/stanfy/gsonxml/XmlReader;->nextToken()Lcom/google/gson/stream/JsonToken;

    move-result-object v1

    iput-object v1, p0, Lcom/stanfy/gsonxml/XmlReader;->token:Lcom/google/gson/stream/JsonToken;
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 283
    :catch_1
    move-exception v0

    .line 284
    .restart local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v1, Lcom/google/gson/JsonSyntaxException;

    const-string v2, "XML parsing exception"

    invoke-direct {v1, v2, v0}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public skipValue()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 154
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/stanfy/gsonxml/XmlReader;->skipping:Z

    .line 156
    const/4 v0, 0x0

    .line 158
    .local v0, "count":I
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/stanfy/gsonxml/XmlReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v1

    .line 159
    .local v1, "token":Lcom/google/gson/stream/JsonToken;
    sget-object v2, Lcom/google/gson/stream/JsonToken;->BEGIN_ARRAY:Lcom/google/gson/stream/JsonToken;

    if-eq v1, v2, :cond_1

    sget-object v2, Lcom/google/gson/stream/JsonToken;->BEGIN_OBJECT:Lcom/google/gson/stream/JsonToken;

    if-ne v1, v2, :cond_3

    .line 160
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 166
    :cond_2
    :goto_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/stanfy/gsonxml/XmlReader;->token:Lcom/google/gson/stream/JsonToken;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    if-nez v0, :cond_0

    .line 169
    iput-boolean v3, p0, Lcom/stanfy/gsonxml/XmlReader;->skipping:Z

    .line 171
    return-void

    .line 161
    :cond_3
    :try_start_1
    sget-object v2, Lcom/google/gson/stream/JsonToken;->END_ARRAY:Lcom/google/gson/stream/JsonToken;

    if-eq v1, v2, :cond_4

    sget-object v2, Lcom/google/gson/stream/JsonToken;->END_OBJECT:Lcom/google/gson/stream/JsonToken;

    if-ne v1, v2, :cond_5

    .line 162
    :cond_4
    add-int/lit8 v0, v0, -0x1

    .line 163
    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/stanfy/gsonxml/XmlReader;->valuesQueue:Lcom/stanfy/gsonxml/XmlReader$ValueRef;

    if-eqz v2, :cond_2

    .line 164
    invoke-direct {p0}, Lcom/stanfy/gsonxml/XmlReader;->nextValue()Lcom/stanfy/gsonxml/XmlReader$ValueRef;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 168
    .end local v1    # "token":Lcom/google/gson/stream/JsonToken;
    :catchall_0
    move-exception v2

    .line 169
    iput-boolean v3, p0, Lcom/stanfy/gsonxml/XmlReader;->skipping:Z

    .line 170
    throw v2
.end method
