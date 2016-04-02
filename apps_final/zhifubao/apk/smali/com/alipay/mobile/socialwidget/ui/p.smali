.class final Lcom/alipay/mobile/socialwidget/ui/p;
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
    iput-object p1, p0, Lcom/alipay/mobile/socialwidget/ui/p;->a:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;

    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 268
    const-string/jumbo v0, "20000166"

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/util/AppLaunchUtil;->a(Ljava/lang/String;)V

    .line 269
    return-void
.end method
