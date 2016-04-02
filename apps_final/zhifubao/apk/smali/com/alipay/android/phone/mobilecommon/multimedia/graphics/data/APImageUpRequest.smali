.class public Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageUpRequest;
.super Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/BaseLoadReq;


# static fields
.field public static final DEFAULT_UP_H:I = 0x500

.field public static final DEFAULT_UP_W:I = 0x500

.field public static final TYPE_DEFAULT:I = 0x4

.field public static final TYPE_HIGH:I = 0x1

.field public static final TYPE_LOW:I = 0x3

.field public static final TYPE_MIDDLE:I = 0x2

.field public static final TYPE_ORIGINAL:I


# instance fields
.field public callback:Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageUploadCallback;

.field public fileData:[B

.field public height:I

.field public option:Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageUploadOption;

.field public uploadType:I

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x500

    invoke-direct {p0}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/BaseLoadReq;-><init>()V

    iput v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageUpRequest;->width:I

    iput v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageUpRequest;->height:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageUpRequest;->uploadType:I

    return-void
.end method
