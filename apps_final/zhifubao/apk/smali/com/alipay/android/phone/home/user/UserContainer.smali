.class public Lcom/alipay/android/phone/home/user/UserContainer;
.super Lcom/alipay/mobile/commonui/widget/APLinearLayout;
.source "UserContainer.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/app/Stage;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroid/content/Context;

.field private d:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

.field private e:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

.field private f:Z

.field private g:Lcom/alipay/android/phone/home/user/UserTableView;

.field private h:Ljava/lang/String;

.field private i:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/android/phone/home/user/UserContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    const-class v0, Lcom/alipay/android/phone/home/user/UserContainer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/home/user/UserContainer;->a:Ljava/lang/String;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/home/user/UserContainer;->b:Ljava/util/List;

    .line 49
    iput-boolean v1, p0, Lcom/alipay/android/phone/home/user/UserContainer;->f:Z

    .line 55
    iput v1, p0, Lcom/alipay/android/phone/home/user/UserContainer;->i:I

    .line 70
    iput-object p1, p0, Lcom/alipay/android/phone/home/user/UserContainer;->c:Landroid/content/Context;

    .line 71
    iget-object v0, p0, Lcom/alipay/android/phone/home/user/UserContainer;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const-wide v1, 0x402a99999999999aL    # 13.3

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-double v3, v0

    mul-double v0, v1, v3

    double-to-int v0, v0

    iput v0, p0, Lcom/alipay/android/phone/home/user/UserContainer;->i:I

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    iput-object v0, p0, Lcom/alipay/android/phone/home/user/UserContainer;->d:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    iput-object v0, p0, Lcom/alipay/android/phone/home/user/UserContainer;->e:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    .line 72
    return-void
.end method


# virtual methods
.method public getShowIcon()Z
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/alipay/android/phone/home/user/UserContainer;->f:Z

    return v0
.end method

.method public setMemberGrade(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 103
    iget-object v0, p0, Lcom/alipay/android/phone/home/user/UserContainer;->g:Lcom/alipay/android/phone/home/user/UserTableView;

    if-nez v0, :cond_0

    .line 104
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/home/user/UserContainer;->a:Ljava/lang/String;

    const-string/jumbo v2, "mMemberGradeTableView is null, return"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->print(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :goto_0
    return-void

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/home/user/UserContainer;->g:Lcom/alipay/android/phone/home/user/UserTableView;

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/user/UserTableView;->getInsertView()Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    .line 108
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/home/user/UserContainer;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "memberGradeTitle=>"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->print(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-static {p1}, Lcom/alipay/android/phone/home/user/MemberGradeEnum;->a(Ljava/lang/String;)Lcom/alipay/android/phone/home/user/MemberGradeEnum;

    move-result-object v0

    .line 110
    sget-object v1, Lcom/alipay/android/phone/home/user/MemberGradeEnum;->e:Lcom/alipay/android/phone/home/user/MemberGradeEnum;

    if-ne v0, v1, :cond_1

    .line 111
    iget-object v0, p0, Lcom/alipay/android/phone/home/user/UserContainer;->g:Lcom/alipay/android/phone/home/user/UserTableView;

    iget-object v1, p0, Lcom/alipay/android/phone/home/user/UserContainer;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 112
    sget v2, Lcom/alipay/android/phone/openplatform/R$string;->i:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 111
    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/user/UserTableView;->setRightText(Ljava/lang/String;)V

    .line 116
    :goto_1
    iput-object p1, p0, Lcom/alipay/android/phone/home/user/UserContainer;->h:Ljava/lang/String;

    goto :goto_0

    .line 114
    :cond_1
    iget-object v1, p0, Lcom/alipay/android/phone/home/user/UserContainer;->g:Lcom/alipay/android/phone/home/user/UserTableView;

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/user/MemberGradeEnum;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/android/phone/home/user/UserTableView;->setRightText(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setShowIcon(Z)V
    .locals 0

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/alipay/android/phone/home/user/UserContainer;->f:Z

    .line 87
    return-void
.end method

.method public setUserAppList(Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/app/Stage;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/16 v4, 0x48

    const/4 v13, 0x1

    const/4 v7, 0x0

    .line 94
    iput-object p1, p0, Lcom/alipay/android/phone/home/user/UserContainer;->b:Ljava/util/List;

    .line 95
    iget-object v0, p0, Lcom/alipay/android/phone/home/user/UserContainer;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/home/user/UserContainer;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/user/UserContainer;->removeAllViews()V

    .line 100
    :goto_0
    return-void

    .line 98
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/home/user/UserContainer;->a:Ljava/lang/String;

    const-string/jumbo v2, "UserContainer refresh"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->print(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v9, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/alipay/android/phone/home/user/UserContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v9, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    move v6, v7

    :goto_1
    iget-object v0, p0, Lcom/alipay/android/phone/home/user/UserContainer;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v6, v0, :cond_2

    invoke-virtual {p0, v9}, Lcom/alipay/android/phone/home/user/UserContainer;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/alipay/android/phone/home/user/UserContainer;->b:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/Stage;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/Stage;->getApps()Ljava/util/List;

    move-result-object v10

    if-eqz v10, :cond_3

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    move v8, v7

    :goto_2
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    if-lt v8, v0, :cond_4

    :cond_3
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_1

    :cond_4
    new-instance v11, Lcom/alipay/android/phone/home/user/UserTableView;

    iget-object v0, p0, Lcom/alipay/android/phone/home/user/UserContainer;->c:Landroid/content/Context;

    invoke-direct {v11, v0}, Lcom/alipay/android/phone/home/user/UserTableView;-><init>(Landroid/content/Context;)V

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/alipay/android/phone/home/user/UserTableView;->setAppId(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/alipay/android/phone/home/user/UserTableView;->setLeftText(Ljava/lang/String;)V

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getExtra()Ljava/util/Map;

    move-result-object v12

    iget-boolean v1, p0, Lcom/alipay/android/phone/home/user/UserContainer;->f:Z

    if-eqz v1, :cond_6

    invoke-virtual {v11}, Lcom/alipay/android/phone/home/user/UserTableView;->getIconView()Lcom/alipay/mobile/commonui/widget/APImageView;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getLocalIconId()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_a

    sget v0, Lcom/alipay/android/phone/openplatform/R$drawable;->o:I

    move v3, v0

    :goto_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/phone/home/user/UserContainer;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "UserContainer showIcon=>"

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->print(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getIconUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v12, :cond_5

    const-string/jumbo v0, "iconForUserStage"

    invoke-interface {v12, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, "iconForUserStage"

    invoke-interface {v12, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string/jumbo v0, "iconForUserStage"

    invoke-interface {v12, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    :cond_5
    iget-object v0, p0, Lcom/alipay/android/phone/home/user/UserContainer;->e:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    invoke-virtual {v11}, Lcom/alipay/android/phone/home/user/UserTableView;->getIconView()Lcom/alipay/mobile/commonui/widget/APImageView;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alipay/android/phone/home/user/UserContainer;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;->loadImage(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;II)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;

    :cond_6
    iget-object v0, p0, Lcom/alipay/android/phone/home/user/UserContainer;->d:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v1

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "20000160"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    iput-object v11, p0, Lcom/alipay/android/phone/home/user/UserContainer;->g:Lcom/alipay/android/phone/home/user/UserTableView;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getMemberGrade()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/home/user/UserContainer;->setMemberGrade(Ljava/lang/String;)V

    :cond_7
    if-eqz v12, :cond_8

    const-string/jumbo v0, "redPointWidgetId"

    invoke-interface {v12, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string/jumbo v0, "redPointWidgetId"

    invoke-interface {v12, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {v11}, Lcom/alipay/android/phone/home/user/UserTableView;->getRedFlag()Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

    move-result-object v1

    const-string/jumbo v0, "redPointWidgetId"

    invoke-interface {v12, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->setWidgetId(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/android/phone/home/user/UserContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/mpass/badge/BadgeManager;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/mpass/badge/BadgeManager;

    move-result-object v0

    invoke-virtual {v11}, Lcom/alipay/android/phone/home/user/UserTableView;->getRedFlag()Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/mpass/badge/BadgeManager;->registerBadgeView(Lcom/alipay/mobile/mpass/badge/ui/AbsBadgeView;)V

    :cond_8
    if-eqz v12, :cond_9

    const-string/jumbo v0, "nameForUserStage"

    invoke-interface {v12, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string/jumbo v0, "nameForUserStage"

    invoke-interface {v12, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string/jumbo v0, "nameForUserStage"

    invoke-interface {v12, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v11, v0}, Lcom/alipay/android/phone/home/user/UserTableView;->setLeftText(Ljava/lang/String;)V

    :cond_9
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v13, :cond_b

    invoke-virtual {v11, v13}, Lcom/alipay/android/phone/home/user/UserTableView;->setType(I)V

    :goto_4
    invoke-virtual {v9, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v11}, Lcom/alipay/android/phone/home/user/UserTableView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    if-nez v8, :cond_e

    if-eqz v6, :cond_e

    iget v1, p0, Lcom/alipay/android/phone/home/user/UserContainer;->i:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v7, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    :goto_5
    invoke-virtual {v11, v0}, Lcom/alipay/android/phone/home/user/UserTableView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto/16 :goto_2

    :cond_a
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getLocalIconId()I

    move-result v0

    move v3, v0

    goto/16 :goto_3

    :cond_b
    if-nez v8, :cond_c

    const/4 v0, 0x2

    invoke-virtual {v11, v0}, Lcom/alipay/android/phone/home/user/UserTableView;->setType(I)V

    goto :goto_4

    :cond_c
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v8, v0, :cond_d

    const/4 v0, 0x4

    invoke-virtual {v11, v0}, Lcom/alipay/android/phone/home/user/UserTableView;->setType(I)V

    goto :goto_4

    :cond_d
    const/16 v0, 0x8

    invoke-virtual {v11, v0}, Lcom/alipay/android/phone/home/user/UserTableView;->setType(I)V

    goto :goto_4

    :cond_e
    iput v7, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v7, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto :goto_5
.end method
