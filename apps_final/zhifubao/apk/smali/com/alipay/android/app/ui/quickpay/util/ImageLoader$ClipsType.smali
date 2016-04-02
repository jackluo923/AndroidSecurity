.class public final enum Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$ClipsType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/app/ui/quickpay/util/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ClipsType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$ClipsType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Corner:Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$ClipsType;

.field public static final enum None:Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$ClipsType;

.field public static final enum Round:Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$ClipsType;

.field private static final synthetic a:[Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$ClipsType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$ClipsType;

    const-string/jumbo v1, "None"

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$ClipsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$ClipsType;->None:Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$ClipsType;

    new-instance v0, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$ClipsType;

    const-string/jumbo v1, "Round"

    invoke-direct {v0, v1, v3}, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$ClipsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$ClipsType;->Round:Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$ClipsType;

    new-instance v0, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$ClipsType;

    const-string/jumbo v1, "Corner"

    invoke-direct {v0, v1, v4}, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$ClipsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$ClipsType;->Corner:Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$ClipsType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$ClipsType;

    sget-object v1, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$ClipsType;->None:Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$ClipsType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$ClipsType;->Round:Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$ClipsType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$ClipsType;->Corner:Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$ClipsType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$ClipsType;->a:[Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$ClipsType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$ClipsType;
    .locals 1

    const-class v0, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$ClipsType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$ClipsType;

    return-object v0
.end method

.method public static values()[Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$ClipsType;
    .locals 1

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$ClipsType;->a:[Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$ClipsType;

    invoke-virtual {v0}, [Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$ClipsType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$ClipsType;

    return-object v0
.end method
