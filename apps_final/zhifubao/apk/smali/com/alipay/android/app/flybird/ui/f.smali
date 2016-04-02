.class final Lcom/alipay/android/app/flybird/ui/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog$DialogButtonActionListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/flybird/ui/e;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/flybird/ui/e;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/f;->a:Lcom/alipay/android/app/flybird/ui/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 4

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/f;->a:Lcom/alipay/android/app/flybird/ui/e;

    iget-object v0, v0, Lcom/alipay/android/app/flybird/ui/e;->b:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->f(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/f;->a:Lcom/alipay/android/app/flybird/ui/e;

    iget-object v0, v0, Lcom/alipay/android/app/flybird/ui/e;->b:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->f(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;->b()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x64

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/f;->a:Lcom/alipay/android/app/flybird/ui/e;

    iget-object v0, v0, Lcom/alipay/android/app/flybird/ui/e;->b:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->b(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    move-result-object v0

    if-eqz v0, :cond_2

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/f;->a:Lcom/alipay/android/app/flybird/ui/e;

    iget-object v0, v0, Lcom/alipay/android/app/flybird/ui/e;->b:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->g(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Landroid/content/BroadcastReceiver;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/f;->a:Lcom/alipay/android/app/flybird/ui/e;

    iget-object v0, v0, Lcom/alipay/android/app/flybird/ui/e;->b:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->a(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/f;->a:Lcom/alipay/android/app/flybird/ui/e;

    iget-object v1, v1, Lcom/alipay/android/app/flybird/ui/e;->b:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-static {v1}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->g(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0

    :cond_3
    if-nez p1, :cond_5

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/f;->a:Lcom/alipay/android/app/flybird/ui/e;

    iget-object v0, v0, Lcom/alipay/android/app/flybird/ui/e;->b:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->b(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/f;->a:Lcom/alipay/android/app/flybird/ui/e;

    iget-object v0, v0, Lcom/alipay/android/app/flybird/ui/e;->b:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->b(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    :cond_4
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/f;->a:Lcom/alipay/android/app/flybird/ui/e;

    iget-object v0, v0, Lcom/alipay/android/app/flybird/ui/e;->b:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    const-string/jumbo v1, "bl"

    sget-object v2, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Bncb:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    const-string/jumbo v3, "(\'status=0009\')"

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->a(Ljava/lang/String;Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const/4 v0, 0x2

    if-ne p1, v0, :cond_7

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/f;->a:Lcom/alipay/android/app/flybird/ui/e;

    iget-object v0, v0, Lcom/alipay/android/app/flybird/ui/e;->b:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->b(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/f;->a:Lcom/alipay/android/app/flybird/ui/e;

    iget-object v0, v0, Lcom/alipay/android/app/flybird/ui/e;->b:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->b(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    :cond_6
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/f;->a:Lcom/alipay/android/app/flybird/ui/e;

    iget-object v0, v0, Lcom/alipay/android/app/flybird/ui/e;->b:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    const-string/jumbo v1, "bl"

    sget-object v2, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Bncb:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    const-string/jumbo v3, "(\'status=0005\')"

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->a(Ljava/lang/String;Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/f;->a:Lcom/alipay/android/app/flybird/ui/e;

    iget-object v0, v0, Lcom/alipay/android/app/flybird/ui/e;->b:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->f(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/f;->a:Lcom/alipay/android/app/flybird/ui/e;

    iget-object v0, v0, Lcom/alipay/android/app/flybird/ui/e;->b:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->f(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/hardwarepay/base/HardwarePayValidateDialog;->d()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/f;->a:Lcom/alipay/android/app/flybird/ui/e;

    iget-object v0, v0, Lcom/alipay/android/app/flybird/ui/e;->b:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    const-string/jumbo v1, "bl"

    sget-object v2, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Back:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    const-string/jumbo v3, "{\"action\":{\"name\":\"loc:back\"}}"

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->a(Ljava/lang/String;Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;Ljava/lang/String;)V

    goto/16 :goto_1
.end method
