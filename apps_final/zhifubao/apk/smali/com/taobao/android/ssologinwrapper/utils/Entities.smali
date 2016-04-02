.class public Lcom/taobao/android/ssologinwrapper/utils/Entities;
.super Ljava/lang/Object;


# static fields
.field public static final HTML32:Lcom/taobao/android/ssologinwrapper/utils/Entities;

.field public static final HTML40:Lcom/taobao/android/ssologinwrapper/utils/Entities;

.field public static final XML:Lcom/taobao/android/ssologinwrapper/utils/Entities;

.field private static final a:[[Ljava/lang/String;

.field private static final b:[[Ljava/lang/String;

.field private static final c:[[Ljava/lang/String;

.field private static final d:[[Ljava/lang/String;


# instance fields
.field private e:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/taobao/android/ssologinwrapper/utils/IntHashMap;

.field private g:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-array v0, v8, [[Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "quot"

    aput-object v2, v1, v4

    const-string/jumbo v2, "34"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "amp"

    aput-object v2, v1, v4

    const-string/jumbo v2, "38"

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "lt"

    aput-object v2, v1, v4

    const-string/jumbo v2, "60"

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "gt"

    aput-object v2, v1, v4

    const-string/jumbo v2, "62"

    aput-object v2, v1, v5

    aput-object v1, v0, v7

    sput-object v0, Lcom/taobao/android/ssologinwrapper/utils/Entities;->a:[[Ljava/lang/String;

    new-array v0, v5, [[Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "apos"

    aput-object v2, v1, v4

    const-string/jumbo v2, "39"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    sput-object v0, Lcom/taobao/android/ssologinwrapper/utils/Entities;->b:[[Ljava/lang/String;

    const/16 v0, 0x60

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "nbsp"

    aput-object v2, v1, v4

    const-string/jumbo v2, "160"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "iexcl"

    aput-object v2, v1, v4

    const-string/jumbo v2, "161"

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "cent"

    aput-object v2, v1, v4

    const-string/jumbo v2, "162"

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "pound"

    aput-object v2, v1, v4

    const-string/jumbo v2, "163"

    aput-object v2, v1, v5

    aput-object v1, v0, v7

    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "curren"

    aput-object v2, v1, v4

    const-string/jumbo v2, "164"

    aput-object v2, v1, v5

    aput-object v1, v0, v8

    const/4 v1, 0x5

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "yen"

    aput-object v3, v2, v4

    const-string/jumbo v3, "165"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "brvbar"

    aput-object v3, v2, v4

    const-string/jumbo v3, "166"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "sect"

    aput-object v3, v2, v4

    const-string/jumbo v3, "167"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "uml"

    aput-object v3, v2, v4

    const-string/jumbo v3, "168"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "copy"

    aput-object v3, v2, v4

    const-string/jumbo v3, "169"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "ordf"

    aput-object v3, v2, v4

    const-string/jumbo v3, "170"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "laquo"

    aput-object v3, v2, v4

    const-string/jumbo v3, "171"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "not"

    aput-object v3, v2, v4

    const-string/jumbo v3, "172"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "shy"

    aput-object v3, v2, v4

    const-string/jumbo v3, "173"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "reg"

    aput-object v3, v2, v4

    const-string/jumbo v3, "174"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "macr"

    aput-object v3, v2, v4

    const-string/jumbo v3, "175"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "deg"

    aput-object v3, v2, v4

    const-string/jumbo v3, "176"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "plusmn"

    aput-object v3, v2, v4

    const-string/jumbo v3, "177"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "sup2"

    aput-object v3, v2, v4

    const-string/jumbo v3, "178"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "sup3"

    aput-object v3, v2, v4

    const-string/jumbo v3, "179"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "acute"

    aput-object v3, v2, v4

    const-string/jumbo v3, "180"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "micro"

    aput-object v3, v2, v4

    const-string/jumbo v3, "181"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "para"

    aput-object v3, v2, v4

    const-string/jumbo v3, "182"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "middot"

    aput-object v3, v2, v4

    const-string/jumbo v3, "183"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "cedil"

    aput-object v3, v2, v4

    const-string/jumbo v3, "184"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "sup1"

    aput-object v3, v2, v4

    const-string/jumbo v3, "185"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "ordm"

    aput-object v3, v2, v4

    const-string/jumbo v3, "186"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "raquo"

    aput-object v3, v2, v4

    const-string/jumbo v3, "187"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "frac14"

    aput-object v3, v2, v4

    const-string/jumbo v3, "188"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "frac12"

    aput-object v3, v2, v4

    const-string/jumbo v3, "189"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "frac34"

    aput-object v3, v2, v4

    const-string/jumbo v3, "190"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "iquest"

    aput-object v3, v2, v4

    const-string/jumbo v3, "191"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "Agrave"

    aput-object v3, v2, v4

    const-string/jumbo v3, "192"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "Aacute"

    aput-object v3, v2, v4

    const-string/jumbo v3, "193"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "Acirc"

    aput-object v3, v2, v4

    const-string/jumbo v3, "194"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "Atilde"

    aput-object v3, v2, v4

    const-string/jumbo v3, "195"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "Auml"

    aput-object v3, v2, v4

    const-string/jumbo v3, "196"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "Aring"

    aput-object v3, v2, v4

    const-string/jumbo v3, "197"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x26

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "AElig"

    aput-object v3, v2, v4

    const-string/jumbo v3, "198"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x27

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "Ccedil"

    aput-object v3, v2, v4

    const-string/jumbo v3, "199"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x28

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "Egrave"

    aput-object v3, v2, v4

    const-string/jumbo v3, "200"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x29

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "Eacute"

    aput-object v3, v2, v4

    const-string/jumbo v3, "201"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "Ecirc"

    aput-object v3, v2, v4

    const-string/jumbo v3, "202"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "Euml"

    aput-object v3, v2, v4

    const-string/jumbo v3, "203"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "Igrave"

    aput-object v3, v2, v4

    const-string/jumbo v3, "204"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "Iacute"

    aput-object v3, v2, v4

    const-string/jumbo v3, "205"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "Icirc"

    aput-object v3, v2, v4

    const-string/jumbo v3, "206"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "Iuml"

    aput-object v3, v2, v4

    const-string/jumbo v3, "207"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x30

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "ETH"

    aput-object v3, v2, v4

    const-string/jumbo v3, "208"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x31

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "Ntilde"

    aput-object v3, v2, v4

    const-string/jumbo v3, "209"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x32

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "Ograve"

    aput-object v3, v2, v4

    const-string/jumbo v3, "210"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x33

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "Oacute"

    aput-object v3, v2, v4

    const-string/jumbo v3, "211"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x34

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "Ocirc"

    aput-object v3, v2, v4

    const-string/jumbo v3, "212"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x35

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "Otilde"

    aput-object v3, v2, v4

    const-string/jumbo v3, "213"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x36

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "Ouml"

    aput-object v3, v2, v4

    const-string/jumbo v3, "214"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x37

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "times"

    aput-object v3, v2, v4

    const-string/jumbo v3, "215"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x38

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "Oslash"

    aput-object v3, v2, v4

    const-string/jumbo v3, "216"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x39

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "Ugrave"

    aput-object v3, v2, v4

    const-string/jumbo v3, "217"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "Uacute"

    aput-object v3, v2, v4

    const-string/jumbo v3, "218"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "Ucirc"

    aput-object v3, v2, v4

    const-string/jumbo v3, "219"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "Uuml"

    aput-object v3, v2, v4

    const-string/jumbo v3, "220"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "Yacute"

    aput-object v3, v2, v4

    const-string/jumbo v3, "221"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "THORN"

    aput-object v3, v2, v4

    const-string/jumbo v3, "222"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "szlig"

    aput-object v3, v2, v4

    const-string/jumbo v3, "223"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x40

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "agrave"

    aput-object v3, v2, v4

    const-string/jumbo v3, "224"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x41

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "aacute"

    aput-object v3, v2, v4

    const-string/jumbo v3, "225"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x42

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "acirc"

    aput-object v3, v2, v4

    const-string/jumbo v3, "226"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x43

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "atilde"

    aput-object v3, v2, v4

    const-string/jumbo v3, "227"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x44

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "auml"

    aput-object v3, v2, v4

    const-string/jumbo v3, "228"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x45

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "aring"

    aput-object v3, v2, v4

    const-string/jumbo v3, "229"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x46

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "aelig"

    aput-object v3, v2, v4

    const-string/jumbo v3, "230"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x47

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "ccedil"

    aput-object v3, v2, v4

    const-string/jumbo v3, "231"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x48

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "egrave"

    aput-object v3, v2, v4

    const-string/jumbo v3, "232"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x49

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "eacute"

    aput-object v3, v2, v4

    const-string/jumbo v3, "233"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "ecirc"

    aput-object v3, v2, v4

    const-string/jumbo v3, "234"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "euml"

    aput-object v3, v2, v4

    const-string/jumbo v3, "235"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "igrave"

    aput-object v3, v2, v4

    const-string/jumbo v3, "236"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "iacute"

    aput-object v3, v2, v4

    const-string/jumbo v3, "237"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "icirc"

    aput-object v3, v2, v4

    const-string/jumbo v3, "238"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "iuml"

    aput-object v3, v2, v4

    const-string/jumbo v3, "239"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x50

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "eth"

    aput-object v3, v2, v4

    const-string/jumbo v3, "240"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x51

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "ntilde"

    aput-object v3, v2, v4

    const-string/jumbo v3, "241"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x52

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "ograve"

    aput-object v3, v2, v4

    const-string/jumbo v3, "242"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x53

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "oacute"

    aput-object v3, v2, v4

    const-string/jumbo v3, "243"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x54

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "ocirc"

    aput-object v3, v2, v4

    const-string/jumbo v3, "244"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x55

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "otilde"

    aput-object v3, v2, v4

    const-string/jumbo v3, "245"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x56

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "ouml"

    aput-object v3, v2, v4

    const-string/jumbo v3, "246"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x57

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "divide"

    aput-object v3, v2, v4

    const-string/jumbo v3, "247"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x58

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "oslash"

    aput-object v3, v2, v4

    const-string/jumbo v3, "248"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x59

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "ugrave"

    aput-object v3, v2, v4

    const-string/jumbo v3, "249"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "uacute"

    aput-object v3, v2, v4

    const-string/jumbo v3, "250"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "ucirc"

    aput-object v3, v2, v4

    const-string/jumbo v3, "251"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "uuml"

    aput-object v3, v2, v4

    const-string/jumbo v3, "252"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "yacute"

    aput-object v3, v2, v4

    const-string/jumbo v3, "253"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "thorn"

    aput-object v3, v2, v4

    const-string/jumbo v3, "254"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "yuml"

    aput-object v3, v2, v4

    const-string/jumbo v3, "255"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    sput-object v0, Lcom/taobao/android/ssologinwrapper/utils/Entities;->c:[[Ljava/lang/String;

    const/16 v0, 0x97

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "fnof"

    aput-object v2, v1, v4

    const-string/jumbo v2, "402"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "Alpha"

    aput-object v2, v1, v4

    const-string/jumbo v2, "913"

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "Beta"

    aput-object v2, v1, v4

    const-string/jumbo v2, "914"

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "Gamma"

    aput-object v2, v1, v4

    const-string/jumbo v2, "915"

    aput-object v2, v1, v5

    aput-object v1, v0, v7

    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "Delta"

    aput-object v2, v1, v4

    const-string/jumbo v2, "916"

    aput-object v2, v1, v5

    aput-object v1, v0, v8

    const/4 v1, 0x5

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "Epsilon"

    aput-object v3, v2, v4

    const-string/jumbo v3, "917"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "Zeta"

    aput-object v3, v2, v4

    const-string/jumbo v3, "918"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "Eta"

    aput-object v3, v2, v4

    const-string/jumbo v3, "919"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "Theta"

    aput-object v3, v2, v4

    const-string/jumbo v3, "920"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "Iota"

    aput-object v3, v2, v4

    const-string/jumbo v3, "921"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "Kappa"

    aput-object v3, v2, v4

    const-string/jumbo v3, "922"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "Lambda"

    aput-object v3, v2, v4

    const-string/jumbo v3, "923"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "Mu"

    aput-object v3, v2, v4

    const-string/jumbo v3, "924"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "Nu"

    aput-object v3, v2, v4

    const-string/jumbo v3, "925"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "Xi"

    aput-object v3, v2, v4

    const-string/jumbo v3, "926"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "Omicron"

    aput-object v3, v2, v4

    const-string/jumbo v3, "927"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "Pi"

    aput-object v3, v2, v4

    const-string/jumbo v3, "928"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "Rho"

    aput-object v3, v2, v4

    const-string/jumbo v3, "929"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "Sigma"

    aput-object v3, v2, v4

    const-string/jumbo v3, "931"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "Tau"

    aput-object v3, v2, v4

    const-string/jumbo v3, "932"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "Upsilon"

    aput-object v3, v2, v4

    const-string/jumbo v3, "933"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "Phi"

    aput-object v3, v2, v4

    const-string/jumbo v3, "934"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "Chi"

    aput-object v3, v2, v4

    const-string/jumbo v3, "935"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "Psi"

    aput-object v3, v2, v4

    const-string/jumbo v3, "936"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "Omega"

    aput-object v3, v2, v4

    const-string/jumbo v3, "937"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "alpha"

    aput-object v3, v2, v4

    const-string/jumbo v3, "945"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "beta"

    aput-object v3, v2, v4

    const-string/jumbo v3, "946"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "gamma"

    aput-object v3, v2, v4

    const-string/jumbo v3, "947"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "delta"

    aput-object v3, v2, v4

    const-string/jumbo v3, "948"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "epsilon"

    aput-object v3, v2, v4

    const-string/jumbo v3, "949"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "zeta"

    aput-object v3, v2, v4

    const-string/jumbo v3, "950"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "eta"

    aput-object v3, v2, v4

    const-string/jumbo v3, "951"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "theta"

    aput-object v3, v2, v4

    const-string/jumbo v3, "952"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "iota"

    aput-object v3, v2, v4

    const-string/jumbo v3, "953"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "kappa"

    aput-object v3, v2, v4

    const-string/jumbo v3, "954"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "lambda"

    aput-object v3, v2, v4

    const-string/jumbo v3, "955"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "mu"

    aput-object v3, v2, v4

    const-string/jumbo v3, "956"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "nu"

    aput-object v3, v2, v4

    const-string/jumbo v3, "957"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x26

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "xi"

    aput-object v3, v2, v4

    const-string/jumbo v3, "958"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x27

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "omicron"

    aput-object v3, v2, v4

    const-string/jumbo v3, "959"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x28

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "pi"

    aput-object v3, v2, v4

    const-string/jumbo v3, "960"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x29

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "rho"

    aput-object v3, v2, v4

    const-string/jumbo v3, "961"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "sigmaf"

    aput-object v3, v2, v4

    const-string/jumbo v3, "962"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "sigma"

    aput-object v3, v2, v4

    const-string/jumbo v3, "963"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "tau"

    aput-object v3, v2, v4

    const-string/jumbo v3, "964"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "upsilon"

    aput-object v3, v2, v4

    const-string/jumbo v3, "965"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "phi"

    aput-object v3, v2, v4

    const-string/jumbo v3, "966"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "chi"

    aput-object v3, v2, v4

    const-string/jumbo v3, "967"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x30

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "psi"

    aput-object v3, v2, v4

    const-string/jumbo v3, "968"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x31

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "omega"

    aput-object v3, v2, v4

    const-string/jumbo v3, "969"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x32

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "thetasym"

    aput-object v3, v2, v4

    const-string/jumbo v3, "977"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x33

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "upsih"

    aput-object v3, v2, v4

    const-string/jumbo v3, "978"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x34

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "piv"

    aput-object v3, v2, v4

    const-string/jumbo v3, "982"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x35

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "bull"

    aput-object v3, v2, v4

    const-string/jumbo v3, "8226"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x36

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "hellip"

    aput-object v3, v2, v4

    const-string/jumbo v3, "8230"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x37

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "prime"

    aput-object v3, v2, v4

    const-string/jumbo v3, "8242"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x38

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "Prime"

    aput-object v3, v2, v4

    const-string/jumbo v3, "8243"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x39

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "oline"

    aput-object v3, v2, v4

    const-string/jumbo v3, "8254"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "frasl"

    aput-object v3, v2, v4

    const-string/jumbo v3, "8260"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "weierp"

    aput-object v3, v2, v4

    const-string/jumbo v3, "8472"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "image"

    aput-object v3, v2, v4

    const-string/jumbo v3, "8465"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "real"

    aput-object v3, v2, v4

    const-string/jumbo v3, "8476"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "trade"

    aput-object v3, v2, v4

    const-string/jumbo v3, "8482"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "alefsym"

    aput-object v3, v2, v4

    const-string/jumbo v3, "8501"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x40

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "larr"

    aput-object v3, v2, v4

    const-string/jumbo v3, "8592"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x41

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "uarr"

    aput-object v3, v2, v4

    const-string/jumbo v3, "8593"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x42

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "rarr"

    aput-object v3, v2, v4

    const-string/jumbo v3, "8594"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x43

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "darr"

    aput-object v3, v2, v4

    const-string/jumbo v3, "8595"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x44

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "harr"

    aput-object v3, v2, v4

    const-string/jumbo v3, "8596"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x45

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "crarr"

    aput-object v3, v2, v4

    const-string/jumbo v3, "8629"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x46

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "lArr"

    aput-object v3, v2, v4

    const-string/jumbo v3, "8656"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x47

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "uArr"

    aput-object v3, v2, v4

    const-string/jumbo v3, "8657"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x48

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "rArr"

    aput-object v3, v2, v4

    const-string/jumbo v3, "8658"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x49

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "dArr"

    aput-object v3, v2, v4

    const-string/jumbo v3, "8659"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "hArr"

    aput-object v3, v2, v4

    const-string/jumbo v3, "8660"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "forall"

    aput-object v3, v2, v4

    const-string/jumbo v3, "8704"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "part"

    aput-object v3, v2, v4

    const-string/jumbo v3, "8706"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "exist"

    aput-object v3, v2, v4

    const-string/jumbo v3, "8707"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "empty"

    aput-object v3, v2, v4

    const-string/jumbo v3, "8709"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "nabla"

    aput-object v3, v2, v4

    const-string/jumbo v3, "8711"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x50

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "isin"

    aput-object v3, v2, v4

    const-string/jumbo v3, "8712"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x51

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "notin"

    aput-object v3, v2, v4

    const-string/jumbo v3, "8713"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x52

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "ni"

    aput-object v3, v2, v4

    const-string/jumbo v3, "8715"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x53

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "prod"

    aput-object v3, v2, v4

    const-string/jumbo v3, "8719"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x54

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "sum"

    aput-object v3, v2, v4

    const-string/jumbo v3, "8721"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x55

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "minus"

    aput-object v3, v2, v4

    const-string/jumbo v3, "8722"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x56

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "lowast"

    aput-object v3, v2, v4

    const-string/jumbo v3, "8727"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x57

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "radic"

    aput-object v3, v2, v4

    const-string/jumbo v3, "8730"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x58

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "prop"

    aput-object v3, v2, v4

    const-string/jumbo v3, "8733"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x59

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "infin"

    aput-object v3, v2, v4

    const-string/jumbo v3, "8734"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "ang"

    aput-object v3, v2, v4

    const-string/jumbo v3, "8736"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "and"

    aput-object v3, v2, v4

    const-string/jumbo v3, "8743"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "or"

    aput-object v3, v2, v4

    const-string/jumbo v3, "8744"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "cap"

    aput-object v3, v2, v4

    const-string/jumbo v3, "8745"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "cup"

    aput-object v3, v2, v4

    const-string/jumbo v3, "8746"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "int"

    aput-object v3, v2, v4

    const-string/jumbo v3, "8747"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x60

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "there4"

    aput-object v3, v2, v4

    const-string/jumbo v3, "8756"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x61

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "sim"

    aput-object v3, v2, v4

    const-string/jumbo v3, "8764"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x62

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "cong"

    aput-object v3, v2, v4

    const-string/jumbo v3, "8773"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x63

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "asymp"

    aput-object v3, v2, v4

    const-string/jumbo v3, "8776"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x64

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "ne"

    aput-object v3, v2, v4

    const-string/jumbo v3, "8800"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x65

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "equiv"

    aput-object v3, v2, v4

    const-string/jumbo v3, "8801"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x66

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "le"

    aput-object v3, v2, v4

    const-string/jumbo v3, "8804"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x67

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "ge"

    aput-object v3, v2, v4

    const-string/jumbo v3, "8805"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x68

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "sub"

    aput-object v3, v2, v4

    const-string/jumbo v3, "8834"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x69

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "sup"

    aput-object v3, v2, v4

    const-string/jumbo v3, "8835"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "sube"

    aput-object v3, v2, v4

    const-string/jumbo v3, "8838"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "supe"

    aput-object v3, v2, v4

    const-string/jumbo v3, "8839"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "oplus"

    aput-object v3, v2, v4

    const-string/jumbo v3, "8853"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "otimes"

    aput-object v3, v2, v4

    const-string/jumbo v3, "8855"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "perp"

    aput-object v3, v2, v4

    const-string/jumbo v3, "8869"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "sdot"

    aput-object v3, v2, v4

    const-string/jumbo v3, "8901"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x70

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "lceil"

    aput-object v3, v2, v4

    const-string/jumbo v3, "8968"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x71

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "rceil"

    aput-object v3, v2, v4

    const-string/jumbo v3, "8969"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x72

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "lfloor"

    aput-object v3, v2, v4

    const-string/jumbo v3, "8970"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x73

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "rfloor"

    aput-object v3, v2, v4

    const-string/jumbo v3, "8971"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x74

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "lang"

    aput-object v3, v2, v4

    const-string/jumbo v3, "9001"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x75

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "rang"

    aput-object v3, v2, v4

    const-string/jumbo v3, "9002"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x76

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "loz"

    aput-object v3, v2, v4

    const-string/jumbo v3, "9674"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x77

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "spades"

    aput-object v3, v2, v4

    const-string/jumbo v3, "9824"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x78

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "clubs"

    aput-object v3, v2, v4

    const-string/jumbo v3, "9827"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x79

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "hearts"

    aput-object v3, v2, v4

    const-string/jumbo v3, "9829"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "diams"

    aput-object v3, v2, v4

    const-string/jumbo v3, "9830"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "OElig"

    aput-object v3, v2, v4

    const-string/jumbo v3, "338"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "oelig"

    aput-object v3, v2, v4

    const-string/jumbo v3, "339"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "Scaron"

    aput-object v3, v2, v4

    const-string/jumbo v3, "352"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "scaron"

    aput-object v3, v2, v4

    const-string/jumbo v3, "353"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "Yuml"

    aput-object v3, v2, v4

    const-string/jumbo v3, "376"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x80

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "circ"

    aput-object v3, v2, v4

    const-string/jumbo v3, "710"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x81

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "tilde"

    aput-object v3, v2, v4

    const-string/jumbo v3, "732"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x82

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "ensp"

    aput-object v3, v2, v4

    const-string/jumbo v3, "8194"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x83

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "emsp"

    aput-object v3, v2, v4

    const-string/jumbo v3, "8195"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x84

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "thinsp"

    aput-object v3, v2, v4

    const-string/jumbo v3, "8201"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x85

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "zwnj"

    aput-object v3, v2, v4

    const-string/jumbo v3, "8204"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x86

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "zwj"

    aput-object v3, v2, v4

    const-string/jumbo v3, "8205"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x87

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "lrm"

    aput-object v3, v2, v4

    const-string/jumbo v3, "8206"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x88

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "rlm"

    aput-object v3, v2, v4

    const-string/jumbo v3, "8207"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x89

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "ndash"

    aput-object v3, v2, v4

    const-string/jumbo v3, "8211"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "mdash"

    aput-object v3, v2, v4

    const-string/jumbo v3, "8212"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "lsquo"

    aput-object v3, v2, v4

    const-string/jumbo v3, "8216"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "rsquo"

    aput-object v3, v2, v4

    const-string/jumbo v3, "8217"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "sbquo"

    aput-object v3, v2, v4

    const-string/jumbo v3, "8218"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "ldquo"

    aput-object v3, v2, v4

    const-string/jumbo v3, "8220"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "rdquo"

    aput-object v3, v2, v4

    const-string/jumbo v3, "8221"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x90

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "bdquo"

    aput-object v3, v2, v4

    const-string/jumbo v3, "8222"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x91

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "dagger"

    aput-object v3, v2, v4

    const-string/jumbo v3, "8224"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x92

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "Dagger"

    aput-object v3, v2, v4

    const-string/jumbo v3, "8225"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x93

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "permil"

    aput-object v3, v2, v4

    const-string/jumbo v3, "8240"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x94

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "lsaquo"

    aput-object v3, v2, v4

    const-string/jumbo v3, "8249"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x95

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "rsaquo"

    aput-object v3, v2, v4

    const-string/jumbo v3, "8250"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x96

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "euro"

    aput-object v3, v2, v4

    const-string/jumbo v3, "8364"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    sput-object v0, Lcom/taobao/android/ssologinwrapper/utils/Entities;->d:[[Ljava/lang/String;

    new-instance v0, Lcom/taobao/android/ssologinwrapper/utils/Entities;

    invoke-direct {v0}, Lcom/taobao/android/ssologinwrapper/utils/Entities;-><init>()V

    sput-object v0, Lcom/taobao/android/ssologinwrapper/utils/Entities;->XML:Lcom/taobao/android/ssologinwrapper/utils/Entities;

    sget-object v1, Lcom/taobao/android/ssologinwrapper/utils/Entities;->a:[[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/taobao/android/ssologinwrapper/utils/Entities;->addEntities([[Ljava/lang/String;)V

    sget-object v0, Lcom/taobao/android/ssologinwrapper/utils/Entities;->XML:Lcom/taobao/android/ssologinwrapper/utils/Entities;

    sget-object v1, Lcom/taobao/android/ssologinwrapper/utils/Entities;->b:[[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/taobao/android/ssologinwrapper/utils/Entities;->addEntities([[Ljava/lang/String;)V

    new-instance v0, Lcom/taobao/android/ssologinwrapper/utils/Entities;

    invoke-direct {v0}, Lcom/taobao/android/ssologinwrapper/utils/Entities;-><init>()V

    sput-object v0, Lcom/taobao/android/ssologinwrapper/utils/Entities;->HTML32:Lcom/taobao/android/ssologinwrapper/utils/Entities;

    sget-object v1, Lcom/taobao/android/ssologinwrapper/utils/Entities;->a:[[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/taobao/android/ssologinwrapper/utils/Entities;->addEntities([[Ljava/lang/String;)V

    sget-object v0, Lcom/taobao/android/ssologinwrapper/utils/Entities;->HTML32:Lcom/taobao/android/ssologinwrapper/utils/Entities;

    sget-object v1, Lcom/taobao/android/ssologinwrapper/utils/Entities;->c:[[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/taobao/android/ssologinwrapper/utils/Entities;->addEntities([[Ljava/lang/String;)V

    new-instance v0, Lcom/taobao/android/ssologinwrapper/utils/Entities;

    invoke-direct {v0}, Lcom/taobao/android/ssologinwrapper/utils/Entities;-><init>()V

    sput-object v0, Lcom/taobao/android/ssologinwrapper/utils/Entities;->HTML40:Lcom/taobao/android/ssologinwrapper/utils/Entities;

    sget-object v1, Lcom/taobao/android/ssologinwrapper/utils/Entities;->a:[[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/taobao/android/ssologinwrapper/utils/Entities;->addEntities([[Ljava/lang/String;)V

    sget-object v0, Lcom/taobao/android/ssologinwrapper/utils/Entities;->HTML40:Lcom/taobao/android/ssologinwrapper/utils/Entities;

    sget-object v1, Lcom/taobao/android/ssologinwrapper/utils/Entities;->c:[[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/taobao/android/ssologinwrapper/utils/Entities;->addEntities([[Ljava/lang/String;)V

    sget-object v0, Lcom/taobao/android/ssologinwrapper/utils/Entities;->HTML40:Lcom/taobao/android/ssologinwrapper/utils/Entities;

    sget-object v1, Lcom/taobao/android/ssologinwrapper/utils/Entities;->d:[[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/taobao/android/ssologinwrapper/utils/Entities;->addEntities([[Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/taobao/android/ssologinwrapper/utils/Entities;->e:Ljava/util/Hashtable;

    new-instance v0, Lcom/taobao/android/ssologinwrapper/utils/IntHashMap;

    invoke-direct {v0}, Lcom/taobao/android/ssologinwrapper/utils/IntHashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/android/ssologinwrapper/utils/Entities;->f:Lcom/taobao/android/ssologinwrapper/utils/IntHashMap;

    return-void
.end method


# virtual methods
.method public addEntities([[Ljava/lang/String;)V
    .locals 5

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    aget-object v2, p1, v0

    aget-object v2, v2, v1

    aget-object v3, p1, v0

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/taobao/android/ssologinwrapper/utils/Entities;->addEntity(Ljava/lang/String;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public addEntity(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/utils/Entities;->e:Ljava/util/Hashtable;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/utils/Entities;->f:Lcom/taobao/android/ssologinwrapper/utils/IntHashMap;

    invoke-virtual {v0, p2, p1}, Lcom/taobao/android/ssologinwrapper/utils/IntHashMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x100

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/utils/Entities;->g:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/utils/Entities;->g:[Ljava/lang/String;

    aput-object p1, v0, p2

    :cond_0
    return-void
.end method

.method public getEntityName(I)Ljava/lang/String;
    .locals 4

    const/16 v3, 0x100

    if-ge p1, v3, :cond_1

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/utils/Entities;->g:[Ljava/lang/String;

    if-nez v0, :cond_0

    new-array v0, v3, [Ljava/lang/String;

    iput-object v0, p0, Lcom/taobao/android/ssologinwrapper/utils/Entities;->g:[Ljava/lang/String;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    iget-object v2, p0, Lcom/taobao/android/ssologinwrapper/utils/Entities;->g:[Ljava/lang/String;

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/utils/Entities;->f:Lcom/taobao/android/ssologinwrapper/utils/IntHashMap;

    invoke-virtual {v0, v1}, Lcom/taobao/android/ssologinwrapper/utils/IntHashMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/utils/Entities;->g:[Ljava/lang/String;

    aget-object v0, v0, p1

    :goto_1
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/utils/Entities;->f:Lcom/taobao/android/ssologinwrapper/utils/IntHashMap;

    invoke-virtual {v0, p1}, Lcom/taobao/android/ssologinwrapper/utils/IntHashMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_1
.end method

.method public getEntityValue(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/utils/Entities;->e:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method
