.class final Lcom/appyet/activity/ac;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/appyet/activity/TranslateActivity;


# direct methods
.method constructor <init>(Lcom/appyet/activity/TranslateActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/activity/ac;->a:Lcom/appyet/activity/TranslateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x1

    :try_start_0
    iget-object v0, p0, Lcom/appyet/activity/ac;->a:Lcom/appyet/activity/TranslateActivity;

    invoke-static {v0}, Lcom/appyet/activity/TranslateActivity;->a(Lcom/appyet/activity/TranslateActivity;)Lcom/appyet/context/ApplicationContext;

    move-result-object v0

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->d:Lcom/appyet/manager/bp;

    invoke-virtual {v0}, Lcom/appyet/manager/bp;->z()Lcom/appyet/context/b;

    move-result-object v0

    sget-object v1, Lcom/appyet/context/b;->b:Lcom/appyet/context/b;

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://www.google.com/gwt/x?u="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/appyet/activity/ac;->a:Lcom/appyet/activity/TranslateActivity;

    invoke-static {v1}, Lcom/appyet/activity/TranslateActivity;->b(Lcom/appyet/activity/TranslateActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://translate.google.com/translate?sl=auto&tl="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/appyet/activity/ac;->a:Lcom/appyet/activity/TranslateActivity;

    invoke-static {v2}, Lcom/appyet/activity/TranslateActivity;->c(Lcom/appyet/activity/TranslateActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&u="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-static {v0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/appyet/activity/ac;->a:Lcom/appyet/activity/TranslateActivity;

    invoke-virtual {v0, v1}, Lcom/appyet/activity/TranslateActivity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/appyet/activity/ac;->a:Lcom/appyet/activity/TranslateActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/appyet/activity/TranslateActivity;->setResult(I)V

    iget-object v0, p0, Lcom/appyet/activity/ac;->a:Lcom/appyet/activity/TranslateActivity;

    invoke-virtual {v0}, Lcom/appyet/activity/TranslateActivity;->finish()V

    :goto_1
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://www.instapaper.com/m?u="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/appyet/activity/ac;->a:Lcom/appyet/activity/TranslateActivity;

    invoke-static {v1}, Lcom/appyet/activity/TranslateActivity;->b(Lcom/appyet/activity/TranslateActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    iget-object v0, p0, Lcom/appyet/activity/ac;->a:Lcom/appyet/activity/TranslateActivity;

    invoke-static {v0}, Lcom/appyet/activity/TranslateActivity;->a(Lcom/appyet/activity/TranslateActivity;)Lcom/appyet/context/ApplicationContext;

    move-result-object v0

    const v1, 0x7f080046

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method
