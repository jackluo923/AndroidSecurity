.class final Lcom/alipay/android/phone/businesscommon/globalsearch/ui/f;
.super Ljava/lang/Object;
.source "CommonSearchActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;)V
    .locals 0

    .prologue
    .line 406
    iput-object p1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/f;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 455
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 450
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 410
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 411
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 412
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/f;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;

    iget-object v1, v1, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 445
    :cond_0
    :goto_0
    return-void

    .line 415
    :cond_1
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/f;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;

    invoke-static {v1, v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->c(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;Ljava/lang/String;)V

    .line 417
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/f;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;

    iget-object v1, v1, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->c:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;

    invoke-virtual {v1, v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/h;->a(Ljava/lang/String;)V

    .line 418
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 419
    invoke-static {}, Lcom/alipay/android/phone/globalsearch/a/l;->a()Lcom/alipay/android/phone/globalsearch/a/l;

    const-string/jumbo v0, ""

    invoke-static {v0}, Lcom/alipay/android/phone/globalsearch/a/l;->a(Ljava/lang/String;)V

    .line 420
    invoke-static {}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->d()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/f;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->b(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;)Lcom/alipay/android/phone/globalsearch/b/a;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 421
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/f;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->b(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;)Lcom/alipay/android/phone/globalsearch/b/a;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/alipay/android/phone/globalsearch/b/a;->a(Z)V

    .line 422
    const-string/jumbo v0, "jiushi"

    const-string/jumbo v1, "showMainPage"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    :cond_2
    invoke-static {}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->d()I

    move-result v0

    if-nez v0, :cond_4

    .line 425
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/f;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->c(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;)V

    .line 426
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/f;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->d(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;)Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;->clearData()V

    .line 430
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/f;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;

    const-string/jumbo v1, ""

    iput-object v1, v0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->e:Ljava/lang/String;

    goto :goto_0

    .line 427
    :cond_4
    invoke-static {}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->d()I

    move-result v0

    if-ne v0, v3, :cond_3

    .line 428
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/f;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;

    iget-object v0, v0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->d:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;

    invoke-virtual {v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;->d()V

    goto :goto_1

    .line 434
    :cond_5
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/f;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;

    iget-object v0, v0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->d:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;

    invoke-virtual {v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;->e()V

    .line 435
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/f;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;

    invoke-static {v0, v2}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->a(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;Z)V

    .line 436
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/f;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->e(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 437
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/f;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->f(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;)V

    goto :goto_0

    .line 440
    :cond_6
    invoke-static {}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->d()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/f;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->b(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;)Lcom/alipay/android/phone/globalsearch/b/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/f;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->b(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;)Lcom/alipay/android/phone/globalsearch/b/a;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/alipay/android/phone/globalsearch/b/a;->a(Z)V

    goto/16 :goto_0
.end method
