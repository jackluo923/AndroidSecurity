.class public Lcom/alipay/pushsdk/util/c;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


# static fields
.field static a:Lcom/alipay/pushsdk/util/c;

.field private static final c:Ljava/lang/String;


# instance fields
.field public b:[Ljava/lang/String;

.field private d:Landroid/content/Context;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/alipay/pushsdk/util/c;

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/pushsdk/util/c;->c:Ljava/lang/String;

    .line 16
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/pushsdk/util/c;->a:Lcom/alipay/pushsdk/util/c;

    .line 13
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/16 v6, 0xf

    const/4 v7, 0x3

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/pushsdk/util/c;->h:Ljava/lang/String;

    .line 36
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/pushsdk/util/c;->i:Ljava/lang/String;

    .line 58
    const/16 v0, 0x3e

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "0"

    aput-object v1, v0, v8

    const/4 v1, 0x1

    const-string/jumbo v2, "1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "2"

    aput-object v2, v0, v1

    const-string/jumbo v1, "3"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string/jumbo v2, "4"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "5"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "6"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "7"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "8"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 59
    const-string/jumbo v2, "9"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "a"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "b"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "c"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "d"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "e"

    aput-object v2, v0, v1

    const-string/jumbo v1, "f"

    aput-object v1, v0, v6

    const/16 v1, 0x10

    const-string/jumbo v2, "g"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "h"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "i"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "j"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "k"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, "l"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    .line 60
    const-string/jumbo v2, "m"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string/jumbo v2, "n"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string/jumbo v2, "o"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string/jumbo v2, "p"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string/jumbo v2, "q"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string/jumbo v2, "r"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string/jumbo v2, "s"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string/jumbo v2, "t"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string/jumbo v2, "u"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string/jumbo v2, "v"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string/jumbo v2, "w"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string/jumbo v2, "x"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string/jumbo v2, "y"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    .line 61
    const-string/jumbo v2, "z"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string/jumbo v2, "A"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string/jumbo v2, "B"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string/jumbo v2, "C"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string/jumbo v2, "D"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string/jumbo v2, "E"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string/jumbo v2, "F"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string/jumbo v2, "G"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string/jumbo v2, "H"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string/jumbo v2, "I"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string/jumbo v2, "J"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string/jumbo v2, "K"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string/jumbo v2, "L"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    .line 62
    const-string/jumbo v2, "M"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string/jumbo v2, "N"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string/jumbo v2, "O"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string/jumbo v2, "P"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string/jumbo v2, "Q"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string/jumbo v2, "R"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string/jumbo v2, "S"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string/jumbo v2, "T"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string/jumbo v2, "U"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string/jumbo v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string/jumbo v2, "W"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string/jumbo v2, "X"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string/jumbo v2, "Y"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    .line 63
    const-string/jumbo v2, "Z"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/alipay/pushsdk/util/c;->b:[Ljava/lang/String;

    .line 66
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyMMddHHmmssSSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/pushsdk/util/c;->j:Ljava/text/SimpleDateFormat;

    .line 94
    iput-object p1, p0, Lcom/alipay/pushsdk/util/c;->d:Landroid/content/Context;

    .line 96
    iget-object v0, p0, Lcom/alipay/pushsdk/util/c;->d:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/alipay/pushsdk/util/c;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "origin imei:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v1, v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/alipay/pushsdk/util/c;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "origin imsi:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v0, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string/jumbo v1, ""

    iget-object v0, p0, Lcom/alipay/pushsdk/util/c;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/pushsdk/util/e;->a(Landroid/content/Context;)Lcom/alipay/pushsdk/util/e;

    move-result-object v0

    const-string/jumbo v3, "clientId"

    invoke-virtual {v0, v3}, Lcom/alipay/pushsdk/util/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_10

    :goto_0
    invoke-static {v7}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/alipay/pushsdk/util/c;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "saved clientid:"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v1, v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-static {v0}, Lcom/alipay/pushsdk/util/c;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {v7}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/alipay/pushsdk/util/c;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "client id is valid:"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v1, v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v0, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Lcom/alipay/pushsdk/util/c;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-static {v2}, Lcom/alipay/pushsdk/util/c;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v6, :cond_4

    invoke-virtual {v1, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_4
    invoke-virtual {v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_f

    move-object v1, v2

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0xf

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4}, Lcom/alipay/pushsdk/util/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {v4}, Lcom/alipay/pushsdk/util/c;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v6, :cond_5

    invoke-virtual {v0, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_5
    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    move-object v0, v4

    :goto_2
    invoke-static {v7}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v3

    if-eqz v3, :cond_6

    sget-object v3, Lcom/alipay/pushsdk/util/c;->c:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "client id is valid:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v3, v5}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_6
    invoke-direct {p0, v1, v0}, Lcom/alipay/pushsdk/util/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v1, Lcom/alipay/pushsdk/util/c;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "normarlize, imsi:"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",imei:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",newClientId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v1, v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_3
    iput-object v0, p0, Lcom/alipay/pushsdk/util/c;->e:Ljava/lang/String;

    .line 97
    iget-object v0, p0, Lcom/alipay/pushsdk/util/c;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/pushsdk/util/c;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/alipay/pushsdk/util/c;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/pushsdk/util/c;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0xf

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_4
    iput-object v0, p0, Lcom/alipay/pushsdk/util/c;->f:Ljava/lang/String;

    .line 98
    iget-object v0, p0, Lcom/alipay/pushsdk/util/c;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/pushsdk/util/c;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/alipay/pushsdk/util/c;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/pushsdk/util/c;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0xf

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_5
    iput-object v0, p0, Lcom/alipay/pushsdk/util/c;->g:Ljava/lang/String;

    .line 99
    return-void

    .line 96
    :cond_8
    invoke-static {v7}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/alipay/pushsdk/util/c;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "client is is not valid, imei:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ",imsi:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v0, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_9
    invoke-static {v4}, Lcom/alipay/pushsdk/util/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-direct {p0}, Lcom/alipay/pushsdk/util/c;->d()Ljava/lang/String;

    move-result-object v4

    :cond_a
    invoke-static {v2}, Lcom/alipay/pushsdk/util/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-direct {p0}, Lcom/alipay/pushsdk/util/c;->d()Ljava/lang/String;

    move-result-object v2

    :cond_b
    invoke-direct {p0, v2, v4}, Lcom/alipay/pushsdk/util/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v1, Lcom/alipay/pushsdk/util/c;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "normalize, imei:"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",imsi:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",newClientId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v1, v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 97
    :cond_c
    const-string/jumbo v0, ""

    goto/16 :goto_4

    .line 98
    :cond_d
    const-string/jumbo v0, ""

    goto :goto_5

    :cond_e
    move-object v0, v3

    goto/16 :goto_2

    :cond_f
    move-object v1, v3

    goto/16 :goto_1

    :cond_10
    move-object v0, v1

    goto/16 :goto_0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/alipay/pushsdk/util/c;
    .locals 6

    .prologue
    .line 71
    const-class v1, Lcom/alipay/pushsdk/util/c;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/pushsdk/util/c;->a:Lcom/alipay/pushsdk/util/c;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Lcom/alipay/pushsdk/util/c;

    invoke-direct {v0, p0}, Lcom/alipay/pushsdk/util/c;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/alipay/pushsdk/util/c;->a:Lcom/alipay/pushsdk/util/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 77
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 79
    const/4 v3, 0x4

    .line 78
    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 80
    sget-object v2, Lcom/alipay/pushsdk/util/c;->a:Lcom/alipay/pushsdk/util/c;

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v3, v2, Lcom/alipay/pushsdk/util/c;->h:Ljava/lang/String;

    .line 81
    sget-object v2, Lcom/alipay/pushsdk/util/c;->a:Lcom/alipay/pushsdk/util/c;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v0, v2, Lcom/alipay/pushsdk/util/c;->i:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    :cond_0
    :goto_0
    :try_start_2
    sget-object v0, Lcom/alipay/pushsdk/util/c;->a:Lcom/alipay/pushsdk/util/c;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    return-object v0

    .line 83
    :catch_0
    move-exception v0

    .line 84
    const/4 v2, 0x3

    :try_start_3
    invoke-static {v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 85
    const/4 v2, 0x3

    sget-object v3, Lcom/alipay/pushsdk/util/c;->c:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "getInstance NameNotFoundException="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 71
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/alipay/pushsdk/util/c;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/alipay/pushsdk/util/c;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 138
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 155
    :cond_0
    :goto_0
    return v0

    .line 142
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 143
    const-string/jumbo v2, "unknown"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 147
    const-string/jumbo v2, "[0]+"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 151
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x5

    if-le v1, v2, :cond_0

    .line 155
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 165
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static c(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 271
    invoke-static {p0}, Lcom/alipay/pushsdk/util/c;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    const/4 v0, 0x0

    .line 273
    :goto_0
    return v0

    .line 274
    :cond_0
    const-string/jumbo v0, "[[a-z][A-Z][0-9]]{15}\\|[[a-z][A-Z][0-9]]{15}"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private d()Ljava/lang/String;
    .locals 3

    .prologue
    .line 331
    iget-object v0, p0, Lcom/alipay/pushsdk/util/c;->j:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 332
    return-object v0
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 284
    invoke-static {p1}, Lcom/alipay/pushsdk/util/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 285
    invoke-direct {p0}, Lcom/alipay/pushsdk/util/c;->d()Ljava/lang/String;

    move-result-object p1

    .line 287
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "123456789012345"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 288
    invoke-static {v0}, Lcom/alipay/pushsdk/util/c;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v5, 0x30

    const/4 v1, 0x0

    .line 298
    invoke-static {p0}, Lcom/alipay/pushsdk/util/c;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    :goto_0
    return-object p0

    .line 300
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    move v0, v1

    .line 301
    :goto_1
    array-length v2, v3

    if-lt v0, v2, :cond_1

    .line 305
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v3}, Ljava/lang/String;-><init>([B)V

    goto :goto_0

    .line 302
    :cond_1
    aget-byte v2, v3, v0

    if-lt v2, v5, :cond_2

    const/16 v4, 0x39

    if-le v2, v4, :cond_6

    :cond_2
    const/16 v4, 0x61

    if-lt v2, v4, :cond_3

    const/16 v4, 0x7a

    if-le v2, v4, :cond_6

    :cond_3
    const/16 v4, 0x41

    if-lt v2, v4, :cond_4

    const/16 v4, 0x5a

    if-le v2, v4, :cond_6

    :cond_4
    move v2, v1

    :goto_2
    if-nez v2, :cond_5

    .line 303
    aput-byte v5, v3, v0

    .line 301
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 302
    :cond_6
    const/4 v2, 0x1

    goto :goto_2
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/alipay/pushsdk/util/c;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/alipay/pushsdk/util/c;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 3

    .prologue
    .line 128
    iget-object v0, p0, Lcom/alipay/pushsdk/util/c;->h:Ljava/lang/String;

    const-string/jumbo v1, "ctch1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "ctch1"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method
