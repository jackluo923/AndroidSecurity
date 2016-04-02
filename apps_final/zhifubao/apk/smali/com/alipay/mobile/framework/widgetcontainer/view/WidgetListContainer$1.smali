.class Lcom/alipay/mobile/framework/widgetcontainer/view/WidgetListContainer$1;
.super Ljava/lang/Object;
.source "WidgetListContainer.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/alipay/mobile/framework/service/ext/appentry/WidgetItemInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/framework/widgetcontainer/view/WidgetListContainer;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/framework/widgetcontainer/view/WidgetListContainer;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/framework/widgetcontainer/view/WidgetListContainer$1;->this$0:Lcom/alipay/mobile/framework/widgetcontainer/view/WidgetListContainer;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/alipay/mobile/framework/service/ext/appentry/WidgetItemInfo;Lcom/alipay/mobile/framework/service/ext/appentry/WidgetItemInfo;)I
    .locals 2

    .prologue
    .line 48
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/appentry/WidgetItemInfo;->getGroup()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    invoke-virtual {p2}, Lcom/alipay/mobile/framework/service/ext/appentry/WidgetItemInfo;->getGroup()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/appentry/WidgetItemInfo;->getGroup()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/alipay/mobile/framework/service/ext/appentry/WidgetItemInfo;->getGroup()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 51
    if-eqz v0, :cond_0

    .line 55
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/appentry/WidgetItemInfo;->getIndex()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/alipay/mobile/framework/service/ext/appentry/WidgetItemInfo;->getIndex()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/alipay/mobile/framework/service/ext/appentry/WidgetItemInfo;

    check-cast p2, Lcom/alipay/mobile/framework/service/ext/appentry/WidgetItemInfo;

    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/framework/widgetcontainer/view/WidgetListContainer$1;->compare(Lcom/alipay/mobile/framework/service/ext/appentry/WidgetItemInfo;Lcom/alipay/mobile/framework/service/ext/appentry/WidgetItemInfo;)I

    move-result v0

    return v0
.end method
