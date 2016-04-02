.class Lcom/alipay/android/app/template/TemplateWindow$3;
.super Ljava/lang/Object;
.source "TemplateWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/template/TemplateWindow;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:[Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/template/TemplateWindow;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/app/template/TemplateWindow$3;->a:Lcom/alipay/android/app/template/TemplateWindow;

    iput-object p2, p0, Lcom/alipay/android/app/template/TemplateWindow$3;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/android/app/template/TemplateWindow$3;->c:[Ljava/lang/Object;

    .line 415
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 418
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateWindow$3;->a:Lcom/alipay/android/app/template/TemplateWindow;

    iget-object v1, p0, Lcom/alipay/android/app/template/TemplateWindow$3;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/android/app/template/TemplateWindow$3;->c:[Ljava/lang/Object;

    .line 419
    iget-object v3, p0, Lcom/alipay/android/app/template/TemplateWindow$3;->a:Lcom/alipay/android/app/template/TemplateWindow;

    .line 418
    invoke-static {v0, v1, v2, v3}, Lcom/alipay/android/app/template/TemplateWindow;->a(Lcom/alipay/android/app/template/TemplateWindow;Ljava/lang/String;[Ljava/lang/Object;Lcom/alipay/android/app/template/TemplateWindow;)I

    .line 420
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateWindow$3;->a:Lcom/alipay/android/app/template/TemplateWindow;

    invoke-static {v0}, Lcom/alipay/android/app/template/TemplateWindow;->e(Lcom/alipay/android/app/template/TemplateWindow;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 421
    invoke-static {}, Lcom/alipay/android/app/template/anim/AnimatorLayoutUtil;->getInstance()Lcom/alipay/android/app/template/anim/AnimatorLayoutUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/template/anim/AnimatorLayoutUtil;->requestLayout()V

    .line 424
    :cond_0
    return-void
.end method
