.class public Lcom/alipay/android/launcher/factory/WidgetGroupDao;
.super Ljava/lang/Object;
.source "WidgetGroupDao.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getWidgetGroups()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/launcher/beans/WidgetGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    new-instance v1, Lcom/alipay/android/launcher/beans/WidgetGroup;

    const-string/jumbo v2, "20000002"

    const-string/jumbo v3, "android-phone-openplatform-home"

    const-string/jumbo v4, "com.alipay.android.phone.home.widget.HomeWidgetGroup"

    const-string/jumbo v5, "true"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alipay/android/launcher/beans/WidgetGroup;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    new-instance v1, Lcom/alipay/android/launcher/beans/WidgetGroup;

    const-string/jumbo v2, "20000238"

    const-string/jumbo v3, "android-phone-discovery-o2ohome"

    const-string/jumbo v4, "com.alipay.android.phone.discovery.o2ohome.O2oWidgetGroup"

    const-string/jumbo v5, "false"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alipay/android/launcher/beans/WidgetGroup;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    new-instance v1, Lcom/alipay/android/launcher/beans/WidgetGroup;

    const-string/jumbo v2, "20000217"

    const-string/jumbo v3, "android-phone-personalapp-socialwidget"

    const-string/jumbo v4, "com.alipay.mobile.socialwidget.ui.SocialHomePage"

    const-string/jumbo v5, "false"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alipay/android/launcher/beans/WidgetGroup;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    new-instance v1, Lcom/alipay/android/launcher/beans/WidgetGroup;

    const-string/jumbo v2, "20000004"

    const-string/jumbo v3, "android-phone-wealth-home"

    const-string/jumbo v4, "com.alipay.android.widgets.asset.AssetWidgetGroup"

    const-string/jumbo v5, "false"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alipay/android/launcher/beans/WidgetGroup;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    return-object v0
.end method
