.class final Lcom/alipay/android/phone/home/user/b;
.super Ljava/lang/Object;
.source "UserInfoActivity.java"

# interfaces
.implements Lcom/alipay/mobile/commonbiz/image/ImageWorkerCallback;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/home/user/UserInfoActivity;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/home/user/UserInfoActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/home/user/b;->a:Lcom/alipay/android/phone/home/user/UserInfoActivity;

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 222
    return-void
.end method

.method public final onFailure(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 211
    iget-object v0, p0, Lcom/alipay/android/phone/home/user/b;->a:Lcom/alipay/android/phone/home/user/UserInfoActivity;

    iget-object v1, p0, Lcom/alipay/android/phone/home/user/b;->a:Lcom/alipay/android/phone/home/user/UserInfoActivity;

    invoke-virtual {v1}, Lcom/alipay/android/phone/home/user/UserInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/android/phone/openplatform/R$drawable;->m:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/phone/home/user/UserInfoActivity;->a(Lcom/alipay/android/phone/home/user/UserInfoActivity;Landroid/graphics/drawable/Drawable;)V

    .line 212
    return-void
.end method

.method public final onProgress(Ljava/lang/String;D)V
    .locals 0

    .prologue
    .line 217
    return-void
.end method

.method public final onStart(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 200
    return-void
.end method

.method public final onSuccess(Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/alipay/android/phone/home/user/b;->a:Lcom/alipay/android/phone/home/user/UserInfoActivity;

    invoke-static {v0, p2}, Lcom/alipay/android/phone/home/user/UserInfoActivity;->a(Lcom/alipay/android/phone/home/user/UserInfoActivity;Landroid/graphics/drawable/Drawable;)V

    .line 206
    return-void
.end method
