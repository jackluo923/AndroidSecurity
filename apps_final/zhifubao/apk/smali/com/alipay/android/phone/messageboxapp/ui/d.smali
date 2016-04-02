.class final Lcom/alipay/android/phone/messageboxapp/ui/d;
.super Ljava/lang/Object;
.source "MsgboxAppActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/messageboxapp/ui/d;->a:Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 219
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/d;->a:Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;

    invoke-static {v0}, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->f(Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;)Lcom/alipay/android/phone/messageboxstatic/api/OverdueService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/messageboxstatic/api/OverdueService;->triggerMsgInfoOverdue()V

    .line 220
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/d;->a:Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;

    invoke-static {v0}, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->f(Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;)Lcom/alipay/android/phone/messageboxstatic/api/OverdueService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/messageboxstatic/api/OverdueService;->triggerReadMsgOverdue()V

    .line 225
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/d;->a:Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;

    invoke-static {v0}, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->g(Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;)Lcom/alipay/android/phone/messageboxstatic/api/MsgboxInfoService;

    move-result-object v0

    .line 226
    const-string/jumbo v1, "TODO"

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/messageboxstatic/api/MsgboxInfoService;->queryInitMsgByType(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 225
    check-cast v3, Ljava/util/ArrayList;

    .line 227
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/d;->a:Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;

    invoke-static {v0}, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->g(Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;)Lcom/alipay/android/phone/messageboxstatic/api/MsgboxInfoService;

    move-result-object v0

    .line 228
    const-string/jumbo v1, "TODO"

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/messageboxstatic/api/MsgboxInfoService;->queryReadMsgByType(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 227
    check-cast v2, Ljava/util/ArrayList;

    .line 230
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/d;->a:Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;

    invoke-static {v0}, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->g(Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;)Lcom/alipay/android/phone/messageboxstatic/api/MsgboxInfoService;

    move-result-object v0

    .line 231
    const-string/jumbo v1, "NOTICE"

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/messageboxstatic/api/MsgboxInfoService;->queryInitMsgByType(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 230
    check-cast v5, Ljava/util/ArrayList;

    .line 232
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/d;->a:Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;

    invoke-static {v0}, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->g(Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;)Lcom/alipay/android/phone/messageboxstatic/api/MsgboxInfoService;

    move-result-object v0

    .line 233
    const-string/jumbo v1, "NOTICE"

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/messageboxstatic/api/MsgboxInfoService;->queryReadMsgByType(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 232
    check-cast v4, Ljava/util/ArrayList;

    .line 249
    iget-object v1, p0, Lcom/alipay/android/phone/messageboxapp/ui/d;->a:Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;

    new-instance v0, Lcom/alipay/android/phone/messageboxapp/ui/e;

    invoke-direct/range {v0 .. v5}, Lcom/alipay/android/phone/messageboxapp/ui/e;-><init>(Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v0}, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 250
    return-void
.end method
