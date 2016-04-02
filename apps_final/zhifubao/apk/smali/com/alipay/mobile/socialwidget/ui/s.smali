.class final Lcom/alipay/mobile/socialwidget/ui/s;
.super Ljava/lang/Object;
.source "SocialHomePage.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialwidget/ui/s;->a:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;

    .line 451
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 454
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

    .line 455
    invoke-static {}, Lcom/alipay/mobile/socialwidget/util/BaseHelperUtil;->a()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v1

    .line 456
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 457
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserAvatar()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getNick()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v3, v1}, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;->updateOwnerStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    :cond_0
    return-void
.end method
