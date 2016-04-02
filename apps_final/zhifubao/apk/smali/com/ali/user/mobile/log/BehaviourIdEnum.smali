.class public final enum Lcom/ali/user/mobile/log/BehaviourIdEnum;
.super Ljava/lang/Enum;
.source "BehaviourIdEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ali/user/mobile/log/BehaviourIdEnum;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ACTIVATE:Lcom/ali/user/mobile/log/BehaviourIdEnum;

.field public static final enum AUTO_CLICKED:Lcom/ali/user/mobile/log/BehaviourIdEnum;

.field public static final enum AUTO_OPENPAGE:Lcom/ali/user/mobile/log/BehaviourIdEnum;

.field public static final enum BIZLAUNCHED:Lcom/ali/user/mobile/log/BehaviourIdEnum;

.field public static final enum CALLCHECK:Lcom/ali/user/mobile/log/BehaviourIdEnum;

.field public static final enum CALLCOUNTRIES:Lcom/ali/user/mobile/log/BehaviourIdEnum;

.field public static final enum CHECKGESTURE:Lcom/ali/user/mobile/log/BehaviourIdEnum;

.field public static final enum CLICKED:Lcom/ali/user/mobile/log/BehaviourIdEnum;

.field public static final enum DOCHECK:Lcom/ali/user/mobile/log/BehaviourIdEnum;

.field private static final synthetic ENUM$VALUES:[Lcom/ali/user/mobile/log/BehaviourIdEnum;

.field public static final enum ERROR:Lcom/ali/user/mobile/log/BehaviourIdEnum;

.field public static final enum EXCEPTION:Lcom/ali/user/mobile/log/BehaviourIdEnum;

.field public static final enum LOGIN:Lcom/ali/user/mobile/log/BehaviourIdEnum;

.field public static final enum LONGCLICKED:Lcom/ali/user/mobile/log/BehaviourIdEnum;

.field public static final enum MONITOR:Lcom/ali/user/mobile/log/BehaviourIdEnum;

.field public static final enum MONITORPERF:Lcom/ali/user/mobile/log/BehaviourIdEnum;

.field public static final enum NONE:Lcom/ali/user/mobile/log/BehaviourIdEnum;

.field public static final enum OPENPAGE:Lcom/ali/user/mobile/log/BehaviourIdEnum;

.field public static final enum REGISTER:Lcom/ali/user/mobile/log/BehaviourIdEnum;

.field public static final enum SETGESTURE:Lcom/ali/user/mobile/log/BehaviourIdEnum;

.field public static final enum SLIDED:Lcom/ali/user/mobile/log/BehaviourIdEnum;

.field public static final enum SUBMITED:Lcom/ali/user/mobile/log/BehaviourIdEnum;


# instance fields
.field private desc:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 5
    new-instance v0, Lcom/ali/user/mobile/log/BehaviourIdEnum;

    const-string/jumbo v1, "NONE"

    const-string/jumbo v2, "none"

    invoke-direct {v0, v1, v4, v2}, Lcom/ali/user/mobile/log/BehaviourIdEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ali/user/mobile/log/BehaviourIdEnum;->NONE:Lcom/ali/user/mobile/log/BehaviourIdEnum;

    .line 6
    new-instance v0, Lcom/ali/user/mobile/log/BehaviourIdEnum;

    const-string/jumbo v1, "LOGIN"

    const-string/jumbo v2, "login"

    invoke-direct {v0, v1, v5, v2}, Lcom/ali/user/mobile/log/BehaviourIdEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ali/user/mobile/log/BehaviourIdEnum;->LOGIN:Lcom/ali/user/mobile/log/BehaviourIdEnum;

    .line 7
    new-instance v0, Lcom/ali/user/mobile/log/BehaviourIdEnum;

    const-string/jumbo v1, "REGISTER"

    const-string/jumbo v2, "register"

    invoke-direct {v0, v1, v6, v2}, Lcom/ali/user/mobile/log/BehaviourIdEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ali/user/mobile/log/BehaviourIdEnum;->REGISTER:Lcom/ali/user/mobile/log/BehaviourIdEnum;

    .line 8
    new-instance v0, Lcom/ali/user/mobile/log/BehaviourIdEnum;

    const-string/jumbo v1, "CALLCHECK"

    const-string/jumbo v2, "callCheck"

    invoke-direct {v0, v1, v7, v2}, Lcom/ali/user/mobile/log/BehaviourIdEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ali/user/mobile/log/BehaviourIdEnum;->CALLCHECK:Lcom/ali/user/mobile/log/BehaviourIdEnum;

    .line 9
    new-instance v0, Lcom/ali/user/mobile/log/BehaviourIdEnum;

    const-string/jumbo v1, "DOCHECK"

    const-string/jumbo v2, "doCheck"

    invoke-direct {v0, v1, v8, v2}, Lcom/ali/user/mobile/log/BehaviourIdEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ali/user/mobile/log/BehaviourIdEnum;->DOCHECK:Lcom/ali/user/mobile/log/BehaviourIdEnum;

    .line 10
    new-instance v0, Lcom/ali/user/mobile/log/BehaviourIdEnum;

    const-string/jumbo v1, "ACTIVATE"

    const/4 v2, 0x5

    const-string/jumbo v3, "activate"

    invoke-direct {v0, v1, v2, v3}, Lcom/ali/user/mobile/log/BehaviourIdEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ali/user/mobile/log/BehaviourIdEnum;->ACTIVATE:Lcom/ali/user/mobile/log/BehaviourIdEnum;

    .line 11
    new-instance v0, Lcom/ali/user/mobile/log/BehaviourIdEnum;

    const-string/jumbo v1, "CALLCOUNTRIES"

    const/4 v2, 0x6

    const-string/jumbo v3, "callCountries"

    invoke-direct {v0, v1, v2, v3}, Lcom/ali/user/mobile/log/BehaviourIdEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ali/user/mobile/log/BehaviourIdEnum;->CALLCOUNTRIES:Lcom/ali/user/mobile/log/BehaviourIdEnum;

    .line 12
    new-instance v0, Lcom/ali/user/mobile/log/BehaviourIdEnum;

    const-string/jumbo v1, "CLICKED"

    const/4 v2, 0x7

    const-string/jumbo v3, "clicked"

    invoke-direct {v0, v1, v2, v3}, Lcom/ali/user/mobile/log/BehaviourIdEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ali/user/mobile/log/BehaviourIdEnum;->CLICKED:Lcom/ali/user/mobile/log/BehaviourIdEnum;

    .line 13
    new-instance v0, Lcom/ali/user/mobile/log/BehaviourIdEnum;

    const-string/jumbo v1, "OPENPAGE"

    const/16 v2, 0x8

    const-string/jumbo v3, "openPage"

    invoke-direct {v0, v1, v2, v3}, Lcom/ali/user/mobile/log/BehaviourIdEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ali/user/mobile/log/BehaviourIdEnum;->OPENPAGE:Lcom/ali/user/mobile/log/BehaviourIdEnum;

    .line 14
    new-instance v0, Lcom/ali/user/mobile/log/BehaviourIdEnum;

    const-string/jumbo v1, "LONGCLICKED"

    const/16 v2, 0x9

    const-string/jumbo v3, "longClicked"

    invoke-direct {v0, v1, v2, v3}, Lcom/ali/user/mobile/log/BehaviourIdEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ali/user/mobile/log/BehaviourIdEnum;->LONGCLICKED:Lcom/ali/user/mobile/log/BehaviourIdEnum;

    .line 15
    new-instance v0, Lcom/ali/user/mobile/log/BehaviourIdEnum;

    const-string/jumbo v1, "AUTO_CLICKED"

    const/16 v2, 0xa

    const-string/jumbo v3, "auto_clicked"

    invoke-direct {v0, v1, v2, v3}, Lcom/ali/user/mobile/log/BehaviourIdEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ali/user/mobile/log/BehaviourIdEnum;->AUTO_CLICKED:Lcom/ali/user/mobile/log/BehaviourIdEnum;

    .line 16
    new-instance v0, Lcom/ali/user/mobile/log/BehaviourIdEnum;

    const-string/jumbo v1, "AUTO_OPENPAGE"

    const/16 v2, 0xb

    const-string/jumbo v3, "auto_openPage"

    invoke-direct {v0, v1, v2, v3}, Lcom/ali/user/mobile/log/BehaviourIdEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ali/user/mobile/log/BehaviourIdEnum;->AUTO_OPENPAGE:Lcom/ali/user/mobile/log/BehaviourIdEnum;

    .line 17
    new-instance v0, Lcom/ali/user/mobile/log/BehaviourIdEnum;

    const-string/jumbo v1, "SUBMITED"

    const/16 v2, 0xc

    const-string/jumbo v3, "submited"

    invoke-direct {v0, v1, v2, v3}, Lcom/ali/user/mobile/log/BehaviourIdEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ali/user/mobile/log/BehaviourIdEnum;->SUBMITED:Lcom/ali/user/mobile/log/BehaviourIdEnum;

    .line 18
    new-instance v0, Lcom/ali/user/mobile/log/BehaviourIdEnum;

    const-string/jumbo v1, "BIZLAUNCHED"

    const/16 v2, 0xd

    const-string/jumbo v3, "bizLaunched"

    invoke-direct {v0, v1, v2, v3}, Lcom/ali/user/mobile/log/BehaviourIdEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ali/user/mobile/log/BehaviourIdEnum;->BIZLAUNCHED:Lcom/ali/user/mobile/log/BehaviourIdEnum;

    .line 19
    new-instance v0, Lcom/ali/user/mobile/log/BehaviourIdEnum;

    const-string/jumbo v1, "ERROR"

    const/16 v2, 0xe

    const-string/jumbo v3, "error"

    invoke-direct {v0, v1, v2, v3}, Lcom/ali/user/mobile/log/BehaviourIdEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ali/user/mobile/log/BehaviourIdEnum;->ERROR:Lcom/ali/user/mobile/log/BehaviourIdEnum;

    .line 20
    new-instance v0, Lcom/ali/user/mobile/log/BehaviourIdEnum;

    const-string/jumbo v1, "EXCEPTION"

    const/16 v2, 0xf

    const-string/jumbo v3, "exception"

    invoke-direct {v0, v1, v2, v3}, Lcom/ali/user/mobile/log/BehaviourIdEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ali/user/mobile/log/BehaviourIdEnum;->EXCEPTION:Lcom/ali/user/mobile/log/BehaviourIdEnum;

    .line 21
    new-instance v0, Lcom/ali/user/mobile/log/BehaviourIdEnum;

    const-string/jumbo v1, "SETGESTURE"

    const/16 v2, 0x10

    const-string/jumbo v3, "setGesture"

    invoke-direct {v0, v1, v2, v3}, Lcom/ali/user/mobile/log/BehaviourIdEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ali/user/mobile/log/BehaviourIdEnum;->SETGESTURE:Lcom/ali/user/mobile/log/BehaviourIdEnum;

    .line 22
    new-instance v0, Lcom/ali/user/mobile/log/BehaviourIdEnum;

    const-string/jumbo v1, "CHECKGESTURE"

    const/16 v2, 0x11

    const-string/jumbo v3, "checkGesture"

    invoke-direct {v0, v1, v2, v3}, Lcom/ali/user/mobile/log/BehaviourIdEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ali/user/mobile/log/BehaviourIdEnum;->CHECKGESTURE:Lcom/ali/user/mobile/log/BehaviourIdEnum;

    .line 23
    new-instance v0, Lcom/ali/user/mobile/log/BehaviourIdEnum;

    const-string/jumbo v1, "SLIDED"

    const/16 v2, 0x12

    const-string/jumbo v3, "slided"

    invoke-direct {v0, v1, v2, v3}, Lcom/ali/user/mobile/log/BehaviourIdEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ali/user/mobile/log/BehaviourIdEnum;->SLIDED:Lcom/ali/user/mobile/log/BehaviourIdEnum;

    .line 24
    new-instance v0, Lcom/ali/user/mobile/log/BehaviourIdEnum;

    const-string/jumbo v1, "MONITOR"

    const/16 v2, 0x13

    const-string/jumbo v3, "monitor"

    invoke-direct {v0, v1, v2, v3}, Lcom/ali/user/mobile/log/BehaviourIdEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ali/user/mobile/log/BehaviourIdEnum;->MONITOR:Lcom/ali/user/mobile/log/BehaviourIdEnum;

    .line 25
    new-instance v0, Lcom/ali/user/mobile/log/BehaviourIdEnum;

    const-string/jumbo v1, "MONITORPERF"

    const/16 v2, 0x14

    const-string/jumbo v3, "monitorPerf"

    invoke-direct {v0, v1, v2, v3}, Lcom/ali/user/mobile/log/BehaviourIdEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ali/user/mobile/log/BehaviourIdEnum;->MONITORPERF:Lcom/ali/user/mobile/log/BehaviourIdEnum;

    .line 4
    const/16 v0, 0x15

    new-array v0, v0, [Lcom/ali/user/mobile/log/BehaviourIdEnum;

    sget-object v1, Lcom/ali/user/mobile/log/BehaviourIdEnum;->NONE:Lcom/ali/user/mobile/log/BehaviourIdEnum;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ali/user/mobile/log/BehaviourIdEnum;->LOGIN:Lcom/ali/user/mobile/log/BehaviourIdEnum;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ali/user/mobile/log/BehaviourIdEnum;->REGISTER:Lcom/ali/user/mobile/log/BehaviourIdEnum;

    aput-object v1, v0, v6

    sget-object v1, Lcom/ali/user/mobile/log/BehaviourIdEnum;->CALLCHECK:Lcom/ali/user/mobile/log/BehaviourIdEnum;

    aput-object v1, v0, v7

    sget-object v1, Lcom/ali/user/mobile/log/BehaviourIdEnum;->DOCHECK:Lcom/ali/user/mobile/log/BehaviourIdEnum;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/ali/user/mobile/log/BehaviourIdEnum;->ACTIVATE:Lcom/ali/user/mobile/log/BehaviourIdEnum;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/ali/user/mobile/log/BehaviourIdEnum;->CALLCOUNTRIES:Lcom/ali/user/mobile/log/BehaviourIdEnum;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/ali/user/mobile/log/BehaviourIdEnum;->CLICKED:Lcom/ali/user/mobile/log/BehaviourIdEnum;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/ali/user/mobile/log/BehaviourIdEnum;->OPENPAGE:Lcom/ali/user/mobile/log/BehaviourIdEnum;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/ali/user/mobile/log/BehaviourIdEnum;->LONGCLICKED:Lcom/ali/user/mobile/log/BehaviourIdEnum;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/ali/user/mobile/log/BehaviourIdEnum;->AUTO_CLICKED:Lcom/ali/user/mobile/log/BehaviourIdEnum;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/ali/user/mobile/log/BehaviourIdEnum;->AUTO_OPENPAGE:Lcom/ali/user/mobile/log/BehaviourIdEnum;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/ali/user/mobile/log/BehaviourIdEnum;->SUBMITED:Lcom/ali/user/mobile/log/BehaviourIdEnum;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/ali/user/mobile/log/BehaviourIdEnum;->BIZLAUNCHED:Lcom/ali/user/mobile/log/BehaviourIdEnum;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/ali/user/mobile/log/BehaviourIdEnum;->ERROR:Lcom/ali/user/mobile/log/BehaviourIdEnum;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/ali/user/mobile/log/BehaviourIdEnum;->EXCEPTION:Lcom/ali/user/mobile/log/BehaviourIdEnum;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/ali/user/mobile/log/BehaviourIdEnum;->SETGESTURE:Lcom/ali/user/mobile/log/BehaviourIdEnum;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/ali/user/mobile/log/BehaviourIdEnum;->CHECKGESTURE:Lcom/ali/user/mobile/log/BehaviourIdEnum;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/ali/user/mobile/log/BehaviourIdEnum;->SLIDED:Lcom/ali/user/mobile/log/BehaviourIdEnum;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/ali/user/mobile/log/BehaviourIdEnum;->MONITOR:Lcom/ali/user/mobile/log/BehaviourIdEnum;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/ali/user/mobile/log/BehaviourIdEnum;->MONITORPERF:Lcom/ali/user/mobile/log/BehaviourIdEnum;

    aput-object v2, v0, v1

    sput-object v0, Lcom/ali/user/mobile/log/BehaviourIdEnum;->ENUM$VALUES:[Lcom/ali/user/mobile/log/BehaviourIdEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 30
    iput-object p3, p0, Lcom/ali/user/mobile/log/BehaviourIdEnum;->desc:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public static convert(Ljava/lang/String;)Lcom/ali/user/mobile/log/BehaviourIdEnum;
    .locals 5

    .prologue
    .line 43
    invoke-static {}, Lcom/ali/user/mobile/log/BehaviourIdEnum;->values()[Lcom/ali/user/mobile/log/BehaviourIdEnum;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_1

    .line 47
    sget-object v0, Lcom/ali/user/mobile/log/BehaviourIdEnum;->NONE:Lcom/ali/user/mobile/log/BehaviourIdEnum;

    :cond_0
    return-object v0

    .line 43
    :cond_1
    aget-object v0, v2, v1

    .line 44
    iget-object v4, v0, Lcom/ali/user/mobile/log/BehaviourIdEnum;->desc:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 43
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ali/user/mobile/log/BehaviourIdEnum;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/ali/user/mobile/log/BehaviourIdEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/log/BehaviourIdEnum;

    return-object v0
.end method

.method public static values()[Lcom/ali/user/mobile/log/BehaviourIdEnum;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/ali/user/mobile/log/BehaviourIdEnum;->ENUM$VALUES:[Lcom/ali/user/mobile/log/BehaviourIdEnum;

    array-length v1, v0

    new-array v2, v1, [Lcom/ali/user/mobile/log/BehaviourIdEnum;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final getDes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/ali/user/mobile/log/BehaviourIdEnum;->desc:Ljava/lang/String;

    return-object v0
.end method
