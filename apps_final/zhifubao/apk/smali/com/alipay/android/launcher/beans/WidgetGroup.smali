.class public Lcom/alipay/android/launcher/beans/WidgetGroup;
.super Ljava/lang/Object;
.source "WidgetGroup.java"


# instance fields
.field private bundleName:Ljava/lang/String;

.field private className:Ljava/lang/String;

.field private defaultWidgetGroup:Ljava/lang/String;

.field private id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/alipay/android/launcher/beans/WidgetGroup;->id:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/alipay/android/launcher/beans/WidgetGroup;->bundleName:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Lcom/alipay/android/launcher/beans/WidgetGroup;->className:Ljava/lang/String;

    .line 26
    iput-object p4, p0, Lcom/alipay/android/launcher/beans/WidgetGroup;->defaultWidgetGroup:Ljava/lang/String;

    .line 27
    return-void
.end method


# virtual methods
.method public getBundleName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alipay/android/launcher/beans/WidgetGroup;->bundleName:Ljava/lang/String;

    return-object v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alipay/android/launcher/beans/WidgetGroup;->className:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultWidgetGroup()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alipay/android/launcher/beans/WidgetGroup;->defaultWidgetGroup:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/alipay/android/launcher/beans/WidgetGroup;->id:Ljava/lang/String;

    return-object v0
.end method

.method public setBundleName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/alipay/android/launcher/beans/WidgetGroup;->bundleName:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setClassName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/alipay/android/launcher/beans/WidgetGroup;->className:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setDefaultWidgetGroup(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/alipay/android/launcher/beans/WidgetGroup;->defaultWidgetGroup:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/alipay/android/launcher/beans/WidgetGroup;->id:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "WidgetGroup [id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/launcher/beans/WidgetGroup;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", className="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/launcher/beans/WidgetGroup;->className:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 64
    const-string/jumbo v1, ", defaultWidgetGroup="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/launcher/beans/WidgetGroup;->defaultWidgetGroup:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
