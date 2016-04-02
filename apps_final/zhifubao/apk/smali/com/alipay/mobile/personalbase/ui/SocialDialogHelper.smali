.class public Lcom/alipay/mobile/personalbase/ui/SocialDialogHelper;
.super Ljava/lang/Object;
.source "SocialDialogHelper.java"


# instance fields
.field private a:Lcom/alipay/mobile/commonui/widget/APNoticePopDialog;

.field private b:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/alipay/mobile/personalbase/ui/SocialDialogHelper;->b:Landroid/app/Activity;

    .line 17
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/personalbase/ui/SocialDialogHelper;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/alipay/mobile/personalbase/ui/SocialDialogHelper;->b:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/mobile/personalbase/ui/SocialDialogHelper;Lcom/alipay/mobile/commonui/widget/APNoticePopDialog;)V
    .locals 0

    .prologue
    .line 13
    iput-object p1, p0, Lcom/alipay/mobile/personalbase/ui/SocialDialogHelper;->a:Lcom/alipay/mobile/commonui/widget/APNoticePopDialog;

    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/personalbase/ui/SocialDialogHelper;)Lcom/alipay/mobile/commonui/widget/APNoticePopDialog;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/alipay/mobile/personalbase/ui/SocialDialogHelper;->a:Lcom/alipay/mobile/commonui/widget/APNoticePopDialog;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/alipay/mobile/personalbase/ui/SocialDialogHelper;->b:Landroid/app/Activity;

    new-instance v1, Lcom/alipay/mobile/personalbase/ui/d;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/personalbase/ui/d;-><init>(Lcom/alipay/mobile/personalbase/ui/SocialDialogHelper;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 68
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 11

    .prologue
    .line 20
    iget-object v10, p0, Lcom/alipay/mobile/personalbase/ui/SocialDialogHelper;->b:Landroid/app/Activity;

    new-instance v0, Lcom/alipay/mobile/personalbase/ui/a;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object v8, p4

    move-object/from16 v9, p6

    invoke-direct/range {v0 .. v9}, Lcom/alipay/mobile/personalbase/ui/a;-><init>(Lcom/alipay/mobile/personalbase/ui/SocialDialogHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v10, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 51
    return-void
.end method
