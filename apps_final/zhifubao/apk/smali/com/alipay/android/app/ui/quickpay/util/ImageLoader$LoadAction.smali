.class public final enum Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$LoadAction;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/app/ui/quickpay/util/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LoadAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$LoadAction;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Background:Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$LoadAction;

.field public static final enum Image:Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$LoadAction;

.field private static final synthetic a:[Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$LoadAction;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$LoadAction;

    const-string/jumbo v1, "Image"

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$LoadAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$LoadAction;->Image:Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$LoadAction;

    new-instance v0, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$LoadAction;

    const-string/jumbo v1, "Background"

    invoke-direct {v0, v1, v3}, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$LoadAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$LoadAction;->Background:Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$LoadAction;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$LoadAction;

    sget-object v1, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$LoadAction;->Image:Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$LoadAction;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$LoadAction;->Background:Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$LoadAction;

    aput-object v1, v0, v3

    sput-object v0, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$LoadAction;->a:[Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$LoadAction;

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

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$LoadAction;
    .locals 1

    const-class v0, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$LoadAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$LoadAction;

    return-object v0
.end method

.method public static values()[Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$LoadAction;
    .locals 1

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$LoadAction;->a:[Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$LoadAction;

    invoke-virtual {v0}, [Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$LoadAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$LoadAction;

    return-object v0
.end method
