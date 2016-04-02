.class final Lcom/alipay/android/phone/home/widget/b;
.super Ljava/lang/Object;
.source "HomeWidgetGroupLayout_.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout_;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout_;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/alipay/android/phone/home/widget/b;->a:Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout_;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/b;->a:Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout_;

    # invokes: Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout;->processShowGuide()V
    invoke-static {v0}, Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout_;->access$001(Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout_;)V

    .line 96
    return-void
.end method
