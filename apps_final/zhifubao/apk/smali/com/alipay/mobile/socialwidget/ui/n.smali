.class final Lcom/alipay/mobile/socialwidget/ui/n;
.super Ljava/lang/Object;
.source "SocialHomePage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialwidget/ui/n;->a:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/socialwidget/ui/n;)Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/n;->a:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;

    return-object v0
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 251
    const-string/jumbo v0, "20001003"

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/util/AppLaunchUtil;->a(Ljava/lang/String;)V

    .line 252
    new-instance v0, Lcom/alipay/mobile/socialwidget/ui/o;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/socialwidget/ui/o;-><init>(Lcom/alipay/mobile/socialwidget/ui/n;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 260
    return-void
.end method
