.class Lcom/alipay/android/app/template/TemplateDocument$1;
.super Ljava/lang/Object;
.source "TemplateDocument.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/template/TemplateDocument;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Lcom/alipay/android/app/template/view/widget/TElement;

.field private final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/template/TemplateDocument;Ljava/lang/String;Lcom/alipay/android/app/template/view/widget/TElement;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/app/template/TemplateDocument$1;->a:Lcom/alipay/android/app/template/TemplateDocument;

    iput-object p2, p0, Lcom/alipay/android/app/template/TemplateDocument$1;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/android/app/template/TemplateDocument$1;->c:Lcom/alipay/android/app/template/view/widget/TElement;

    iput-object p4, p0, Lcom/alipay/android/app/template/TemplateDocument$1;->d:Ljava/lang/String;

    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 278
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateDocument$1;->a:Lcom/alipay/android/app/template/TemplateDocument;

    invoke-static {v0}, Lcom/alipay/android/app/template/TemplateDocument;->a(Lcom/alipay/android/app/template/TemplateDocument;)Lcom/alipay/android/app/template/OnTemplateClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 279
    new-instance v0, Lcom/alipay/android/app/template/TemplateClickCallback;

    iget-object v1, p0, Lcom/alipay/android/app/template/TemplateDocument$1;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/android/app/template/TemplateDocument$1;->a:Lcom/alipay/android/app/template/TemplateDocument;

    invoke-static {v2}, Lcom/alipay/android/app/template/TemplateDocument;->b(Lcom/alipay/android/app/template/TemplateDocument;)Lcom/alipay/android/app/template/TemplateWindow;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/android/app/template/TemplateDocument$1;->c:Lcom/alipay/android/app/template/view/widget/TElement;

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/app/template/TemplateClickCallback;-><init>(Ljava/lang/String;Lcom/alipay/android/app/template/TemplateWindow;Lcom/alipay/android/app/template/view/widget/TElement;)V

    .line 280
    iget-object v1, p0, Lcom/alipay/android/app/template/TemplateDocument$1;->a:Lcom/alipay/android/app/template/TemplateDocument;

    invoke-static {v1}, Lcom/alipay/android/app/template/TemplateDocument;->c(Lcom/alipay/android/app/template/TemplateDocument;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    iget-object v1, p0, Lcom/alipay/android/app/template/TemplateDocument$1;->a:Lcom/alipay/android/app/template/TemplateDocument;

    invoke-static {v1}, Lcom/alipay/android/app/template/TemplateDocument;->a(Lcom/alipay/android/app/template/TemplateDocument;)Lcom/alipay/android/app/template/OnTemplateClickListener;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/app/template/TemplateDocument$1;->d:Ljava/lang/String;

    invoke-interface {v1, p0, v2, v0}, Lcom/alipay/android/app/template/OnTemplateClickListener;->onAsyncEvent(Ljava/lang/Object;Ljava/lang/String;Lcom/alipay/android/app/template/ITemplateClickCallback;)Z

    .line 283
    :cond_0
    return-void
.end method
