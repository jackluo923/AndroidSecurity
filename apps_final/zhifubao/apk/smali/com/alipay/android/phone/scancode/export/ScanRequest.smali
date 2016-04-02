.class public Lcom/alipay/android/phone/scancode/export/ScanRequest;
.super Ljava/lang/Object;


# instance fields
.field private mCallBackUrl:Ljava/lang/String;

.field private mDataType:Ljava/lang/String;

.field private mScanType:Lcom/alipay/android/phone/scancode/export/ScanRequest$ScanType;

.field private mSourceId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/alipay/android/phone/scancode/export/ScanRequest$ScanType;->BARCODE:Lcom/alipay/android/phone/scancode/export/ScanRequest$ScanType;

    iput-object v0, p0, Lcom/alipay/android/phone/scancode/export/ScanRequest;->mScanType:Lcom/alipay/android/phone/scancode/export/ScanRequest$ScanType;

    return-void
.end method


# virtual methods
.method public getCallBackUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/scancode/export/ScanRequest;->mCallBackUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getDataType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/scancode/export/ScanRequest;->mDataType:Ljava/lang/String;

    return-object v0
.end method

.method public getScanType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/scancode/export/ScanRequest;->mScanType:Lcom/alipay/android/phone/scancode/export/ScanRequest$ScanType;

    iget-object v0, v0, Lcom/alipay/android/phone/scancode/export/ScanRequest$ScanType;->typeStr:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/scancode/export/ScanRequest;->mSourceId:Ljava/lang/String;

    return-object v0
.end method

.method public setCallBackUrl(Ljava/lang/String;)Lcom/alipay/android/phone/scancode/export/ScanRequest;
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/scancode/export/ScanRequest;->mCallBackUrl:Ljava/lang/String;

    return-object p0
.end method

.method public setDataType(Ljava/lang/String;)Lcom/alipay/android/phone/scancode/export/ScanRequest;
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/scancode/export/ScanRequest;->mDataType:Ljava/lang/String;

    return-object p0
.end method

.method public setScanType(Lcom/alipay/android/phone/scancode/export/ScanRequest$ScanType;)Lcom/alipay/android/phone/scancode/export/ScanRequest;
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/scancode/export/ScanRequest;->mScanType:Lcom/alipay/android/phone/scancode/export/ScanRequest$ScanType;

    return-object p0
.end method

.method public setSourceId(Ljava/lang/String;)Lcom/alipay/android/phone/scancode/export/ScanRequest;
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/scancode/export/ScanRequest;->mSourceId:Ljava/lang/String;

    return-object p0
.end method
