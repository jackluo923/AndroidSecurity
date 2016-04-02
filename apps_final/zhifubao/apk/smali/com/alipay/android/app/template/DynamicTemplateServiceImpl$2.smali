.class Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$2;
.super Ljava/lang/Object;
.source "DynamicTemplateServiceImpl.java"

# interfaces
.implements Lcom/alipay/mobile/aspect/Advice;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$2;->a:Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;

    .line 503
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 538
    return-void
.end method

.method public onCallAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;
    .locals 1

    .prologue
    .line 532
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCallBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 527
    return-void
.end method

.method public onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 522
    return-void
.end method

.method public onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;
    .locals 1

    .prologue
    .line 515
    const/4 v0, 0x0

    return-object v0
.end method

.method public onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 508
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 509
    iget-object v1, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$2;->a:Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->a(Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;I)V

    .line 510
    return-void
.end method
