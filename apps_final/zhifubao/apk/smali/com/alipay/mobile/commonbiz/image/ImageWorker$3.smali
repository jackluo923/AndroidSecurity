.class Lcom/alipay/mobile/commonbiz/image/ImageWorker$3;
.super Ljava/lang/Object;
.source "ImageWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/commonbiz/image/ImageWorker;

.field private final synthetic b:Lcom/alipay/mobile/commonbiz/image/ImageWorkerCallback;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Landroid/graphics/drawable/BitmapDrawable;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/commonbiz/image/ImageWorker;Lcom/alipay/mobile/commonbiz/image/ImageWorkerCallback;Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/commonbiz/image/ImageWorker$3;->a:Lcom/alipay/mobile/commonbiz/image/ImageWorker;

    iput-object p2, p0, Lcom/alipay/mobile/commonbiz/image/ImageWorker$3;->b:Lcom/alipay/mobile/commonbiz/image/ImageWorkerCallback;

    iput-object p3, p0, Lcom/alipay/mobile/commonbiz/image/ImageWorker$3;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/mobile/commonbiz/image/ImageWorker$3;->d:Landroid/graphics/drawable/BitmapDrawable;

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 260
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/image/ImageWorker$3;->b:Lcom/alipay/mobile/commonbiz/image/ImageWorkerCallback;

    iget-object v1, p0, Lcom/alipay/mobile/commonbiz/image/ImageWorker$3;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/commonbiz/image/ImageWorker$3;->d:Landroid/graphics/drawable/BitmapDrawable;

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/commonbiz/image/ImageWorkerCallback;->onSuccess(Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;)V

    .line 261
    return-void
.end method
