.class public Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;
.super Ljava/lang/Object;
.source "ContentLanguageParser.java"

# interfaces
.implements Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserConstants;


# static fields
.field private static jj_la1_0:[I


# instance fields
.field private jj_expentries:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<[I>;"
        }
    .end annotation
.end field

.field private jj_expentry:[I

.field private jj_gen:I

.field jj_input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

.field private jj_kind:I

.field private final jj_la1:[I

.field public jj_nt:Lorg/apache/james/mime4j/field/language/parser/Token;

.field private jj_ntk:I

.field private languages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public token:Lorg/apache/james/mime4j/field/language/parser/Token;

.field public token_source:Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 112
    invoke-static {}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_la1_0()V

    .line 113
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "stream"    # Ljava/io/InputStream;

    .prologue
    .line 119
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 7
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "encoding"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x3

    const/4 v5, -0x1

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->languages:Ljava/util/List;

    .line 109
    new-array v2, v6, [I

    iput-object v2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_la1:[I

    .line 214
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_expentries:Ljava/util/Vector;

    .line 216
    iput v5, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_kind:I

    .line 122
    :try_start_0
    new-instance v2, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-direct {v2, p1, p2, v3, v4}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;II)V

    iput-object v2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    new-instance v2, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;

    iget-object v3, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    invoke-direct {v2, v3}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;-><init>(Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;)V

    iput-object v2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->token_source:Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;

    .line 124
    new-instance v2, Lorg/apache/james/mime4j/field/language/parser/Token;

    invoke-direct {v2}, Lorg/apache/james/mime4j/field/language/parser/Token;-><init>()V

    iput-object v2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->token:Lorg/apache/james/mime4j/field/language/parser/Token;

    .line 125
    iput v5, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_ntk:I

    .line 126
    const/4 v2, 0x0

    iput v2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_gen:I

    .line 127
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v6, :cond_0

    iget-object v2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_la1:[I

    aput v5, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 122
    .end local v1    # "i":I
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 128
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v1    # "i":I
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 5
    .param p1, "stream"    # Ljava/io/Reader;

    .prologue
    const/4 v4, 0x3

    const/4 v2, 0x1

    const/4 v3, -0x1

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->languages:Ljava/util/List;

    .line 109
    new-array v1, v4, [I

    iput-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_la1:[I

    .line 214
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_expentries:Ljava/util/Vector;

    .line 216
    iput v3, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_kind:I

    .line 143
    new-instance v1, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    invoke-direct {v1, p1, v2, v2}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;-><init>(Ljava/io/Reader;II)V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    .line 144
    new-instance v1, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    invoke-direct {v1, v2}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;-><init>(Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;)V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->token_source:Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;

    .line 145
    new-instance v1, Lorg/apache/james/mime4j/field/language/parser/Token;

    invoke-direct {v1}, Lorg/apache/james/mime4j/field/language/parser/Token;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->token:Lorg/apache/james/mime4j/field/language/parser/Token;

    .line 146
    iput v3, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_ntk:I

    .line 147
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_gen:I

    .line 148
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_0

    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_la1:[I

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 149
    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;)V
    .locals 4
    .param p1, "tm"    # Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;

    .prologue
    const/4 v3, 0x3

    const/4 v2, -0x1

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->languages:Ljava/util/List;

    .line 109
    new-array v1, v3, [I

    iput-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_la1:[I

    .line 214
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_expentries:Ljava/util/Vector;

    .line 216
    iput v2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_kind:I

    .line 161
    iput-object p1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->token_source:Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;

    .line 162
    new-instance v1, Lorg/apache/james/mime4j/field/language/parser/Token;

    invoke-direct {v1}, Lorg/apache/james/mime4j/field/language/parser/Token;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->token:Lorg/apache/james/mime4j/field/language/parser/Token;

    .line 163
    iput v2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_ntk:I

    .line 164
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_gen:I

    .line 165
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_la1:[I

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 166
    :cond_0
    return-void
.end method

.method private final doParse()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/language/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 44
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->language()Ljava/lang/String;

    .line 47
    :goto_0
    iget v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_ntk:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_ntk()I

    move-result v0

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 52
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_la1:[I

    const/4 v1, 0x0

    iget v2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_gen:I

    aput v2, v0, v1

    .line 58
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->languages:Ljava/util/List;

    return-object v0

    .line 47
    :cond_0
    iget v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_ntk:I

    goto :goto_1

    .line 55
    :pswitch_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/language/parser/Token;

    .line 56
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->language()Ljava/lang/String;

    goto :goto_0

    .line 47
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private final jj_consume_token(I)Lorg/apache/james/mime4j/field/language/parser/Token;
    .locals 3
    .param p1, "kind"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/language/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 178
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->token:Lorg/apache/james/mime4j/field/language/parser/Token;

    .local v0, "oldToken":Lorg/apache/james/mime4j/field/language/parser/Token;
    iget-object v1, v0, Lorg/apache/james/mime4j/field/language/parser/Token;->next:Lorg/apache/james/mime4j/field/language/parser/Token;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->token:Lorg/apache/james/mime4j/field/language/parser/Token;

    iget-object v1, v1, Lorg/apache/james/mime4j/field/language/parser/Token;->next:Lorg/apache/james/mime4j/field/language/parser/Token;

    iput-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->token:Lorg/apache/james/mime4j/field/language/parser/Token;

    .line 180
    :goto_0
    const/4 v1, -0x1

    iput v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_ntk:I

    .line 181
    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->token:Lorg/apache/james/mime4j/field/language/parser/Token;

    iget v1, v1, Lorg/apache/james/mime4j/field/language/parser/Token;->kind:I

    if-ne v1, p1, :cond_1

    .line 182
    iget v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_gen:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_gen:I

    .line 183
    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->token:Lorg/apache/james/mime4j/field/language/parser/Token;

    return-object v1

    .line 179
    :cond_0
    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->token:Lorg/apache/james/mime4j/field/language/parser/Token;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->token_source:Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->getNextToken()Lorg/apache/james/mime4j/field/language/parser/Token;

    move-result-object v2

    iput-object v2, v1, Lorg/apache/james/mime4j/field/language/parser/Token;->next:Lorg/apache/james/mime4j/field/language/parser/Token;

    iput-object v2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->token:Lorg/apache/james/mime4j/field/language/parser/Token;

    goto :goto_0

    .line 185
    :cond_1
    iput-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->token:Lorg/apache/james/mime4j/field/language/parser/Token;

    .line 186
    iput p1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_kind:I

    .line 187
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->generateParseException()Lorg/apache/james/mime4j/field/language/parser/ParseException;

    move-result-object v1

    throw v1
.end method

.method private static jj_la1_0()V
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_la1_0:[I

    .line 116
    return-void

    .line 115
    nop

    :array_0
    .array-data 4
        0x2
        0x80004
        0x80004
    .end array-data
.end method

.method private final jj_ntk()I
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->token:Lorg/apache/james/mime4j/field/language/parser/Token;

    iget-object v0, v0, Lorg/apache/james/mime4j/field/language/parser/Token;->next:Lorg/apache/james/mime4j/field/language/parser/Token;

    iput-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_nt:Lorg/apache/james/mime4j/field/language/parser/Token;

    if-nez v0, :cond_0

    .line 209
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->token:Lorg/apache/james/mime4j/field/language/parser/Token;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->token_source:Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->getNextToken()Lorg/apache/james/mime4j/field/language/parser/Token;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/james/mime4j/field/language/parser/Token;->next:Lorg/apache/james/mime4j/field/language/parser/Token;

    iget v0, v1, Lorg/apache/james/mime4j/field/language/parser/Token;->kind:I

    iput v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_ntk:I

    .line 211
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_nt:Lorg/apache/james/mime4j/field/language/parser/Token;

    iget v0, v0, Lorg/apache/james/mime4j/field/language/parser/Token;->kind:I

    iput v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_ntk:I

    goto :goto_0
.end method


# virtual methods
.method public ReInit(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "stream"    # Ljava/io/InputStream;

    .prologue
    .line 131
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->ReInit(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 132
    return-void
.end method

.method public ReInit(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 6
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "encoding"    # Ljava/lang/String;

    .prologue
    const/4 v5, -0x1

    .line 134
    :try_start_0
    iget-object v2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {v2, p1, p2, v3, v4}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->ReInit(Ljava/io/InputStream;Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    iget-object v2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->token_source:Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;

    iget-object v3, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    invoke-virtual {v2, v3}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->ReInit(Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;)V

    .line 136
    new-instance v2, Lorg/apache/james/mime4j/field/language/parser/Token;

    invoke-direct {v2}, Lorg/apache/james/mime4j/field/language/parser/Token;-><init>()V

    iput-object v2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->token:Lorg/apache/james/mime4j/field/language/parser/Token;

    .line 137
    iput v5, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_ntk:I

    .line 138
    const/4 v2, 0x0

    iput v2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_gen:I

    .line 139
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_la1:[I

    aput v5, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 134
    .end local v1    # "i":I
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 140
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v1    # "i":I
    :cond_0
    return-void
.end method

.method public ReInit(Ljava/io/Reader;)V
    .locals 4
    .param p1, "stream"    # Ljava/io/Reader;

    .prologue
    const/4 v2, 0x1

    const/4 v3, -0x1

    .line 152
    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    invoke-virtual {v1, p1, v2, v2}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->ReInit(Ljava/io/Reader;II)V

    .line 153
    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->token_source:Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->ReInit(Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;)V

    .line 154
    new-instance v1, Lorg/apache/james/mime4j/field/language/parser/Token;

    invoke-direct {v1}, Lorg/apache/james/mime4j/field/language/parser/Token;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->token:Lorg/apache/james/mime4j/field/language/parser/Token;

    .line 155
    iput v3, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_ntk:I

    .line 156
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_gen:I

    .line 157
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_la1:[I

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 158
    :cond_0
    return-void
.end method

.method public ReInit(Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;)V
    .locals 3
    .param p1, "tm"    # Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;

    .prologue
    const/4 v2, -0x1

    .line 169
    iput-object p1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->token_source:Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;

    .line 170
    new-instance v1, Lorg/apache/james/mime4j/field/language/parser/Token;

    invoke-direct {v1}, Lorg/apache/james/mime4j/field/language/parser/Token;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->token:Lorg/apache/james/mime4j/field/language/parser/Token;

    .line 171
    iput v2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_ntk:I

    .line 172
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_gen:I

    .line 173
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_la1:[I

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 174
    :cond_0
    return-void
.end method

.method public final disable_tracing()V
    .locals 0

    .prologue
    .line 255
    return-void
.end method

.method public final enable_tracing()V
    .locals 0

    .prologue
    .line 252
    return-void
.end method

.method public generateParseException()Lorg/apache/james/mime4j/field/language/parser/ParseException;
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0x17

    const/4 v6, 0x1

    .line 219
    iget-object v4, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_expentries:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->removeAllElements()V

    .line 220
    new-array v3, v7, [Z

    .line 221
    .local v3, "la1tokens":[Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v7, :cond_0

    .line 222
    aput-boolean v8, v3, v1

    .line 221
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 224
    :cond_0
    iget v4, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_kind:I

    if-ltz v4, :cond_1

    .line 225
    iget v4, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_kind:I

    aput-boolean v6, v3, v4

    .line 226
    const/4 v4, -0x1

    iput v4, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_kind:I

    .line 228
    :cond_1
    const/4 v1, 0x0

    :goto_1
    const/4 v4, 0x3

    if-ge v1, v4, :cond_4

    .line 229
    iget-object v4, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_la1:[I

    aget v4, v4, v1

    iget v5, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_gen:I

    if-ne v4, v5, :cond_3

    .line 230
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_2
    const/16 v4, 0x20

    if-ge v2, v4, :cond_3

    .line 231
    sget-object v4, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_la1_0:[I

    aget v4, v4, v1

    shl-int v5, v6, v2

    and-int/2addr v4, v5

    if-eqz v4, :cond_2

    .line 232
    aput-boolean v6, v3, v2

    .line 230
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 228
    .end local v2    # "j":I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 237
    :cond_4
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v7, :cond_6

    .line 238
    aget-boolean v4, v3, v1

    if-eqz v4, :cond_5

    .line 239
    new-array v4, v6, [I

    iput-object v4, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_expentry:[I

    .line 240
    iget-object v4, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_expentry:[I

    aput v1, v4, v8

    .line 241
    iget-object v4, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_expentries:Ljava/util/Vector;

    iget-object v5, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_expentry:[I

    invoke-virtual {v4, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 237
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 244
    :cond_6
    iget-object v4, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_expentries:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    new-array v0, v4, [[I

    .line 245
    .local v0, "exptokseq":[[I
    const/4 v1, 0x0

    :goto_4
    iget-object v4, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_expentries:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v1, v4, :cond_7

    .line 246
    iget-object v4, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_expentries:Ljava/util/Vector;

    invoke-virtual {v4, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    check-cast v4, [I

    aput-object v4, v0, v1

    .line 245
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 248
    :cond_7
    new-instance v4, Lorg/apache/james/mime4j/field/language/parser/ParseException;

    iget-object v5, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->token:Lorg/apache/james/mime4j/field/language/parser/Token;

    sget-object v6, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->tokenImage:[Ljava/lang/String;

    invoke-direct {v4, v5, v0, v6}, Lorg/apache/james/mime4j/field/language/parser/ParseException;-><init>(Lorg/apache/james/mime4j/field/language/parser/Token;[[I[Ljava/lang/String;)V

    return-object v4
.end method

.method public final getNextToken()Lorg/apache/james/mime4j/field/language/parser/Token;
    .locals 2

    .prologue
    .line 191
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->token:Lorg/apache/james/mime4j/field/language/parser/Token;

    iget-object v0, v0, Lorg/apache/james/mime4j/field/language/parser/Token;->next:Lorg/apache/james/mime4j/field/language/parser/Token;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->token:Lorg/apache/james/mime4j/field/language/parser/Token;

    iget-object v0, v0, Lorg/apache/james/mime4j/field/language/parser/Token;->next:Lorg/apache/james/mime4j/field/language/parser/Token;

    iput-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->token:Lorg/apache/james/mime4j/field/language/parser/Token;

    .line 193
    :goto_0
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_ntk:I

    .line 194
    iget v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_gen:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_gen:I

    .line 195
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->token:Lorg/apache/james/mime4j/field/language/parser/Token;

    return-object v0

    .line 192
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->token:Lorg/apache/james/mime4j/field/language/parser/Token;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->token_source:Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->getNextToken()Lorg/apache/james/mime4j/field/language/parser/Token;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/james/mime4j/field/language/parser/Token;->next:Lorg/apache/james/mime4j/field/language/parser/Token;

    iput-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->token:Lorg/apache/james/mime4j/field/language/parser/Token;

    goto :goto_0
.end method

.method public final getToken(I)Lorg/apache/james/mime4j/field/language/parser/Token;
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 199
    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->token:Lorg/apache/james/mime4j/field/language/parser/Token;

    .line 200
    .local v1, "t":Lorg/apache/james/mime4j/field/language/parser/Token;
    const/4 v0, 0x0

    .local v0, "i":I
    move-object v2, v1

    .end local v1    # "t":Lorg/apache/james/mime4j/field/language/parser/Token;
    .local v2, "t":Lorg/apache/james/mime4j/field/language/parser/Token;
    :goto_0
    if-ge v0, p1, :cond_1

    .line 201
    iget-object v3, v2, Lorg/apache/james/mime4j/field/language/parser/Token;->next:Lorg/apache/james/mime4j/field/language/parser/Token;

    if-eqz v3, :cond_0

    iget-object v1, v2, Lorg/apache/james/mime4j/field/language/parser/Token;->next:Lorg/apache/james/mime4j/field/language/parser/Token;

    .line 200
    .end local v2    # "t":Lorg/apache/james/mime4j/field/language/parser/Token;
    .restart local v1    # "t":Lorg/apache/james/mime4j/field/language/parser/Token;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    move-object v2, v1

    .end local v1    # "t":Lorg/apache/james/mime4j/field/language/parser/Token;
    .restart local v2    # "t":Lorg/apache/james/mime4j/field/language/parser/Token;
    goto :goto_0

    .line 202
    :cond_0
    iget-object v3, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->token_source:Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->getNextToken()Lorg/apache/james/mime4j/field/language/parser/Token;

    move-result-object v1

    iput-object v1, v2, Lorg/apache/james/mime4j/field/language/parser/Token;->next:Lorg/apache/james/mime4j/field/language/parser/Token;

    .end local v2    # "t":Lorg/apache/james/mime4j/field/language/parser/Token;
    .restart local v1    # "t":Lorg/apache/james/mime4j/field/language/parser/Token;
    goto :goto_1

    .line 204
    .end local v1    # "t":Lorg/apache/james/mime4j/field/language/parser/Token;
    .restart local v2    # "t":Lorg/apache/james/mime4j/field/language/parser/Token;
    :cond_1
    return-object v2
.end method

.method public final language()Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/language/parser/ParseException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x2d

    const/16 v4, 0x12

    const/4 v6, 0x2

    const/4 v5, -0x1

    .line 64
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 66
    .local v0, "languageTag":Ljava/lang/StringBuffer;
    invoke-direct {p0, v4}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/language/parser/Token;

    move-result-object v2

    .line 67
    .local v2, "token":Lorg/apache/james/mime4j/field/language/parser/Token;
    iget-object v3, v2, Lorg/apache/james/mime4j/field/language/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 70
    :goto_0
    iget v3, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_ntk:I

    if-ne v3, v5, :cond_0

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_ntk()I

    move-result v3

    :goto_1
    sparse-switch v3, :sswitch_data_0

    .line 76
    iget-object v3, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_la1:[I

    const/4 v4, 0x1

    iget v5, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_gen:I

    aput v5, v3, v4

    .line 98
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, "result":Ljava/lang/String;
    iget-object v3, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->languages:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    return-object v1

    .line 70
    .end local v1    # "result":Ljava/lang/String;
    :cond_0
    iget v3, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_ntk:I

    goto :goto_1

    .line 79
    :sswitch_0
    iget v3, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_ntk:I

    if-ne v3, v5, :cond_1

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_ntk()I

    move-result v3

    :goto_2
    sparse-switch v3, :sswitch_data_1

    .line 93
    iget-object v3, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_la1:[I

    iget v4, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_gen:I

    aput v4, v3, v6

    .line 94
    invoke-direct {p0, v5}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/language/parser/Token;

    .line 95
    new-instance v3, Lorg/apache/james/mime4j/field/language/parser/ParseException;

    invoke-direct {v3}, Lorg/apache/james/mime4j/field/language/parser/ParseException;-><init>()V

    throw v3

    .line 79
    :cond_1
    iget v3, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_ntk:I

    goto :goto_2

    .line 81
    :sswitch_1
    invoke-direct {p0, v6}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/language/parser/Token;

    .line 83
    invoke-direct {p0, v4}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/language/parser/Token;

    move-result-object v2

    .line 84
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 85
    iget-object v3, v2, Lorg/apache/james/mime4j/field/language/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 88
    :sswitch_2
    const/16 v3, 0x13

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/language/parser/Token;

    move-result-object v2

    .line 89
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 90
    iget-object v3, v2, Lorg/apache/james/mime4j/field/language/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 70
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x13 -> :sswitch_0
    .end sparse-switch

    .line 79
    :sswitch_data_1
    .sparse-switch
        0x2 -> :sswitch_1
        0x13 -> :sswitch_2
    .end sparse-switch
.end method

.method public parse()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/language/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 34
    :try_start_0
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->doParse()Ljava/util/List;
    :try_end_0
    .catch Lorg/apache/james/mime4j/field/language/parser/TokenMgrError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 35
    :catch_0
    move-exception v0

    .line 39
    .local v0, "e":Lorg/apache/james/mime4j/field/language/parser/TokenMgrError;
    new-instance v1, Lorg/apache/james/mime4j/field/language/parser/ParseException;

    invoke-direct {v1, v0}, Lorg/apache/james/mime4j/field/language/parser/ParseException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
