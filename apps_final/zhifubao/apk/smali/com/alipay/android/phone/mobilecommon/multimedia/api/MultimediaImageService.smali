.class public abstract Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;
.super Lcom/alipay/mobile/framework/service/ext/ExternalService;

# interfaces
.implements Lcom/alipay/android/phone/mobilecommon/multimedia/api/IMultimediaBaseService;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/ExternalService;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract batchDownLoad(Ljava/util/List;Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageDownLoadCallback;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List;",
            "Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageDownLoadCallback;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;",
            ">;"
        }
    .end annotation
.end method

.method public abstract batchUpLoad(Ljava/util/List;Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageUploadCallback;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List;",
            "Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageUploadCallback;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;",
            ">;"
        }
    .end annotation
.end method

.method public abstract calculateCutImageRect(IIILjava/lang/String;)[I
.end method

.method public abstract calculateDesWidthHeight(Ljava/lang/String;)[I
.end method

.method public abstract cancelLoad(Ljava/lang/String;)V
.end method

.method public abstract cancelUp(Ljava/lang/String;)V
.end method

.method public abstract checkInNetTask(Ljava/lang/String;)Z
.end method

.method public abstract getLoadTaskStatus(Ljava/lang/String;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;
.end method

.method public abstract getOriginalImagePath(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getUpTaskStatus(Ljava/lang/String;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;
.end method

.method public abstract loadCacheBitmap(Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APCacheBitmapReq;)Landroid/graphics/Bitmap;
.end method

.method public abstract loadImage(Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageLoadRequest;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;
.end method

.method public abstract loadImage(Ljava/lang/String;Landroid/widget/ImageView;II)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;
.end method

.method public abstract loadImage(Ljava/lang/String;Landroid/widget/ImageView;III)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;
.end method

.method public abstract loadImage(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;
.end method

.method public abstract loadImage(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;II)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;
.end method

.method public abstract loadImage(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;IILcom/alipay/android/phone/mobilecommon/multimedia/graphics/ImageWorkerPlugin;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;
.end method

.method public abstract loadImage(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageDownLoadCallback;IILcom/alipay/android/phone/mobilecommon/multimedia/graphics/ImageWorkerPlugin;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;
.end method

.method public abstract loadImage(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageDownLoadCallback;IILcom/alipay/android/phone/mobilecommon/multimedia/graphics/ImageWorkerPlugin;Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/Size;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;
.end method

.method public abstract loadImage(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/ImageWorkerPlugin;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;
.end method

.method public abstract loadImage(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;ZII)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;
.end method

.method public abstract loadImage(Ljava/lang/String;Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageDownLoadCallback;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;
.end method

.method public abstract loadImage(Ljava/lang/String;Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageDownLoadCallback;II)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;
.end method

.method public abstract loadImage(Ljava/lang/String;Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageDownLoadCallback;IILcom/alipay/android/phone/mobilecommon/multimedia/graphics/ImageWorkerPlugin;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;
.end method

.method public abstract loadImage(Ljava/lang/String;Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageDownLoadCallback;Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/ImageWorkerPlugin;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;
.end method

.method public abstract loadImage([BLandroid/widget/ImageView;Landroid/graphics/drawable/Drawable;IILcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageDownLoadCallback;Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/ImageWorkerPlugin;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;
.end method

.method public abstract loadLocalImage(Ljava/lang/String;II)Landroid/graphics/Bitmap;
.end method

.method public abstract loadOriginalImage(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;IILcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageDownLoadCallback;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;
.end method

.method public abstract loadOriginalImage(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageDownLoadCallback;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;
.end method

.method public abstract offlineDownload(Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageOfflineDownloadReq;)Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageOfflineDownloadRsp;
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public abstract optimizeView(Landroid/support/v4/view/ViewPager;ZLandroid/support/v4/view/ViewPager$OnPageChangeListener;)V
.end method

.method public abstract optimizeView(Landroid/widget/AbsListView;Landroid/widget/AbsListView$OnScrollListener;)V
.end method

.method public abstract optimizeView(Landroid/widget/AbsListView;ZZLandroid/widget/AbsListView$OnScrollListener;)V
.end method

.method public abstract queryImageFor(Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageQuery;)Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageQueryResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageQuery;",
            ">(TT;)",
            "Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageQueryResult",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract registeLoadCallBack(Ljava/lang/String;Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageDownLoadCallback;)V
.end method

.method public abstract registeUpCallBack(Ljava/lang/String;Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageUploadCallback;)V
.end method

.method public abstract saveImage(Ljava/lang/String;Ljava/lang/String;IILcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageDownLoadCallback;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;
.end method

.method public abstract saveOriginalImage(Ljava/lang/String;Ljava/lang/String;IILcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageDownLoadCallback;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;
.end method

.method public abstract unregisteLoadCallBack(Ljava/lang/String;Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageDownLoadCallback;)V
.end method

.method public abstract unregisteUpCallBack(Ljava/lang/String;Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageUploadCallback;)V
.end method

.method public abstract uploadImage(Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageUpRequest;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;
.end method

.method public abstract uploadImage(Ljava/lang/String;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;
.end method

.method public abstract uploadImage(Ljava/lang/String;Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageUploadCallback;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;
.end method

.method public abstract uploadImage(Ljava/lang/String;Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageUploadCallback;Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageUploadOption;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;
.end method

.method public abstract uploadImage(Ljava/lang/String;Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageUploadOption;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;
.end method

.method public abstract uploadImage(Ljava/lang/String;Z)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;
.end method

.method public abstract uploadImage([B)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;
.end method

.method public abstract uploadImage([BLcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageUploadCallback;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;
.end method

.method public abstract uploadOriginalImage(Ljava/lang/String;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;
.end method

.method public abstract uploadOriginalImage(Ljava/lang/String;Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageUploadCallback;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;
.end method

.method public abstract uploadOriginalImage(Ljava/lang/String;ZLcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageUploadCallback;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;
.end method

.method public abstract zoomBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
.end method
