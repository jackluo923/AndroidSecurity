.class public Lcom/alipay/android/app/template/TemplateClickCallback;
.super Ljava/lang/Object;
.source "TemplateClickCallback.java"

# interfaces
.implements Lcom/alipay/android/app/template/ITemplateClickCallback;


# static fields
.field public static final TEMPLATE_NORMAL_LIST_FUNC_KEY:Ljava/lang/String; = "template_normal_list_func_key"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/alipay/android/app/template/TemplateWindow;

.field private c:Lcom/alipay/android/app/template/view/widget/TElement;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/alipay/android/app/template/TemplateWindow;Lcom/alipay/android/app/template/view/widget/TElement;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/alipay/android/app/template/TemplateClickCallback;->a:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/alipay/android/app/template/TemplateClickCallback;->b:Lcom/alipay/android/app/template/TemplateWindow;

    .line 19
    iput-object p3, p0, Lcom/alipay/android/app/template/TemplateClickCallback;->c:Lcom/alipay/android/app/template/view/widget/TElement;

    .line 20
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lcom/alipay/android/app/template/TemplateClickCallback;->b:Lcom/alipay/android/app/template/TemplateWindow;

    .line 47
    iput-object v0, p0, Lcom/alipay/android/app/template/TemplateClickCallback;->c:Lcom/alipay/android/app/template/view/widget/TElement;

    .line 48
    return-void
.end method

.method public onClickCallback(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 25
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateClickCallback;->b:Lcom/alipay/android/app/template/TemplateWindow;

    if-nez v0, :cond_1

    .line 42
    :cond_0
    :goto_0
    return-void

    .line 29
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateClickCallback;->a:Ljava/lang/String;

    const-string/jumbo v1, "template_normal_list_func_key"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 30
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateClickCallback;->c:Lcom/alipay/android/app/template/view/widget/TElement;

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateClickCallback;->c:Lcom/alipay/android/app/template/view/widget/TElement;

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/template/view/widget/TElement;->onClickCallback(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 39
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 35
    :cond_2
    const/4 v0, 0x1

    :try_start_1
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 36
    iget-object v1, p0, Lcom/alipay/android/app/template/TemplateClickCallback;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 37
    iget-object v1, p0, Lcom/alipay/android/app/template/TemplateClickCallback;->b:Lcom/alipay/android/app/template/TemplateWindow;

    iget-object v2, p0, Lcom/alipay/android/app/template/TemplateClickCallback;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/alipay/android/app/template/TemplateWindow;->callJsMethod(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
