.class final Lcom/alipay/android/phone/home/user/c;
.super Ljava/lang/Object;
.source "UserInfoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/home/user/UserInfoActivity;

.field private final synthetic b:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/home/user/UserInfoActivity;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/home/user/c;->a:Lcom/alipay/android/phone/home/user/UserInfoActivity;

    iput-object p2, p0, Lcom/alipay/android/phone/home/user/c;->b:Landroid/graphics/drawable/Drawable;

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 250
    iget-object v0, p0, Lcom/alipay/android/phone/home/user/c;->a:Lcom/alipay/android/phone/home/user/UserInfoActivity;

    invoke-static {v0}, Lcom/alipay/android/phone/home/user/UserInfoActivity;->a(Lcom/alipay/android/phone/home/user/UserInfoActivity;)Lcom/alipay/android/phone/home/widget/UserAvatarImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/home/user/c;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/widget/UserAvatarImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 251
    return-void
.end method
