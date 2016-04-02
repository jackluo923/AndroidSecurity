.class public abstract Lcom/alipay/android/phone/discovery/o2ohome/view/BannerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "BannerAdapter.java"


# static fields
.field public static final SCALE_FACTOR:I = 0x190


# instance fields
.field private adapterCount:I

.field private final pageSize:I

.field private realCount:I

.field private scale:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 23
    const/16 v0, 0x8

    iput v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/BannerAdapter;->pageSize:I

    .line 34
    return-void
.end method


# virtual methods
.method public abstract createView(Landroid/view/ViewGroup;I)Landroid/view/View;
.end method

.method public final destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/BannerAdapter;->scale:Z

    if-eqz v0, :cond_0

    .line 56
    iget v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/BannerAdapter;->realCount:I

    rem-int/2addr p2, v0

    .line 58
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/alipay/android/phone/discovery/o2ohome/view/BannerAdapter;->destroyView(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 59
    return-void
.end method

.method public abstract destroyView(Landroid/view/ViewGroup;ILjava/lang/Object;)V
.end method

.method public final getCount()I
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 41
    invoke-virtual {p0}, Lcom/alipay/android/phone/discovery/o2ohome/view/BannerAdapter;->realCount()I

    move-result v1

    iput v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/BannerAdapter;->realCount:I

    .line 42
    iget v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/BannerAdapter;->realCount:I

    if-le v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/BannerAdapter;->scale:Z

    .line 43
    iget-boolean v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/BannerAdapter;->scale:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/BannerAdapter;->realCount:I

    mul-int/lit16 v0, v0, 0x190

    :goto_1
    iput v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/BannerAdapter;->adapterCount:I

    .line 44
    iget v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/BannerAdapter;->adapterCount:I

    return v0

    .line 42
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 43
    :cond_1
    iget v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/BannerAdapter;->realCount:I

    goto :goto_1
.end method

.method public final getPageSize()I
    .locals 1

    .prologue
    .line 37
    const/16 v0, 0x8

    return v0
.end method

.method public final instantiateItem(Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/BannerAdapter;->scale:Z

    if-eqz v0, :cond_0

    .line 49
    iget v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/BannerAdapter;->realCount:I

    rem-int/2addr p2, v0

    .line 51
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/alipay/android/phone/discovery/o2ohome/view/BannerAdapter;->createView(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/alipay/android/phone/discovery/o2ohome/view/BannerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public abstract realCount()I
.end method
