.class public Lcom/alipay/mobileapp/biz/rpc/widgetmsg/model/WidgetMsg;
.super Ljava/lang/Object;


# instance fields
.field private persistence:I

.field private style:Ljava/lang/String;

.field private temporary:I

.field private widgetId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPersistence()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobileapp/biz/rpc/widgetmsg/model/WidgetMsg;->persistence:I

    return v0
.end method

.method public getStyle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/widgetmsg/model/WidgetMsg;->style:Ljava/lang/String;

    return-object v0
.end method

.method public getTemporary()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobileapp/biz/rpc/widgetmsg/model/WidgetMsg;->temporary:I

    return v0
.end method

.method public getWidgetId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/widgetmsg/model/WidgetMsg;->widgetId:Ljava/lang/String;

    return-object v0
.end method

.method public setPersistence(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/mobileapp/biz/rpc/widgetmsg/model/WidgetMsg;->persistence:I

    return-void
.end method

.method public setStyle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileapp/biz/rpc/widgetmsg/model/WidgetMsg;->style:Ljava/lang/String;

    return-void
.end method

.method public setTemporary(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/mobileapp/biz/rpc/widgetmsg/model/WidgetMsg;->temporary:I

    return-void
.end method

.method public setWidgetId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileapp/biz/rpc/widgetmsg/model/WidgetMsg;->widgetId:Ljava/lang/String;

    return-void
.end method
