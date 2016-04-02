.class public Lcom/alipay/android/app/flybird/ui/data/FlybirdTemplateParamsData;
.super Ljava/lang/Object;


# static fields
.field private static a:[Ljava/lang/String;

.field private static b:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "QUICKPAY@cashier-pre-confirm"

    aput-object v1, v0, v2

    const-string/jumbo v1, "QUICKPAY@frontpay-switch-channel"

    aput-object v1, v0, v3

    const-string/jumbo v1, "QUICKPAY@setting-home"

    aput-object v1, v0, v4

    sput-object v0, Lcom/alipay/android/app/flybird/ui/data/FlybirdTemplateParamsData;->a:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "A0"

    aput-object v1, v0, v2

    const-string/jumbo v1, "A1"

    aput-object v1, v0, v3

    const-string/jumbo v1, "A2"

    aput-object v1, v0, v4

    sput-object v0, Lcom/alipay/android/app/flybird/ui/data/FlybirdTemplateParamsData;->b:[Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/alipay/android/app/flybird/ui/data/FlybirdTemplateParamsData;->a:[Ljava/lang/String;

    sget-object v1, Lcom/alipay/android/app/flybird/ui/data/FlybirdTemplateParamsData;->b:[Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/alipay/android/app/assist/MspAssistUtil;->a([Ljava/lang/String;[Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
