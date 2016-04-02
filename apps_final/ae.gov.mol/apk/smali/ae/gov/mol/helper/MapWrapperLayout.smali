.class public Lae/gov/mol/helper/MapWrapperLayout;
.super Landroid/widget/RelativeLayout;
.source "MapWrapperLayout.java"


# instance fields
.field private bottomOffsetPixels:I

.field private infoWindow:Landroid/view/View;

.field private map:Lcom/google/android/gms/maps/GoogleMap;

.field private marker:Lcom/google/android/gms/maps/model/Marker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 74
    const/4 v2, 0x0

    .line 76
    .local v2, "ret":Z
    iget-object v3, p0, Lae/gov/mol/helper/MapWrapperLayout;->marker:Lcom/google/android/gms/maps/model/Marker;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lae/gov/mol/helper/MapWrapperLayout;->marker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v3}, Lcom/google/android/gms/maps/model/Marker;->isInfoWindowShown()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lae/gov/mol/helper/MapWrapperLayout;->map:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lae/gov/mol/helper/MapWrapperLayout;->infoWindow:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 78
    iget-object v3, p0, Lae/gov/mol/helper/MapWrapperLayout;->map:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v3}, Lcom/google/android/gms/maps/GoogleMap;->getProjection()Lcom/google/android/gms/maps/Projection;

    move-result-object v3

    iget-object v4, p0, Lae/gov/mol/helper/MapWrapperLayout;->marker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v4}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/maps/Projection;->toScreenLocation(Lcom/google/android/gms/maps/model/LatLng;)Landroid/graphics/Point;

    move-result-object v1

    .line 82
    .local v1, "point":Landroid/graphics/Point;
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 84
    .local v0, "copyEv":Landroid/view/MotionEvent;
    iget v3, v1, Landroid/graphics/Point;->x:I

    neg-int v3, v3

    iget-object v4, p0, Lae/gov/mol/helper/MapWrapperLayout;->infoWindow:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    .line 85
    iget v4, v1, Landroid/graphics/Point;->y:I

    neg-int v4, v4

    iget-object v5, p0, Lae/gov/mol/helper/MapWrapperLayout;->infoWindow:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, p0, Lae/gov/mol/helper/MapWrapperLayout;->bottomOffsetPixels:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    .line 83
    invoke-virtual {v0, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 88
    iget-object v3, p0, Lae/gov/mol/helper/MapWrapperLayout;->infoWindow:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 92
    .end local v0    # "copyEv":Landroid/view/MotionEvent;
    .end local v1    # "point":Landroid/graphics/Point;
    :cond_0
    if-nez v2, :cond_1

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public init(Lcom/google/android/gms/maps/GoogleMap;I)V
    .locals 0
    .param p1, "map"    # Lcom/google/android/gms/maps/GoogleMap;
    .param p2, "bottomOffsetPixels"    # I

    .prologue
    .line 59
    iput-object p1, p0, Lae/gov/mol/helper/MapWrapperLayout;->map:Lcom/google/android/gms/maps/GoogleMap;

    .line 60
    iput p2, p0, Lae/gov/mol/helper/MapWrapperLayout;->bottomOffsetPixels:I

    .line 61
    return-void
.end method

.method public setMarkerWithInfoWindow(Lcom/google/android/gms/maps/model/Marker;Landroid/view/View;)V
    .locals 0
    .param p1, "marker"    # Lcom/google/android/gms/maps/model/Marker;
    .param p2, "infoWindow"    # Landroid/view/View;

    .prologue
    .line 68
    iput-object p1, p0, Lae/gov/mol/helper/MapWrapperLayout;->marker:Lcom/google/android/gms/maps/model/Marker;

    .line 69
    iput-object p2, p0, Lae/gov/mol/helper/MapWrapperLayout;->infoWindow:Landroid/view/View;

    .line 70
    return-void
.end method
