.class final Lcom/alipay/android/phone/home/manager/f;
.super Ljava/lang/Object;
.source "BaseAppsItemAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/alipay/android/phone/home/ads/Advert;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/home/manager/f;->a:Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 1
    check-cast p1, Lcom/alipay/android/phone/home/ads/Advert;

    check-cast p2, Lcom/alipay/android/phone/home/ads/Advert;

    invoke-virtual {p1}, Lcom/alipay/android/phone/home/ads/Advert;->getIndex()I

    move-result v0

    invoke-virtual {p2}, Lcom/alipay/android/phone/home/ads/Advert;->getIndex()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method
