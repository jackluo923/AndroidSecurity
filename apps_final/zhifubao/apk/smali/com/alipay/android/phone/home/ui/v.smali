.class final Lcom/alipay/android/phone/home/ui/v;
.super Ljava/lang/Object;
.source "HeaderView.java"

# interfaces
.implements Lcom/alipay/mobile/commonbiz/image/ImageWorkerCallback;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/home/ui/HeaderView;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/home/ui/HeaderView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/home/ui/v;->a:Lcom/alipay/android/phone/home/ui/HeaderView;

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 217
    return-void
.end method

.method public final onFailure(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 206
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/v;->a:Lcom/alipay/android/phone/home/ui/HeaderView;

    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/v;->a:Lcom/alipay/android/phone/home/ui/HeaderView;

    invoke-virtual {v1}, Lcom/alipay/android/phone/home/ui/HeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/android/phone/openplatform/R$drawable;->m:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    # invokes: Lcom/alipay/android/phone/home/ui/HeaderView;->a(Landroid/graphics/drawable/Drawable;)V
    invoke-static {v0, v1}, Lcom/alipay/android/phone/home/ui/HeaderView;->access$0(Lcom/alipay/android/phone/home/ui/HeaderView;Landroid/graphics/drawable/Drawable;)V

    .line 207
    return-void
.end method

.method public final onProgress(Ljava/lang/String;D)V
    .locals 0

    .prologue
    .line 212
    return-void
.end method

.method public final onStart(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 195
    return-void
.end method

.method public final onSuccess(Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/v;->a:Lcom/alipay/android/phone/home/ui/HeaderView;

    # invokes: Lcom/alipay/android/phone/home/ui/HeaderView;->a(Landroid/graphics/drawable/Drawable;)V
    invoke-static {v0, p2}, Lcom/alipay/android/phone/home/ui/HeaderView;->access$0(Lcom/alipay/android/phone/home/ui/HeaderView;Landroid/graphics/drawable/Drawable;)V

    .line 201
    return-void
.end method
