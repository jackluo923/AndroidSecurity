.class public final enum Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageDownloadOption$IMGTYPE;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageDownloadOption$IMGTYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageDownloadOption$IMGTYPE;

.field public static final enum JPEG:Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageDownloadOption$IMGTYPE;

.field public static final enum WEBP:Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageDownloadOption$IMGTYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageDownloadOption$IMGTYPE;

    const-string/jumbo v1, "JPEG"

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageDownloadOption$IMGTYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageDownloadOption$IMGTYPE;->JPEG:Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageDownloadOption$IMGTYPE;

    new-instance v0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageDownloadOption$IMGTYPE;

    const-string/jumbo v1, "WEBP"

    invoke-direct {v0, v1, v3}, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageDownloadOption$IMGTYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageDownloadOption$IMGTYPE;->WEBP:Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageDownloadOption$IMGTYPE;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageDownloadOption$IMGTYPE;

    sget-object v1, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageDownloadOption$IMGTYPE;->JPEG:Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageDownloadOption$IMGTYPE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageDownloadOption$IMGTYPE;->WEBP:Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageDownloadOption$IMGTYPE;

    aput-object v1, v0, v3

    sput-object v0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageDownloadOption$IMGTYPE;->ENUM$VALUES:[Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageDownloadOption$IMGTYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageDownloadOption$IMGTYPE;
    .locals 1

    const-class v0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageDownloadOption$IMGTYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageDownloadOption$IMGTYPE;

    return-object v0
.end method

.method public static values()[Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageDownloadOption$IMGTYPE;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageDownloadOption$IMGTYPE;->ENUM$VALUES:[Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageDownloadOption$IMGTYPE;

    array-length v1, v0

    new-array v2, v1, [Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageDownloadOption$IMGTYPE;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
