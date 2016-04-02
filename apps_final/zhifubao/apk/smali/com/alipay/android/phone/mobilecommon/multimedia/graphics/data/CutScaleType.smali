.class public final enum Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/CutScaleType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/CutScaleType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CENTER_CROP:Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/CutScaleType;

.field private static final synthetic ENUM$VALUES:[Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/CutScaleType;

.field public static final enum KEEP_RATIO:Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/CutScaleType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/CutScaleType;

    const-string/jumbo v1, "CENTER_CROP"

    invoke-direct {v0, v1, v2, v2}, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/CutScaleType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/CutScaleType;->CENTER_CROP:Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/CutScaleType;

    new-instance v0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/CutScaleType;

    const-string/jumbo v1, "KEEP_RATIO"

    invoke-direct {v0, v1, v3, v3}, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/CutScaleType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/CutScaleType;->KEEP_RATIO:Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/CutScaleType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/CutScaleType;

    sget-object v1, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/CutScaleType;->CENTER_CROP:Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/CutScaleType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/CutScaleType;->KEEP_RATIO:Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/CutScaleType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/CutScaleType;->ENUM$VALUES:[Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/CutScaleType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/CutScaleType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/CutScaleType;
    .locals 1

    const-class v0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/CutScaleType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/CutScaleType;

    return-object v0
.end method

.method public static values()[Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/CutScaleType;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/CutScaleType;->ENUM$VALUES:[Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/CutScaleType;

    array-length v1, v0

    new-array v2, v1, [Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/CutScaleType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    iget v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/CutScaleType;->value:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/CutScaleType;->value:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
