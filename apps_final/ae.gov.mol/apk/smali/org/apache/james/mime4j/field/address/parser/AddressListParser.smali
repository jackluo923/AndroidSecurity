.class public Lorg/apache/james/mime4j/field/address/parser/AddressListParser;
.super Ljava/lang/Object;
.source "AddressListParser.java"

# interfaces
.implements Lorg/apache/james/mime4j/field/address/parser/AddressListParserTreeConstants;
.implements Lorg/apache/james/mime4j/field/address/parser/AddressListParserConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/james/mime4j/field/address/parser/AddressListParser$1;,
        Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;,
        Lorg/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess;
    }
.end annotation


# static fields
.field private static jj_la1_0:[I

.field private static jj_la1_1:[I


# instance fields
.field private final jj_2_rtns:[Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

.field private jj_endpos:I

.field private jj_expentries:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<[I>;"
        }
    .end annotation
.end field

.field private jj_expentry:[I

.field private jj_gc:I

.field private jj_gen:I

.field jj_input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

.field private jj_kind:I

.field private jj_la:I

.field private final jj_la1:[I

.field private jj_lastpos:Lorg/apache/james/mime4j/field/address/parser/Token;

.field private jj_lasttokens:[I

.field private final jj_ls:Lorg/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess;

.field public jj_nt:Lorg/apache/james/mime4j/field/address/parser/Token;

.field private jj_ntk:I

.field private jj_rescan:Z

.field private jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

.field private jj_semLA:Z

.field protected jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

.field public lookingAhead:Z

.field public token:Lorg/apache/james/mime4j/field/address/parser/Token;

.field public token_source:Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 737
    invoke-static {}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1_0()V

    .line 738
    invoke-static {}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1_1()V

    .line 739
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "stream"    # Ljava/io/InputStream;

    .prologue
    .line 751
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 752
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 8
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "encoding"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x16

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 753
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v2, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-direct {v2}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;-><init>()V

    iput-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    .line 730
    iput-boolean v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->lookingAhead:Z

    .line 733
    new-array v2, v7, [I

    iput-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    .line 746
    const/4 v2, 0x2

    new-array v2, v2, [Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    iput-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    .line 747
    iput-boolean v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_rescan:Z

    .line 748
    iput v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gc:I

    .line 842
    new-instance v2, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess;-><init>(Lorg/apache/james/mime4j/field/address/parser/AddressListParser$1;)V

    iput-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ls:Lorg/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess;

    .line 888
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentries:Ljava/util/Vector;

    .line 890
    iput v6, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_kind:I

    .line 891
    const/16 v2, 0x64

    new-array v2, v2, [I

    iput-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_lasttokens:[I

    .line 754
    :try_start_0
    new-instance v2, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-direct {v2, p1, p2, v3, v4}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;II)V

    iput-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 755
    new-instance v2, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;

    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    invoke-direct {v2, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;-><init>(Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;)V

    iput-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token_source:Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;

    .line 756
    new-instance v2, Lorg/apache/james/mime4j/field/address/parser/Token;

    invoke-direct {v2}, Lorg/apache/james/mime4j/field/address/parser/Token;-><init>()V

    iput-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 757
    iput v6, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    .line 758
    iput v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    .line 759
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v7, :cond_0

    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    aput v6, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 754
    .end local v1    # "i":I
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 760
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v1    # "i":I
    :cond_0
    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    new-instance v3, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    invoke-direct {v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;-><init>()V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 761
    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 7
    .param p1, "stream"    # Ljava/io/Reader;

    .prologue
    const/16 v6, 0x16

    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 777
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v1, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-direct {v1}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    .line 730
    iput-boolean v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->lookingAhead:Z

    .line 733
    new-array v1, v6, [I

    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    .line 746
    const/4 v1, 0x2

    new-array v1, v1, [Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    .line 747
    iput-boolean v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_rescan:Z

    .line 748
    iput v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gc:I

    .line 842
    new-instance v1, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess;-><init>(Lorg/apache/james/mime4j/field/address/parser/AddressListParser$1;)V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ls:Lorg/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess;

    .line 888
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentries:Ljava/util/Vector;

    .line 890
    iput v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_kind:I

    .line 891
    const/16 v1, 0x64

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_lasttokens:[I

    .line 778
    new-instance v1, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    invoke-direct {v1, p1, v5, v5}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;-><init>(Ljava/io/Reader;II)V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    .line 779
    new-instance v1, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    invoke-direct {v1, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;-><init>(Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;)V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token_source:Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;

    .line 780
    new-instance v1, Lorg/apache/james/mime4j/field/address/parser/Token;

    invoke-direct {v1}, Lorg/apache/james/mime4j/field/address/parser/Token;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 781
    iput v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    .line 782
    iput v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    .line 783
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v6, :cond_0

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    aput v4, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 784
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    new-instance v2, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    invoke-direct {v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 785
    :cond_1
    return-void
.end method

.method public constructor <init>(Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;)V
    .locals 6
    .param p1, "tm"    # Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;

    .prologue
    const/16 v5, 0x16

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 798
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v1, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-direct {v1}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    .line 730
    iput-boolean v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->lookingAhead:Z

    .line 733
    new-array v1, v5, [I

    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    .line 746
    const/4 v1, 0x2

    new-array v1, v1, [Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    .line 747
    iput-boolean v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_rescan:Z

    .line 748
    iput v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gc:I

    .line 842
    new-instance v1, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess;-><init>(Lorg/apache/james/mime4j/field/address/parser/AddressListParser$1;)V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ls:Lorg/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess;

    .line 888
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentries:Ljava/util/Vector;

    .line 890
    iput v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_kind:I

    .line 891
    const/16 v1, 0x64

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_lasttokens:[I

    .line 799
    iput-object p1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token_source:Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;

    .line 800
    new-instance v1, Lorg/apache/james/mime4j/field/address/parser/Token;

    invoke-direct {v1}, Lorg/apache/james/mime4j/field/address/parser/Token;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 801
    iput v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    .line 802
    iput v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    .line 803
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v5, :cond_0

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    aput v4, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 804
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    new-instance v2, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    invoke-direct {v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 805
    :cond_1
    return-void
.end method

.method private final jj_2_1(I)Z
    .locals 4
    .param p1, "xla"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 640
    iput p1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la:I

    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    iput-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    iput-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_lastpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 641
    :try_start_0
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_3_1()Z
    :try_end_0
    .catch Lorg/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    .line 643
    :goto_0
    invoke-direct {p0, v2, p1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_save(II)V

    :goto_1
    return v1

    :cond_0
    move v1, v2

    .line 641
    goto :goto_0

    .line 642
    :catch_0
    move-exception v0

    .line 643
    .local v0, "ls":Lorg/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess;
    invoke-direct {p0, v2, p1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_save(II)V

    goto :goto_1

    .end local v0    # "ls":Lorg/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess;
    :catchall_0
    move-exception v1

    invoke-direct {p0, v2, p1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_save(II)V

    throw v1
.end method

.method private final jj_2_2(I)Z
    .locals 3
    .param p1, "xla"    # I

    .prologue
    const/4 v2, 0x1

    .line 647
    iput p1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la:I

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_lastpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 648
    :try_start_0
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_3_2()Z
    :try_end_0
    .catch Lorg/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    .line 650
    :goto_0
    invoke-direct {p0, v2, p1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_save(II)V

    :goto_1
    return v1

    .line 648
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 649
    :catch_0
    move-exception v0

    .line 650
    .local v0, "ls":Lorg/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess;
    invoke-direct {p0, v2, p1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_save(II)V

    move v1, v2

    goto :goto_1

    .end local v0    # "ls":Lorg/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess;
    :catchall_0
    move-exception v1

    invoke-direct {p0, v2, p1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_save(II)V

    throw v1
.end method

.method private final jj_3R_10()Z
    .locals 2

    .prologue
    .line 665
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 666
    .local v0, "xsp":Lorg/apache/james/mime4j/field/address/parser/Token;
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_3R_12()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 667
    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 668
    const/16 v1, 0x12

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 670
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private final jj_3R_11()Z
    .locals 2

    .prologue
    .line 694
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 695
    .local v0, "xsp":Lorg/apache/james/mime4j/field/address/parser/Token;
    const/16 v1, 0x9

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 696
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 697
    const/16 v1, 0xe

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 698
    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 699
    const/16 v1, 0x1f

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 701
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private final jj_3R_12()Z
    .locals 2

    .prologue
    .line 654
    const/16 v1, 0xe

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 660
    :goto_0
    return v1

    .line 657
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 658
    .local v0, "xsp":Lorg/apache/james/mime4j/field/address/parser/Token;
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_3R_13()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 660
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private final jj_3R_13()Z
    .locals 2

    .prologue
    .line 706
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 707
    .local v0, "xsp":Lorg/apache/james/mime4j/field/address/parser/Token;
    const/16 v1, 0x9

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 708
    :cond_0
    const/16 v1, 0xe

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 709
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private final jj_3R_8()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 713
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_3R_9()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 716
    :cond_0
    :goto_0
    return v0

    .line 714
    :cond_1
    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 715
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_3R_10()Z

    move-result v1

    if-nez v1, :cond_0

    .line 716
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3R_9()Z
    .locals 2

    .prologue
    .line 680
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 681
    .local v0, "xsp":Lorg/apache/james/mime4j/field/address/parser/Token;
    const/16 v1, 0xe

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 682
    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 683
    const/16 v1, 0x1f

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 689
    :goto_0
    return v1

    .line 686
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 687
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_3R_11()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 689
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private final jj_3_1()Z
    .locals 1

    .prologue
    .line 720
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_3R_8()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 721
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final jj_3_2()Z
    .locals 1

    .prologue
    .line 674
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_3R_8()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 675
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private jj_add_error_token(II)V
    .locals 7
    .param p1, "kind"    # I
    .param p2, "pos"    # I

    .prologue
    .line 895
    const/16 v4, 0x64

    if-lt p2, v4, :cond_1

    .line 920
    :cond_0
    :goto_0
    return-void

    .line 896
    :cond_1
    iget v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_endpos:I

    add-int/lit8 v4, v4, 0x1

    if-ne p2, v4, :cond_2

    .line 897
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_lasttokens:[I

    iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_endpos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_endpos:I

    aput p1, v4, v5

    goto :goto_0

    .line 898
    :cond_2
    iget v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_endpos:I

    if-eqz v4, :cond_0

    .line 899
    iget v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_endpos:I

    new-array v4, v4, [I

    iput-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentry:[I

    .line 900
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_endpos:I

    if-ge v2, v4, :cond_3

    .line 901
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentry:[I

    iget-object v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_lasttokens:[I

    aget v5, v5, v2

    aput v5, v4, v2

    .line 900
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 903
    :cond_3
    const/4 v1, 0x0

    .line 904
    .local v1, "exists":Z
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentries:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, "e":Ljava/util/Enumeration;
    :cond_4
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 905
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    move-object v3, v4

    check-cast v3, [I

    .line 906
    .local v3, "oldentry":[I
    array-length v4, v3

    iget-object v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentry:[I

    array-length v5, v5

    if-ne v4, v5, :cond_4

    .line 907
    const/4 v1, 0x1

    .line 908
    const/4 v2, 0x0

    :goto_2
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentry:[I

    array-length v4, v4

    if-ge v2, v4, :cond_5

    .line 909
    aget v4, v3, v2

    iget-object v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentry:[I

    aget v5, v5, v2

    if-eq v4, v5, :cond_8

    .line 910
    const/4 v1, 0x0

    .line 914
    :cond_5
    if-eqz v1, :cond_4

    .line 917
    .end local v3    # "oldentry":[I
    :cond_6
    if-nez v1, :cond_7

    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentries:Ljava/util/Vector;

    iget-object v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentry:[I

    invoke-virtual {v4, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 918
    :cond_7
    if-eqz p2, :cond_0

    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_lasttokens:[I

    iput p2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_endpos:I

    add-int/lit8 v5, p2, -0x1

    aput p1, v4, v5

    goto :goto_0

    .line 908
    .restart local v3    # "oldentry":[I
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method private final jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;
    .locals 5
    .param p1, "kind"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/address/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 819
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    .local v2, "oldToken":Lorg/apache/james/mime4j/field/address/parser/Token;
    iget-object v3, v2, Lorg/apache/james/mime4j/field/address/parser/Token;->next:Lorg/apache/james/mime4j/field/address/parser/Token;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    iget-object v3, v3, Lorg/apache/james/mime4j/field/address/parser/Token;->next:Lorg/apache/james/mime4j/field/address/parser/Token;

    iput-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 821
    :goto_0
    const/4 v3, -0x1

    iput v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    .line 822
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    iget v3, v3, Lorg/apache/james/mime4j/field/address/parser/Token;->kind:I

    if-ne v3, p1, :cond_4

    .line 823
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    .line 824
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gc:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gc:I

    const/16 v4, 0x64

    if-le v3, v4, :cond_3

    .line 825
    const/4 v3, 0x0

    iput v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gc:I

    .line 826
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    array-length v3, v3

    if-ge v1, v3, :cond_3

    .line 827
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    aget-object v0, v3, v1

    .line 828
    .local v0, "c":Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;
    :goto_2
    if-eqz v0, :cond_2

    .line 829
    iget v3, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;->gen:I

    iget v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    if-ge v3, v4, :cond_0

    const/4 v3, 0x0

    iput-object v3, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;->first:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 830
    :cond_0
    iget-object v0, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;->next:Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    goto :goto_2

    .line 820
    .end local v0    # "c":Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;
    .end local v1    # "i":I
    :cond_1
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token_source:Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;

    invoke-virtual {v4}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->getNextToken()Lorg/apache/james/mime4j/field/address/parser/Token;

    move-result-object v4

    iput-object v4, v3, Lorg/apache/james/mime4j/field/address/parser/Token;->next:Lorg/apache/james/mime4j/field/address/parser/Token;

    iput-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    goto :goto_0

    .line 826
    .restart local v0    # "c":Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;
    .restart local v1    # "i":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 834
    .end local v0    # "c":Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;
    .end local v1    # "i":I
    :cond_3
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    return-object v3

    .line 836
    :cond_4
    iput-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 837
    iput p1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_kind:I

    .line 838
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->generateParseException()Lorg/apache/james/mime4j/field/address/parser/ParseException;

    move-result-object v3

    throw v3
.end method

.method private static jj_la1_0()V
    .locals 1

    .prologue
    .line 741
    const/16 v0, 0x16

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1_0:[I

    .line 742
    return-void

    .line 741
    :array_0
    .array-data 4
        0x2
        -0x7fffbfc0
        0x8
        -0x7fffbfc0
        0x50
        -0x7fffbfc0
        -0x7fffbfc0
        -0x7fffbfc0
        0x8
        -0x7fffbfc0
        0x100
        0x108
        0x8
        -0x7fffc000
        -0x7fffc000
        -0x7fffc000
        -0x7fffbe00
        0x200
        -0x7fffc000
        0x4200
        0x200
        0x44000
    .end array-data
.end method

.method private static jj_la1_1()V
    .locals 1

    .prologue
    .line 744
    const/16 v0, 0x16

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1_1:[I

    .line 745
    return-void

    .line 744
    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private final jj_ntk()I
    .locals 2

    .prologue
    .line 882
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    iget-object v0, v0, Lorg/apache/james/mime4j/field/address/parser/Token;->next:Lorg/apache/james/mime4j/field/address/parser/Token;

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_nt:Lorg/apache/james/mime4j/field/address/parser/Token;

    if-nez v0, :cond_0

    .line 883
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token_source:Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->getNextToken()Lorg/apache/james/mime4j/field/address/parser/Token;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/james/mime4j/field/address/parser/Token;->next:Lorg/apache/james/mime4j/field/address/parser/Token;

    iget v0, v1, Lorg/apache/james/mime4j/field/address/parser/Token;->kind:I

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    .line 885
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_nt:Lorg/apache/james/mime4j/field/address/parser/Token;

    iget v0, v0, Lorg/apache/james/mime4j/field/address/parser/Token;->kind:I

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_0
.end method

.method private final jj_rescan_token()V
    .locals 4

    .prologue
    .line 968
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_rescan:Z

    .line 969
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x2

    if-ge v0, v2, :cond_2

    .line 971
    :try_start_0
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    aget-object v1, v2, v0

    .line 973
    .local v1, "p":Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;
    :cond_0
    iget v2, v1, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;->gen:I

    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    if-le v2, v3, :cond_1

    .line 974
    iget v2, v1, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;->arg:I

    iput v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la:I

    iget-object v2, v1, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;->first:Lorg/apache/james/mime4j/field/address/parser/Token;

    iput-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    iput-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_lastpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 975
    packed-switch v0, :pswitch_data_0

    .line 980
    :cond_1
    :goto_1
    iget-object v1, v1, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;->next:Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    .line 981
    if-nez v1, :cond_0

    .line 969
    .end local v1    # "p":Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 976
    .restart local v1    # "p":Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;
    :pswitch_0
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_3_1()Z

    goto :goto_1

    .line 982
    .end local v1    # "p":Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;
    :catch_0
    move-exception v2

    goto :goto_2

    .line 977
    .restart local v1    # "p":Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;
    :pswitch_1
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_3_2()Z
    :try_end_0
    .catch Lorg/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 984
    .end local v1    # "p":Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;
    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_rescan:Z

    .line 985
    return-void

    .line 975
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private final jj_save(II)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "xla"    # I

    .prologue
    .line 988
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    aget-object v0, v2, p1

    .line 989
    .local v0, "p":Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;
    :goto_0
    iget v2, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;->gen:I

    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    if-le v2, v3, :cond_0

    .line 990
    iget-object v2, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;->next:Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    if-nez v2, :cond_1

    new-instance v1, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    invoke-direct {v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;-><init>()V

    iput-object v1, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;->next:Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    .end local v0    # "p":Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;
    .local v1, "p":Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;
    move-object v0, v1

    .line 993
    .end local v1    # "p":Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;
    .restart local v0    # "p":Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;
    :cond_0
    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    add-int/2addr v2, p2

    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la:I

    sub-int/2addr v2, v3

    iput v2, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;->gen:I

    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    iput-object v2, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;->first:Lorg/apache/james/mime4j/field/address/parser/Token;

    iput p2, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;->arg:I

    .line 994
    return-void

    .line 991
    :cond_1
    iget-object v0, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;->next:Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    goto :goto_0
.end method

.method private final jj_scan_token(I)Z
    .locals 4
    .param p1, "kind"    # I

    .prologue
    .line 844
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_lastpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    if-ne v2, v3, :cond_1

    .line 845
    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la:I

    .line 846
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    iget-object v2, v2, Lorg/apache/james/mime4j/field/address/parser/Token;->next:Lorg/apache/james/mime4j/field/address/parser/Token;

    if-nez v2, :cond_0

    .line 847
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token_source:Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->getNextToken()Lorg/apache/james/mime4j/field/address/parser/Token;

    move-result-object v3

    iput-object v3, v2, Lorg/apache/james/mime4j/field/address/parser/Token;->next:Lorg/apache/james/mime4j/field/address/parser/Token;

    iput-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    iput-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_lastpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 854
    :goto_0
    iget-boolean v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_rescan:Z

    if-eqz v2, :cond_3

    .line 855
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 856
    .local v1, "tok":Lorg/apache/james/mime4j/field/address/parser/Token;
    :goto_1
    if-eqz v1, :cond_2

    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    if-eq v1, v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    iget-object v1, v1, Lorg/apache/james/mime4j/field/address/parser/Token;->next:Lorg/apache/james/mime4j/field/address/parser/Token;

    goto :goto_1

    .line 849
    .end local v0    # "i":I
    .end local v1    # "tok":Lorg/apache/james/mime4j/field/address/parser/Token;
    :cond_0
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    iget-object v2, v2, Lorg/apache/james/mime4j/field/address/parser/Token;->next:Lorg/apache/james/mime4j/field/address/parser/Token;

    iput-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    iput-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_lastpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    goto :goto_0

    .line 852
    :cond_1
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    iget-object v2, v2, Lorg/apache/james/mime4j/field/address/parser/Token;->next:Lorg/apache/james/mime4j/field/address/parser/Token;

    iput-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    goto :goto_0

    .line 857
    .restart local v0    # "i":I
    .restart local v1    # "tok":Lorg/apache/james/mime4j/field/address/parser/Token;
    :cond_2
    if-eqz v1, :cond_3

    invoke-direct {p0, p1, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_add_error_token(II)V

    .line 859
    .end local v0    # "i":I
    .end local v1    # "tok":Lorg/apache/james/mime4j/field/address/parser/Token;
    :cond_3
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    iget v2, v2, Lorg/apache/james/mime4j/field/address/parser/Token;->kind:I

    if-eq v2, p1, :cond_4

    const/4 v2, 0x1

    .line 861
    :goto_2
    return v2

    .line 860
    :cond_4
    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la:I

    if-nez v2, :cond_5

    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_lastpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ls:Lorg/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess;

    throw v2

    .line 861
    :cond_5
    const/4 v2, 0x0

    goto :goto_2
.end method

.method public static main([Ljava/lang/String;)V
    .locals 4
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/address/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 26
    :goto_0
    :try_start_0
    new-instance v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;

    sget-object v2, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-direct {v0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;-><init>(Ljava/io/InputStream;)V

    .line 27
    .local v0, "parser":Lorg/apache/james/mime4j/field/address/parser/AddressListParser;
    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->parseLine()V

    .line 28
    iget-object v2, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->rootNode()Lorg/apache/james/mime4j/field/address/parser/Node;

    move-result-object v2

    check-cast v2, Lorg/apache/james/mime4j/field/address/parser/SimpleNode;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Lorg/apache/james/mime4j/field/address/parser/SimpleNode;->dump(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 29
    .end local v0    # "parser":Lorg/apache/james/mime4j/field/address/parser/AddressListParser;
    :catch_0
    move-exception v1

    .line 30
    .local v1, "x":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 31
    return-void
.end method


# virtual methods
.method public ReInit(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "stream"    # Ljava/io/InputStream;

    .prologue
    .line 764
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->ReInit(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 765
    return-void
.end method

.method public ReInit(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 6
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "encoding"    # Ljava/lang/String;

    .prologue
    const/4 v5, -0x1

    .line 767
    :try_start_0
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {v2, p1, p2, v3, v4}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->ReInit(Ljava/io/InputStream;Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 768
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token_source:Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;

    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    invoke-virtual {v2, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->ReInit(Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;)V

    .line 769
    new-instance v2, Lorg/apache/james/mime4j/field/address/parser/Token;

    invoke-direct {v2}, Lorg/apache/james/mime4j/field/address/parser/Token;-><init>()V

    iput-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 770
    iput v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    .line 771
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->reset()V

    .line 772
    const/4 v2, 0x0

    iput v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    .line 773
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x16

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    aput v5, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 767
    .end local v1    # "i":I
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 774
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v1    # "i":I
    :cond_0
    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    new-instance v3, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    invoke-direct {v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;-><init>()V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 775
    :cond_1
    return-void
.end method

.method public ReInit(Ljava/io/Reader;)V
    .locals 4
    .param p1, "stream"    # Ljava/io/Reader;

    .prologue
    const/4 v2, 0x1

    const/4 v3, -0x1

    .line 788
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    invoke-virtual {v1, p1, v2, v2}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->ReInit(Ljava/io/Reader;II)V

    .line 789
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token_source:Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->ReInit(Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;)V

    .line 790
    new-instance v1, Lorg/apache/james/mime4j/field/address/parser/Token;

    invoke-direct {v1}, Lorg/apache/james/mime4j/field/address/parser/Token;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 791
    iput v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    .line 792
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->reset()V

    .line 793
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    .line 794
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x16

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 795
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    new-instance v2, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    invoke-direct {v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 796
    :cond_1
    return-void
.end method

.method public ReInit(Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;)V
    .locals 3
    .param p1, "tm"    # Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;

    .prologue
    const/4 v2, -0x1

    .line 808
    iput-object p1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token_source:Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;

    .line 809
    new-instance v1, Lorg/apache/james/mime4j/field/address/parser/Token;

    invoke-direct {v1}, Lorg/apache/james/mime4j/field/address/parser/Token;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 810
    iput v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    .line 811
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->reset()V

    .line 812
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    .line 813
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x16

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 814
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    new-instance v2, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    invoke-direct {v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 815
    :cond_1
    return-void
.end method

.method public final addr_spec()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/address/parser/ParseException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 497
    new-instance v2, Lorg/apache/james/mime4j/field/address/parser/ASTaddr_spec;

    const/16 v3, 0x9

    invoke-direct {v2, v3}, Lorg/apache/james/mime4j/field/address/parser/ASTaddr_spec;-><init>(I)V

    .line 498
    .local v2, "jjtn000":Lorg/apache/james/mime4j/field/address/parser/ASTaddr_spec;
    const/4 v0, 0x1

    .line 499
    .local v0, "jjtc000":Z
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->openNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 500
    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeOpenNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 502
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->local_part()V

    .line 503
    const/16 v3, 0x8

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 504
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->domain()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 520
    if-eqz v0, :cond_0

    .line 521
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2, v5}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;Z)V

    .line 522
    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 525
    :cond_0
    return-void

    .line 505
    :catch_0
    move-exception v1

    .line 506
    .local v1, "jjte000":Ljava/lang/Throwable;
    if-eqz v0, :cond_2

    .line 507
    :try_start_1
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->clearNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 508
    const/4 v0, 0x0

    .line 512
    :goto_0
    instance-of v3, v1, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_3

    .line 513
    check-cast v1, Ljava/lang/RuntimeException;

    .end local v1    # "jjte000":Ljava/lang/Throwable;
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 520
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_1

    .line 521
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v4, v2, v5}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;Z)V

    .line 522
    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    :cond_1
    throw v3

    .line 510
    .restart local v1    # "jjte000":Ljava/lang/Throwable;
    :cond_2
    :try_start_2
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->popNode()Lorg/apache/james/mime4j/field/address/parser/Node;

    goto :goto_0

    .line 515
    :cond_3
    instance-of v3, v1, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    if-eqz v3, :cond_4

    .line 516
    check-cast v1, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    .end local v1    # "jjte000":Ljava/lang/Throwable;
    throw v1

    .line 518
    .restart local v1    # "jjte000":Ljava/lang/Throwable;
    :cond_4
    check-cast v1, Ljava/lang/Error;

    .end local v1    # "jjte000":Ljava/lang/Throwable;
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public final address()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/address/parser/ParseException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v4, -0x1

    .line 162
    new-instance v2, Lorg/apache/james/mime4j/field/address/parser/ASTaddress;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Lorg/apache/james/mime4j/field/address/parser/ASTaddress;-><init>(I)V

    .line 163
    .local v2, "jjtn000":Lorg/apache/james/mime4j/field/address/parser/ASTaddress;
    const/4 v0, 0x1

    .line 164
    .local v0, "jjtc000":Z
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->openNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 165
    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeOpenNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 167
    const v3, 0x7fffffff

    :try_start_0
    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_1(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 168
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->addr_spec()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    :goto_0
    if-eqz v0, :cond_0

    .line 212
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2, v6}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;Z)V

    .line 213
    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 216
    :cond_0
    return-void

    .line 170
    :cond_1
    :try_start_1
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v3, v4, :cond_3

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v3

    :goto_1
    sparse-switch v3, :sswitch_data_0

    .line 191
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/4 v4, 0x5

    iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v5, v3, v4

    .line 192
    const/4 v3, -0x1

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 193
    new-instance v3, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    invoke-direct {v3}, Lorg/apache/james/mime4j/field/address/parser/ParseException;-><init>()V

    throw v3
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 196
    :catch_0
    move-exception v1

    .line 197
    .local v1, "jjte000":Ljava/lang/Throwable;
    if-eqz v0, :cond_5

    .line 198
    :try_start_2
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->clearNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 199
    const/4 v0, 0x0

    .line 203
    :goto_2
    instance-of v3, v1, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_6

    .line 204
    check-cast v1, Ljava/lang/RuntimeException;

    .end local v1    # "jjte000":Ljava/lang/Throwable;
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 211
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_2

    .line 212
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v4, v2, v6}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;Z)V

    .line 213
    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    :cond_2
    throw v3

    .line 170
    :cond_3
    :try_start_3
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_1

    .line 172
    :sswitch_0
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->angle_addr()V

    goto :goto_0

    .line 176
    :sswitch_1
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->phrase()V

    .line 177
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v3, v4, :cond_4

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v3

    :goto_3
    packed-switch v3, :pswitch_data_0

    .line 185
    :pswitch_0
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/4 v4, 0x4

    iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v5, v3, v4

    .line 186
    const/4 v3, -0x1

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 187
    new-instance v3, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    invoke-direct {v3}, Lorg/apache/james/mime4j/field/address/parser/ParseException;-><init>()V

    throw v3

    .line 177
    :cond_4
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_3

    .line 179
    :pswitch_1
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->group_body()V

    goto :goto_0

    .line 182
    :pswitch_2
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->angle_addr()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 201
    .restart local v1    # "jjte000":Ljava/lang/Throwable;
    :cond_5
    :try_start_4
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->popNode()Lorg/apache/james/mime4j/field/address/parser/Node;

    goto :goto_2

    .line 206
    :cond_6
    instance-of v3, v1, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    if-eqz v3, :cond_7

    .line 207
    check-cast v1, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    .end local v1    # "jjte000":Ljava/lang/Throwable;
    throw v1

    .line 209
    .restart local v1    # "jjte000":Ljava/lang/Throwable;
    :cond_7
    check-cast v1, Ljava/lang/Error;

    .end local v1    # "jjte000":Ljava/lang/Throwable;
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 170
    nop

    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_0
        0xe -> :sswitch_1
        0x1f -> :sswitch_1
    .end sparse-switch

    .line 177
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public final address_list()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/address/parser/ParseException;
        }
    .end annotation

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x1

    .line 101
    new-instance v2, Lorg/apache/james/mime4j/field/address/parser/ASTaddress_list;

    invoke-direct {v2, v6}, Lorg/apache/james/mime4j/field/address/parser/ASTaddress_list;-><init>(I)V

    .line 102
    .local v2, "jjtn000":Lorg/apache/james/mime4j/field/address/parser/ASTaddress_list;
    const/4 v0, 0x1

    .line 103
    .local v0, "jjtc000":Z
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->openNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 104
    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeOpenNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 106
    :try_start_0
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v3, v7, :cond_1

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v3

    :goto_0
    sparse-switch v3, :sswitch_data_0

    .line 113
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/4 v4, 0x1

    iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v5, v3, v4

    .line 118
    :goto_1
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v3, v7, :cond_3

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v3

    :goto_2
    packed-switch v3, :pswitch_data_0

    .line 123
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/4 v4, 0x2

    iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v5, v3, v4
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    if-eqz v0, :cond_0

    .line 154
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2, v6}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;Z)V

    .line 155
    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 158
    :cond_0
    return-void

    .line 106
    :cond_1
    :try_start_1
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_0

    .line 110
    :sswitch_0
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->address()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 138
    :catch_0
    move-exception v1

    .line 139
    .local v1, "jjte000":Ljava/lang/Throwable;
    if-eqz v0, :cond_5

    .line 140
    :try_start_2
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->clearNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 141
    const/4 v0, 0x0

    .line 145
    :goto_3
    instance-of v3, v1, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_6

    .line 146
    check-cast v1, Ljava/lang/RuntimeException;

    .end local v1    # "jjte000":Ljava/lang/Throwable;
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 153
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_2

    .line 154
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v4, v2, v6}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;Z)V

    .line 155
    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    :cond_2
    throw v3

    .line 118
    :cond_3
    :try_start_3
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_2

    .line 126
    :pswitch_0
    const/4 v3, 0x3

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 127
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v3, v7, :cond_4

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v3

    :goto_4
    sparse-switch v3, :sswitch_data_1

    .line 134
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/4 v4, 0x3

    iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v5, v3, v4

    goto :goto_1

    .line 127
    :cond_4
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_4

    .line 131
    :sswitch_1
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->address()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 143
    .restart local v1    # "jjte000":Ljava/lang/Throwable;
    :cond_5
    :try_start_4
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->popNode()Lorg/apache/james/mime4j/field/address/parser/Node;

    goto :goto_3

    .line 148
    :cond_6
    instance-of v3, v1, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    if-eqz v3, :cond_7

    .line 149
    check-cast v1, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    .end local v1    # "jjte000":Ljava/lang/Throwable;
    throw v1

    .line 151
    .restart local v1    # "jjte000":Ljava/lang/Throwable;
    :cond_7
    check-cast v1, Ljava/lang/Error;

    .end local v1    # "jjte000":Ljava/lang/Throwable;
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 106
    nop

    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_0
        0xe -> :sswitch_0
        0x1f -> :sswitch_0
    .end sparse-switch

    .line 118
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch

    .line 127
    :sswitch_data_1
    .sparse-switch
        0x6 -> :sswitch_1
        0xe -> :sswitch_1
        0x1f -> :sswitch_1
    .end sparse-switch
.end method

.method public final angle_addr()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/address/parser/ParseException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x6

    const/4 v6, 0x1

    .line 360
    new-instance v2, Lorg/apache/james/mime4j/field/address/parser/ASTangle_addr;

    invoke-direct {v2, v3}, Lorg/apache/james/mime4j/field/address/parser/ASTangle_addr;-><init>(I)V

    .line 361
    .local v2, "jjtn000":Lorg/apache/james/mime4j/field/address/parser/ASTangle_addr;
    const/4 v0, 0x1

    .line 362
    .local v0, "jjtc000":Z
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->openNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 363
    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeOpenNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 365
    const/4 v3, 0x6

    :try_start_0
    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 366
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v3

    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 371
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/16 v4, 0xa

    iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v5, v3, v4

    .line 374
    :goto_1
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->addr_spec()V

    .line 375
    const/4 v3, 0x7

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 391
    if-eqz v0, :cond_0

    .line 392
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2, v6}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;Z)V

    .line 393
    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 396
    :cond_0
    return-void

    .line 366
    :cond_1
    :try_start_1
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_0

    .line 368
    :pswitch_0
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->route()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 376
    :catch_0
    move-exception v1

    .line 377
    .local v1, "jjte000":Ljava/lang/Throwable;
    if-eqz v0, :cond_3

    .line 378
    :try_start_2
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->clearNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 379
    const/4 v0, 0x0

    .line 383
    :goto_2
    instance-of v3, v1, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_4

    .line 384
    check-cast v1, Ljava/lang/RuntimeException;

    .end local v1    # "jjte000":Ljava/lang/Throwable;
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 391
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_2

    .line 392
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v4, v2, v6}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;Z)V

    .line 393
    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    :cond_2
    throw v3

    .line 381
    .restart local v1    # "jjte000":Ljava/lang/Throwable;
    :cond_3
    :try_start_3
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->popNode()Lorg/apache/james/mime4j/field/address/parser/Node;

    goto :goto_2

    .line 386
    :cond_4
    instance-of v3, v1, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    if-eqz v3, :cond_5

    .line 387
    check-cast v1, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    .end local v1    # "jjte000":Ljava/lang/Throwable;
    throw v1

    .line 389
    .restart local v1    # "jjte000":Ljava/lang/Throwable;
    :cond_5
    check-cast v1, Ljava/lang/Error;

    .end local v1    # "jjte000":Ljava/lang/Throwable;
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 366
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public final disable_tracing()V
    .locals 0

    .prologue
    .line 965
    return-void
.end method

.method public final domain()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/address/parser/ParseException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    .line 591
    new-instance v1, Lorg/apache/james/mime4j/field/address/parser/ASTdomain;

    const/16 v3, 0xb

    invoke-direct {v1, v3}, Lorg/apache/james/mime4j/field/address/parser/ASTdomain;-><init>(I)V

    .line 592
    .local v1, "jjtn000":Lorg/apache/james/mime4j/field/address/parser/ASTdomain;
    const/4 v0, 0x1

    .line 593
    .local v0, "jjtc000":Z
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v1}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->openNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 594
    invoke-virtual {p0, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeOpenNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 596
    :try_start_0
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v3, v6, :cond_1

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v3

    :goto_0
    sparse-switch v3, :sswitch_data_0

    .line 627
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/16 v4, 0x15

    iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v5, v3, v4

    .line 628
    const/4 v3, -0x1

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 629
    new-instance v3, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    invoke-direct {v3}, Lorg/apache/james/mime4j/field/address/parser/ParseException;-><init>()V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 632
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_0

    .line 633
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v4, v1, v7}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;Z)V

    .line 634
    invoke-virtual {p0, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    :cond_0
    throw v3

    .line 596
    :cond_1
    :try_start_1
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_0

    .line 598
    :sswitch_0
    const/16 v3, 0xe

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    move-result-object v2

    .line 601
    .local v2, "t":Lorg/apache/james/mime4j/field/address/parser/Token;
    :goto_1
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v3, v6, :cond_3

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v3

    :goto_2
    sparse-switch v3, :sswitch_data_1

    .line 607
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/16 v4, 0x13

    iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v5, v3, v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 632
    .end local v2    # "t":Lorg/apache/james/mime4j/field/address/parser/Token;
    :goto_3
    if-eqz v0, :cond_2

    .line 633
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v1, v7}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;Z)V

    .line 634
    invoke-virtual {p0, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 637
    :cond_2
    return-void

    .line 601
    .restart local v2    # "t":Lorg/apache/james/mime4j/field/address/parser/Token;
    :cond_3
    :try_start_2
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_2

    .line 610
    :sswitch_1
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v3, v6, :cond_4

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v3

    :goto_4
    packed-switch v3, :pswitch_data_0

    .line 615
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/16 v4, 0x14

    iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v5, v3, v4

    .line 618
    :goto_5
    iget-object v3, v2, Lorg/apache/james/mime4j/field/address/parser/Token;->image:Ljava/lang/String;

    iget-object v4, v2, Lorg/apache/james/mime4j/field/address/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2e

    if-eq v3, v4, :cond_5

    .line 619
    new-instance v3, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    const-string v4, "Atoms in domain names must be separated by \'.\'"

    invoke-direct {v3, v4}, Lorg/apache/james/mime4j/field/address/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 610
    :cond_4
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_4

    .line 612
    :pswitch_0
    const/16 v3, 0x9

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    move-result-object v2

    .line 613
    goto :goto_5

    .line 620
    :cond_5
    const/16 v3, 0xe

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    move-result-object v2

    goto :goto_1

    .line 624
    .end local v2    # "t":Lorg/apache/james/mime4j/field/address/parser/Token;
    :sswitch_2
    const/16 v3, 0x12

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 596
    nop

    :sswitch_data_0
    .sparse-switch
        0xe -> :sswitch_0
        0x12 -> :sswitch_2
    .end sparse-switch

    .line 601
    :sswitch_data_1
    .sparse-switch
        0x9 -> :sswitch_1
        0xe -> :sswitch_1
    .end sparse-switch

    .line 610
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method

.method public final enable_tracing()V
    .locals 0

    .prologue
    .line 962
    return-void
.end method

.method public generateParseException()Lorg/apache/james/mime4j/field/address/parser/ParseException;
    .locals 9

    .prologue
    const/16 v8, 0x22

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 923
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentries:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->removeAllElements()V

    .line 924
    new-array v3, v8, [Z

    .line 925
    .local v3, "la1tokens":[Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v8, :cond_0

    .line 926
    aput-boolean v7, v3, v1

    .line 925
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 928
    :cond_0
    iget v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_kind:I

    if-ltz v4, :cond_1

    .line 929
    iget v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_kind:I

    aput-boolean v6, v3, v4

    .line 930
    const/4 v4, -0x1

    iput v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_kind:I

    .line 932
    :cond_1
    const/4 v1, 0x0

    :goto_1
    const/16 v4, 0x16

    if-ge v1, v4, :cond_5

    .line 933
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    aget v4, v4, v1

    iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    if-ne v4, v5, :cond_4

    .line 934
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_2
    const/16 v4, 0x20

    if-ge v2, v4, :cond_4

    .line 935
    sget-object v4, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1_0:[I

    aget v4, v4, v1

    shl-int v5, v6, v2

    and-int/2addr v4, v5

    if-eqz v4, :cond_2

    .line 936
    aput-boolean v6, v3, v2

    .line 938
    :cond_2
    sget-object v4, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1_1:[I

    aget v4, v4, v1

    shl-int v5, v6, v2

    and-int/2addr v4, v5

    if-eqz v4, :cond_3

    .line 939
    add-int/lit8 v4, v2, 0x20

    aput-boolean v6, v3, v4

    .line 934
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 932
    .end local v2    # "j":I
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 944
    :cond_5
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v8, :cond_7

    .line 945
    aget-boolean v4, v3, v1

    if-eqz v4, :cond_6

    .line 946
    new-array v4, v6, [I

    iput-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentry:[I

    .line 947
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentry:[I

    aput v1, v4, v7

    .line 948
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentries:Ljava/util/Vector;

    iget-object v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentry:[I

    invoke-virtual {v4, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 944
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 951
    :cond_7
    iput v7, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_endpos:I

    .line 952
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_rescan_token()V

    .line 953
    invoke-direct {p0, v7, v7}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_add_error_token(II)V

    .line 954
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentries:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    new-array v0, v4, [[I

    .line 955
    .local v0, "exptokseq":[[I
    const/4 v1, 0x0

    :goto_4
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentries:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v1, v4, :cond_8

    .line 956
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentries:Ljava/util/Vector;

    invoke-virtual {v4, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    check-cast v4, [I

    aput-object v4, v0, v1

    .line 955
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 958
    :cond_8
    new-instance v4, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    iget-object v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    sget-object v6, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->tokenImage:[Ljava/lang/String;

    invoke-direct {v4, v5, v0, v6}, Lorg/apache/james/mime4j/field/address/parser/ParseException;-><init>(Lorg/apache/james/mime4j/field/address/parser/Token;[[I[Ljava/lang/String;)V

    return-object v4
.end method

.method public final getNextToken()Lorg/apache/james/mime4j/field/address/parser/Token;
    .locals 2

    .prologue
    .line 865
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    iget-object v0, v0, Lorg/apache/james/mime4j/field/address/parser/Token;->next:Lorg/apache/james/mime4j/field/address/parser/Token;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    iget-object v0, v0, Lorg/apache/james/mime4j/field/address/parser/Token;->next:Lorg/apache/james/mime4j/field/address/parser/Token;

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 867
    :goto_0
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    .line 868
    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    .line 869
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    return-object v0

    .line 866
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token_source:Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->getNextToken()Lorg/apache/james/mime4j/field/address/parser/Token;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/james/mime4j/field/address/parser/Token;->next:Lorg/apache/james/mime4j/field/address/parser/Token;

    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    goto :goto_0
.end method

.method public final getToken(I)Lorg/apache/james/mime4j/field/address/parser/Token;
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 873
    iget-boolean v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->lookingAhead:Z

    if-eqz v3, :cond_0

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 874
    .local v1, "t":Lorg/apache/james/mime4j/field/address/parser/Token;
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    move-object v2, v1

    .end local v1    # "t":Lorg/apache/james/mime4j/field/address/parser/Token;
    .local v2, "t":Lorg/apache/james/mime4j/field/address/parser/Token;
    :goto_1
    if-ge v0, p1, :cond_2

    .line 875
    iget-object v3, v2, Lorg/apache/james/mime4j/field/address/parser/Token;->next:Lorg/apache/james/mime4j/field/address/parser/Token;

    if-eqz v3, :cond_1

    iget-object v1, v2, Lorg/apache/james/mime4j/field/address/parser/Token;->next:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 874
    .end local v2    # "t":Lorg/apache/james/mime4j/field/address/parser/Token;
    .restart local v1    # "t":Lorg/apache/james/mime4j/field/address/parser/Token;
    :goto_2
    add-int/lit8 v0, v0, 0x1

    move-object v2, v1

    .end local v1    # "t":Lorg/apache/james/mime4j/field/address/parser/Token;
    .restart local v2    # "t":Lorg/apache/james/mime4j/field/address/parser/Token;
    goto :goto_1

    .line 873
    .end local v0    # "i":I
    .end local v2    # "t":Lorg/apache/james/mime4j/field/address/parser/Token;
    :cond_0
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    goto :goto_0

    .line 876
    .restart local v0    # "i":I
    .restart local v2    # "t":Lorg/apache/james/mime4j/field/address/parser/Token;
    :cond_1
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token_source:Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->getNextToken()Lorg/apache/james/mime4j/field/address/parser/Token;

    move-result-object v1

    iput-object v1, v2, Lorg/apache/james/mime4j/field/address/parser/Token;->next:Lorg/apache/james/mime4j/field/address/parser/Token;

    .end local v2    # "t":Lorg/apache/james/mime4j/field/address/parser/Token;
    .restart local v1    # "t":Lorg/apache/james/mime4j/field/address/parser/Token;
    goto :goto_2

    .line 878
    .end local v1    # "t":Lorg/apache/james/mime4j/field/address/parser/Token;
    .restart local v2    # "t":Lorg/apache/james/mime4j/field/address/parser/Token;
    :cond_2
    return-object v2
.end method

.method public final group_body()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/address/parser/ParseException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x5

    const/4 v7, 0x1

    const/4 v6, -0x1

    .line 297
    new-instance v2, Lorg/apache/james/mime4j/field/address/parser/ASTgroup_body;

    invoke-direct {v2, v3}, Lorg/apache/james/mime4j/field/address/parser/ASTgroup_body;-><init>(I)V

    .line 298
    .local v2, "jjtn000":Lorg/apache/james/mime4j/field/address/parser/ASTgroup_body;
    const/4 v0, 0x1

    .line 299
    .local v0, "jjtc000":Z
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->openNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 300
    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeOpenNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 302
    const/4 v3, 0x4

    :try_start_0
    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 303
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v3, v6, :cond_1

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v3

    :goto_0
    sparse-switch v3, :sswitch_data_0

    .line 310
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/4 v4, 0x7

    iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v5, v3, v4

    .line 315
    :goto_1
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v3, v6, :cond_3

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v3

    :goto_2
    packed-switch v3, :pswitch_data_0

    .line 320
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/16 v4, 0x8

    iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v5, v3, v4

    .line 335
    const/4 v3, 0x5

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 351
    if-eqz v0, :cond_0

    .line 352
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2, v7}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;Z)V

    .line 353
    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 356
    :cond_0
    return-void

    .line 303
    :cond_1
    :try_start_1
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_0

    .line 307
    :sswitch_0
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->mailbox()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 336
    :catch_0
    move-exception v1

    .line 337
    .local v1, "jjte000":Ljava/lang/Throwable;
    if-eqz v0, :cond_5

    .line 338
    :try_start_2
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->clearNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 339
    const/4 v0, 0x0

    .line 343
    :goto_3
    instance-of v3, v1, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_6

    .line 344
    check-cast v1, Ljava/lang/RuntimeException;

    .end local v1    # "jjte000":Ljava/lang/Throwable;
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 351
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_2

    .line 352
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v4, v2, v7}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;Z)V

    .line 353
    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    :cond_2
    throw v3

    .line 315
    :cond_3
    :try_start_3
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_2

    .line 323
    :pswitch_0
    const/4 v3, 0x3

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 324
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v3, v6, :cond_4

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v3

    :goto_4
    sparse-switch v3, :sswitch_data_1

    .line 331
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/16 v4, 0x9

    iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v5, v3, v4

    goto :goto_1

    .line 324
    :cond_4
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_4

    .line 328
    :sswitch_1
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->mailbox()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 341
    .restart local v1    # "jjte000":Ljava/lang/Throwable;
    :cond_5
    :try_start_4
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->popNode()Lorg/apache/james/mime4j/field/address/parser/Node;

    goto :goto_3

    .line 346
    :cond_6
    instance-of v3, v1, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    if-eqz v3, :cond_7

    .line 347
    check-cast v1, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    .end local v1    # "jjte000":Ljava/lang/Throwable;
    throw v1

    .line 349
    .restart local v1    # "jjte000":Ljava/lang/Throwable;
    :cond_7
    check-cast v1, Ljava/lang/Error;

    .end local v1    # "jjte000":Ljava/lang/Throwable;
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 303
    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_0
        0xe -> :sswitch_0
        0x1f -> :sswitch_0
    .end sparse-switch

    .line 315
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch

    .line 324
    :sswitch_data_1
    .sparse-switch
        0x6 -> :sswitch_1
        0xe -> :sswitch_1
        0x1f -> :sswitch_1
    .end sparse-switch
.end method

.method jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V
    .locals 1
    .param p1, "n"    # Lorg/apache/james/mime4j/field/address/parser/Node;

    .prologue
    .line 68
    check-cast p1, Lorg/apache/james/mime4j/field/address/parser/SimpleNode;

    .end local p1    # "n":Lorg/apache/james/mime4j/field/address/parser/Node;
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->getToken(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    move-result-object v0

    iput-object v0, p1, Lorg/apache/james/mime4j/field/address/parser/SimpleNode;->lastToken:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 69
    return-void
.end method

.method jjtreeOpenNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V
    .locals 1
    .param p1, "n"    # Lorg/apache/james/mime4j/field/address/parser/Node;

    .prologue
    .line 64
    check-cast p1, Lorg/apache/james/mime4j/field/address/parser/SimpleNode;

    .end local p1    # "n":Lorg/apache/james/mime4j/field/address/parser/Node;
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->getToken(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    move-result-object v0

    iput-object v0, p1, Lorg/apache/james/mime4j/field/address/parser/SimpleNode;->firstToken:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 65
    return-void
.end method

.method public final local_part()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/address/parser/ParseException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/16 v7, 0x1f

    const/4 v6, -0x1

    .line 529
    new-instance v1, Lorg/apache/james/mime4j/field/address/parser/ASTlocal_part;

    const/16 v3, 0xa

    invoke-direct {v1, v3}, Lorg/apache/james/mime4j/field/address/parser/ASTlocal_part;-><init>(I)V

    .line 530
    .local v1, "jjtn000":Lorg/apache/james/mime4j/field/address/parser/ASTlocal_part;
    const/4 v0, 0x1

    .line 531
    .local v0, "jjtc000":Z
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v1}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->openNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 532
    invoke-virtual {p0, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeOpenNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 534
    :try_start_0
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v3, v6, :cond_1

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v3

    :goto_0
    sparse-switch v3, :sswitch_data_0

    .line 542
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/16 v4, 0xf

    iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v5, v3, v4

    .line 543
    const/4 v3, -0x1

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 544
    new-instance v3, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    invoke-direct {v3}, Lorg/apache/james/mime4j/field/address/parser/ParseException;-><init>()V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 582
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_0

    .line 583
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v4, v1, v8}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;Z)V

    .line 584
    invoke-virtual {p0, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    :cond_0
    throw v3

    .line 534
    :cond_1
    :try_start_1
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_0

    .line 536
    :sswitch_0
    const/16 v3, 0xe

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    move-result-object v2

    .line 548
    .local v2, "t":Lorg/apache/james/mime4j/field/address/parser/Token;
    :goto_1
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v3, v6, :cond_3

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v3

    :goto_2
    sparse-switch v3, :sswitch_data_1

    .line 555
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/16 v4, 0x10

    iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v5, v3, v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 582
    if-eqz v0, :cond_2

    .line 583
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v1, v8}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;Z)V

    .line 584
    invoke-virtual {p0, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 587
    :cond_2
    return-void

    .line 539
    .end local v2    # "t":Lorg/apache/james/mime4j/field/address/parser/Token;
    :sswitch_1
    const/16 v3, 0x1f

    :try_start_2
    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    move-result-object v2

    .line 540
    .restart local v2    # "t":Lorg/apache/james/mime4j/field/address/parser/Token;
    goto :goto_1

    .line 548
    :cond_3
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_2

    .line 558
    :sswitch_2
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v3, v6, :cond_5

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v3

    :goto_3
    packed-switch v3, :pswitch_data_0

    .line 563
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/16 v4, 0x11

    iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v5, v3, v4

    .line 566
    :goto_4
    iget v3, v2, Lorg/apache/james/mime4j/field/address/parser/Token;->kind:I

    if-eq v3, v7, :cond_4

    iget-object v3, v2, Lorg/apache/james/mime4j/field/address/parser/Token;->image:Ljava/lang/String;

    iget-object v4, v2, Lorg/apache/james/mime4j/field/address/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2e

    if-eq v3, v4, :cond_6

    .line 567
    :cond_4
    new-instance v3, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    const-string v4, "Words in local part must be separated by \'.\'"

    invoke-direct {v3, v4}, Lorg/apache/james/mime4j/field/address/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 558
    :cond_5
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_3

    .line 560
    :pswitch_0
    const/16 v3, 0x9

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    move-result-object v2

    .line 561
    goto :goto_4

    .line 568
    :cond_6
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v3, v6, :cond_7

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v3

    :goto_5
    sparse-switch v3, :sswitch_data_2

    .line 576
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/16 v4, 0x12

    iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v5, v3, v4

    .line 577
    const/4 v3, -0x1

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 578
    new-instance v3, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    invoke-direct {v3}, Lorg/apache/james/mime4j/field/address/parser/ParseException;-><init>()V

    throw v3

    .line 568
    :cond_7
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_5

    .line 570
    :sswitch_3
    const/16 v3, 0xe

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    move-result-object v2

    .line 571
    goto/16 :goto_1

    .line 573
    :sswitch_4
    const/16 v3, 0x1f

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    .line 574
    goto/16 :goto_1

    .line 534
    nop

    :sswitch_data_0
    .sparse-switch
        0xe -> :sswitch_0
        0x1f -> :sswitch_1
    .end sparse-switch

    .line 548
    :sswitch_data_1
    .sparse-switch
        0x9 -> :sswitch_2
        0xe -> :sswitch_2
        0x1f -> :sswitch_2
    .end sparse-switch

    .line 558
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch

    .line 568
    :sswitch_data_2
    .sparse-switch
        0xe -> :sswitch_3
        0x1f -> :sswitch_4
    .end sparse-switch
.end method

.method public final mailbox()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/address/parser/ParseException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v4, -0x1

    .line 220
    new-instance v2, Lorg/apache/james/mime4j/field/address/parser/ASTmailbox;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Lorg/apache/james/mime4j/field/address/parser/ASTmailbox;-><init>(I)V

    .line 221
    .local v2, "jjtn000":Lorg/apache/james/mime4j/field/address/parser/ASTmailbox;
    const/4 v0, 0x1

    .line 222
    .local v0, "jjtc000":Z
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->openNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 223
    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeOpenNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 225
    const v3, 0x7fffffff

    :try_start_0
    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_2(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 226
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->addr_spec()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    :goto_0
    if-eqz v0, :cond_0

    .line 258
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2, v6}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;Z)V

    .line 259
    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 262
    :cond_0
    return-void

    .line 228
    :cond_1
    :try_start_1
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v3, v4, :cond_3

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v3

    :goto_1
    sparse-switch v3, :sswitch_data_0

    .line 237
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/4 v4, 0x6

    iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v5, v3, v4

    .line 238
    const/4 v3, -0x1

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 239
    new-instance v3, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    invoke-direct {v3}, Lorg/apache/james/mime4j/field/address/parser/ParseException;-><init>()V

    throw v3
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 242
    :catch_0
    move-exception v1

    .line 243
    .local v1, "jjte000":Ljava/lang/Throwable;
    if-eqz v0, :cond_4

    .line 244
    :try_start_2
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->clearNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 245
    const/4 v0, 0x0

    .line 249
    :goto_2
    instance-of v3, v1, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_5

    .line 250
    check-cast v1, Ljava/lang/RuntimeException;

    .end local v1    # "jjte000":Ljava/lang/Throwable;
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 257
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_2

    .line 258
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v4, v2, v6}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;Z)V

    .line 259
    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    :cond_2
    throw v3

    .line 228
    :cond_3
    :try_start_3
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_1

    .line 230
    :sswitch_0
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->angle_addr()V

    goto :goto_0

    .line 234
    :sswitch_1
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->name_addr()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 247
    .restart local v1    # "jjte000":Ljava/lang/Throwable;
    :cond_4
    :try_start_4
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->popNode()Lorg/apache/james/mime4j/field/address/parser/Node;

    goto :goto_2

    .line 252
    :cond_5
    instance-of v3, v1, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    if-eqz v3, :cond_6

    .line 253
    check-cast v1, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    .end local v1    # "jjte000":Ljava/lang/Throwable;
    throw v1

    .line 255
    .restart local v1    # "jjte000":Ljava/lang/Throwable;
    :cond_6
    check-cast v1, Ljava/lang/Error;

    .end local v1    # "jjte000":Ljava/lang/Throwable;
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 228
    nop

    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_0
        0xe -> :sswitch_1
        0x1f -> :sswitch_1
    .end sparse-switch
.end method

.method public final name_addr()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/address/parser/ParseException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 266
    new-instance v2, Lorg/apache/james/mime4j/field/address/parser/ASTname_addr;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Lorg/apache/james/mime4j/field/address/parser/ASTname_addr;-><init>(I)V

    .line 267
    .local v2, "jjtn000":Lorg/apache/james/mime4j/field/address/parser/ASTname_addr;
    const/4 v0, 0x1

    .line 268
    .local v0, "jjtc000":Z
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->openNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 269
    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeOpenNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 271
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->phrase()V

    .line 272
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->angle_addr()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 288
    if-eqz v0, :cond_0

    .line 289
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2, v5}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;Z)V

    .line 290
    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 293
    :cond_0
    return-void

    .line 273
    :catch_0
    move-exception v1

    .line 274
    .local v1, "jjte000":Ljava/lang/Throwable;
    if-eqz v0, :cond_2

    .line 275
    :try_start_1
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->clearNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 276
    const/4 v0, 0x0

    .line 280
    :goto_0
    instance-of v3, v1, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_3

    .line 281
    check-cast v1, Ljava/lang/RuntimeException;

    .end local v1    # "jjte000":Ljava/lang/Throwable;
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 288
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_1

    .line 289
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v4, v2, v5}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;Z)V

    .line 290
    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    :cond_1
    throw v3

    .line 278
    .restart local v1    # "jjte000":Ljava/lang/Throwable;
    :cond_2
    :try_start_2
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->popNode()Lorg/apache/james/mime4j/field/address/parser/Node;

    goto :goto_0

    .line 283
    :cond_3
    instance-of v3, v1, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    if-eqz v3, :cond_4

    .line 284
    check-cast v1, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    .end local v1    # "jjte000":Ljava/lang/Throwable;
    throw v1

    .line 286
    .restart local v1    # "jjte000":Ljava/lang/Throwable;
    :cond_4
    check-cast v1, Ljava/lang/Error;

    .end local v1    # "jjte000":Ljava/lang/Throwable;
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public parseAddress()Lorg/apache/james/mime4j/field/address/parser/ASTaddress;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/address/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 47
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->parseAddress0()V

    .line 48
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->rootNode()Lorg/apache/james/mime4j/field/address/parser/Node;

    move-result-object v1

    check-cast v1, Lorg/apache/james/mime4j/field/address/parser/ASTaddress;
    :try_end_0
    .catch Lorg/apache/james/mime4j/field/address/parser/TokenMgrError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, "tme":Lorg/apache/james/mime4j/field/address/parser/TokenMgrError;
    new-instance v1, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/parser/TokenMgrError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/james/mime4j/field/address/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final parseAddress0()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/address/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 90
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->address()V

    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 92
    return-void
.end method

.method public parseAddressList()Lorg/apache/james/mime4j/field/address/parser/ASTaddress_list;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/address/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 38
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->parseAddressList0()V

    .line 39
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->rootNode()Lorg/apache/james/mime4j/field/address/parser/Node;

    move-result-object v1

    check-cast v1, Lorg/apache/james/mime4j/field/address/parser/ASTaddress_list;
    :try_end_0
    .catch Lorg/apache/james/mime4j/field/address/parser/TokenMgrError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 40
    :catch_0
    move-exception v0

    .line 41
    .local v0, "tme":Lorg/apache/james/mime4j/field/address/parser/TokenMgrError;
    new-instance v1, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/parser/TokenMgrError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/james/mime4j/field/address/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final parseAddressList0()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/address/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 85
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->address_list()V

    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 87
    return-void
.end method

.method public final parseLine()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/address/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 72
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->address_list()V

    .line 73
    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v0

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 78
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/4 v1, 0x0

    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v2, v0, v1

    .line 81
    :goto_1
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 82
    return-void

    .line 73
    :cond_0
    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_0

    .line 75
    :pswitch_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    goto :goto_1

    .line 73
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public parseMailbox()Lorg/apache/james/mime4j/field/address/parser/ASTmailbox;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/address/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 56
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->parseMailbox0()V

    .line 57
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->rootNode()Lorg/apache/james/mime4j/field/address/parser/Node;

    move-result-object v1

    check-cast v1, Lorg/apache/james/mime4j/field/address/parser/ASTmailbox;
    :try_end_0
    .catch Lorg/apache/james/mime4j/field/address/parser/TokenMgrError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, "tme":Lorg/apache/james/mime4j/field/address/parser/TokenMgrError;
    new-instance v1, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/parser/TokenMgrError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/james/mime4j/field/address/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final parseMailbox0()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/address/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 95
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->mailbox()V

    .line 96
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 97
    return-void
.end method

.method public final phrase()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/address/parser/ParseException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v3, -0x1

    .line 458
    new-instance v1, Lorg/apache/james/mime4j/field/address/parser/ASTphrase;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Lorg/apache/james/mime4j/field/address/parser/ASTphrase;-><init>(I)V

    .line 459
    .local v1, "jjtn000":Lorg/apache/james/mime4j/field/address/parser/ASTphrase;
    const/4 v0, 0x1

    .line 460
    .local v0, "jjtc000":Z
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v2, v1}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->openNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 461
    invoke-virtual {p0, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeOpenNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 465
    :sswitch_0
    :try_start_0
    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v2, v3, :cond_1

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v2

    :goto_0
    sparse-switch v2, :sswitch_data_0

    .line 473
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/16 v3, 0xd

    iget v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v4, v2, v3

    .line 474
    const/4 v2, -0x1

    invoke-direct {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 475
    new-instance v2, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    invoke-direct {v2}, Lorg/apache/james/mime4j/field/address/parser/ParseException;-><init>()V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 488
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_0

    .line 489
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v1, v5}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;Z)V

    .line 490
    invoke-virtual {p0, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    :cond_0
    throw v2

    .line 465
    :cond_1
    :try_start_1
    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_0

    .line 467
    :sswitch_1
    const/16 v2, 0xe

    invoke-direct {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 477
    :goto_1
    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v2, v3, :cond_3

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v2

    :goto_2
    sparse-switch v2, :sswitch_data_1

    .line 483
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/16 v3, 0xe

    iget v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v4, v2, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 488
    if-eqz v0, :cond_2

    .line 489
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v2, v1, v5}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;Z)V

    .line 490
    invoke-virtual {p0, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 493
    :cond_2
    return-void

    .line 470
    :sswitch_2
    const/16 v2, 0x1f

    :try_start_2
    invoke-direct {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    goto :goto_1

    .line 477
    :cond_3
    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 465
    :sswitch_data_0
    .sparse-switch
        0xe -> :sswitch_1
        0x1f -> :sswitch_2
    .end sparse-switch

    .line 477
    :sswitch_data_1
    .sparse-switch
        0xe -> :sswitch_0
        0x1f -> :sswitch_0
    .end sparse-switch
.end method

.method public final route()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/address/parser/ParseException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    .line 400
    new-instance v2, Lorg/apache/james/mime4j/field/address/parser/ASTroute;

    const/4 v3, 0x7

    invoke-direct {v2, v3}, Lorg/apache/james/mime4j/field/address/parser/ASTroute;-><init>(I)V

    .line 401
    .local v2, "jjtn000":Lorg/apache/james/mime4j/field/address/parser/ASTroute;
    const/4 v0, 0x1

    .line 402
    .local v0, "jjtc000":Z
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->openNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 403
    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeOpenNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 405
    const/16 v3, 0x8

    :try_start_0
    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 406
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->domain()V

    .line 409
    :goto_0
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v3, v6, :cond_1

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v3

    :goto_1
    sparse-switch v3, :sswitch_data_0

    .line 415
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/16 v4, 0xb

    iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v5, v3, v4

    .line 433
    const/4 v3, 0x4

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 449
    if-eqz v0, :cond_0

    .line 450
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2, v7}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;Z)V

    .line 451
    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 454
    :cond_0
    return-void

    .line 409
    :cond_1
    :try_start_1
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_1

    .line 428
    :pswitch_0
    const/4 v3, 0x3

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 420
    :sswitch_0
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v3, v6, :cond_3

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v3

    :goto_2
    packed-switch v3, :pswitch_data_0

    .line 425
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/16 v4, 0xc

    iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v5, v3, v4

    .line 430
    const/16 v3, 0x8

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 431
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->domain()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 434
    :catch_0
    move-exception v1

    .line 435
    .local v1, "jjte000":Ljava/lang/Throwable;
    if-eqz v0, :cond_4

    .line 436
    :try_start_2
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v2}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->clearNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 437
    const/4 v0, 0x0

    .line 441
    :goto_3
    instance-of v3, v1, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_5

    .line 442
    check-cast v1, Ljava/lang/RuntimeException;

    .end local v1    # "jjte000":Ljava/lang/Throwable;
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 449
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_2

    .line 450
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v4, v2, v7}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;Z)V

    .line 451
    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    :cond_2
    throw v3

    .line 420
    :cond_3
    :try_start_3
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 439
    .restart local v1    # "jjte000":Ljava/lang/Throwable;
    :cond_4
    :try_start_4
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->popNode()Lorg/apache/james/mime4j/field/address/parser/Node;

    goto :goto_3

    .line 444
    :cond_5
    instance-of v3, v1, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    if-eqz v3, :cond_6

    .line 445
    check-cast v1, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    .end local v1    # "jjte000":Ljava/lang/Throwable;
    throw v1

    .line 447
    .restart local v1    # "jjte000":Ljava/lang/Throwable;
    :cond_6
    check-cast v1, Ljava/lang/Error;

    .end local v1    # "jjte000":Ljava/lang/Throwable;
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 409
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x8 -> :sswitch_0
    .end sparse-switch

    .line 420
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method
