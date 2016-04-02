.class final Lcom/alipay/android/phone/home/user/e;
.super Ljava/lang/Object;
.source "UserInfoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/home/user/d;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/home/user/d;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/home/user/e;->a:Lcom/alipay/android/phone/home/user/d;

    iput-object p2, p0, Lcom/alipay/android/phone/home/user/e;->b:Ljava/lang/String;

    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 293
    iget-object v0, p0, Lcom/alipay/android/phone/home/user/e;->a:Lcom/alipay/android/phone/home/user/d;

    invoke-static {v0}, Lcom/alipay/android/phone/home/user/d;->a(Lcom/alipay/android/phone/home/user/d;)Lcom/alipay/android/phone/home/user/UserInfoActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/home/user/UserInfoActivity;->e(Lcom/alipay/android/phone/home/user/UserInfoActivity;)Lcom/alipay/android/phone/home/user/UserContainer;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/home/user/e;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/user/UserContainer;->setMemberGrade(Ljava/lang/String;)V

    .line 294
    return-void
.end method
