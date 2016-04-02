.class Lcom/alipay/mobile/commonbiz/image/ImageWorker$5;
.super Ljava/lang/Object;
.source "ImageWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/commonbiz/image/ImageWorker;

.field private final synthetic b:Landroid/view/View;

.field private final synthetic c:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/commonbiz/image/ImageWorker;Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/commonbiz/image/ImageWorker$5;->a:Lcom/alipay/mobile/commonbiz/image/ImageWorker;

    iput-object p2, p0, Lcom/alipay/mobile/commonbiz/image/ImageWorker$5;->b:Landroid/view/View;

    iput-object p3, p0, Lcom/alipay/mobile/commonbiz/image/ImageWorker$5;->c:Landroid/graphics/drawable/Drawable;

    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 296
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/image/ImageWorker$5;->a:Lcom/alipay/mobile/commonbiz/image/ImageWorker;

    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/image/ImageWorker$5;->b:Landroid/view/View;

    iget-object v1, p0, Lcom/alipay/mobile/commonbiz/image/ImageWorker$5;->c:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Lcom/alipay/mobile/commonbiz/image/ImageWorker;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 297
    return-void
.end method
