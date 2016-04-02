.class final Lcom/alipay/android/phone/home/manager/d;
.super Ljava/lang/Object;
.source "AppItemView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/home/manager/c;

.field private final synthetic b:Lcom/alipay/android/phone/home/manager/ViewHolder;

.field private final synthetic c:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/home/manager/c;Lcom/alipay/android/phone/home/manager/ViewHolder;Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/home/manager/d;->a:Lcom/alipay/android/phone/home/manager/c;

    iput-object p2, p0, Lcom/alipay/android/phone/home/manager/d;->b:Lcom/alipay/android/phone/home/manager/ViewHolder;

    iput-object p3, p0, Lcom/alipay/android/phone/home/manager/d;->c:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/d;->b:Lcom/alipay/android/phone/home/manager/ViewHolder;

    invoke-static {v0}, Lcom/alipay/android/phone/home/manager/ViewHolder;->b(Lcom/alipay/android/phone/home/manager/ViewHolder;)V

    .line 116
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/d;->b:Lcom/alipay/android/phone/home/manager/ViewHolder;

    iget-object v0, v0, Lcom/alipay/android/phone/home/manager/ViewHolder;->d:Lcom/alipay/android/phone/home/ui/PieProgressView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/ui/PieProgressView;->setVisibility(I)V

    .line 117
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/d;->b:Lcom/alipay/android/phone/home/manager/ViewHolder;

    iget-object v0, v0, Lcom/alipay/android/phone/home/manager/ViewHolder;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v1, p0, Lcom/alipay/android/phone/home/manager/d;->c:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    return-void
.end method
