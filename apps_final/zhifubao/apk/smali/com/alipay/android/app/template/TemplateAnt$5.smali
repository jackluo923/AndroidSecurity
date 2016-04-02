.class Lcom/alipay/android/app/template/TemplateAnt$5;
.super Ljava/lang/Object;
.source "TemplateAnt.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/template/TemplateAnt;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/template/TemplateAnt;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/app/template/TemplateAnt$5;->a:Lcom/alipay/android/app/template/TemplateAnt;

    iput-object p2, p0, Lcom/alipay/android/app/template/TemplateAnt$5;->b:Ljava/lang/String;

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .prologue
    .line 184
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 186
    :try_start_0
    const-string/jumbo v0, "cancel"

    const-string/jumbo v2, "ok"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    :goto_0
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateAnt$5;->a:Lcom/alipay/android/app/template/TemplateAnt;

    invoke-static {v0}, Lcom/alipay/android/app/template/TemplateAnt;->a(Lcom/alipay/android/app/template/TemplateAnt;)Lcom/alipay/android/app/template/TemplateDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/template/TemplateDocument;->getWindow()Lcom/alipay/android/app/template/TemplateWindow;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/android/app/template/TemplateAnt$5;->b:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v0, v2, v3}, Lcom/alipay/android/app/template/TemplateWindow;->callJsMethod(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 191
    return-void

    .line 187
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
