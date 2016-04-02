.class public final enum Lcom/alipay/android/phone/nfd/nfdservice/ui/common/b;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/android/phone/nfd/nfdservice/ui/common/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/b;

.field public static final enum b:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/b;

.field public static final enum c:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/b;

.field public static final enum d:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/b;

.field private static final synthetic e:[Lcom/alipay/android/phone/nfd/nfdservice/ui/common/b;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/b;

    const-string/jumbo v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/b;->a:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/b;

    new-instance v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/b;

    const-string/jumbo v1, "WPA"

    invoke-direct {v0, v1, v3}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/b;->b:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/b;

    new-instance v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/b;

    const-string/jumbo v1, "WPA2"

    invoke-direct {v0, v1, v4}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/b;->c:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/b;

    new-instance v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/b;

    const-string/jumbo v1, "WPA_WPA2"

    invoke-direct {v0, v1, v5}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/b;->d:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/b;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/alipay/android/phone/nfd/nfdservice/ui/common/b;

    sget-object v1, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/b;->a:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/b;->b:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/b;->c:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/b;->d:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/b;

    aput-object v1, v0, v5

    sput-object v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/b;->e:[Lcom/alipay/android/phone/nfd/nfdservice/ui/common/b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/android/phone/nfd/nfdservice/ui/common/b;
    .locals 1

    const-class v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/b;

    return-object v0
.end method

.method public static values()[Lcom/alipay/android/phone/nfd/nfdservice/ui/common/b;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/b;->e:[Lcom/alipay/android/phone/nfd/nfdservice/ui/common/b;

    array-length v1, v0

    new-array v2, v1, [Lcom/alipay/android/phone/nfd/nfdservice/ui/common/b;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
