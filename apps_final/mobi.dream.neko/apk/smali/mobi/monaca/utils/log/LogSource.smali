.class public final enum Lmobi/monaca/utils/log/LogSource;
.super Ljava/lang/Enum;
.source "LogSource.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmobi/monaca/utils/log/LogSource;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmobi/monaca/utils/log/LogSource;

.field public static final enum JAVASCRIPT:Lmobi/monaca/utils/log/LogSource;

.field public static final enum SYSTEM:Lmobi/monaca/utils/log/LogSource;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lmobi/monaca/utils/log/LogSource;

    const-string v1, "SYSTEM"

    invoke-direct {v0, v1, v2}, Lmobi/monaca/utils/log/LogSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmobi/monaca/utils/log/LogSource;->SYSTEM:Lmobi/monaca/utils/log/LogSource;

    .line 5
    new-instance v0, Lmobi/monaca/utils/log/LogSource;

    const-string v1, "JAVASCRIPT"

    invoke-direct {v0, v1, v3}, Lmobi/monaca/utils/log/LogSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmobi/monaca/utils/log/LogSource;->JAVASCRIPT:Lmobi/monaca/utils/log/LogSource;

    .line 3
    const/4 v0, 0x2

    new-array v0, v0, [Lmobi/monaca/utils/log/LogSource;

    sget-object v1, Lmobi/monaca/utils/log/LogSource;->SYSTEM:Lmobi/monaca/utils/log/LogSource;

    aput-object v1, v0, v2

    sget-object v1, Lmobi/monaca/utils/log/LogSource;->JAVASCRIPT:Lmobi/monaca/utils/log/LogSource;

    aput-object v1, v0, v3

    sput-object v0, Lmobi/monaca/utils/log/LogSource;->$VALUES:[Lmobi/monaca/utils/log/LogSource;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmobi/monaca/utils/log/LogSource;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lmobi/monaca/utils/log/LogSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmobi/monaca/utils/log/LogSource;

    return-object v0
.end method

.method public static values()[Lmobi/monaca/utils/log/LogSource;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lmobi/monaca/utils/log/LogSource;->$VALUES:[Lmobi/monaca/utils/log/LogSource;

    invoke-virtual {v0}, [Lmobi/monaca/utils/log/LogSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmobi/monaca/utils/log/LogSource;

    return-object v0
.end method
