.class public Lcom/ali/user/mobile/base/helper/ActivityHelper;
.super Ljava/lang/Object;
.source "ActivityHelper.java"


# static fields
.field static final TAG:Ljava/lang/String;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lcom/ali/user/mobile/base/helper/DialogHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/ali/user/mobile/base/helper/ActivityHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ali/user/mobile/base/helper/ActivityHelper;->TAG:Ljava/lang/String;

    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/ali/user/mobile/base/helper/ActivityHelper;->a:Landroid/app/Activity;

    .line 29
    new-instance v0, Lcom/ali/user/mobile/base/helper/DialogHelper;

    iget-object v1, p0, Lcom/ali/user/mobile/base/helper/ActivityHelper;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/ali/user/mobile/base/helper/DialogHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ali/user/mobile/base/helper/ActivityHelper;->b:Lcom/ali/user/mobile/base/helper/DialogHelper;

    .line 30
    return-void
.end method


# virtual methods
.method public alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 7

    .prologue
    .line 55
    iget-object v0, p0, Lcom/ali/user/mobile/base/helper/ActivityHelper;->b:Lcom/ali/user/mobile/base/helper/DialogHelper;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/ali/user/mobile/base/helper/DialogHelper;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 57
    return-void
.end method

.method public alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/Boolean;)V
    .locals 8

    .prologue
    .line 89
    iget-object v0, p0, Lcom/ali/user/mobile/base/helper/ActivityHelper;->b:Lcom/ali/user/mobile/base/helper/DialogHelper;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/ali/user/mobile/base/helper/DialogHelper;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/Boolean;)V

    .line 91
    return-void
.end method

.method public alertPop(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/commonui/widget/APNormalPopDialog$OnClickPositiveListener;Ljava/lang/String;Lcom/alipay/mobile/commonui/widget/APNormalPopDialog$OnClickNegativeListener;)V
    .locals 8

    .prologue
    .line 62
    iget-object v0, p0, Lcom/ali/user/mobile/base/helper/ActivityHelper;->b:Lcom/ali/user/mobile/base/helper/DialogHelper;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/ali/user/mobile/base/helper/DialogHelper;->alertPop(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/commonui/widget/APNormalPopDialog$OnClickPositiveListener;Ljava/lang/String;Lcom/alipay/mobile/commonui/widget/APNormalPopDialog$OnClickNegativeListener;)V

    .line 64
    return-void
.end method

.method public dismissProgressDialog()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/ali/user/mobile/base/helper/ActivityHelper;->b:Lcom/ali/user/mobile/base/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/ali/user/mobile/base/helper/DialogHelper;->dismissProgressDialog()V

    .line 128
    return-void
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/ali/user/mobile/base/helper/ActivityHelper;->b:Lcom/ali/user/mobile/base/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/ali/user/mobile/base/helper/DialogHelper;->dismissProgressDialog()V

    .line 34
    return-void
.end method

.method public showProgressDialog(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/ali/user/mobile/base/helper/ActivityHelper;->b:Lcom/ali/user/mobile/base/helper/DialogHelper;

    invoke-virtual {v0, p1}, Lcom/ali/user/mobile/base/helper/DialogHelper;->showProgressDialog(Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method public showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/ali/user/mobile/base/helper/ActivityHelper;->b:Lcom/ali/user/mobile/base/helper/DialogHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/ali/user/mobile/base/helper/DialogHelper;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;Z)V

    .line 124
    return-void
.end method

.method public toast(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/ali/user/mobile/base/helper/ActivityHelper;->b:Lcom/ali/user/mobile/base/helper/DialogHelper;

    invoke-virtual {v0, p1, p2}, Lcom/ali/user/mobile/base/helper/DialogHelper;->toast(Ljava/lang/String;I)V

    .line 103
    return-void
.end method
