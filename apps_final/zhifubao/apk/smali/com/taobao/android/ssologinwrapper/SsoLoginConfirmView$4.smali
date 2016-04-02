.class Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView$4;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView;

.field final synthetic val$userinfo:Lcom/taobao/android/sso/UserInfo;


# direct methods
.method constructor <init>(Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView;Lcom/taobao/android/sso/UserInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView$4;->this$0:Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView;

    iput-object p2, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView$4;->val$userinfo:Lcom/taobao/android/sso/UserInfo;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 2

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView$4;->this$0:Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView;

    # getter for: Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView;->i:Lcom/taobao/android/ssologinwrapper/remote/RemoteImageRequest;
    invoke-static {v0}, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView;->access$100(Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView;)Lcom/taobao/android/ssologinwrapper/remote/RemoteImageRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView$4;->val$userinfo:Lcom/taobao/android/sso/UserInfo;

    iget-object v1, v1, Lcom/taobao/android/sso/UserInfo;->mPhotoUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/taobao/android/ssologinwrapper/remote/RemoteImageRequest;->getRemoteBitMap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView$4;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView$4;->this$0:Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView;

    # getter for: Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView;->e:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView;->access$200(Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView$4;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
