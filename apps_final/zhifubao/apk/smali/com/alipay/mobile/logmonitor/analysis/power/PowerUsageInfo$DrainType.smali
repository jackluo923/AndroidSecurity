.class public final enum Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;
.super Ljava/lang/Enum;
.source "PowerUsageInfo.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;

.field public static final enum APP:Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;

.field public static final enum BLUETOOTH:Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;

.field public static final enum CELL:Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;

.field public static final enum IDLE:Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;

.field public static final enum KERNEL:Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;

.field public static final enum MEDIASERVER:Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;

.field public static final enum PHONE:Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;

.field public static final enum SCREEN:Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;

.field public static final enum WIFI:Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 69
    new-instance v0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;

    const-string/jumbo v1, "IDLE"

    invoke-direct {v0, v1, v3}, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;->IDLE:Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;

    new-instance v0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;

    const-string/jumbo v1, "CELL"

    invoke-direct {v0, v1, v4}, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;->CELL:Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;

    new-instance v0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;

    const-string/jumbo v1, "PHONE"

    invoke-direct {v0, v1, v5}, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;->PHONE:Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;

    new-instance v0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;

    const-string/jumbo v1, "WIFI"

    invoke-direct {v0, v1, v6}, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;->WIFI:Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;

    new-instance v0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;

    const-string/jumbo v1, "BLUETOOTH"

    invoke-direct {v0, v1, v7}, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;->BLUETOOTH:Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;

    new-instance v0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;

    const-string/jumbo v1, "SCREEN"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;->SCREEN:Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;

    new-instance v0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;

    const-string/jumbo v1, "APP"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;->APP:Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;

    new-instance v0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;

    const-string/jumbo v1, "KERNEL"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;->KERNEL:Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;

    new-instance v0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;

    const-string/jumbo v1, "MEDIASERVER"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;->MEDIASERVER:Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;

    .line 68
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;

    sget-object v1, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;->IDLE:Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;->CELL:Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;->PHONE:Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;->WIFI:Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;->BLUETOOTH:Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;->SCREEN:Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;->APP:Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;->KERNEL:Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;->MEDIASERVER:Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;->$VALUES:[Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;

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
    .line 68
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;
    .locals 1

    .prologue
    .line 68
    const-class v0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;->$VALUES:[Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;

    invoke-virtual {v0}, [Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;

    return-object v0
.end method
