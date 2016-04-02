.class Lcom/alipay/android/phone/discovery/o2ohome/view/CityRemindView$2;
.super Ljava/lang/Object;
.source "CityRemindView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/phone/discovery/o2ohome/view/CityRemindView;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/discovery/o2ohome/view/CityRemindView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/CityRemindView$2;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/view/CityRemindView;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/CityRemindView$2;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/view/CityRemindView;

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/view/CityRemindView;->hideView()V

    .line 40
    return-void
.end method
