.class public final enum Lcom/alibaba/android/proc/PlatformEnum;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/proc/PlatformEnum;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ARM:Lcom/alibaba/android/proc/PlatformEnum;

.field public static final enum ARMV7:Lcom/alibaba/android/proc/PlatformEnum;

.field public static final enum MIPS:Lcom/alibaba/android/proc/PlatformEnum;

.field public static final enum X86:Lcom/alibaba/android/proc/PlatformEnum;

.field private static final synthetic b:[Lcom/alibaba/android/proc/PlatformEnum;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/alibaba/android/proc/PlatformEnum;

    const-string/jumbo v1, "ARM"

    const-string/jumbo v2, "arm"

    invoke-direct {v0, v1, v3, v2}, Lcom/alibaba/android/proc/PlatformEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/proc/PlatformEnum;->ARM:Lcom/alibaba/android/proc/PlatformEnum;

    new-instance v0, Lcom/alibaba/android/proc/PlatformEnum;

    const-string/jumbo v1, "ARMV7"

    const-string/jumbo v2, "arm"

    invoke-direct {v0, v1, v4, v2}, Lcom/alibaba/android/proc/PlatformEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/proc/PlatformEnum;->ARMV7:Lcom/alibaba/android/proc/PlatformEnum;

    new-instance v0, Lcom/alibaba/android/proc/PlatformEnum;

    const-string/jumbo v1, "MIPS"

    const-string/jumbo v2, "mips"

    invoke-direct {v0, v1, v5, v2}, Lcom/alibaba/android/proc/PlatformEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/proc/PlatformEnum;->MIPS:Lcom/alibaba/android/proc/PlatformEnum;

    new-instance v0, Lcom/alibaba/android/proc/PlatformEnum;

    const-string/jumbo v1, "X86"

    const-string/jumbo v2, "x86"

    invoke-direct {v0, v1, v6, v2}, Lcom/alibaba/android/proc/PlatformEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/proc/PlatformEnum;->X86:Lcom/alibaba/android/proc/PlatformEnum;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/alibaba/android/proc/PlatformEnum;

    sget-object v1, Lcom/alibaba/android/proc/PlatformEnum;->ARM:Lcom/alibaba/android/proc/PlatformEnum;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/android/proc/PlatformEnum;->ARMV7:Lcom/alibaba/android/proc/PlatformEnum;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/android/proc/PlatformEnum;->MIPS:Lcom/alibaba/android/proc/PlatformEnum;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/android/proc/PlatformEnum;->X86:Lcom/alibaba/android/proc/PlatformEnum;

    aput-object v1, v0, v6

    sput-object v0, Lcom/alibaba/android/proc/PlatformEnum;->b:[Lcom/alibaba/android/proc/PlatformEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/alibaba/android/proc/PlatformEnum;->a:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/proc/PlatformEnum;
    .locals 1

    const-class v0, Lcom/alibaba/android/proc/PlatformEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/proc/PlatformEnum;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/proc/PlatformEnum;
    .locals 1

    sget-object v0, Lcom/alibaba/android/proc/PlatformEnum;->b:[Lcom/alibaba/android/proc/PlatformEnum;

    invoke-virtual {v0}, [Lcom/alibaba/android/proc/PlatformEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/proc/PlatformEnum;

    return-object v0
.end method


# virtual methods
.method public final getPt()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/android/proc/PlatformEnum;->a:Ljava/lang/String;

    return-object v0
.end method
