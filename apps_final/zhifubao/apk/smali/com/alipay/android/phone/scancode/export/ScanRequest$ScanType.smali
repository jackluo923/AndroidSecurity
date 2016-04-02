.class public final enum Lcom/alipay/android/phone/scancode/export/ScanRequest$ScanType;
.super Ljava/lang/Enum;


# static fields
.field public static final enum BARCODE:Lcom/alipay/android/phone/scancode/export/ScanRequest$ScanType;

.field public static final enum CARD:Lcom/alipay/android/phone/scancode/export/ScanRequest$ScanType;

.field private static final synthetic ENUM$VALUES:[Lcom/alipay/android/phone/scancode/export/ScanRequest$ScanType;

.field public static final enum QRCODE:Lcom/alipay/android/phone/scancode/export/ScanRequest$ScanType;


# instance fields
.field typeStr:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/alipay/android/phone/scancode/export/ScanRequest$ScanType;

    const-string/jumbo v1, "BARCODE"

    const-string/jumbo v2, "bar"

    invoke-direct {v0, v1, v3, v2}, Lcom/alipay/android/phone/scancode/export/ScanRequest$ScanType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/phone/scancode/export/ScanRequest$ScanType;->BARCODE:Lcom/alipay/android/phone/scancode/export/ScanRequest$ScanType;

    new-instance v0, Lcom/alipay/android/phone/scancode/export/ScanRequest$ScanType;

    const-string/jumbo v1, "CARD"

    const-string/jumbo v2, "card"

    invoke-direct {v0, v1, v4, v2}, Lcom/alipay/android/phone/scancode/export/ScanRequest$ScanType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/phone/scancode/export/ScanRequest$ScanType;->CARD:Lcom/alipay/android/phone/scancode/export/ScanRequest$ScanType;

    new-instance v0, Lcom/alipay/android/phone/scancode/export/ScanRequest$ScanType;

    const-string/jumbo v1, "QRCODE"

    const-string/jumbo v2, "qr"

    invoke-direct {v0, v1, v5, v2}, Lcom/alipay/android/phone/scancode/export/ScanRequest$ScanType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/phone/scancode/export/ScanRequest$ScanType;->QRCODE:Lcom/alipay/android/phone/scancode/export/ScanRequest$ScanType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alipay/android/phone/scancode/export/ScanRequest$ScanType;

    sget-object v1, Lcom/alipay/android/phone/scancode/export/ScanRequest$ScanType;->BARCODE:Lcom/alipay/android/phone/scancode/export/ScanRequest$ScanType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alipay/android/phone/scancode/export/ScanRequest$ScanType;->CARD:Lcom/alipay/android/phone/scancode/export/ScanRequest$ScanType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alipay/android/phone/scancode/export/ScanRequest$ScanType;->QRCODE:Lcom/alipay/android/phone/scancode/export/ScanRequest$ScanType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/alipay/android/phone/scancode/export/ScanRequest$ScanType;->ENUM$VALUES:[Lcom/alipay/android/phone/scancode/export/ScanRequest$ScanType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/alipay/android/phone/scancode/export/ScanRequest$ScanType;->typeStr:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/android/phone/scancode/export/ScanRequest$ScanType;
    .locals 1

    const-class v0, Lcom/alipay/android/phone/scancode/export/ScanRequest$ScanType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/scancode/export/ScanRequest$ScanType;

    return-object v0
.end method

.method public static values()[Lcom/alipay/android/phone/scancode/export/ScanRequest$ScanType;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/alipay/android/phone/scancode/export/ScanRequest$ScanType;->ENUM$VALUES:[Lcom/alipay/android/phone/scancode/export/ScanRequest$ScanType;

    array-length v1, v0

    new-array v2, v1, [Lcom/alipay/android/phone/scancode/export/ScanRequest$ScanType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
