.class public final enum Lcom/taobao/infsword/statistic/KGB$EnvModeEnum;
.super Ljava/lang/Enum;


# static fields
.field public static final enum ONLINE:Lcom/taobao/infsword/statistic/KGB$EnvModeEnum;

.field public static final enum PRE:Lcom/taobao/infsword/statistic/KGB$EnvModeEnum;

.field public static final enum TEST:Lcom/taobao/infsword/statistic/KGB$EnvModeEnum;

.field private static final synthetic b:[Lcom/taobao/infsword/statistic/KGB$EnvModeEnum;


# instance fields
.field private a:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/taobao/infsword/statistic/KGB$EnvModeEnum;

    const-string/jumbo v1, "TEST"

    invoke-direct {v0, v1, v2, v2}, Lcom/taobao/infsword/statistic/KGB$EnvModeEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/taobao/infsword/statistic/KGB$EnvModeEnum;->TEST:Lcom/taobao/infsword/statistic/KGB$EnvModeEnum;

    new-instance v0, Lcom/taobao/infsword/statistic/KGB$EnvModeEnum;

    const-string/jumbo v1, "PRE"

    invoke-direct {v0, v1, v3, v3}, Lcom/taobao/infsword/statistic/KGB$EnvModeEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/taobao/infsword/statistic/KGB$EnvModeEnum;->PRE:Lcom/taobao/infsword/statistic/KGB$EnvModeEnum;

    new-instance v0, Lcom/taobao/infsword/statistic/KGB$EnvModeEnum;

    const-string/jumbo v1, "ONLINE"

    invoke-direct {v0, v1, v4, v4}, Lcom/taobao/infsword/statistic/KGB$EnvModeEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/taobao/infsword/statistic/KGB$EnvModeEnum;->ONLINE:Lcom/taobao/infsword/statistic/KGB$EnvModeEnum;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/taobao/infsword/statistic/KGB$EnvModeEnum;

    sget-object v1, Lcom/taobao/infsword/statistic/KGB$EnvModeEnum;->TEST:Lcom/taobao/infsword/statistic/KGB$EnvModeEnum;

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/infsword/statistic/KGB$EnvModeEnum;->PRE:Lcom/taobao/infsword/statistic/KGB$EnvModeEnum;

    aput-object v1, v0, v3

    sget-object v1, Lcom/taobao/infsword/statistic/KGB$EnvModeEnum;->ONLINE:Lcom/taobao/infsword/statistic/KGB$EnvModeEnum;

    aput-object v1, v0, v4

    sput-object v0, Lcom/taobao/infsword/statistic/KGB$EnvModeEnum;->b:[Lcom/taobao/infsword/statistic/KGB$EnvModeEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/taobao/infsword/statistic/KGB$EnvModeEnum;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/infsword/statistic/KGB$EnvModeEnum;
    .locals 1

    const-class v0, Lcom/taobao/infsword/statistic/KGB$EnvModeEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/taobao/infsword/statistic/KGB$EnvModeEnum;

    return-object v0
.end method

.method public static values()[Lcom/taobao/infsword/statistic/KGB$EnvModeEnum;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/taobao/infsword/statistic/KGB$EnvModeEnum;->b:[Lcom/taobao/infsword/statistic/KGB$EnvModeEnum;

    array-length v1, v0

    new-array v2, v1, [Lcom/taobao/infsword/statistic/KGB$EnvModeEnum;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final getEnvMode()I
    .locals 1

    iget v0, p0, Lcom/taobao/infsword/statistic/KGB$EnvModeEnum;->a:I

    return v0
.end method

.method public final setEnvMode(I)V
    .locals 0

    iput p1, p0, Lcom/taobao/infsword/statistic/KGB$EnvModeEnum;->a:I

    return-void
.end method
