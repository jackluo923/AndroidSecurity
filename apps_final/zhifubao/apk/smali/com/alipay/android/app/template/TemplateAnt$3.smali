.class Lcom/alipay/android/app/template/TemplateAnt$3;
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
    iput-object p1, p0, Lcom/alipay/android/app/template/TemplateAnt$3;->a:Lcom/alipay/android/app/template/TemplateAnt;

    iput-object p2, p0, Lcom/alipay/android/app/template/TemplateAnt$3;->b:Ljava/lang/String;

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 153
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateAnt$3;->a:Lcom/alipay/android/app/template/TemplateAnt;

    invoke-static {v0}, Lcom/alipay/android/app/template/TemplateAnt;->a(Lcom/alipay/android/app/template/TemplateAnt;)Lcom/alipay/android/app/template/TemplateDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/template/TemplateDocument;->getWindow()Lcom/alipay/android/app/template/TemplateWindow;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/template/TemplateAnt$3;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/template/TemplateWindow;->callJsMethod(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 154
    return-void
.end method
