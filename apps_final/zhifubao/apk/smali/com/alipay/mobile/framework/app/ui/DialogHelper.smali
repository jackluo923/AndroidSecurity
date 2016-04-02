.class public Lcom/alipay/mobile/framework/app/ui/DialogHelper;
.super Ljava/lang/Object;
.source "DialogHelper.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "DialogHelper"


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Landroid/app/AlertDialog;

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/Toast;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->c:Ljava/util/ArrayList;

    .line 35
    iput-object p1, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->a:Landroid/app/Activity;

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/framework/app/ui/DialogHelper;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->a:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/framework/app/ui/DialogHelper;)Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->b:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$102(Lcom/alipay/mobile/framework/app/ui/DialogHelper;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->b:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$200(Lcom/alipay/mobile/framework/app/ui/DialogHelper;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->c:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 8

    .prologue
    .line 51
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

    invoke-virtual/range {v0 .. v7}, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/Boolean;)V

    .line 52
    return-void
.end method

.method public alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/Boolean;)V
    .locals 9

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

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

    invoke-virtual/range {v0 .. v8}, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 69
    return-void
.end method

.method public alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 11

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->dismissProgressDialog()V

    .line 91
    iget-object v10, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->a:Landroid/app/Activity;

    new-instance v0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/alipay/mobile/framework/app/ui/DialogHelper$1;-><init>(Lcom/alipay/mobile/framework/app/ui/DialogHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    invoke-virtual {v10, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 120
    return-void
.end method

.method cancelAllToasts()V
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Toast;

    .line 124
    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    goto :goto_0

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 127
    return-void
.end method

.method public dismissProgressDialog()V
    .locals 2

    .prologue
    .line 215
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->a:Landroid/app/Activity;

    new-instance v1, Lcom/alipay/mobile/framework/app/ui/DialogHelper$4;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/framework/app/ui/DialogHelper$4;-><init>(Lcom/alipay/mobile/framework/app/ui/DialogHelper;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 229
    return-void
.end method

.method public showProgressDialog(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 179
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v1, v0, v1}, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;Z)V

    .line 180
    return-void
.end method

.method public showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;Z)V
    .locals 7

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->dismissProgressDialog()V

    .line 191
    iget-object v6, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->a:Landroid/app/Activity;

    new-instance v0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$3;

    move-object v1, p0

    move-object v2, p1

    move v3, p4

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/framework/app/ui/DialogHelper$3;-><init>(Lcom/alipay/mobile/framework/app/ui/DialogHelper;Ljava/lang/String;ZZLandroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {v6, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 212
    return-void
.end method

.method public showProgressDialog(ZLjava/lang/String;)V
    .locals 2

    .prologue
    .line 170
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p2, v0, v1, p1}, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;Z)V

    .line 171
    return-void
.end method

.method public toast(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->a:Landroid/app/Activity;

    new-instance v1, Lcom/alipay/mobile/framework/app/ui/DialogHelper$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/mobile/framework/app/ui/DialogHelper$2;-><init>(Lcom/alipay/mobile/framework/app/ui/DialogHelper;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 160
    return-void
.end method
