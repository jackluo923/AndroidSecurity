.class public final enum Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$IconPosition;
.super Ljava/lang/Enum;


# static fields
.field public static final enum BOTTOM:Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$IconPosition;

.field public static final enum LEFT:Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$IconPosition;

.field public static final enum RIGHT:Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$IconPosition;

.field public static final enum TOP:Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$IconPosition;

.field private static final synthetic a:[Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$IconPosition;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$IconPosition;

    const-string/jumbo v1, "LEFT"

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$IconPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$IconPosition;->LEFT:Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$IconPosition;

    new-instance v0, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$IconPosition;

    const-string/jumbo v1, "RIGHT"

    invoke-direct {v0, v1, v3}, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$IconPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$IconPosition;->RIGHT:Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$IconPosition;

    new-instance v0, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$IconPosition;

    const-string/jumbo v1, "TOP"

    invoke-direct {v0, v1, v4}, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$IconPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$IconPosition;->TOP:Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$IconPosition;

    new-instance v0, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$IconPosition;

    const-string/jumbo v1, "BOTTOM"

    invoke-direct {v0, v1, v5}, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$IconPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$IconPosition;->BOTTOM:Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$IconPosition;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$IconPosition;

    sget-object v1, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$IconPosition;->LEFT:Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$IconPosition;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$IconPosition;->RIGHT:Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$IconPosition;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$IconPosition;->TOP:Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$IconPosition;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$IconPosition;->BOTTOM:Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$IconPosition;

    aput-object v1, v0, v5

    sput-object v0, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$IconPosition;->a:[Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$IconPosition;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$IconPosition;
    .locals 1

    const-class v0, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$IconPosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$IconPosition;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$IconPosition;
    .locals 1

    sget-object v0, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$IconPosition;->a:[Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$IconPosition;

    invoke-virtual {v0}, [Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$IconPosition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$IconPosition;

    return-object v0
.end method
