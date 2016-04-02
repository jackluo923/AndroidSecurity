.class final Lcom/alipay/android/phone/home/ui/ap;
.super Ljava/lang/Object;
.source "MoreBadgeView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/home/ui/MoreBadgeView;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/home/ui/MoreBadgeView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/home/ui/ap;->a:Lcom/alipay/android/phone/home/ui/MoreBadgeView;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 72
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/ap;->a:Lcom/alipay/android/phone/home/ui/MoreBadgeView;

    # getter for: Lcom/alipay/android/phone/home/ui/MoreBadgeView;->c:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;
    invoke-static {v0}, Lcom/alipay/android/phone/home/ui/MoreBadgeView;->access$1(Lcom/alipay/android/phone/home/ui/MoreBadgeView;)Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 115
    :goto_0
    return-void

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/ap;->a:Lcom/alipay/android/phone/home/ui/MoreBadgeView;

    # getter for: Lcom/alipay/android/phone/home/ui/MoreBadgeView;->c:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;
    invoke-static {v0}, Lcom/alipay/android/phone/home/ui/MoreBadgeView;->access$1(Lcom/alipay/android/phone/home/ui/MoreBadgeView;)Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;->getAppCenterAppsFromLocal()Ljava/util/List;

    move-result-object v0

    .line 79
    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 80
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    move v4, v2

    .line 81
    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 101
    :goto_2
    if-lez v4, :cond_3

    .line 103
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/ap;->a:Lcom/alipay/android/phone/home/ui/MoreBadgeView;

    sget-object v1, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->STYLE_NUM:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Lcom/alipay/android/phone/home/ui/MoreBadgeView;->setStyleAndMsgCount(Ljava/lang/String;I)V

    .line 104
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/ap;->a:Lcom/alipay/android/phone/home/ui/MoreBadgeView;

    # getter for: Lcom/alipay/android/phone/home/ui/MoreBadgeView;->e:Lcom/alipay/android/phone/home/ui/aq;
    invoke-static {v0}, Lcom/alipay/android/phone/home/ui/MoreBadgeView;->access$2(Lcom/alipay/android/phone/home/ui/MoreBadgeView;)Lcom/alipay/android/phone/home/ui/aq;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/framework/service/ext/openplatform/RedPointStatusChangeNotify;

    const-string/jumbo v2, "RedPoint"

    iget-object v4, p0, Lcom/alipay/android/phone/home/ui/ap;->a:Lcom/alipay/android/phone/home/ui/MoreBadgeView;

    # getter for: Lcom/alipay/android/phone/home/ui/MoreBadgeView;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;
    invoke-static {v4}, Lcom/alipay/android/phone/home/ui/MoreBadgeView;->access$3(Lcom/alipay/android/phone/home/ui/MoreBadgeView;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v4

    invoke-direct {v1, v2, v4, v3}, Lcom/alipay/mobile/framework/service/ext/openplatform/RedPointStatusChangeNotify;-><init>(Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;Z)V

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/ui/aq;->notifyObservers(Ljava/lang/Object;)V

    goto :goto_0

    .line 82
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    .line 83
    if-eqz v0, :cond_1

    .line 84
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "#AppCenter#"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 85
    iget-object v6, p0, Lcom/alipay/android/phone/home/ui/ap;->a:Lcom/alipay/android/phone/home/ui/MoreBadgeView;

    invoke-virtual {v6}, Lcom/alipay/android/phone/home/ui/MoreBadgeView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/alipay/mobile/mpass/badge/BadgeManager;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/mpass/badge/BadgeManager;

    move-result-object v6

    .line 86
    invoke-virtual {v6, v0}, Lcom/alipay/mobile/mpass/badge/BadgeManager;->getWidgetInfoByWidgetId(Ljava/lang/String;)Lcom/alipay/mobile/mpass/badge/ui/WidgetInfo;

    move-result-object v6

    .line 87
    if-eqz v6, :cond_1

    .line 88
    sget-object v0, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->STYLE_NUM:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lcom/alipay/mobile/mpass/badge/ui/WidgetInfo;->getMsgCountByStyle(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v4

    .line 89
    sget-object v4, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->STYLE_POINT:Ljava/lang/String;

    invoke-virtual {v6, v4}, Lcom/alipay/mobile/mpass/badge/ui/WidgetInfo;->getMsgCountByStyle(Ljava/lang/String;)I

    move-result v4

    .line 90
    sget-object v7, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->STYLE_NEW:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/alipay/mobile/mpass/badge/ui/WidgetInfo;->getMsgCountByStyle(Ljava/lang/String;)I

    move-result v6

    .line 89
    add-int/2addr v4, v6

    if-lez v4, :cond_5

    move v1, v3

    move v4, v0

    .line 91
    goto :goto_1

    .line 105
    :cond_3
    if-eqz v1, :cond_4

    .line 107
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/ap;->a:Lcom/alipay/android/phone/home/ui/MoreBadgeView;

    sget-object v1, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->STYLE_POINT:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/alipay/android/phone/home/ui/MoreBadgeView;->setStyleAndMsgCount(Ljava/lang/String;I)V

    .line 108
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/ap;->a:Lcom/alipay/android/phone/home/ui/MoreBadgeView;

    # getter for: Lcom/alipay/android/phone/home/ui/MoreBadgeView;->e:Lcom/alipay/android/phone/home/ui/aq;
    invoke-static {v0}, Lcom/alipay/android/phone/home/ui/MoreBadgeView;->access$2(Lcom/alipay/android/phone/home/ui/MoreBadgeView;)Lcom/alipay/android/phone/home/ui/aq;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/framework/service/ext/openplatform/RedPointStatusChangeNotify;

    const-string/jumbo v2, "RedPoint"

    iget-object v4, p0, Lcom/alipay/android/phone/home/ui/ap;->a:Lcom/alipay/android/phone/home/ui/MoreBadgeView;

    # getter for: Lcom/alipay/android/phone/home/ui/MoreBadgeView;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;
    invoke-static {v4}, Lcom/alipay/android/phone/home/ui/MoreBadgeView;->access$3(Lcom/alipay/android/phone/home/ui/MoreBadgeView;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v4

    invoke-direct {v1, v2, v4, v3}, Lcom/alipay/mobile/framework/service/ext/openplatform/RedPointStatusChangeNotify;-><init>(Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;Z)V

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/ui/aq;->notifyObservers(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 110
    :cond_4
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/ap;->a:Lcom/alipay/android/phone/home/ui/MoreBadgeView;

    sget-object v1, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->STYLE_NUM:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/phone/home/ui/MoreBadgeView;->setStyleAndMsgCount(Ljava/lang/String;I)V

    .line 111
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/ap;->a:Lcom/alipay/android/phone/home/ui/MoreBadgeView;

    sget-object v1, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->STYLE_POINT:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/phone/home/ui/MoreBadgeView;->setStyleAndMsgCount(Ljava/lang/String;I)V

    .line 112
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/ap;->a:Lcom/alipay/android/phone/home/ui/MoreBadgeView;

    sget-object v1, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->STYLE_NEW:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/phone/home/ui/MoreBadgeView;->setStyleAndMsgCount(Ljava/lang/String;I)V

    .line 113
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/ap;->a:Lcom/alipay/android/phone/home/ui/MoreBadgeView;

    # getter for: Lcom/alipay/android/phone/home/ui/MoreBadgeView;->e:Lcom/alipay/android/phone/home/ui/aq;
    invoke-static {v0}, Lcom/alipay/android/phone/home/ui/MoreBadgeView;->access$2(Lcom/alipay/android/phone/home/ui/MoreBadgeView;)Lcom/alipay/android/phone/home/ui/aq;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/framework/service/ext/openplatform/RedPointStatusChangeNotify;

    const-string/jumbo v3, "RedPoint"

    iget-object v4, p0, Lcom/alipay/android/phone/home/ui/ap;->a:Lcom/alipay/android/phone/home/ui/MoreBadgeView;

    # getter for: Lcom/alipay/android/phone/home/ui/MoreBadgeView;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;
    invoke-static {v4}, Lcom/alipay/android/phone/home/ui/MoreBadgeView;->access$3(Lcom/alipay/android/phone/home/ui/MoreBadgeView;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v4

    invoke-direct {v1, v3, v4, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/RedPointStatusChangeNotify;-><init>(Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;Z)V

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/ui/aq;->notifyObservers(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_5
    move v4, v0

    goto/16 :goto_1

    :cond_6
    move v1, v2

    move v4, v2

    goto/16 :goto_2
.end method
