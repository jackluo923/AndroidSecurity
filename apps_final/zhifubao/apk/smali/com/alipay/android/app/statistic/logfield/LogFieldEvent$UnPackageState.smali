.class public final enum Lcom/alipay/android/app/statistic/logfield/LogFieldEvent$UnPackageState;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UnPackageState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/android/app/statistic/logfield/LogFieldEvent$UnPackageState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic a:[Lcom/alipay/android/app/statistic/logfield/LogFieldEvent$UnPackageState;

.field public static final enum cssUpdate:Lcom/alipay/android/app/statistic/logfield/LogFieldEvent$UnPackageState;

.field public static final enum decrypt:Lcom/alipay/android/app/statistic/logfield/LogFieldEvent$UnPackageState;

.field public static final enum net_end:Lcom/alipay/android/app/statistic/logfield/LogFieldEvent$UnPackageState;

.field public static final enum showform:Lcom/alipay/android/app/statistic/logfield/LogFieldEvent$UnPackageState;

.field public static final enum unzip:Lcom/alipay/android/app/statistic/logfield/LogFieldEvent$UnPackageState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent$UnPackageState;

    const-string/jumbo v1, "net_end"

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent$UnPackageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent$UnPackageState;->net_end:Lcom/alipay/android/app/statistic/logfield/LogFieldEvent$UnPackageState;

    new-instance v0, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent$UnPackageState;

    const-string/jumbo v1, "decrypt"

    invoke-direct {v0, v1, v3}, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent$UnPackageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent$UnPackageState;->decrypt:Lcom/alipay/android/app/statistic/logfield/LogFieldEvent$UnPackageState;

    new-instance v0, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent$UnPackageState;

    const-string/jumbo v1, "unzip"

    invoke-direct {v0, v1, v4}, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent$UnPackageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent$UnPackageState;->unzip:Lcom/alipay/android/app/statistic/logfield/LogFieldEvent$UnPackageState;

    new-instance v0, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent$UnPackageState;

    const-string/jumbo v1, "showform"

    invoke-direct {v0, v1, v5}, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent$UnPackageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent$UnPackageState;->showform:Lcom/alipay/android/app/statistic/logfield/LogFieldEvent$UnPackageState;

    new-instance v0, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent$UnPackageState;

    const-string/jumbo v1, "cssUpdate"

    invoke-direct {v0, v1, v6}, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent$UnPackageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent$UnPackageState;->cssUpdate:Lcom/alipay/android/app/statistic/logfield/LogFieldEvent$UnPackageState;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/alipay/android/app/statistic/logfield/LogFieldEvent$UnPackageState;

    sget-object v1, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent$UnPackageState;->net_end:Lcom/alipay/android/app/statistic/logfield/LogFieldEvent$UnPackageState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent$UnPackageState;->decrypt:Lcom/alipay/android/app/statistic/logfield/LogFieldEvent$UnPackageState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent$UnPackageState;->unzip:Lcom/alipay/android/app/statistic/logfield/LogFieldEvent$UnPackageState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent$UnPackageState;->showform:Lcom/alipay/android/app/statistic/logfield/LogFieldEvent$UnPackageState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent$UnPackageState;->cssUpdate:Lcom/alipay/android/app/statistic/logfield/LogFieldEvent$UnPackageState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent$UnPackageState;->a:[Lcom/alipay/android/app/statistic/logfield/LogFieldEvent$UnPackageState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/android/app/statistic/logfield/LogFieldEvent$UnPackageState;
    .locals 1

    const-class v0, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent$UnPackageState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent$UnPackageState;

    return-object v0
.end method

.method public static values()[Lcom/alipay/android/app/statistic/logfield/LogFieldEvent$UnPackageState;
    .locals 1

    sget-object v0, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent$UnPackageState;->a:[Lcom/alipay/android/app/statistic/logfield/LogFieldEvent$UnPackageState;

    invoke-virtual {v0}, [Lcom/alipay/android/app/statistic/logfield/LogFieldEvent$UnPackageState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/android/app/statistic/logfield/LogFieldEvent$UnPackageState;

    return-object v0
.end method
