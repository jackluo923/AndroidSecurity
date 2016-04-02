.class public final enum Lmobi/monaca/utils/log/LogItem$Source;
.super Ljava/lang/Enum;
.source "LogItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/monaca/utils/log/LogItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Source"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmobi/monaca/utils/log/LogItem$Source;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmobi/monaca/utils/log/LogItem$Source;

.field public static final enum JAVASCRIPT:Lmobi/monaca/utils/log/LogItem$Source;

.field public static final enum SYSTEM:Lmobi/monaca/utils/log/LogItem$Source;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 17
    new-instance v0, Lmobi/monaca/utils/log/LogItem$Source;

    const-string v1, "JAVASCRIPT"

    invoke-direct {v0, v1, v2}, Lmobi/monaca/utils/log/LogItem$Source;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmobi/monaca/utils/log/LogItem$Source;->JAVASCRIPT:Lmobi/monaca/utils/log/LogItem$Source;

    new-instance v0, Lmobi/monaca/utils/log/LogItem$Source;

    const-string v1, "SYSTEM"

    invoke-direct {v0, v1, v3}, Lmobi/monaca/utils/log/LogItem$Source;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmobi/monaca/utils/log/LogItem$Source;->SYSTEM:Lmobi/monaca/utils/log/LogItem$Source;

    .line 16
    const/4 v0, 0x2

    new-array v0, v0, [Lmobi/monaca/utils/log/LogItem$Source;

    sget-object v1, Lmobi/monaca/utils/log/LogItem$Source;->JAVASCRIPT:Lmobi/monaca/utils/log/LogItem$Source;

    aput-object v1, v0, v2

    sget-object v1, Lmobi/monaca/utils/log/LogItem$Source;->SYSTEM:Lmobi/monaca/utils/log/LogItem$Source;

    aput-object v1, v0, v3

    sput-object v0, Lmobi/monaca/utils/log/LogItem$Source;->$VALUES:[Lmobi/monaca/utils/log/LogItem$Source;

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
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmobi/monaca/utils/log/LogItem$Source;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 16
    const-class v0, Lmobi/monaca/utils/log/LogItem$Source;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmobi/monaca/utils/log/LogItem$Source;

    return-object v0
.end method

.method public static values()[Lmobi/monaca/utils/log/LogItem$Source;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lmobi/monaca/utils/log/LogItem$Source;->$VALUES:[Lmobi/monaca/utils/log/LogItem$Source;

    invoke-virtual {v0}, [Lmobi/monaca/utils/log/LogItem$Source;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmobi/monaca/utils/log/LogItem$Source;

    return-object v0
.end method
