.class public Lcom/alipay/mobile/map/model/LatLonPointEx;
.super Lcom/alipay/mobile/map/model/LatLonPoint;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x4fb75e7335281711L


# instance fields
.field private clickIcon:Landroid/graphics/Bitmap;

.field private draggable:Z

.field private ext:Ljava/lang/Object;

.field private icon:Landroid/graphics/Bitmap;

.field private showInfoWindow:Z

.field private snippet:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/map/model/LatLonPoint;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/map/model/LatLonPointEx;->showInfoWindow:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/map/model/LatLonPointEx;->draggable:Z

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/map/model/LatLonPoint;-><init>(DD)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/map/model/LatLonPointEx;->showInfoWindow:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/map/model/LatLonPointEx;->draggable:Z

    return-void
.end method


# virtual methods
.method public getClickIcon()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/map/model/LatLonPointEx;->clickIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getExt()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/map/model/LatLonPointEx;->ext:Ljava/lang/Object;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/map/model/LatLonPointEx;->icon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getSnippet()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/map/model/LatLonPointEx;->snippet:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/map/model/LatLonPointEx;->title:Ljava/lang/String;

    return-object v0
.end method

.method public isDraggable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/map/model/LatLonPointEx;->draggable:Z

    return v0
.end method

.method public isShowInfoWindow()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/map/model/LatLonPointEx;->showInfoWindow:Z

    return v0
.end method

.method public setClickIcon(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/map/model/LatLonPointEx;->clickIcon:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setDraggable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobile/map/model/LatLonPointEx;->draggable:Z

    return-void
.end method

.method public setExt(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/map/model/LatLonPointEx;->ext:Ljava/lang/Object;

    return-void
.end method

.method public setIcon(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/map/model/LatLonPointEx;->icon:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setShowInfoWindow(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-boolean p1, p0, Lcom/alipay/mobile/map/model/LatLonPointEx;->showInfoWindow:Z

    return-void
.end method

.method public setSnippet(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/map/model/LatLonPointEx;->snippet:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/map/model/LatLonPointEx;->title:Ljava/lang/String;

    return-void
.end method
