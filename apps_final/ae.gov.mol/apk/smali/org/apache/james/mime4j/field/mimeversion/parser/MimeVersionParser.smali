.class public Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;
.super Ljava/lang/Object;
.source "MimeVersionParser.java"

# interfaces
.implements Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserConstants;


# static fields
.field public static final INITIAL_VERSION_VALUE:I = -0x1

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

.field jj_input_stream:Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;

.field private jj_kind:I

.field private final jj_la1:[I

.field public jj_nt:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

.field private jj_ntk:I

.field private major:I

.field private minor:I

.field public token:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

.field public token_source:Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 75
    invoke-static {}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_la1_0()V

    .line 76
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "stream"    # Ljava/io/InputStream;

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 7
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "encoding"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput v5, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->major:I

    .line 25
    iput v5, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->minor:I

    .line 72
    new-array v2, v6, [I

    iput-object v2, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_la1:[I

    .line 177
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_expentries:Ljava/util/Vector;

    .line 179
    iput v5, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_kind:I

    .line 85
    :try_start_0
    new-instance v2, Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-direct {v2, p1, p2, v3, v4}, Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;II)V

    iput-object v2, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_input_stream:Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    new-instance v2, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;

    iget-object v3, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_input_stream:Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;

    invoke-direct {v2, v3}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;-><init>(Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;)V

    iput-object v2, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->token_source:Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;

    .line 87
    new-instance v2, Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    invoke-direct {v2}, Lorg/apache/james/mime4j/field/mimeversion/parser/Token;-><init>()V

    iput-object v2, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->token:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    .line 88
    iput v5, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_ntk:I

    .line 89
    const/4 v2, 0x0

    iput v2, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_gen:I

    .line 90
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v6, :cond_0

    iget-object v2, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_la1:[I

    aput v5, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 85
    .end local v1    # "i":I
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 91
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v1    # "i":I
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 5
    .param p1, "stream"    # Ljava/io/Reader;

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput v3, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->major:I

    .line 25
    iput v3, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->minor:I

    .line 72
    new-array v1, v4, [I

    iput-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_la1:[I

    .line 177
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_expentries:Ljava/util/Vector;

    .line 179
    iput v3, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_kind:I

    .line 106
    new-instance v1, Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;

    invoke-direct {v1, p1, v4, v4}, Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;-><init>(Ljava/io/Reader;II)V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_input_stream:Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;

    .line 107
    new-instance v1, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_input_stream:Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;

    invoke-direct {v1, v2}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;-><init>(Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;)V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->token_source:Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;

    .line 108
    new-instance v1, Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    invoke-direct {v1}, Lorg/apache/james/mime4j/field/mimeversion/parser/Token;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->token:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    .line 109
    iput v3, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_ntk:I

    .line 110
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_gen:I

    .line 111
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_0

    iget-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_la1:[I

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 112
    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;)V
    .locals 4
    .param p1, "tm"    # Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput v2, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->major:I

    .line 25
    iput v2, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->minor:I

    .line 72
    new-array v1, v3, [I

    iput-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_la1:[I

    .line 177
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_expentries:Ljava/util/Vector;

    .line 179
    iput v2, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_kind:I

    .line 124
    iput-object p1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->token_source:Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;

    .line 125
    new-instance v1, Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    invoke-direct {v1}, Lorg/apache/james/mime4j/field/mimeversion/parser/Token;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->token:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    .line 126
    iput v2, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_ntk:I

    .line 127
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_gen:I

    .line 128
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    iget-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_la1:[I

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 129
    :cond_0
    return-void
.end method

.method private final jj_consume_token(I)Lorg/apache/james/mime4j/field/mimeversion/parser/Token;
    .locals 3
    .param p1, "kind"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/mimeversion/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 141
    iget-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->token:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    .local v0, "oldToken":Lorg/apache/james/mime4j/field/mimeversion/parser/Token;
    iget-object v1, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/Token;->next:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->token:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    iget-object v1, v1, Lorg/apache/james/mime4j/field/mimeversion/parser/Token;->next:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    iput-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->token:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    .line 143
    :goto_0
    const/4 v1, -0x1

    iput v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_ntk:I

    .line 144
    iget-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->token:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    iget v1, v1, Lorg/apache/james/mime4j/field/mimeversion/parser/Token;->kind:I

    if-ne v1, p1, :cond_1

    .line 145
    iget v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_gen:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_gen:I

    .line 146
    iget-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->token:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    return-object v1

    .line 142
    :cond_0
    iget-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->token:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->token_source:Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->getNextToken()Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    move-result-object v2

    iput-object v2, v1, Lorg/apache/james/mime4j/field/mimeversion/parser/Token;->next:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    iput-object v2, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->token:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    goto :goto_0

    .line 148
    :cond_1
    iput-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->token:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    .line 149
    iput p1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_kind:I

    .line 150
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->generateParseException()Lorg/apache/james/mime4j/field/mimeversion/parser/ParseException;

    move-result-object v1

    throw v1
.end method

.method private static jj_la1_0()V
    .locals 3

    .prologue
    .line 78
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x2

    aput v2, v0, v1

    sput-object v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_la1_0:[I

    .line 79
    return-void
.end method

.method private final jj_ntk()I
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->token:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    iget-object v0, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/Token;->next:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    iput-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_nt:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    if-nez v0, :cond_0

    .line 172
    iget-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->token:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->token_source:Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->getNextToken()Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/Token;->next:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    iget v0, v1, Lorg/apache/james/mime4j/field/mimeversion/parser/Token;->kind:I

    iput v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_ntk:I

    .line 174
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_nt:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    iget v0, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/Token;->kind:I

    iput v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_ntk:I

    goto :goto_0
.end method


# virtual methods
.method public ReInit(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "stream"    # Ljava/io/InputStream;

    .prologue
    .line 94
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->ReInit(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method public ReInit(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 7
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "encoding"    # Ljava/lang/String;

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x1

    .line 97
    :try_start_0
    iget-object v2, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_input_stream:Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {v2, p1, p2, v3, v4}, Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;->ReInit(Ljava/io/InputStream;Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    iget-object v2, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->token_source:Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;

    iget-object v3, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_input_stream:Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;

    invoke-virtual {v2, v3}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->ReInit(Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;)V

    .line 99
    new-instance v2, Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    invoke-direct {v2}, Lorg/apache/james/mime4j/field/mimeversion/parser/Token;-><init>()V

    iput-object v2, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->token:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    .line 100
    iput v6, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_ntk:I

    .line 101
    const/4 v2, 0x0

    iput v2, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_gen:I

    .line 102
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_0

    iget-object v2, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_la1:[I

    aput v6, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 97
    .end local v1    # "i":I
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 103
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v1    # "i":I
    :cond_0
    return-void
.end method

.method public ReInit(Ljava/io/Reader;)V
    .locals 5
    .param p1, "stream"    # Ljava/io/Reader;

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 115
    iget-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_input_stream:Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;

    invoke-virtual {v1, p1, v3, v3}, Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;->ReInit(Ljava/io/Reader;II)V

    .line 116
    iget-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->token_source:Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_input_stream:Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->ReInit(Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;)V

    .line 117
    new-instance v1, Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    invoke-direct {v1}, Lorg/apache/james/mime4j/field/mimeversion/parser/Token;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->token:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    .line 118
    iput v4, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_ntk:I

    .line 119
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_gen:I

    .line 120
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    iget-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_la1:[I

    aput v4, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 121
    :cond_0
    return-void
.end method

.method public ReInit(Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;)V
    .locals 3
    .param p1, "tm"    # Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;

    .prologue
    const/4 v2, -0x1

    .line 132
    iput-object p1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->token_source:Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;

    .line 133
    new-instance v1, Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    invoke-direct {v1}, Lorg/apache/james/mime4j/field/mimeversion/parser/Token;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->token:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    .line 134
    iput v2, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_ntk:I

    .line 135
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_gen:I

    .line 136
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_la1:[I

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 137
    :cond_0
    return-void
.end method

.method public final disable_tracing()V
    .locals 0

    .prologue
    .line 218
    return-void
.end method

.method public final enable_tracing()V
    .locals 0

    .prologue
    .line 215
    return-void
.end method

.method public generateParseException()Lorg/apache/james/mime4j/field/mimeversion/parser/ParseException;
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0x15

    const/4 v6, 0x1

    .line 182
    iget-object v4, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_expentries:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->removeAllElements()V

    .line 183
    new-array v3, v7, [Z

    .line 184
    .local v3, "la1tokens":[Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v7, :cond_0

    .line 185
    aput-boolean v8, v3, v1

    .line 184
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 187
    :cond_0
    iget v4, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_kind:I

    if-ltz v4, :cond_1

    .line 188
    iget v4, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_kind:I

    aput-boolean v6, v3, v4

    .line 189
    const/4 v4, -0x1

    iput v4, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_kind:I

    .line 191
    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v6, :cond_4

    .line 192
    iget-object v4, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_la1:[I

    aget v4, v4, v1

    iget v5, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_gen:I

    if-ne v4, v5, :cond_3

    .line 193
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_2
    const/16 v4, 0x20

    if-ge v2, v4, :cond_3

    .line 194
    sget-object v4, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_la1_0:[I

    aget v4, v4, v1

    shl-int v5, v6, v2

    and-int/2addr v4, v5

    if-eqz v4, :cond_2

    .line 195
    aput-boolean v6, v3, v2

    .line 193
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 191
    .end local v2    # "j":I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 200
    :cond_4
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v7, :cond_6

    .line 201
    aget-boolean v4, v3, v1

    if-eqz v4, :cond_5

    .line 202
    new-array v4, v6, [I

    iput-object v4, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_expentry:[I

    .line 203
    iget-object v4, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_expentry:[I

    aput v1, v4, v8

    .line 204
    iget-object v4, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_expentries:Ljava/util/Vector;

    iget-object v5, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_expentry:[I

    invoke-virtual {v4, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 200
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 207
    :cond_6
    iget-object v4, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_expentries:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    new-array v0, v4, [[I

    .line 208
    .local v0, "exptokseq":[[I
    const/4 v1, 0x0

    :goto_4
    iget-object v4, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_expentries:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v1, v4, :cond_7

    .line 209
    iget-object v4, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_expentries:Ljava/util/Vector;

    invoke-virtual {v4, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    check-cast v4, [I

    aput-object v4, v0, v1

    .line 208
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 211
    :cond_7
    new-instance v4, Lorg/apache/james/mime4j/field/mimeversion/parser/ParseException;

    iget-object v5, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->token:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    sget-object v6, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->tokenImage:[Ljava/lang/String;

    invoke-direct {v4, v5, v0, v6}, Lorg/apache/james/mime4j/field/mimeversion/parser/ParseException;-><init>(Lorg/apache/james/mime4j/field/mimeversion/parser/Token;[[I[Ljava/lang/String;)V

    return-object v4
.end method

.method public getMajorVersion()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->major:I

    return v0
.end method

.method public getMinorVersion()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->minor:I

    return v0
.end method

.method public final getNextToken()Lorg/apache/james/mime4j/field/mimeversion/parser/Token;
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->token:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    iget-object v0, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/Token;->next:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->token:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    iget-object v0, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/Token;->next:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    iput-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->token:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    .line 156
    :goto_0
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_ntk:I

    .line 157
    iget v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_gen:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_gen:I

    .line 158
    iget-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->token:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    return-object v0

    .line 155
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->token:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->token_source:Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->getNextToken()Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/Token;->next:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    iput-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->token:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    goto :goto_0
.end method

.method public final getToken(I)Lorg/apache/james/mime4j/field/mimeversion/parser/Token;
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 162
    iget-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->token:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    .line 163
    .local v1, "t":Lorg/apache/james/mime4j/field/mimeversion/parser/Token;
    const/4 v0, 0x0

    .local v0, "i":I
    move-object v2, v1

    .end local v1    # "t":Lorg/apache/james/mime4j/field/mimeversion/parser/Token;
    .local v2, "t":Lorg/apache/james/mime4j/field/mimeversion/parser/Token;
    :goto_0
    if-ge v0, p1, :cond_1

    .line 164
    iget-object v3, v2, Lorg/apache/james/mime4j/field/mimeversion/parser/Token;->next:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    if-eqz v3, :cond_0

    iget-object v1, v2, Lorg/apache/james/mime4j/field/mimeversion/parser/Token;->next:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    .line 163
    .end local v2    # "t":Lorg/apache/james/mime4j/field/mimeversion/parser/Token;
    .restart local v1    # "t":Lorg/apache/james/mime4j/field/mimeversion/parser/Token;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    move-object v2, v1

    .end local v1    # "t":Lorg/apache/james/mime4j/field/mimeversion/parser/Token;
    .restart local v2    # "t":Lorg/apache/james/mime4j/field/mimeversion/parser/Token;
    goto :goto_0

    .line 165
    :cond_0
    iget-object v3, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->token_source:Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->getNextToken()Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    move-result-object v1

    iput-object v1, v2, Lorg/apache/james/mime4j/field/mimeversion/parser/Token;->next:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    .end local v2    # "t":Lorg/apache/james/mime4j/field/mimeversion/parser/Token;
    .restart local v1    # "t":Lorg/apache/james/mime4j/field/mimeversion/parser/Token;
    goto :goto_1

    .line 167
    .end local v1    # "t":Lorg/apache/james/mime4j/field/mimeversion/parser/Token;
    .restart local v2    # "t":Lorg/apache/james/mime4j/field/mimeversion/parser/Token;
    :cond_1
    return-object v2
.end method

.method public final parse()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/mimeversion/parser/ParseException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x11

    .line 56
    invoke-direct {p0, v4}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    move-result-object v1

    .line 57
    .local v1, "major":Lorg/apache/james/mime4j/field/mimeversion/parser/Token;
    const/16 v3, 0x12

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    .line 58
    invoke-direct {p0, v4}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    move-result-object v2

    .line 60
    .local v2, "minor":Lorg/apache/james/mime4j/field/mimeversion/parser/Token;
    :try_start_0
    iget-object v3, v1, Lorg/apache/james/mime4j/field/mimeversion/parser/Token;->image:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->major:I

    .line 61
    iget-object v3, v2, Lorg/apache/james/mime4j/field/mimeversion/parser/Token;->image:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->minor:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    return-void

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v3, Lorg/apache/james/mime4j/field/mimeversion/parser/ParseException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/james/mime4j/field/mimeversion/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public final parseAll()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/mimeversion/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 49
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->parse()V

    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    .line 51
    return-void
.end method

.method public final parseLine()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/mimeversion/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 36
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->parse()V

    .line 37
    iget v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_ntk:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_ntk()I

    move-result v0

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 42
    iget-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_la1:[I

    const/4 v1, 0x0

    iget v2, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_gen:I

    aput v2, v0, v1

    .line 45
    :goto_1
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    .line 46
    return-void

    .line 37
    :cond_0
    iget v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_ntk:I

    goto :goto_0

    .line 39
    :pswitch_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    goto :goto_1

    .line 37
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
