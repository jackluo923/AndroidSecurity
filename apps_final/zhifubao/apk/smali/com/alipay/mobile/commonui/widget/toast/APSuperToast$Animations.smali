.class public final enum Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$Animations;
.super Ljava/lang/Enum;


# static fields
.field public static final enum FADE:Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$Animations;

.field public static final enum FLYIN:Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$Animations;

.field public static final enum POPUP:Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$Animations;

.field public static final enum SCALE:Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$Animations;

.field private static final synthetic a:[Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$Animations;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$Animations;

    const-string/jumbo v1, "FADE"

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$Animations;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$Animations;->FADE:Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$Animations;

    new-instance v0, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$Animations;

    const-string/jumbo v1, "FLYIN"

    invoke-direct {v0, v1, v3}, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$Animations;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$Animations;->FLYIN:Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$Animations;

    new-instance v0, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$Animations;

    const-string/jumbo v1, "SCALE"

    invoke-direct {v0, v1, v4}, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$Animations;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$Animations;->SCALE:Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$Animations;

    new-instance v0, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$Animations;

    const-string/jumbo v1, "POPUP"

    invoke-direct {v0, v1, v5}, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$Animations;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$Animations;->POPUP:Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$Animations;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$Animations;

    sget-object v1, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$Animations;->FADE:Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$Animations;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$Animations;->FLYIN:Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$Animations;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$Animations;->SCALE:Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$Animations;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$Animations;->POPUP:Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$Animations;

    aput-object v1, v0, v5

    sput-object v0, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$Animations;->a:[Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$Animations;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$Animations;
    .locals 1

    const-class v0, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$Animations;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$Animations;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$Animations;
    .locals 1

    sget-object v0, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$Animations;->a:[Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$Animations;

    invoke-virtual {v0}, [Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$Animations;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$Animations;

    return-object v0
.end method
