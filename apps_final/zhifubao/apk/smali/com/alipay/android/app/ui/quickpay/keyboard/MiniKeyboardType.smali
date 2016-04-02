.class public final enum Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum All:Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardType;

.field public static final enum Digit:Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardType;

.field public static final enum Money:Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardType;

.field private static final synthetic b:[Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardType;


# instance fields
.field private a:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardType;

    const-string/jumbo v1, "All"

    invoke-direct {v0, v1, v2, v2}, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardType;->All:Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardType;

    new-instance v0, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardType;

    const-string/jumbo v1, "Digit"

    invoke-direct {v0, v1, v3, v3}, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardType;->Digit:Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardType;

    new-instance v0, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardType;

    const-string/jumbo v1, "Money"

    invoke-direct {v0, v1, v4, v4}, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardType;->Money:Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardType;

    sget-object v1, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardType;->All:Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardType;->Digit:Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardType;->Money:Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardType;->b:[Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardType;->a:I

    iput p3, p0, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardType;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardType;
    .locals 1

    const-class v0, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardType;

    return-object v0
.end method

.method public static values()[Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardType;
    .locals 1

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardType;->b:[Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardType;

    invoke-virtual {v0}, [Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardType;

    return-object v0
.end method
