.class public final enum Lcom/alipay/android/app/helper/ProtocolType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/android/app/helper/ProtocolType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Mini:Lcom/alipay/android/app/helper/ProtocolType;

.field public static final enum Msp:Lcom/alipay/android/app/helper/ProtocolType;

.field private static final synthetic a:[Lcom/alipay/android/app/helper/ProtocolType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/alipay/android/app/helper/ProtocolType;

    const-string/jumbo v1, "Msp"

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/app/helper/ProtocolType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/helper/ProtocolType;->Msp:Lcom/alipay/android/app/helper/ProtocolType;

    new-instance v0, Lcom/alipay/android/app/helper/ProtocolType;

    const-string/jumbo v1, "Mini"

    invoke-direct {v0, v1, v3}, Lcom/alipay/android/app/helper/ProtocolType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/helper/ProtocolType;->Mini:Lcom/alipay/android/app/helper/ProtocolType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/alipay/android/app/helper/ProtocolType;

    sget-object v1, Lcom/alipay/android/app/helper/ProtocolType;->Msp:Lcom/alipay/android/app/helper/ProtocolType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alipay/android/app/helper/ProtocolType;->Mini:Lcom/alipay/android/app/helper/ProtocolType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/alipay/android/app/helper/ProtocolType;->a:[Lcom/alipay/android/app/helper/ProtocolType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/android/app/helper/ProtocolType;
    .locals 1

    const-class v0, Lcom/alipay/android/app/helper/ProtocolType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/helper/ProtocolType;

    return-object v0
.end method

.method public static values()[Lcom/alipay/android/app/helper/ProtocolType;
    .locals 1

    sget-object v0, Lcom/alipay/android/app/helper/ProtocolType;->a:[Lcom/alipay/android/app/helper/ProtocolType;

    invoke-virtual {v0}, [Lcom/alipay/android/app/helper/ProtocolType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/android/app/helper/ProtocolType;

    return-object v0
.end method
