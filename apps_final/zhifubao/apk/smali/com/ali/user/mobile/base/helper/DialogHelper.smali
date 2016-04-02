.class public Lcom/ali/user/mobile/base/helper/DialogHelper;
.super Ljava/lang/Object;
.source "DialogHelper.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "DialogHelper"


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Landroid/app/AlertDialog;

.field private c:Lcom/alipay/mobile/commonui/widget/APNormalPopDialog;

.field private d:Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/ali/user/mobile/base/helper/DialogHelper;->a:Landroid/app/Activity;

    .line 32
    return-void
.end method

.method static synthetic access$0(Lcom/ali/user/mobile/base/helper/DialogHelper;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/ali/user/mobile/base/helper/DialogHelper;->a:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1(Lcom/ali/user/mobile/base/helper/DialogHelper;Landroid/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/ali/user/mobile/base/helper/DialogHelper;->b:Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic access$2(Lcom/ali/user/mobile/base/helper/DialogHelper;)Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/ali/user/mobile/base/helper/DialogHelper;->b:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$3(Lcom/ali/user/mobile/base/helper/DialogHelper;Lcom/alipay/mobile/commonui/widget/APNormalPopDialog;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/ali/user/mobile/base/helper/DialogHelper;->c:Lcom/alipay/mobile/commonui/widget/APNormalPopDialog;

    return-void
.end method

.method static synthetic access$4(Lcom/ali/user/mobile/base/helper/DialogHelper;)Lcom/alipay/mobile/commonui/widget/APNormalPopDialog;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/ali/user/mobile/base/helper/DialogHelper;->c:Lcom/alipay/mobile/commonui/widget/APNormalPopDialog;

    return-object v0
.end method

.method static synthetic access$5(Lcom/ali/user/mobile/base/helper/DialogHelper;Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/ali/user/mobile/base/helper/DialogHelper;->d:Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;

    return-void
.end method

.method static synthetic access$6(Lcom/ali/user/mobile/base/helper/DialogHelper;)Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/ali/user/mobile/base/helper/DialogHelper;->d:Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;

    return-object v0
.end method


# virtual methods
.method public alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 8

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/ali/user/mobile/base/helper/DialogHelper;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/Boolean;)V

    .line 48
    return-void
.end method

.method public alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/Boolean;)V
    .locals 10

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/ali/user/mobile/base/helper/DialogHelper;->dismissProgressDialog()V

    .line 68
    iget-object v9, p0, Lcom/ali/user/mobile/base/helper/DialogHelper;->a:Landroid/app/Activity;

    new-instance v0, Lcom/ali/user/mobile/base/helper/DialogHelper$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/ali/user/mobile/base/helper/DialogHelper$1;-><init>(Lcom/ali/user/mobile/base/helper/DialogHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/Boolean;)V

    invoke-virtual {v9, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 99
    return-void
.end method

.method public alertPop(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/commonui/widget/APNormalPopDialog$OnClickPositiveListener;Ljava/lang/String;Lcom/alipay/mobile/commonui/widget/APNormalPopDialog$OnClickNegativeListener;)V
    .locals 9

    .prologue
    .line 104
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lcom/ali/user/mobile/base/helper/DialogHelper;->alertPop(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/commonui/widget/APNormalPopDialog$OnClickPositiveListener;Ljava/lang/String;Lcom/alipay/mobile/commonui/widget/APNormalPopDialog$OnClickNegativeListener;Ljava/lang/Boolean;)V

    .line 105
    return-void
.end method

.method public alertPop(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/commonui/widget/APNormalPopDialog$OnClickPositiveListener;Ljava/lang/String;Lcom/alipay/mobile/commonui/widget/APNormalPopDialog$OnClickNegativeListener;Ljava/lang/Boolean;)V
    .locals 11

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/ali/user/mobile/base/helper/DialogHelper;->dismissProgressDialog()V

    .line 113
    iget-object v10, p0, Lcom/ali/user/mobile/base/helper/DialogHelper;->a:Landroid/app/Activity;

    new-instance v0, Lcom/ali/user/mobile/base/helper/DialogHelper$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/ali/user/mobile/base/helper/DialogHelper$2;-><init>(Lcom/ali/user/mobile/base/helper/DialogHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/commonui/widget/APNormalPopDialog$OnClickPositiveListener;Ljava/lang/String;Lcom/alipay/mobile/commonui/widget/APNormalPopDialog$OnClickNegativeListener;Ljava/lang/Boolean;)V

    invoke-virtual {v10, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 143
    return-void
.end method

.method public dismissProgressDialog()V
    .locals 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/ali/user/mobile/base/helper/DialogHelper;->a:Landroid/app/Activity;

    new-instance v1, Lcom/ali/user/mobile/base/helper/DialogHelper$5;

    invoke-direct {v1, p0}, Lcom/ali/user/mobile/base/helper/DialogHelper$5;-><init>(Lcom/ali/user/mobile/base/helper/DialogHelper;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 240
    return-void
.end method

.method public showProgressDialog(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 188
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/ali/user/mobile/base/helper/DialogHelper;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;Z)V

    .line 189
    return-void
.end method

.method public showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;Z)V
    .locals 7

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/ali/user/mobile/base/helper/DialogHelper;->dismissProgressDialog()V

    .line 201
    iget-object v6, p0, Lcom/ali/user/mobile/base/helper/DialogHelper;->a:Landroid/app/Activity;

    new-instance v0, Lcom/ali/user/mobile/base/helper/DialogHelper$4;

    move-object v1, p0

    move-object v2, p1

    move v3, p4

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/ali/user/mobile/base/helper/DialogHelper$4;-><init>(Lcom/ali/user/mobile/base/helper/DialogHelper;Ljava/lang/String;ZZLandroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {v6, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 223
    return-void
.end method

.method public showProgressDialog(ZLjava/lang/String;)V
    .locals 2

    .prologue
    .line 179
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p2, v0, v1, p1}, Lcom/ali/user/mobile/base/helper/DialogHelper;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;Z)V

    .line 180
    return-void
.end method

.method public toast(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/ali/user/mobile/base/helper/DialogHelper;->a:Landroid/app/Activity;

    new-instance v1, Lcom/ali/user/mobile/base/helper/DialogHelper$3;

    invoke-direct {v1, p0, p1}, Lcom/ali/user/mobile/base/helper/DialogHelper$3;-><init>(Lcom/ali/user/mobile/base/helper/DialogHelper;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 171
    return-void
.end method
