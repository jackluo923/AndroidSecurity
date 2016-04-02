.class final Lcom/alipay/android/app/display/windows/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/display/event/MspEventArgs;

.field final synthetic b:Lcom/alipay/android/app/display/uielement/IUIElement;

.field final synthetic c:Lcom/alipay/android/app/display/windows/MspWindow;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/display/windows/MspWindow;Lcom/alipay/android/app/display/event/MspEventArgs;Lcom/alipay/android/app/display/uielement/IUIElement;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/display/windows/c;->c:Lcom/alipay/android/app/display/windows/MspWindow;

    iput-object p2, p0, Lcom/alipay/android/app/display/windows/c;->a:Lcom/alipay/android/app/display/event/MspEventArgs;

    iput-object p3, p0, Lcom/alipay/android/app/display/windows/c;->b:Lcom/alipay/android/app/display/uielement/IUIElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/display/windows/c;->a:Lcom/alipay/android/app/display/event/MspEventArgs;

    invoke-virtual {v0}, Lcom/alipay/android/app/display/event/MspEventArgs;->getEventType()Lcom/alipay/android/app/display/event/EventType;

    move-result-object v1

    iget-object v0, p0, Lcom/alipay/android/app/display/windows/c;->a:Lcom/alipay/android/app/display/event/MspEventArgs;

    sget-object v2, Lcom/alipay/android/lib/plusin/script/EventScriptType;->Lua:Lcom/alipay/android/lib/plusin/script/EventScriptType;

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/display/event/MspEventArgs;->getEventScript(Lcom/alipay/android/lib/plusin/script/EventScriptType;)Lcom/alipay/android/app/event/IEventArgs$EventScript;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/alipay/android/app/event/IEventArgs$EventScript;->b()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    :goto_0
    invoke-static {v2}, Lcom/alipay/android/app/display/event/EventType;->a(Ljava/lang/String;)Lcom/alipay/android/app/display/event/EventType;

    move-result-object v0

    if-eqz v0, :cond_1

    :goto_1
    iget-object v1, p0, Lcom/alipay/android/app/display/windows/c;->c:Lcom/alipay/android/app/display/windows/MspWindow;

    iget-object v2, p0, Lcom/alipay/android/app/display/windows/c;->b:Lcom/alipay/android/app/display/uielement/IUIElement;

    iget-object v3, p0, Lcom/alipay/android/app/display/windows/c;->a:Lcom/alipay/android/app/display/event/MspEventArgs;

    invoke-static {v1, v2, v3, v0}, Lcom/alipay/android/app/display/windows/MspWindow;->a(Lcom/alipay/android/app/display/windows/MspWindow;Lcom/alipay/android/app/display/uielement/IUIElement;Lcom/alipay/android/app/display/event/MspEventArgs;Lcom/alipay/android/app/display/event/EventType;)V

    :goto_2
    return-void

    :cond_0
    const/4 v0, 0x0

    move-object v2, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/display/windows/c;->c:Lcom/alipay/android/app/display/windows/MspWindow;

    invoke-static {v0, v3, v2}, Lcom/alipay/android/app/display/windows/MspWindow;->a(Lcom/alipay/android/app/display/windows/MspWindow;Lcom/alipay/android/app/event/IEventArgs$EventScript;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_2
.end method
