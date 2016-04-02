.class public Lorg/apache/james/mime4j/util/CharsetUtil;
.super Ljava/lang/Object;
.source "CharsetUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/james/mime4j/util/CharsetUtil$1;,
        Lorg/apache/james/mime4j/util/CharsetUtil$Charset;
    }
.end annotation


# static fields
.field public static final CR:I = 0xd

.field public static final CRLF:Ljava/lang/String; = "\r\n"

.field public static final DEFAULT_CHARSET:Ljava/nio/charset/Charset;

.field public static final HT:I = 0x9

.field public static final ISO_8859_1:Ljava/nio/charset/Charset;

.field private static JAVA_CHARSETS:[Lorg/apache/james/mime4j/util/CharsetUtil$Charset; = null

.field public static final LF:I = 0xa

.field public static final SP:I = 0x20

.field public static final US_ASCII:Ljava/nio/charset/Charset;

.field public static final UTF_8:Ljava/nio/charset/Charset;

.field private static charsetMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/james/mime4j/util/CharsetUtil$Charset;",
            ">;"
        }
    .end annotation
.end field

.field private static decodingSupported:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static encodingSupported:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static log:Lorg/apache/commons/logging/Log;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .prologue
    .line 791
    const-class v9, Lorg/apache/james/mime4j/util/CharsetUtil;

    invoke-static {v9}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v9

    sput-object v9, Lorg/apache/james/mime4j/util/CharsetUtil;->log:Lorg/apache/commons/logging/Log;

    .line 809
    const/16 v9, 0x93

    new-array v9, v9, [Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const/4 v10, 0x0

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "ISO8859_1"

    const-string v13, "ISO-8859-1"

    const/16 v14, 0xd

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "ISO_8859-1:1987"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-string v16, "iso-ir-100"

    aput-object v16, v14, v15

    const/4 v15, 0x2

    const-string v16, "ISO_8859-1"

    aput-object v16, v14, v15

    const/4 v15, 0x3

    const-string v16, "latin1"

    aput-object v16, v14, v15

    const/4 v15, 0x4

    const-string v16, "l1"

    aput-object v16, v14, v15

    const/4 v15, 0x5

    const-string v16, "IBM819"

    aput-object v16, v14, v15

    const/4 v15, 0x6

    const-string v16, "CP819"

    aput-object v16, v14, v15

    const/4 v15, 0x7

    const-string v16, "csISOLatin1"

    aput-object v16, v14, v15

    const/16 v15, 0x8

    const-string v16, "8859_1"

    aput-object v16, v14, v15

    const/16 v15, 0x9

    const-string v16, "819"

    aput-object v16, v14, v15

    const/16 v15, 0xa

    const-string v16, "IBM-819"

    aput-object v16, v14, v15

    const/16 v15, 0xb

    const-string v16, "ISO8859-1"

    aput-object v16, v14, v15

    const/16 v15, 0xc

    const-string v16, "ISO_8859_1"

    aput-object v16, v14, v15

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "ISO8859_2"

    const-string v13, "ISO-8859-2"

    const/16 v14, 0x8

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "ISO_8859-2:1987"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-string v16, "iso-ir-101"

    aput-object v16, v14, v15

    const/4 v15, 0x2

    const-string v16, "ISO_8859-2"

    aput-object v16, v14, v15

    const/4 v15, 0x3

    const-string v16, "latin2"

    aput-object v16, v14, v15

    const/4 v15, 0x4

    const-string v16, "l2"

    aput-object v16, v14, v15

    const/4 v15, 0x5

    const-string v16, "csISOLatin2"

    aput-object v16, v14, v15

    const/4 v15, 0x6

    const-string v16, "8859_2"

    aput-object v16, v14, v15

    const/4 v15, 0x7

    const-string v16, "iso8859_2"

    aput-object v16, v14, v15

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/4 v10, 0x2

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "ISO8859_3"

    const-string v13, "ISO-8859-3"

    const/4 v14, 0x7

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "ISO_8859-3:1988"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-string v16, "iso-ir-109"

    aput-object v16, v14, v15

    const/4 v15, 0x2

    const-string v16, "ISO_8859-3"

    aput-object v16, v14, v15

    const/4 v15, 0x3

    const-string v16, "latin3"

    aput-object v16, v14, v15

    const/4 v15, 0x4

    const-string v16, "l3"

    aput-object v16, v14, v15

    const/4 v15, 0x5

    const-string v16, "csISOLatin3"

    aput-object v16, v14, v15

    const/4 v15, 0x6

    const-string v16, "8859_3"

    aput-object v16, v14, v15

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/4 v10, 0x3

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "ISO8859_4"

    const-string v13, "ISO-8859-4"

    const/4 v14, 0x7

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "ISO_8859-4:1988"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-string v16, "iso-ir-110"

    aput-object v16, v14, v15

    const/4 v15, 0x2

    const-string v16, "ISO_8859-4"

    aput-object v16, v14, v15

    const/4 v15, 0x3

    const-string v16, "latin4"

    aput-object v16, v14, v15

    const/4 v15, 0x4

    const-string v16, "l4"

    aput-object v16, v14, v15

    const/4 v15, 0x5

    const-string v16, "csISOLatin4"

    aput-object v16, v14, v15

    const/4 v15, 0x6

    const-string v16, "8859_4"

    aput-object v16, v14, v15

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/4 v10, 0x4

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "ISO8859_5"

    const-string v13, "ISO-8859-5"

    const/4 v14, 0x6

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "ISO_8859-5:1988"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-string v16, "iso-ir-144"

    aput-object v16, v14, v15

    const/4 v15, 0x2

    const-string v16, "ISO_8859-5"

    aput-object v16, v14, v15

    const/4 v15, 0x3

    const-string v16, "cyrillic"

    aput-object v16, v14, v15

    const/4 v15, 0x4

    const-string v16, "csISOLatinCyrillic"

    aput-object v16, v14, v15

    const/4 v15, 0x5

    const-string v16, "8859_5"

    aput-object v16, v14, v15

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/4 v10, 0x5

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "ISO8859_6"

    const-string v13, "ISO-8859-6"

    const/16 v14, 0x8

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "ISO_8859-6:1987"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-string v16, "iso-ir-127"

    aput-object v16, v14, v15

    const/4 v15, 0x2

    const-string v16, "ISO_8859-6"

    aput-object v16, v14, v15

    const/4 v15, 0x3

    const-string v16, "ECMA-114"

    aput-object v16, v14, v15

    const/4 v15, 0x4

    const-string v16, "ASMO-708"

    aput-object v16, v14, v15

    const/4 v15, 0x5

    const-string v16, "arabic"

    aput-object v16, v14, v15

    const/4 v15, 0x6

    const-string v16, "csISOLatinArabic"

    aput-object v16, v14, v15

    const/4 v15, 0x7

    const-string v16, "8859_6"

    aput-object v16, v14, v15

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/4 v10, 0x6

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "ISO8859_7"

    const-string v13, "ISO-8859-7"

    const/16 v14, 0xa

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "ISO_8859-7:1987"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-string v16, "iso-ir-126"

    aput-object v16, v14, v15

    const/4 v15, 0x2

    const-string v16, "ISO_8859-7"

    aput-object v16, v14, v15

    const/4 v15, 0x3

    const-string v16, "ELOT_928"

    aput-object v16, v14, v15

    const/4 v15, 0x4

    const-string v16, "ECMA-118"

    aput-object v16, v14, v15

    const/4 v15, 0x5

    const-string v16, "greek"

    aput-object v16, v14, v15

    const/4 v15, 0x6

    const-string v16, "greek8"

    aput-object v16, v14, v15

    const/4 v15, 0x7

    const-string v16, "csISOLatinGreek"

    aput-object v16, v14, v15

    const/16 v15, 0x8

    const-string v16, "8859_7"

    aput-object v16, v14, v15

    const/16 v15, 0x9

    const-string v16, "sun_eu_greek"

    aput-object v16, v14, v15

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/4 v10, 0x7

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "ISO8859_8"

    const-string v13, "ISO-8859-8"

    const/4 v14, 0x6

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "ISO_8859-8:1988"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-string v16, "iso-ir-138"

    aput-object v16, v14, v15

    const/4 v15, 0x2

    const-string v16, "ISO_8859-8"

    aput-object v16, v14, v15

    const/4 v15, 0x3

    const-string v16, "hebrew"

    aput-object v16, v14, v15

    const/4 v15, 0x4

    const-string v16, "csISOLatinHebrew"

    aput-object v16, v14, v15

    const/4 v15, 0x5

    const-string v16, "8859_8"

    aput-object v16, v14, v15

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/16 v10, 0x8

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "ISO8859_9"

    const-string v13, "ISO-8859-9"

    const/4 v14, 0x7

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "ISO_8859-9:1989"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-string v16, "iso-ir-148"

    aput-object v16, v14, v15

    const/4 v15, 0x2

    const-string v16, "ISO_8859-9"

    aput-object v16, v14, v15

    const/4 v15, 0x3

    const-string v16, "latin5"

    aput-object v16, v14, v15

    const/4 v15, 0x4

    const-string v16, "l5"

    aput-object v16, v14, v15

    const/4 v15, 0x5

    const-string v16, "csISOLatin5"

    aput-object v16, v14, v15

    const/4 v15, 0x6

    const-string v16, "8859_9"

    aput-object v16, v14, v15

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/16 v10, 0x9

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "ISO8859_13"

    const-string v13, "ISO-8859-13"

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/16 v10, 0xa

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "ISO8859_15"

    const-string v13, "ISO-8859-15"

    const/16 v14, 0xe

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "ISO_8859-15"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-string v16, "Latin-9"

    aput-object v16, v14, v15

    const/4 v15, 0x2

    const-string v16, "8859_15"

    aput-object v16, v14, v15

    const/4 v15, 0x3

    const-string v16, "csISOlatin9"

    aput-object v16, v14, v15

    const/4 v15, 0x4

    const-string v16, "IBM923"

    aput-object v16, v14, v15

    const/4 v15, 0x5

    const-string v16, "cp923"

    aput-object v16, v14, v15

    const/4 v15, 0x6

    const-string v16, "923"

    aput-object v16, v14, v15

    const/4 v15, 0x7

    const-string v16, "L9"

    aput-object v16, v14, v15

    const/16 v15, 0x8

    const-string v16, "IBM-923"

    aput-object v16, v14, v15

    const/16 v15, 0x9

    const-string v16, "ISO8859-15"

    aput-object v16, v14, v15

    const/16 v15, 0xa

    const-string v16, "LATIN9"

    aput-object v16, v14, v15

    const/16 v15, 0xb

    const-string v16, "LATIN0"

    aput-object v16, v14, v15

    const/16 v15, 0xc

    const-string v16, "csISOlatin0"

    aput-object v16, v14, v15

    const/16 v15, 0xd

    const-string v16, "ISO8859_15_FDIS"

    aput-object v16, v14, v15

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/16 v10, 0xb

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "KOI8_R"

    const-string v13, "KOI8-R"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "csKOI8R"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-string v16, "koi8"

    aput-object v16, v14, v15

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/16 v10, 0xc

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "ASCII"

    const-string v13, "US-ASCII"

    const/16 v14, 0xc

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "ANSI_X3.4-1968"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-string v16, "iso-ir-6"

    aput-object v16, v14, v15

    const/4 v15, 0x2

    const-string v16, "ANSI_X3.4-1986"

    aput-object v16, v14, v15

    const/4 v15, 0x3

    const-string v16, "ISO_646.irv:1991"

    aput-object v16, v14, v15

    const/4 v15, 0x4

    const-string v16, "ISO646-US"

    aput-object v16, v14, v15

    const/4 v15, 0x5

    const-string v16, "us"

    aput-object v16, v14, v15

    const/4 v15, 0x6

    const-string v16, "IBM367"

    aput-object v16, v14, v15

    const/4 v15, 0x7

    const-string v16, "cp367"

    aput-object v16, v14, v15

    const/16 v15, 0x8

    const-string v16, "csASCII"

    aput-object v16, v14, v15

    const/16 v15, 0x9

    const-string v16, "ascii7"

    aput-object v16, v14, v15

    const/16 v15, 0xa

    const-string v16, "646"

    aput-object v16, v14, v15

    const/16 v15, 0xb

    const-string v16, "iso_646.irv:1983"

    aput-object v16, v14, v15

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/16 v10, 0xd

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "UTF8"

    const-string v13, "UTF-8"

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/16 v10, 0xe

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "UTF-16"

    const-string v13, "UTF-16"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "UTF_16"

    aput-object v16, v14, v15

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/16 v10, 0xf

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "UnicodeBigUnmarked"

    const-string v13, "UTF-16BE"

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "X-UTF-16BE"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-string v16, "UTF_16BE"

    aput-object v16, v14, v15

    const/4 v15, 0x2

    const-string v16, "ISO-10646-UCS-2"

    aput-object v16, v14, v15

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/16 v10, 0x10

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "UnicodeLittleUnmarked"

    const-string v13, "UTF-16LE"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "UTF_16LE"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-string v16, "X-UTF-16LE"

    aput-object v16, v14, v15

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/16 v10, 0x11

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "Big5"

    const-string v13, "Big5"

    const/4 v14, 0x4

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "csBig5"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-string v16, "CN-Big5"

    aput-object v16, v14, v15

    const/4 v15, 0x2

    const-string v16, "BIG-FIVE"

    aput-object v16, v14, v15

    const/4 v15, 0x3

    const-string v16, "BIGFIVE"

    aput-object v16, v14, v15

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/16 v10, 0x12

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "Big5_HKSCS"

    const-string v13, "Big5-HKSCS"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "big5hkscs"

    aput-object v16, v14, v15

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/16 v10, 0x13

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "EUC_JP"

    const-string v13, "EUC-JP"

    const/4 v14, 0x6

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "csEUCPkdFmtJapanese"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-string v16, "Extended_UNIX_Code_Packed_Format_for_Japanese"

    aput-object v16, v14, v15

    const/4 v15, 0x2

    const-string v16, "eucjis"

    aput-object v16, v14, v15

    const/4 v15, 0x3

    const-string v16, "x-eucjp"

    aput-object v16, v14, v15

    const/4 v15, 0x4

    const-string v16, "eucjp"

    aput-object v16, v14, v15

    const/4 v15, 0x5

    const-string v16, "x-euc-jp"

    aput-object v16, v14, v15

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/16 v10, 0x14

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "EUC_KR"

    const-string v13, "EUC-KR"

    const/16 v14, 0x8

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "csEUCKR"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-string v16, "ksc5601"

    aput-object v16, v14, v15

    const/4 v15, 0x2

    const-string v16, "5601"

    aput-object v16, v14, v15

    const/4 v15, 0x3

    const-string v16, "ksc5601_1987"

    aput-object v16, v14, v15

    const/4 v15, 0x4

    const-string v16, "ksc_5601"

    aput-object v16, v14, v15

    const/4 v15, 0x5

    const-string v16, "ksc5601-1987"

    aput-object v16, v14, v15

    const/4 v15, 0x6

    const-string v16, "ks_c_5601-1987"

    aput-object v16, v14, v15

    const/4 v15, 0x7

    const-string v16, "euckr"

    aput-object v16, v14, v15

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/16 v10, 0x15

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "GB18030"

    const-string v13, "GB18030"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "gb18030-2000"

    aput-object v16, v14, v15

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/16 v10, 0x16

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "EUC_CN"

    const-string v13, "GB2312"

    const/16 v14, 0x8

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "x-EUC-CN"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-string v16, "csGB2312"

    aput-object v16, v14, v15

    const/4 v15, 0x2

    const-string v16, "euccn"

    aput-object v16, v14, v15

    const/4 v15, 0x3

    const-string v16, "euc-cn"

    aput-object v16, v14, v15

    const/4 v15, 0x4

    const-string v16, "gb2312-80"

    aput-object v16, v14, v15

    const/4 v15, 0x5

    const-string v16, "gb2312-1980"

    aput-object v16, v14, v15

    const/4 v15, 0x6

    const-string v16, "CN-GB"

    aput-object v16, v14, v15

    const/4 v15, 0x7

    const-string v16, "CN-GB-ISOIR165"

    aput-object v16, v14, v15

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/16 v10, 0x17

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "GBK"

    const-string v13, "windows-936"

    const/4 v14, 0x4

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "CP936"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-string v16, "MS936"

    aput-object v16, v14, v15

    const/4 v15, 0x2

    const-string v16, "ms_936"

    aput-object v16, v14, v15

    const/4 v15, 0x3

    const-string v16, "x-mswin-936"

    aput-object v16, v14, v15

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/16 v10, 0x18

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "Cp037"

    const-string v13, "IBM037"

    const/4 v14, 0x5

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "ebcdic-cp-us"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-string v16, "ebcdic-cp-ca"

    aput-object v16, v14, v15

    const/4 v15, 0x2

    const-string v16, "ebcdic-cp-wt"

    aput-object v16, v14, v15

    const/4 v15, 0x3

    const-string v16, "ebcdic-cp-nl"

    aput-object v16, v14, v15

    const/4 v15, 0x4

    const-string v16, "csIBM037"

    aput-object v16, v14, v15

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/16 v10, 0x19

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "Cp273"

    const-string v13, "IBM273"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "csIBM273"

    aput-object v16, v14, v15

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/16 v10, 0x1a

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "Cp277"

    const-string v13, "IBM277"

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "EBCDIC-CP-DK"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-string v16, "EBCDIC-CP-NO"

    aput-object v16, v14, v15

    const/4 v15, 0x2

    const-string v16, "csIBM277"

    aput-object v16, v14, v15

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/16 v10, 0x1b

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "Cp278"

    const-string v13, "IBM278"

    const/4 v14, 0x4

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "CP278"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-string v16, "ebcdic-cp-fi"

    aput-object v16, v14, v15

    const/4 v15, 0x2

    const-string v16, "ebcdic-cp-se"

    aput-object v16, v14, v15

    const/4 v15, 0x3

    const-string v16, "csIBM278"

    aput-object v16, v14, v15

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/16 v10, 0x1c

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "Cp280"

    const-string v13, "IBM280"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "ebcdic-cp-it"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-string v16, "csIBM280"

    aput-object v16, v14, v15

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/16 v10, 0x1d

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "Cp284"

    const-string v13, "IBM284"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "ebcdic-cp-es"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-string v16, "csIBM284"

    aput-object v16, v14, v15

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/16 v10, 0x1e

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "Cp285"

    const-string v13, "IBM285"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "ebcdic-cp-gb"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-string v16, "csIBM285"

    aput-object v16, v14, v15

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/16 v10, 0x1f

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "Cp297"

    const-string v13, "IBM297"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "ebcdic-cp-fr"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-string v16, "csIBM297"

    aput-object v16, v14, v15

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/16 v10, 0x20

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "Cp420"

    const-string v13, "IBM420"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "ebcdic-cp-ar1"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-string v16, "csIBM420"

    aput-object v16, v14, v15

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/16 v10, 0x21

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "Cp424"

    const-string v13, "IBM424"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "ebcdic-cp-he"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-string v16, "csIBM424"

    aput-object v16, v14, v15

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/16 v10, 0x22

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "Cp437"

    const-string v13, "IBM437"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "437"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-string v16, "csPC8CodePage437"

    aput-object v16, v14, v15

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/16 v10, 0x23

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "Cp500"

    const-string v13, "IBM500"

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "ebcdic-cp-be"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-string v16, "ebcdic-cp-ch"

    aput-object v16, v14, v15

    const/4 v15, 0x2

    const-string v16, "csIBM500"

    aput-object v16, v14, v15

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/16 v10, 0x24

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "Cp775"

    const-string v13, "IBM775"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "csPC775Baltic"

    aput-object v16, v14, v15

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/16 v10, 0x25

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "Cp838"

    const-string v13, "IBM-Thai"

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/16 v10, 0x26

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "Cp850"

    const-string v13, "IBM850"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "850"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-string v16, "csPC850Multilingual"

    aput-object v16, v14, v15

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/16 v10, 0x27

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "Cp852"

    const-string v13, "IBM852"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "852"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-string v16, "csPCp852"

    aput-object v16, v14, v15

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/16 v10, 0x28

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "Cp855"

    const-string v13, "IBM855"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "855"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-string v16, "csIBM855"

    aput-object v16, v14, v15

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/16 v10, 0x29

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "Cp857"

    const-string v13, "IBM857"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "857"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-string v16, "csIBM857"

    aput-object v16, v14, v15

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/16 v10, 0x2a

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "Cp858"

    const-string v13, "IBM00858"

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "CCSID00858"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-string v16, "CP00858"

    aput-object v16, v14, v15

    const/4 v15, 0x2

    const-string v16, "PC-Multilingual-850+euro"

    aput-object v16, v14, v15

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/16 v10, 0x2b

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "Cp860"

    const-string v13, "IBM860"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "860"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-string v16, "csIBM860"

    aput-object v16, v14, v15

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/16 v10, 0x2c

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "Cp861"

    const-string v13, "IBM861"

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "861"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-string v16, "cp-is"

    aput-object v16, v14, v15

    const/4 v15, 0x2

    const-string v16, "csIBM861"

    aput-object v16, v14, v15

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/16 v10, 0x2d

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "Cp862"

    const-string v13, "IBM862"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "862"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-string v16, "csPC862LatinHebrew"

    aput-object v16, v14, v15

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/16 v10, 0x2e

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "Cp863"

    const-string v13, "IBM863"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "863"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-string v16, "csIBM863"

    aput-object v16, v14, v15

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/16 v10, 0x2f

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "Cp864"

    const-string v13, "IBM864"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "cp864"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-string v16, "csIBM864"

    aput-object v16, v14, v15

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/16 v10, 0x30

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "Cp865"

    const-string v13, "IBM865"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "865"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-string v16, "csIBM865"

    aput-object v16, v14, v15

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/16 v10, 0x31

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "Cp866"

    const-string v13, "IBM866"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "866"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-string v16, "csIBM866"

    aput-object v16, v14, v15

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/16 v10, 0x32

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "Cp868"

    const-string v13, "IBM868"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "cp-ar"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-string v16, "csIBM868"

    aput-object v16, v14, v15

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/16 v10, 0x33

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "Cp869"

    const-string v13, "IBM869"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "cp-gr"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-string v16, "csIBM869"

    aput-object v16, v14, v15

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/16 v10, 0x34

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "Cp870"

    const-string v13, "IBM870"

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "ebcdic-cp-roece"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-string v16, "ebcdic-cp-yu"

    aput-object v16, v14, v15

    const/4 v15, 0x2

    const-string v16, "csIBM870"

    aput-object v16, v14, v15

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/16 v10, 0x35

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "Cp871"

    const-string v13, "IBM871"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "ebcdic-cp-is"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-string v16, "csIBM871"

    aput-object v16, v14, v15

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/16 v10, 0x36

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "Cp918"

    const-string v13, "IBM918"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "ebcdic-cp-ar2"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-string v16, "csIBM918"

    aput-object v16, v14, v15

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/16 v10, 0x37

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "Cp1026"

    const-string v13, "IBM1026"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "csIBM1026"

    aput-object v16, v14, v15

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/16 v10, 0x38

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "Cp1047"

    const-string v13, "IBM1047"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "IBM-1047"

    aput-object v16, v14, v15

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/16 v10, 0x39

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "Cp1140"

    const-string v13, "IBM01140"

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "CCSID01140"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-string v16, "CP01140"

    aput-object v16, v14, v15

    const/4 v15, 0x2

    const-string v16, "ebcdic-us-37+euro"

    aput-object v16, v14, v15

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/16 v10, 0x3a

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "Cp1141"

    const-string v13, "IBM01141"

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "CCSID01141"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-string v16, "CP01141"

    aput-object v16, v14, v15

    const/4 v15, 0x2

    const-string v16, "ebcdic-de-273+euro"

    aput-object v16, v14, v15

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/16 v10, 0x3b

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "Cp1142"

    const-string v13, "IBM01142"

    const/4 v14, 0x4

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "CCSID01142"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-string v16, "CP01142"

    aput-object v16, v14, v15

    const/4 v15, 0x2

    const-string v16, "ebcdic-dk-277+euro"

    aput-object v16, v14, v15

    const/4 v15, 0x3

    const-string v16, "ebcdic-no-277+euro"

    aput-object v16, v14, v15

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/16 v10, 0x3c

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "Cp1143"

    const-string v13, "IBM01143"

    const/4 v14, 0x4

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "CCSID01143"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-string v16, "CP01143"

    aput-object v16, v14, v15

    const/4 v15, 0x2

    const-string v16, "ebcdic-fi-278+euro"

    aput-object v16, v14, v15

    const/4 v15, 0x3

    const-string v16, "ebcdic-se-278+euro"

    aput-object v16, v14, v15

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/16 v10, 0x3d

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "Cp1144"

    const-string v13, "IBM01144"

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "CCSID01144"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-string v16, "CP01144"

    aput-object v16, v14, v15

    const/4 v15, 0x2

    const-string v16, "ebcdic-it-280+euro"

    aput-object v16, v14, v15

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/16 v10, 0x3e

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "Cp1145"

    const-string v13, "IBM01145"

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "CCSID01145"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-string v16, "CP01145"

    aput-object v16, v14, v15

    const/4 v15, 0x2

    const-string v16, "ebcdic-es-284+euro"

    aput-object v16, v14, v15

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/16 v10, 0x3f

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "Cp1146"

    const-string v13, "IBM01146"

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "CCSID01146"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-string v16, "CP01146"

    aput-object v16, v14, v15

    const/4 v15, 0x2

    const-string v16, "ebcdic-gb-285+euro"

    aput-object v16, v14, v15

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/16 v10, 0x40

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "Cp1147"

    const-string v13, "IBM01147"

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "CCSID01147"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-string v16, "CP01147"

    aput-object v16, v14, v15

    const/4 v15, 0x2

    const-string v16, "ebcdic-fr-297+euro"

    aput-object v16, v14, v15

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/16 v10, 0x41

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "Cp1148"

    const-string v13, "IBM01148"

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "CCSID01148"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-string v16, "CP01148"

    aput-object v16, v14, v15

    const/4 v15, 0x2

    const-string v16, "ebcdic-international-500+euro"

    aput-object v16, v14, v15

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/16 v10, 0x42

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "Cp1149"

    const-string v13, "IBM01149"

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "CCSID01149"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-string v16, "CP01149"

    aput-object v16, v14, v15

    const/4 v15, 0x2

    const-string v16, "ebcdic-is-871+euro"

    aput-object v16, v14, v15

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/16 v10, 0x43

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "Cp1250"

    const-string v13, "windows-1250"

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/16 v10, 0x44

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "Cp1251"

    const-string v13, "windows-1251"

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/16 v10, 0x45

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "Cp1252"

    const-string v13, "windows-1252"

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/16 v10, 0x46

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "Cp1253"

    const-string v13, "windows-1253"

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/16 v10, 0x47

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "Cp1254"

    const-string v13, "windows-1254"

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/16 v10, 0x48

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "Cp1255"

    const-string v13, "windows-1255"

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/16 v10, 0x49

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "Cp1256"

    const-string v13, "windows-1256"

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/16 v10, 0x4a

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "Cp1257"

    const-string v13, "windows-1257"

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/16 v10, 0x4b

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "Cp1258"

    const-string v13, "windows-1258"

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/16 v10, 0x4c

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "ISO2022CN"

    const-string v13, "ISO-2022-CN"

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/16 v10, 0x4d

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "ISO2022JP"

    const-string v13, "ISO-2022-JP"

    const/4 v14, 0x4

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "csISO2022JP"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-string v16, "JIS"

    aput-object v16, v14, v15

    const/4 v15, 0x2

    const-string v16, "jis_encoding"

    aput-object v16, v14, v15

    const/4 v15, 0x3

    const-string v16, "csjisencoding"

    aput-object v16, v14, v15

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/16 v10, 0x4e

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "ISO2022KR"

    const-string v13, "ISO-2022-KR"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "csISO2022KR"

    aput-object v16, v14, v15

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/16 v10, 0x4f

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "JIS_X0201"

    const-string v13, "JIS_X0201"

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "X0201"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-string v16, "JIS0201"

    aput-object v16, v14, v15

    const/4 v15, 0x2

    const-string v16, "csHalfWidthKatakana"

    aput-object v16, v14, v15

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/16 v10, 0x50

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "JIS_X0212-1990"

    const-string v13, "JIS_X0212-1990"

    const/4 v14, 0x4

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "iso-ir-159"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-string v16, "x0212"

    aput-object v16, v14, v15

    const/4 v15, 0x2

    const-string v16, "JIS0212"

    aput-object v16, v14, v15

    const/4 v15, 0x3

    const-string v16, "csISO159JISX02121990"

    aput-object v16, v14, v15

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/16 v10, 0x51

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "JIS_C6626-1983"

    const-string v13, "JIS_C6626-1983"

    const/4 v14, 0x6

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "x-JIS0208"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-string v16, "JIS0208"

    aput-object v16, v14, v15

    const/4 v15, 0x2

    const-string v16, "csISO87JISX0208"

    aput-object v16, v14, v15

    const/4 v15, 0x3

    const-string v16, "x0208"

    aput-object v16, v14, v15

    const/4 v15, 0x4

    const-string v16, "JIS_X0208-1983"

    aput-object v16, v14, v15

    const/4 v15, 0x5

    const-string v16, "iso-ir-87"

    aput-object v16, v14, v15

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/16 v10, 0x52

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "SJIS"

    const-string v13, "Shift_JIS"

    const/4 v14, 0x5

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "MS_Kanji"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-string v16, "csShiftJIS"

    aput-object v16, v14, v15

    const/4 v15, 0x2

    const-string v16, "shift-jis"

    aput-object v16, v14, v15

    const/4 v15, 0x3

    const-string v16, "x-sjis"

    aput-object v16, v14, v15

    const/4 v15, 0x4

    const-string v16, "pck"

    aput-object v16, v14, v15

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/16 v10, 0x53

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "TIS620"

    const-string v13, "TIS-620"

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/16 v10, 0x54

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "MS932"

    const-string v13, "Windows-31J"

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "windows-932"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-string v16, "csWindows31J"

    aput-object v16, v14, v15

    const/4 v15, 0x2

    const-string v16, "x-ms-cp932"

    aput-object v16, v14, v15

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/16 v10, 0x55

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "EUC_TW"

    const-string v13, "EUC-TW"

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "x-EUC-TW"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-string v16, "cns11643"

    aput-object v16, v14, v15

    const/4 v15, 0x2

    const-string v16, "euctw"

    aput-object v16, v14, v15

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/16 v10, 0x56

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "x-Johab"

    const-string v13, "johab"

    const/4 v14, 0x5

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "johab"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-string v16, "cp1361"

    aput-object v16, v14, v15

    const/4 v15, 0x2

    const-string v16, "ms1361"

    aput-object v16, v14, v15

    const/4 v15, 0x3

    const-string v16, "ksc5601-1992"

    aput-object v16, v14, v15

    const/4 v15, 0x4

    const-string v16, "ksc5601_1992"

    aput-object v16, v14, v15

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/16 v10, 0x57

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "MS950_HKSCS"

    const-string v13, ""

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/16 v10, 0x58

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "MS874"

    const-string v13, "windows-874"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "cp874"

    aput-object v16, v14, v15

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/16 v10, 0x59

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "MS949"

    const-string v13, "windows-949"

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "windows949"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-string v16, "ms_949"

    aput-object v16, v14, v15

    const/4 v15, 0x2

    const-string v16, "x-windows-949"

    aput-object v16, v14, v15

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/16 v10, 0x5a

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "MS950"

    const-string v13, "windows-950"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "x-windows-950"

    aput-object v16, v14, v15

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/16 v10, 0x5b

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "Cp737"

    const/4 v13, 0x0

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/16 v10, 0x5c

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "Cp856"

    const/4 v13, 0x0

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/16 v10, 0x5d

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "Cp875"

    const/4 v13, 0x0

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/16 v10, 0x5e

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "Cp921"

    const/4 v13, 0x0

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/16 v10, 0x5f

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "Cp922"

    const/4 v13, 0x0

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/16 v10, 0x60

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "Cp930"

    const/4 v13, 0x0

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/16 v10, 0x61

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "Cp933"

    const/4 v13, 0x0

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/16 v10, 0x62

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "Cp935"

    const/4 v13, 0x0

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/16 v10, 0x63

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "Cp937"

    const/4 v13, 0x0

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/16 v10, 0x64

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "Cp939"

    const/4 v13, 0x0

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/16 v10, 0x65

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "Cp942"

    const/4 v13, 0x0

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/16 v10, 0x66

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "Cp942C"

    const/4 v13, 0x0

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/16 v10, 0x67

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "Cp943"

    const/4 v13, 0x0

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/16 v10, 0x68

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "Cp943C"

    const/4 v13, 0x0

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/16 v10, 0x69

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "Cp948"

    const/4 v13, 0x0

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/16 v10, 0x6a

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "Cp949"

    const/4 v13, 0x0

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/16 v10, 0x6b

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "Cp949C"

    const/4 v13, 0x0

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/16 v10, 0x6c

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "Cp950"

    const/4 v13, 0x0

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/16 v10, 0x6d

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "Cp964"

    const/4 v13, 0x0

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/16 v10, 0x6e

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "Cp970"

    const/4 v13, 0x0

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/16 v10, 0x6f

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "Cp1006"

    const/4 v13, 0x0

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/16 v10, 0x70

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "Cp1025"

    const/4 v13, 0x0

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/16 v10, 0x71

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "Cp1046"

    const/4 v13, 0x0

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/16 v10, 0x72

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "Cp1097"

    const/4 v13, 0x0

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/16 v10, 0x73

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "Cp1098"

    const/4 v13, 0x0

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/16 v10, 0x74

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "Cp1112"

    const/4 v13, 0x0

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/16 v10, 0x75

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "Cp1122"

    const/4 v13, 0x0

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/16 v10, 0x76

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "Cp1123"

    const/4 v13, 0x0

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/16 v10, 0x77

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "Cp1124"

    const/4 v13, 0x0

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/16 v10, 0x78

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "Cp1381"

    const/4 v13, 0x0

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/16 v10, 0x79

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "Cp1383"

    const/4 v13, 0x0

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/16 v10, 0x7a

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "Cp33722"

    const/4 v13, 0x0

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/16 v10, 0x7b

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "Big5_Solaris"

    const/4 v13, 0x0

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/16 v10, 0x7c

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "EUC_JP_LINUX"

    const/4 v13, 0x0

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/16 v10, 0x7d

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "EUC_JP_Solaris"

    const/4 v13, 0x0

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/16 v10, 0x7e

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "ISCII91"

    const/4 v13, 0x0

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "x-ISCII91"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-string v16, "iscii"

    aput-object v16, v14, v15

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/16 v10, 0x7f

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "ISO2022_CN_CNS"

    const/4 v13, 0x0

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/16 v10, 0x80

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "ISO2022_CN_GB"

    const/4 v13, 0x0

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/16 v10, 0x81

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "x-iso-8859-11"

    const/4 v13, 0x0

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/16 v10, 0x82

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "JISAutoDetect"

    const/4 v13, 0x0

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/16 v10, 0x83

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "MacArabic"

    const/4 v13, 0x0

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/16 v10, 0x84

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "MacCentralEurope"

    const/4 v13, 0x0

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/16 v10, 0x85

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "MacCroatian"

    const/4 v13, 0x0

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/16 v10, 0x86

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "MacCyrillic"

    const/4 v13, 0x0

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/16 v10, 0x87

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "MacDingbat"

    const/4 v13, 0x0

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/16 v10, 0x88

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "MacGreek"

    const-string v13, "MacGreek"

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/16 v10, 0x89

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "MacHebrew"

    const/4 v13, 0x0

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/16 v10, 0x8a

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "MacIceland"

    const/4 v13, 0x0

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/16 v10, 0x8b

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "MacRoman"

    const-string v13, "MacRoman"

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "Macintosh"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-string v16, "MAC"

    aput-object v16, v14, v15

    const/4 v15, 0x2

    const-string v16, "csMacintosh"

    aput-object v16, v14, v15

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/16 v10, 0x8c

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "MacRomania"

    const/4 v13, 0x0

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/16 v10, 0x8d

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "MacSymbol"

    const/4 v13, 0x0

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/16 v10, 0x8e

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "MacThai"

    const/4 v13, 0x0

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/16 v10, 0x8f

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "MacTurkish"

    const/4 v13, 0x0

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/16 v10, 0x90

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "MacUkraine"

    const/4 v13, 0x0

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/16 v10, 0x91

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "UnicodeBig"

    const/4 v13, 0x0

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    const/16 v10, 0x92

    new-instance v11, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v12, "UnicodeLittle"

    const/4 v13, 0x0

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v11, v9, v10

    sput-object v9, Lorg/apache/james/mime4j/util/CharsetUtil;->JAVA_CHARSETS:[Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    .line 1002
    const/4 v9, 0x0

    sput-object v9, Lorg/apache/james/mime4j/util/CharsetUtil;->decodingSupported:Ljava/util/SortedSet;

    .line 1008
    const/4 v9, 0x0

    sput-object v9, Lorg/apache/james/mime4j/util/CharsetUtil;->encodingSupported:Ljava/util/SortedSet;

    .line 1014
    const/4 v9, 0x0

    sput-object v9, Lorg/apache/james/mime4j/util/CharsetUtil;->charsetMap:Ljava/util/Map;

    .line 1017
    new-instance v9, Ljava/util/TreeSet;

    invoke-direct {v9}, Ljava/util/TreeSet;-><init>()V

    sput-object v9, Lorg/apache/james/mime4j/util/CharsetUtil;->decodingSupported:Ljava/util/SortedSet;

    .line 1018
    new-instance v9, Ljava/util/TreeSet;

    invoke-direct {v9}, Ljava/util/TreeSet;-><init>()V

    sput-object v9, Lorg/apache/james/mime4j/util/CharsetUtil;->encodingSupported:Ljava/util/SortedSet;

    .line 1019
    const/4 v9, 0x5

    new-array v3, v9, [B

    fill-array-data v3, :array_0

    .line 1020
    .local v3, "dummy":[B
    sget-object v0, Lorg/apache/james/mime4j/util/CharsetUtil;->JAVA_CHARSETS:[Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    .local v0, "arr$":[Lorg/apache/james/mime4j/util/CharsetUtil$Charset;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v6, :cond_0

    aget-object v2, v0, v4

    .line 1022
    .local v2, "c":Lorg/apache/james/mime4j/util/CharsetUtil$Charset;
    :try_start_0
    new-instance v9, Ljava/lang/String;

    # getter for: Lorg/apache/james/mime4j/util/CharsetUtil$Charset;->canonical:Ljava/lang/String;
    invoke-static {v2}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;->access$100(Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v3, v10}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 1023
    sget-object v9, Lorg/apache/james/mime4j/util/CharsetUtil;->decodingSupported:Ljava/util/SortedSet;

    # getter for: Lorg/apache/james/mime4j/util/CharsetUtil$Charset;->canonical:Ljava/lang/String;
    invoke-static {v2}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;->access$100(Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1028
    :goto_1
    :try_start_1
    const-string v9, "dummy"

    # getter for: Lorg/apache/james/mime4j/util/CharsetUtil$Charset;->canonical:Ljava/lang/String;
    invoke-static {v2}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;->access$100(Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 1029
    sget-object v9, Lorg/apache/james/mime4j/util/CharsetUtil;->encodingSupported:Ljava/util/SortedSet;

    # getter for: Lorg/apache/james/mime4j/util/CharsetUtil$Charset;->canonical:Ljava/lang/String;
    invoke-static {v2}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;->access$100(Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1020
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1035
    .end local v2    # "c":Lorg/apache/james/mime4j/util/CharsetUtil$Charset;
    :cond_0
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    sput-object v9, Lorg/apache/james/mime4j/util/CharsetUtil;->charsetMap:Ljava/util/Map;

    .line 1036
    sget-object v0, Lorg/apache/james/mime4j/util/CharsetUtil;->JAVA_CHARSETS:[Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    array-length v6, v0

    const/4 v4, 0x0

    move v5, v4

    .end local v0    # "arr$":[Lorg/apache/james/mime4j/util/CharsetUtil$Charset;
    .end local v4    # "i$":I
    .end local v6    # "len$":I
    .local v5, "i$":I
    :goto_3
    if-ge v5, v6, :cond_3

    aget-object v2, v0, v5

    .line 1037
    .restart local v2    # "c":Lorg/apache/james/mime4j/util/CharsetUtil$Charset;
    sget-object v9, Lorg/apache/james/mime4j/util/CharsetUtil;->charsetMap:Ljava/util/Map;

    # getter for: Lorg/apache/james/mime4j/util/CharsetUtil$Charset;->canonical:Ljava/lang/String;
    invoke-static {v2}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;->access$100(Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1038
    # getter for: Lorg/apache/james/mime4j/util/CharsetUtil$Charset;->mime:Ljava/lang/String;
    invoke-static {v2}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;->access$200(Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 1039
    sget-object v9, Lorg/apache/james/mime4j/util/CharsetUtil;->charsetMap:Ljava/util/Map;

    # getter for: Lorg/apache/james/mime4j/util/CharsetUtil$Charset;->mime:Ljava/lang/String;
    invoke-static {v2}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;->access$200(Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1041
    :cond_1
    # getter for: Lorg/apache/james/mime4j/util/CharsetUtil$Charset;->aliases:[Ljava/lang/String;
    invoke-static {v2}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;->access$300(Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)[Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 1042
    # getter for: Lorg/apache/james/mime4j/util/CharsetUtil$Charset;->aliases:[Ljava/lang/String;
    invoke-static {v2}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;->access$300(Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)[Ljava/lang/String;

    move-result-object v1

    .local v1, "arr$":[Ljava/lang/String;
    array-length v7, v1

    .local v7, "len$":I
    const/4 v4, 0x0

    .end local v5    # "i$":I
    .restart local v4    # "i$":I
    :goto_4
    if-ge v4, v7, :cond_2

    aget-object v8, v1, v4

    .line 1043
    .local v8, "str":Ljava/lang/String;
    sget-object v9, Lorg/apache/james/mime4j/util/CharsetUtil;->charsetMap:Ljava/util/Map;

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1042
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 1036
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v7    # "len$":I
    .end local v8    # "str":Ljava/lang/String;
    :cond_2
    add-int/lit8 v4, v5, 0x1

    .restart local v4    # "i$":I
    move v5, v4

    .end local v4    # "i$":I
    .restart local v5    # "i$":I
    goto :goto_3

    .line 1048
    .end local v2    # "c":Lorg/apache/james/mime4j/util/CharsetUtil$Charset;
    :cond_3
    sget-object v9, Lorg/apache/james/mime4j/util/CharsetUtil;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v9}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1049
    sget-object v9, Lorg/apache/james/mime4j/util/CharsetUtil;->log:Lorg/apache/commons/logging/Log;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Character sets which support decoding: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lorg/apache/james/mime4j/util/CharsetUtil;->decodingSupported:Ljava/util/SortedSet;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 1051
    sget-object v9, Lorg/apache/james/mime4j/util/CharsetUtil;->log:Lorg/apache/commons/logging/Log;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Character sets which support encoding: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lorg/apache/james/mime4j/util/CharsetUtil;->encodingSupported:Ljava/util/SortedSet;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 1071
    :cond_4
    const-string v9, "US-ASCII"

    invoke-static {v9}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v9

    sput-object v9, Lorg/apache/james/mime4j/util/CharsetUtil;->US_ASCII:Ljava/nio/charset/Charset;

    .line 1074
    const-string v9, "ISO-8859-1"

    invoke-static {v9}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v9

    sput-object v9, Lorg/apache/james/mime4j/util/CharsetUtil;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 1077
    const-string v9, "UTF-8"

    invoke-static {v9}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v9

    sput-object v9, Lorg/apache/james/mime4j/util/CharsetUtil;->UTF_8:Ljava/nio/charset/Charset;

    .line 1080
    sget-object v9, Lorg/apache/james/mime4j/util/CharsetUtil;->US_ASCII:Ljava/nio/charset/Charset;

    sput-object v9, Lorg/apache/james/mime4j/util/CharsetUtil;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    return-void

    .line 1031
    .end local v5    # "i$":I
    .restart local v0    # "arr$":[Lorg/apache/james/mime4j/util/CharsetUtil$Charset;
    .restart local v2    # "c":Lorg/apache/james/mime4j/util/CharsetUtil$Charset;
    .restart local v4    # "i$":I
    .restart local v6    # "len$":I
    :catch_0
    move-exception v9

    goto/16 :goto_2

    .line 1030
    :catch_1
    move-exception v9

    goto/16 :goto_2

    .line 1025
    :catch_2
    move-exception v9

    goto/16 :goto_1

    .line 1024
    :catch_3
    move-exception v9

    goto/16 :goto_1

    .line 1019
    nop

    :array_0
    .array-data 1
        0x64t
        0x75t
        0x6dt
        0x6dt
        0x79t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 790
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 793
    return-void
.end method

.method public static getCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;
    .locals 6
    .param p0, "charsetName"    # Ljava/lang/String;

    .prologue
    .line 1217
    const-string v0, "ISO-8859-1"

    .line 1220
    .local v0, "defaultCharset":Ljava/lang/String;
    if-nez p0, :cond_0

    move-object p0, v0

    .line 1223
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
    :try_end_0
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 1231
    :goto_0
    return-object v3

    .line 1224
    :catch_0
    move-exception v1

    .line 1225
    .local v1, "e":Ljava/nio/charset/IllegalCharsetNameException;
    sget-object v3, Lorg/apache/james/mime4j/util/CharsetUtil;->log:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Illegal charset "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", fallback to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 1227
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    goto :goto_0

    .line 1228
    .end local v1    # "e":Ljava/nio/charset/IllegalCharsetNameException;
    :catch_1
    move-exception v2

    .line 1229
    .local v2, "ex":Ljava/nio/charset/UnsupportedCharsetException;
    sget-object v3, Lorg/apache/james/mime4j/util/CharsetUtil;->log:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported charset "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", fallback to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 1231
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    goto :goto_0
.end method

.method public static isASCII(C)Z
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 1092
    const v0, 0xff80

    and-int/2addr v0, p0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isASCII(Ljava/lang/String;)Z
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 1105
    if-nez p0, :cond_0

    .line 1106
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "String may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1108
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 1109
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 1110
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lorg/apache/james/mime4j/util/CharsetUtil;->isASCII(C)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1111
    const/4 v2, 0x0

    .line 1114
    :goto_1
    return v2

    .line 1109
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1114
    :cond_2
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public static isDecodingSupported(Ljava/lang/String;)Z
    .locals 2
    .param p0, "charsetName"    # Ljava/lang/String;

    .prologue
    .line 1179
    sget-object v0, Lorg/apache/james/mime4j/util/CharsetUtil;->decodingSupported:Ljava/util/SortedSet;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/SortedSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isEncodingSupported(Ljava/lang/String;)Z
    .locals 2
    .param p0, "charsetName"    # Ljava/lang/String;

    .prologue
    .line 1164
    sget-object v0, Lorg/apache/james/mime4j/util/CharsetUtil;->encodingSupported:Ljava/util/SortedSet;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/SortedSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isWhitespace(C)Z
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 1127
    const/16 v0, 0x20

    if-eq p0, v0, :cond_0

    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    const/16 v0, 0xd

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isWhitespace(Ljava/lang/String;)Z
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 1140
    if-nez p0, :cond_0

    .line 1141
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "String may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1143
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 1144
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 1145
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lorg/apache/james/mime4j/util/CharsetUtil;->isWhitespace(C)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1146
    const/4 v2, 0x0

    .line 1149
    :goto_1
    return v2

    .line 1144
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1149
    :cond_2
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public static toJavaCharset(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "charsetName"    # Ljava/lang/String;

    .prologue
    .line 1209
    sget-object v1, Lorg/apache/james/mime4j/util/CharsetUtil;->charsetMap:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    .line 1210
    .local v0, "c":Lorg/apache/james/mime4j/util/CharsetUtil$Charset;
    if-eqz v0, :cond_0

    .line 1211
    # getter for: Lorg/apache/james/mime4j/util/CharsetUtil$Charset;->canonical:Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;->access$100(Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)Ljava/lang/String;

    move-result-object v1

    .line 1213
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static toMimeCharset(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "charsetName"    # Ljava/lang/String;

    .prologue
    .line 1190
    sget-object v1, Lorg/apache/james/mime4j/util/CharsetUtil;->charsetMap:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    .line 1191
    .local v0, "c":Lorg/apache/james/mime4j/util/CharsetUtil$Charset;
    if-eqz v0, :cond_0

    .line 1192
    # getter for: Lorg/apache/james/mime4j/util/CharsetUtil$Charset;->mime:Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;->access$200(Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)Ljava/lang/String;

    move-result-object v1

    .line 1194
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
