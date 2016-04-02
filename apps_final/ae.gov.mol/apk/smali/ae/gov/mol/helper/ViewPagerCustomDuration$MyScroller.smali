.class public Lae/gov/mol/helper/ViewPagerCustomDuration$MyScroller;
.super Landroid/widget/Scroller;
.source "ViewPagerCustomDuration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/helper/ViewPagerCustomDuration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyScroller"
.end annotation


# instance fields
.field final synthetic this$0:Lae/gov/mol/helper/ViewPagerCustomDuration;


# direct methods
.method public constructor <init>(Lae/gov/mol/helper/ViewPagerCustomDuration;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    iput-object p1, p0, Lae/gov/mol/helper/ViewPagerCustomDuration$MyScroller;->this$0:Lae/gov/mol/helper/ViewPagerCustomDuration;

    .line 49
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-direct {p0, p2, v0}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 50
    return-void
.end method


# virtual methods
.method public startScroll(IIIII)V
    .locals 6
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "dx"    # I
    .param p4, "dy"    # I
    .param p5, "duration"    # I

    .prologue
    .line 55
    const/16 v5, 0x3e8

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-super/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 56
    return-void
.end method
