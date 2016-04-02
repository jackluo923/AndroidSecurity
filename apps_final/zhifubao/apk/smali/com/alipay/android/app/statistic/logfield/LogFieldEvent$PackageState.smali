.class public final enum Lcom/alipay/android/app/statistic/logfield/LogFieldEvent$PackageState;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PackageState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/android/app/statistic/logfield/LogFieldEvent$PackageState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic a:[Lcom/alipay/android/app/statistic/logfield/LogFieldEvent$PackageState;

.field public static final enum encrypt:Lcom/alipay/android/app/statistic/logfield/LogFieldEvent$PackageState;

.field public static final enum net_start:Lcom/alipay/android/app/statistic/logfield/LogFieldEvent$PackageState;

.field public static final enum zip:Lcom/alipay/android/app/statistic/logfield/LogFieldEvent$PackageState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent$PackageState;

    const-string/jumbo v1, "zip"

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent$PackageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent$PackageState;->zip:Lcom/alipay/android/app/statistic/logfield/LogFieldEvent$PackageState;

    new-instance v0, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent$PackageState;

    const-string/jumbo v1, "encrypt"

    invoke-direct {v0, v1, v3}, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent$PackageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent$PackageState;->encrypt:Lcom/alipay/android/app/statistic/logfield/LogFieldEvent$PackageState;

    new-instance v0, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent$PackageState;

    const-string/jumbo v1, "net_start"

    invoke-direct {v0, v1, v4}, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent$PackageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent$PackageState;->net_start:Lcom/alipay/android/app/statistic/logfield/LogFieldEvent$PackageState;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alipay/android/app/statistic/logfield/LogFieldEvent$PackageState;

    sget-object v1, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent$PackageState;->zip:Lcom/alipay/android/app/statistic/logfield/LogFieldEvent$PackageState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent$PackageState;->encrypt:Lcom/alipay/android/app/statistic/logfield/LogFieldEvent$PackageState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent$PackageState;->net_start:Lcom/alipay/android/app/statistic/logfield/LogFieldEvent$PackageState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent$PackageState;->a:[Lcom/alipay/android/app/statistic/logfield/LogFieldEvent$PackageState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/android/app/statistic/logfield/LogFieldEvent$PackageState;
    .locals 1

    const-class v0, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent$PackageState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent$PackageState;

    return-object v0
.end method

.method public static values()[Lcom/alipay/android/app/statistic/logfield/LogFieldEvent$PackageState;
    .locals 1

    sget-object v0, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent$PackageState;->a:[Lcom/alipay/android/app/statistic/logfield/LogFieldEvent$PackageState;

    invoke-virtual {v0}, [Lcom/alipay/android/app/statistic/logfield/LogFieldEvent$PackageState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/android/app/statistic/logfield/LogFieldEvent$PackageState;

    return-object v0
.end method
