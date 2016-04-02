.class public Lcom/alipay/mobile/wealth/common/component/filter/FilterItem;
.super Ljava/lang/Object;
.source "FilterItem.java"


# instance fields
.field private a:Landroid/graphics/drawable/Drawable;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFilterName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/filter/FilterItem;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getFilterType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/filter/FilterItem;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/filter/FilterItem;->a:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public isSelected()Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/alipay/mobile/wealth/common/component/filter/FilterItem;->c:Z

    return v0
.end method

.method public setFilterName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/alipay/mobile/wealth/common/component/filter/FilterItem;->b:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setFilterType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/alipay/mobile/wealth/common/component/filter/FilterItem;->d:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/alipay/mobile/wealth/common/component/filter/FilterItem;->a:Landroid/graphics/drawable/Drawable;

    .line 23
    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/alipay/mobile/wealth/common/component/filter/FilterItem;->c:Z

    .line 39
    return-void
.end method
