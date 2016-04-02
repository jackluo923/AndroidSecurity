.class final Lcom/alipay/android/phone/home/manager/c;
.super Ljava/lang/Object;
.source "AppItemView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/home/manager/AppItemView;

.field private final synthetic b:Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;

.field private final synthetic c:Z

.field private final synthetic d:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

.field private final synthetic e:Lcom/alipay/android/phone/home/manager/ViewHolder;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/home/manager/AppItemView;Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;ZLcom/alipay/mobile/framework/service/ext/openplatform/app/App;Lcom/alipay/android/phone/home/manager/ViewHolder;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/home/manager/c;->a:Lcom/alipay/android/phone/home/manager/AppItemView;

    iput-object p2, p0, Lcom/alipay/android/phone/home/manager/c;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;

    iput-boolean p3, p0, Lcom/alipay/android/phone/home/manager/c;->c:Z

    iput-object p4, p0, Lcom/alipay/android/phone/home/manager/c;->d:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    iput-object p5, p0, Lcom/alipay/android/phone/home/manager/c;->e:Lcom/alipay/android/phone/home/manager/ViewHolder;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 90
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/c;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;->getStatus()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 136
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 92
    :pswitch_1
    iget-boolean v0, p0, Lcom/alipay/android/phone/home/manager/c;->c:Z

    if-nez v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/c;->d:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isInstallationSilent()Z

    move-result v0

    if-nez v0, :cond_1

    .line 94
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/c;->e:Lcom/alipay/android/phone/home/manager/ViewHolder;

    iget-object v0, v0, Lcom/alipay/android/phone/home/manager/ViewHolder;->d:Lcom/alipay/android/phone/home/ui/PieProgressView;

    invoke-virtual {v0, v3}, Lcom/alipay/android/phone/home/ui/PieProgressView;->setVisibility(I)V

    .line 95
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/c;->e:Lcom/alipay/android/phone/home/manager/ViewHolder;

    invoke-static {v0}, Lcom/alipay/android/phone/home/manager/ViewHolder;->a(Lcom/alipay/android/phone/home/manager/ViewHolder;)V

    .line 96
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/c;->e:Lcom/alipay/android/phone/home/manager/ViewHolder;

    iget-object v0, v0, Lcom/alipay/android/phone/home/manager/ViewHolder;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v1, p0, Lcom/alipay/android/phone/home/manager/c;->a:Lcom/alipay/android/phone/home/manager/AppItemView;

    invoke-virtual {v1}, Lcom/alipay/android/phone/home/manager/AppItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/alipay/android/phone/openplatform/R$string;->b:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/c;->e:Lcom/alipay/android/phone/home/manager/ViewHolder;

    iget-object v0, v0, Lcom/alipay/android/phone/home/manager/ViewHolder;->d:Lcom/alipay/android/phone/home/ui/PieProgressView;

    invoke-virtual {v0, v3}, Lcom/alipay/android/phone/home/ui/PieProgressView;->setProgress(I)V

    goto :goto_0

    .line 102
    :pswitch_2
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/c;->d:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isInstallationSilent()Z

    move-result v0

    if-nez v0, :cond_2

    .line 103
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/c;->e:Lcom/alipay/android/phone/home/manager/ViewHolder;

    iget-object v0, v0, Lcom/alipay/android/phone/home/manager/ViewHolder;->d:Lcom/alipay/android/phone/home/ui/PieProgressView;

    invoke-virtual {v0, v3}, Lcom/alipay/android/phone/home/ui/PieProgressView;->setVisibility(I)V

    .line 104
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/c;->e:Lcom/alipay/android/phone/home/manager/ViewHolder;

    invoke-static {v0}, Lcom/alipay/android/phone/home/manager/ViewHolder;->a(Lcom/alipay/android/phone/home/manager/ViewHolder;)V

    .line 105
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/c;->e:Lcom/alipay/android/phone/home/manager/ViewHolder;

    iget-object v0, v0, Lcom/alipay/android/phone/home/manager/ViewHolder;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v1, p0, Lcom/alipay/android/phone/home/manager/c;->a:Lcom/alipay/android/phone/home/manager/AppItemView;

    invoke-virtual {v1}, Lcom/alipay/android/phone/home/manager/AppItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/alipay/android/phone/openplatform/R$string;->b:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    :cond_2
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/c;->e:Lcom/alipay/android/phone/home/manager/ViewHolder;

    iget-object v0, v0, Lcom/alipay/android/phone/home/manager/ViewHolder;->d:Lcom/alipay/android/phone/home/ui/PieProgressView;

    iget-object v1, p0, Lcom/alipay/android/phone/home/manager/c;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;

    .line 108
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;->getDownLoadProgress()I

    move-result v1

    .line 107
    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/ui/PieProgressView;->setProgress(I)V

    goto :goto_0

    .line 111
    :pswitch_3
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/c;->e:Lcom/alipay/android/phone/home/manager/ViewHolder;

    iget-object v0, v0, Lcom/alipay/android/phone/home/manager/ViewHolder;->d:Lcom/alipay/android/phone/home/ui/PieProgressView;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/ui/PieProgressView;->setProgress(I)V

    .line 112
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/c;->a:Lcom/alipay/android/phone/home/manager/AppItemView;

    new-instance v1, Lcom/alipay/android/phone/home/manager/d;

    iget-object v2, p0, Lcom/alipay/android/phone/home/manager/c;->e:Lcom/alipay/android/phone/home/manager/ViewHolder;

    iget-object v3, p0, Lcom/alipay/android/phone/home/manager/c;->d:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-direct {v1, p0, v2, v3}, Lcom/alipay/android/phone/home/manager/d;-><init>(Lcom/alipay/android/phone/home/manager/c;Lcom/alipay/android/phone/home/manager/ViewHolder;Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V

    .line 119
    const-wide/16 v2, 0x1f4

    .line 112
    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/android/phone/home/manager/AppItemView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 123
    :pswitch_4
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/c;->e:Lcom/alipay/android/phone/home/manager/ViewHolder;

    invoke-static {v0}, Lcom/alipay/android/phone/home/manager/ViewHolder;->a(Lcom/alipay/android/phone/home/manager/ViewHolder;)V

    .line 124
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/c;->e:Lcom/alipay/android/phone/home/manager/ViewHolder;

    iget-object v0, v0, Lcom/alipay/android/phone/home/manager/ViewHolder;->d:Lcom/alipay/android/phone/home/ui/PieProgressView;

    invoke-virtual {v0, v3}, Lcom/alipay/android/phone/home/ui/PieProgressView;->setVisibility(I)V

    .line 125
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/c;->e:Lcom/alipay/android/phone/home/manager/ViewHolder;

    iget-object v0, v0, Lcom/alipay/android/phone/home/manager/ViewHolder;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v1, p0, Lcom/alipay/android/phone/home/manager/c;->a:Lcom/alipay/android/phone/home/manager/AppItemView;

    invoke-virtual {v1}, Lcom/alipay/android/phone/home/manager/AppItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/alipay/android/phone/openplatform/R$string;->b:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 131
    :pswitch_5
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/c;->e:Lcom/alipay/android/phone/home/manager/ViewHolder;

    invoke-static {v0}, Lcom/alipay/android/phone/home/manager/ViewHolder;->b(Lcom/alipay/android/phone/home/manager/ViewHolder;)V

    .line 132
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/c;->e:Lcom/alipay/android/phone/home/manager/ViewHolder;

    iget-object v0, v0, Lcom/alipay/android/phone/home/manager/ViewHolder;->d:Lcom/alipay/android/phone/home/ui/PieProgressView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/ui/PieProgressView;->setVisibility(I)V

    .line 133
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/c;->e:Lcom/alipay/android/phone/home/manager/ViewHolder;

    iget-object v0, v0, Lcom/alipay/android/phone/home/manager/ViewHolder;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v1, p0, Lcom/alipay/android/phone/home/manager/c;->d:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 90
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method
