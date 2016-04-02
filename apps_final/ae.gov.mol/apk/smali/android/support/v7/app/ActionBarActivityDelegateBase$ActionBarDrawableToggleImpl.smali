.class Landroid/support/v7/app/ActionBarActivityDelegateBase$ActionBarDrawableToggleImpl;
.super Ljava/lang/Object;
.source "ActionBarActivityDelegateBase.java"

# interfaces
.implements Landroid/support/v4/app/ActionBarDrawerToggle$Delegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/ActionBarActivityDelegateBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionBarDrawableToggleImpl"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/app/ActionBarActivityDelegateBase;


# direct methods
.method private constructor <init>(Landroid/support/v7/app/ActionBarActivityDelegateBase;)V
    .locals 0

    .prologue
    .line 591
    iput-object p1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase$ActionBarDrawableToggleImpl;->this$0:Landroid/support/v7/app/ActionBarActivityDelegateBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/app/ActionBarActivityDelegateBase;Landroid/support/v7/app/ActionBarActivityDelegateBase$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/support/v7/app/ActionBarActivityDelegateBase;
    .param p2, "x1"    # Landroid/support/v7/app/ActionBarActivityDelegateBase$1;

    .prologue
    .line 591
    invoke-direct {p0, p1}, Landroid/support/v7/app/ActionBarActivityDelegateBase$ActionBarDrawableToggleImpl;-><init>(Landroid/support/v7/app/ActionBarActivityDelegateBase;)V

    return-void
.end method


# virtual methods
.method public getThemeUpIndicator()Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    .line 596
    iget-object v2, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase$ActionBarDrawableToggleImpl;->this$0:Landroid/support/v7/app/ActionBarActivityDelegateBase;

    iget-object v2, v2, Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActivity:Landroid/support/v7/app/ActionBarActivity;

    # getter for: Landroid/support/v7/app/ActionBarActivityDelegateBase;->ACTION_BAR_DRAWABLE_TOGGLE_ATTRS:[I
    invoke-static {}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->access$500()[I

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/app/ActionBarActivity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 597
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 598
    .local v1, "result":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 599
    return-object v1
.end method

.method public setActionBarDescription(I)V
    .locals 0
    .param p1, "contentDescRes"    # I

    .prologue
    .line 612
    return-void
.end method

.method public setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V
    .locals 1
    .param p1, "upDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "contentDescRes"    # I

    .prologue
    .line 604
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase$ActionBarDrawableToggleImpl;->this$0:Landroid/support/v7/app/ActionBarActivityDelegateBase;

    # getter for: Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActionBarView:Landroid/support/v7/internal/widget/ActionBarView;
    invoke-static {v0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->access$600(Landroid/support/v7/app/ActionBarActivityDelegateBase;)Landroid/support/v7/internal/widget/ActionBarView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 605
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase$ActionBarDrawableToggleImpl;->this$0:Landroid/support/v7/app/ActionBarActivityDelegateBase;

    # getter for: Landroid/support/v7/app/ActionBarActivityDelegateBase;->mActionBarView:Landroid/support/v7/internal/widget/ActionBarView;
    invoke-static {v0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->access$600(Landroid/support/v7/app/ActionBarActivityDelegateBase;)Landroid/support/v7/internal/widget/ActionBarView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarView;->setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 607
    :cond_0
    return-void
.end method
