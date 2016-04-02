.class public Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageDownloadOption;
.super Ljava/lang/Object;


# instance fields
.field private defaultDrawable:Landroid/graphics/drawable/Drawable;

.field private displayer:Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APDisplayer;

.field private image_x:I

.field private image_y:I

.field private imgType:Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageDownloadOption$IMGTYPE;

.field private isBackground:Z

.field private isSyncLoading:Z

.field private loadType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDefaultDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageDownloadOption;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDisplayer()Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APDisplayer;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageDownloadOption;->displayer:Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APDisplayer;

    return-object v0
.end method

.method public getImage_x()I
    .locals 1

    iget v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageDownloadOption;->image_x:I

    return v0
.end method

.method public getImage_y()I
    .locals 1

    iget v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageDownloadOption;->image_y:I

    return v0
.end method

.method public getImgType()Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageDownloadOption$IMGTYPE;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageDownloadOption;->imgType:Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageDownloadOption$IMGTYPE;

    return-object v0
.end method

.method public getLoadType()I
    .locals 1

    iget v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageDownloadOption;->loadType:I

    return v0
.end method

.method public isBackground()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageDownloadOption;->isBackground:Z

    return v0
.end method

.method isSyncLoading()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageDownloadOption;->isSyncLoading:Z

    return v0
.end method

.method public setDefaultDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageDownloadOption;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setDisplayer(Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APDisplayer;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageDownloadOption;->displayer:Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APDisplayer;

    return-void
.end method

.method public setImage_x(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageDownloadOption;->image_x:I

    return-void
.end method

.method public setImage_y(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageDownloadOption;->image_y:I

    return-void
.end method

.method public setImgType(Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageDownloadOption$IMGTYPE;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageDownloadOption;->imgType:Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageDownloadOption$IMGTYPE;

    return-void
.end method

.method public setIsBackground(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageDownloadOption;->isBackground:Z

    return-void
.end method

.method public setLoadType(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageDownloadOption;->loadType:I

    return-void
.end method

.method public setSyncLoading(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageDownloadOption;->isSyncLoading:Z

    return-void
.end method
