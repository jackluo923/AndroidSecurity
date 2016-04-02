.class public final enum Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$Type;
.super Ljava/lang/Enum;


# static fields
.field public static final enum BUTTON:Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$Type;

.field public static final enum PROGRESS:Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$Type;

.field public static final enum PROGRESS_HORIZONTAL:Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$Type;

.field public static final enum STANDARD:Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$Type;

.field private static final synthetic a:[Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$Type;

    const-string/jumbo v1, "STANDARD"

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$Type;->STANDARD:Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$Type;

    new-instance v0, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$Type;

    const-string/jumbo v1, "PROGRESS"

    invoke-direct {v0, v1, v3}, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$Type;->PROGRESS:Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$Type;

    new-instance v0, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$Type;

    const-string/jumbo v1, "PROGRESS_HORIZONTAL"

    invoke-direct {v0, v1, v4}, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$Type;->PROGRESS_HORIZONTAL:Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$Type;

    new-instance v0, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$Type;

    const-string/jumbo v1, "BUTTON"

    invoke-direct {v0, v1, v5}, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$Type;->BUTTON:Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$Type;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$Type;

    sget-object v1, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$Type;->STANDARD:Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$Type;->PROGRESS:Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$Type;->PROGRESS_HORIZONTAL:Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$Type;->BUTTON:Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$Type;

    aput-object v1, v0, v5

    sput-object v0, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$Type;->a:[Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$Type;
    .locals 1

    const-class v0, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$Type;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$Type;
    .locals 1

    sget-object v0, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$Type;->a:[Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$Type;

    invoke-virtual {v0}, [Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$Type;

    return-object v0
.end method
