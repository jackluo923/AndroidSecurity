.class Lmobi/monaca/framework/nativeui/component/view/ButtonDrawable;
.super Landroid/graphics/drawable/LayerDrawable;
.source "ButtonDrawable.java"


# instance fields
.field protected backgroundColor:I

.field protected pressedBackgroundColor:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 11
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 12
    return-void
.end method


# virtual methods
.method public isStateful()Z
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x1

    return v0
.end method

.method protected onStateChange([I)Z
    .locals 6
    .param p1, "states"    # [I

    .prologue
    .line 16
    move-object v0, p1

    .local v0, "arr$":[I
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget v3, v0, v1

    .line 17
    .local v3, "state":I
    const v4, 0x10100a7

    if-ne v3, v4, :cond_0

    .line 18
    const/high16 v4, 0x66000000

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-super {p0, v4, v5}, Landroid/graphics/drawable/LayerDrawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 16
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 20
    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/LayerDrawable;->clearColorFilter()V

    goto :goto_1

    .line 23
    .end local v3    # "state":I
    :cond_1
    invoke-super {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->onStateChange([I)Z

    move-result v4

    return v4
.end method
