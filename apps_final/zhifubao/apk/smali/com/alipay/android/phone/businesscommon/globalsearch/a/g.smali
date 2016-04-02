.class final Lcom/alipay/android/phone/businesscommon/globalsearch/a/g;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageDownLoadCallback;


# instance fields
.field a:Landroid/view/View;

.field b:Ljava/lang/String;

.field c:Z

.field final synthetic d:Lcom/alipay/android/phone/businesscommon/globalsearch/a/b;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/businesscommon/globalsearch/a/b;)V
    .locals 0

    .prologue
    .line 254
    iput-object p1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/a/g;->d:Lcom/alipay/android/phone/businesscommon/globalsearch/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageDownloadRsp;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 271
    return-void
.end method

.method public final onProcess(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 266
    return-void
.end method

.method public final onSucc(Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageDownloadRsp;)V
    .locals 0

    .prologue
    .line 261
    return-void
.end method
