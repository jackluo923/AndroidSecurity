.class final Lcom/alipay/android/widgets/asset/h;
.super Ljava/lang/Object;
.source "AssetWidgetGroup.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/alipay/android/widgets/asset/model/WealthHomeSection;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/android/widgets/asset/AssetWidgetGroup;


# direct methods
.method constructor <init>(Lcom/alipay/android/widgets/asset/AssetWidgetGroup;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/widgets/asset/h;->a:Lcom/alipay/android/widgets/asset/AssetWidgetGroup;

    .line 494
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 1
    check-cast p1, Lcom/alipay/android/widgets/asset/model/WealthHomeSection;

    check-cast p2, Lcom/alipay/android/widgets/asset/model/WealthHomeSection;

    invoke-virtual {p1}, Lcom/alipay/android/widgets/asset/model/WealthHomeSection;->getIndex()I

    move-result v0

    invoke-virtual {p2}, Lcom/alipay/android/widgets/asset/model/WealthHomeSection;->getIndex()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method
