.class public Lcom/alipay/mobileapp/biz/rpc/widgetmsg/model/UserWidgetResult;
.super Ljava/lang/Object;


# instance fields
.field private code:Ljava/lang/String;

.field private success:Z

.field private widgetMsgs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileapp/biz/rpc/widgetmsg/model/WidgetMsg;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/widgetmsg/model/UserWidgetResult;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getWidgetMsgs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileapp/biz/rpc/widgetmsg/model/WidgetMsg;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/widgetmsg/model/UserWidgetResult;->widgetMsgs:Ljava/util/List;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobileapp/biz/rpc/widgetmsg/model/UserWidgetResult;->success:Z

    return v0
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileapp/biz/rpc/widgetmsg/model/UserWidgetResult;->code:Ljava/lang/String;

    return-void
.end method

.method public setSuccess(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobileapp/biz/rpc/widgetmsg/model/UserWidgetResult;->success:Z

    return-void
.end method

.method public setWidgetMsgs(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileapp/biz/rpc/widgetmsg/model/WidgetMsg;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alipay/mobileapp/biz/rpc/widgetmsg/model/UserWidgetResult;->widgetMsgs:Ljava/util/List;

    return-void
.end method
