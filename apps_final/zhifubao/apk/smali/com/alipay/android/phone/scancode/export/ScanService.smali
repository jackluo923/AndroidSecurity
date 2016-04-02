.class public abstract Lcom/alipay/android/phone/scancode/export/ScanService;
.super Lcom/alipay/mobile/framework/service/ext/ExternalService;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/ExternalService;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract asyncScanBitmapFromPath(Ljava/lang/String;Lcom/alipay/android/phone/scancode/export/ScanCallback;)V
.end method

.method public abstract notifyScanResult(ZLandroid/content/Intent;)V
.end method

.method public abstract scan(Lcom/alipay/android/phone/scancode/export/ScanRequest;Lcom/alipay/android/phone/scancode/export/ScanCallback;)V
.end method

.method public abstract syncScanBitmapFromBitmap(Landroid/graphics/Bitmap;)Ljava/lang/String;
.end method

.method public abstract syncScanBitmapFromPath(Ljava/lang/String;)Ljava/lang/String;
.end method
