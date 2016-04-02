.class public final enum Lmobi/monaca/utils/log/LogItem$LogLevel;
.super Ljava/lang/Enum;
.source "LogItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/monaca/utils/log/LogItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LogLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmobi/monaca/utils/log/LogItem$LogLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmobi/monaca/utils/log/LogItem$LogLevel;

.field public static final enum DEBUG:Lmobi/monaca/utils/log/LogItem$LogLevel;

.field public static final enum ERROR:Lmobi/monaca/utils/log/LogItem$LogLevel;

.field public static final enum LOG:Lmobi/monaca/utils/log/LogItem$LogLevel;

.field public static final enum WARNING:Lmobi/monaca/utils/log/LogItem$LogLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 13
    new-instance v0, Lmobi/monaca/utils/log/LogItem$LogLevel;

    const-string v1, "DEBUG"

    invoke-direct {v0, v1, v2}, Lmobi/monaca/utils/log/LogItem$LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmobi/monaca/utils/log/LogItem$LogLevel;->DEBUG:Lmobi/monaca/utils/log/LogItem$LogLevel;

    new-instance v0, Lmobi/monaca/utils/log/LogItem$LogLevel;

    const-string v1, "LOG"

    invoke-direct {v0, v1, v3}, Lmobi/monaca/utils/log/LogItem$LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmobi/monaca/utils/log/LogItem$LogLevel;->LOG:Lmobi/monaca/utils/log/LogItem$LogLevel;

    new-instance v0, Lmobi/monaca/utils/log/LogItem$LogLevel;

    const-string v1, "WARNING"

    invoke-direct {v0, v1, v4}, Lmobi/monaca/utils/log/LogItem$LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmobi/monaca/utils/log/LogItem$LogLevel;->WARNING:Lmobi/monaca/utils/log/LogItem$LogLevel;

    new-instance v0, Lmobi/monaca/utils/log/LogItem$LogLevel;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v5}, Lmobi/monaca/utils/log/LogItem$LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmobi/monaca/utils/log/LogItem$LogLevel;->ERROR:Lmobi/monaca/utils/log/LogItem$LogLevel;

    .line 12
    const/4 v0, 0x4

    new-array v0, v0, [Lmobi/monaca/utils/log/LogItem$LogLevel;

    sget-object v1, Lmobi/monaca/utils/log/LogItem$LogLevel;->DEBUG:Lmobi/monaca/utils/log/LogItem$LogLevel;

    aput-object v1, v0, v2

    sget-object v1, Lmobi/monaca/utils/log/LogItem$LogLevel;->LOG:Lmobi/monaca/utils/log/LogItem$LogLevel;

    aput-object v1, v0, v3

    sget-object v1, Lmobi/monaca/utils/log/LogItem$LogLevel;->WARNING:Lmobi/monaca/utils/log/LogItem$LogLevel;

    aput-object v1, v0, v4

    sget-object v1, Lmobi/monaca/utils/log/LogItem$LogLevel;->ERROR:Lmobi/monaca/utils/log/LogItem$LogLevel;

    aput-object v1, v0, v5

    sput-object v0, Lmobi/monaca/utils/log/LogItem$LogLevel;->$VALUES:[Lmobi/monaca/utils/log/LogItem$LogLevel;

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
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmobi/monaca/utils/log/LogItem$LogLevel;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 12
    const-class v0, Lmobi/monaca/utils/log/LogItem$LogLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmobi/monaca/utils/log/LogItem$LogLevel;

    return-object v0
.end method

.method public static values()[Lmobi/monaca/utils/log/LogItem$LogLevel;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lmobi/monaca/utils/log/LogItem$LogLevel;->$VALUES:[Lmobi/monaca/utils/log/LogItem$LogLevel;

    invoke-virtual {v0}, [Lmobi/monaca/utils/log/LogItem$LogLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmobi/monaca/utils/log/LogItem$LogLevel;

    return-object v0
.end method
