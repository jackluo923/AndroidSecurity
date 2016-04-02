.class public final enum Lcom/alipay/android/app/pay/ResultStatus;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/android/app/pay/ResultStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CANCELED:Lcom/alipay/android/app/pay/ResultStatus;

.field public static final enum FAILED:Lcom/alipay/android/app/pay/ResultStatus;

.field public static final enum NETWORK_ERROR:Lcom/alipay/android/app/pay/ResultStatus;

.field public static final enum PARAMS_ERROR:Lcom/alipay/android/app/pay/ResultStatus;

.field public static final enum PAY_WAITTING:Lcom/alipay/android/app/pay/ResultStatus;

.field public static final enum SUCCEEDED:Lcom/alipay/android/app/pay/ResultStatus;

.field private static final synthetic c:[Lcom/alipay/android/app/pay/ResultStatus;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v0, Lcom/alipay/android/app/pay/ResultStatus;

    const-string/jumbo v1, "SUCCEEDED"

    const/16 v2, 0x2328

    const-string/jumbo v3, "\u652f\u4ed8\u6210\u529f"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/alipay/android/app/pay/ResultStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/pay/ResultStatus;->SUCCEEDED:Lcom/alipay/android/app/pay/ResultStatus;

    new-instance v0, Lcom/alipay/android/app/pay/ResultStatus;

    const-string/jumbo v1, "FAILED"

    const/16 v2, 0xfa0

    const-string/jumbo v3, "\u7cfb\u7edf\u7e41\u5fd9\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/alipay/android/app/pay/ResultStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/pay/ResultStatus;->FAILED:Lcom/alipay/android/app/pay/ResultStatus;

    new-instance v0, Lcom/alipay/android/app/pay/ResultStatus;

    const-string/jumbo v1, "CANCELED"

    const/16 v2, 0x1771

    const-string/jumbo v3, "\u7528\u6237\u53d6\u6d88"

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/alipay/android/app/pay/ResultStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/pay/ResultStatus;->CANCELED:Lcom/alipay/android/app/pay/ResultStatus;

    new-instance v0, Lcom/alipay/android/app/pay/ResultStatus;

    const-string/jumbo v1, "NETWORK_ERROR"

    const/16 v2, 0x1772

    const-string/jumbo v3, "\u7f51\u7edc\u8fde\u63a5\u5f02\u5e38"

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/alipay/android/app/pay/ResultStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/pay/ResultStatus;->NETWORK_ERROR:Lcom/alipay/android/app/pay/ResultStatus;

    new-instance v0, Lcom/alipay/android/app/pay/ResultStatus;

    const-string/jumbo v1, "PARAMS_ERROR"

    const/16 v2, 0xfa1

    const-string/jumbo v3, "\u53c2\u6570\u9519\u8bef"

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/alipay/android/app/pay/ResultStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/pay/ResultStatus;->PARAMS_ERROR:Lcom/alipay/android/app/pay/ResultStatus;

    new-instance v0, Lcom/alipay/android/app/pay/ResultStatus;

    const-string/jumbo v1, "PAY_WAITTING"

    const/4 v2, 0x5

    const/16 v3, 0x1f40

    const-string/jumbo v4, "\u652f\u4ed8\u7ed3\u679c\u786e\u8ba4\u4e2d"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/android/app/pay/ResultStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/pay/ResultStatus;->PAY_WAITTING:Lcom/alipay/android/app/pay/ResultStatus;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/alipay/android/app/pay/ResultStatus;

    sget-object v1, Lcom/alipay/android/app/pay/ResultStatus;->SUCCEEDED:Lcom/alipay/android/app/pay/ResultStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alipay/android/app/pay/ResultStatus;->FAILED:Lcom/alipay/android/app/pay/ResultStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alipay/android/app/pay/ResultStatus;->CANCELED:Lcom/alipay/android/app/pay/ResultStatus;

    aput-object v1, v0, v7

    sget-object v1, Lcom/alipay/android/app/pay/ResultStatus;->NETWORK_ERROR:Lcom/alipay/android/app/pay/ResultStatus;

    aput-object v1, v0, v8

    sget-object v1, Lcom/alipay/android/app/pay/ResultStatus;->PARAMS_ERROR:Lcom/alipay/android/app/pay/ResultStatus;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/alipay/android/app/pay/ResultStatus;->PAY_WAITTING:Lcom/alipay/android/app/pay/ResultStatus;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alipay/android/app/pay/ResultStatus;->c:[Lcom/alipay/android/app/pay/ResultStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/alipay/android/app/pay/ResultStatus;->a:I

    iput-object p4, p0, Lcom/alipay/android/app/pay/ResultStatus;->b:Ljava/lang/String;

    return-void
.end method

.method public static c()Lcom/alipay/android/app/pay/ResultStatus;
    .locals 1

    sget-object v0, Lcom/alipay/android/app/pay/ResultStatus;->NETWORK_ERROR:Lcom/alipay/android/app/pay/ResultStatus;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/android/app/pay/ResultStatus;
    .locals 1

    const-class v0, Lcom/alipay/android/app/pay/ResultStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/pay/ResultStatus;

    return-object v0
.end method

.method public static values()[Lcom/alipay/android/app/pay/ResultStatus;
    .locals 1

    sget-object v0, Lcom/alipay/android/app/pay/ResultStatus;->c:[Lcom/alipay/android/app/pay/ResultStatus;

    invoke-virtual {v0}, [Lcom/alipay/android/app/pay/ResultStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/android/app/pay/ResultStatus;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/alipay/android/app/pay/ResultStatus;->a:I

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/pay/ResultStatus;->b:Ljava/lang/String;

    return-object v0
.end method
