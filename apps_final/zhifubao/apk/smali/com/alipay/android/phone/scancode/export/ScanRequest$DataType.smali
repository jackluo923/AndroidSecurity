.class public final enum Lcom/alipay/android/phone/scancode/export/ScanRequest$DataType;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/alipay/android/phone/scancode/export/ScanRequest$DataType;

.field public static final enum RAWDATA:Lcom/alipay/android/phone/scancode/export/ScanRequest$DataType;


# instance fields
.field typeStr:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lcom/alipay/android/phone/scancode/export/ScanRequest$DataType;

    const-string/jumbo v1, "RAWDATA"

    const-string/jumbo v2, "rawData"

    invoke-direct {v0, v1, v3, v2}, Lcom/alipay/android/phone/scancode/export/ScanRequest$DataType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/phone/scancode/export/ScanRequest$DataType;->RAWDATA:Lcom/alipay/android/phone/scancode/export/ScanRequest$DataType;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/alipay/android/phone/scancode/export/ScanRequest$DataType;

    sget-object v1, Lcom/alipay/android/phone/scancode/export/ScanRequest$DataType;->RAWDATA:Lcom/alipay/android/phone/scancode/export/ScanRequest$DataType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/alipay/android/phone/scancode/export/ScanRequest$DataType;->ENUM$VALUES:[Lcom/alipay/android/phone/scancode/export/ScanRequest$DataType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/alipay/android/phone/scancode/export/ScanRequest$DataType;->typeStr:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/android/phone/scancode/export/ScanRequest$DataType;
    .locals 1

    const-class v0, Lcom/alipay/android/phone/scancode/export/ScanRequest$DataType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/scancode/export/ScanRequest$DataType;

    return-object v0
.end method

.method public static values()[Lcom/alipay/android/phone/scancode/export/ScanRequest$DataType;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/alipay/android/phone/scancode/export/ScanRequest$DataType;->ENUM$VALUES:[Lcom/alipay/android/phone/scancode/export/ScanRequest$DataType;

    array-length v1, v0

    new-array v2, v1, [Lcom/alipay/android/phone/scancode/export/ScanRequest$DataType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
