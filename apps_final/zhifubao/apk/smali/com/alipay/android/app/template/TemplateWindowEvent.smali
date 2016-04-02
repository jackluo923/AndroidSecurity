.class public Lcom/alipay/android/app/template/TemplateWindowEvent;
.super Ljava/lang/Object;
.source "TemplateWindowEvent.java"

# interfaces
.implements Lcom/alipay/android/app/template/TScriptable;


# static fields
.field private static e:Ljava/lang/String;


# instance fields
.field private a:Lcom/alipay/android/app/template/view/widget/TElement;

.field private b:Lcom/alipay/android/app/template/view/widget/TElement;

.field private c:I

.field private d:Lcom/alipay/android/app/template/TemplateWindow;

.field public x:F

.field public y:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/android/app/template/TemplateWindowEvent;->e:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public constructor <init>(Lcom/alipay/android/app/template/TemplateWindow;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object v0, p0, Lcom/alipay/android/app/template/TemplateWindowEvent;->a:Lcom/alipay/android/app/template/view/widget/TElement;

    .line 26
    iput-object v0, p0, Lcom/alipay/android/app/template/TemplateWindowEvent;->b:Lcom/alipay/android/app/template/view/widget/TElement;

    .line 30
    iput-object v0, p0, Lcom/alipay/android/app/template/TemplateWindowEvent;->d:Lcom/alipay/android/app/template/TemplateWindow;

    .line 34
    iput-object p1, p0, Lcom/alipay/android/app/template/TemplateWindowEvent;->d:Lcom/alipay/android/app/template/TemplateWindow;

    .line 35
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 126
    iput-object v0, p0, Lcom/alipay/android/app/template/TemplateWindowEvent;->a:Lcom/alipay/android/app/template/view/widget/TElement;

    .line 127
    iput-object v0, p0, Lcom/alipay/android/app/template/TemplateWindowEvent;->b:Lcom/alipay/android/app/template/view/widget/TElement;

    .line 128
    return-void
.end method

.method public getCurrentTarget()Lcom/alipay/android/app/template/view/widget/TElement;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateWindowEvent;->a:Lcom/alipay/android/app/template/view/widget/TElement;

    return-object v0
.end method

.method public getJsObjName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    const-string/jumbo v0, "event"

    return-object v0
.end method

.method public getKeycode()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/alipay/android/app/template/TemplateWindowEvent;->c:I

    return v0
.end method

.method public getScriptConfigJson()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 92
    sget-object v0, Lcom/alipay/android/app/template/TemplateWindowEvent;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    invoke-static {}, Lcom/alipay/android/app/template/TScriptConfigHelper;->getInstance()Lcom/alipay/android/app/template/TScriptConfigHelper;

    move-result-object v0

    .line 94
    invoke-virtual {p0}, Lcom/alipay/android/app/template/TemplateWindowEvent;->getJsObjName()Ljava/lang/String;

    move-result-object v1

    .line 95
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v3, "getY"

    new-array v4, v7, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 96
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string/jumbo v4, "setY"

    new-array v5, v8, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 97
    const-string/jumbo v4, "y"

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/alipay/android/app/template/TScriptConfigHelper;->putFieldConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    .line 99
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v3, "getX"

    new-array v4, v7, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 100
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string/jumbo v4, "setX"

    new-array v5, v8, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 101
    const-string/jumbo v4, "x"

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/alipay/android/app/template/TScriptConfigHelper;->putFieldConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    .line 103
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v3, "getKeycode"

    new-array v4, v7, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 104
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string/jumbo v4, "setKeycode"

    new-array v5, v8, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 105
    const-string/jumbo v4, "keyCode"

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/alipay/android/app/template/TScriptConfigHelper;->putFieldConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    .line 107
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v3, "getTarget"

    new-array v4, v7, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 108
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string/jumbo v4, "setTarget"

    new-array v5, v8, [Ljava/lang/Class;

    const-class v6, Lcom/alipay/android/app/template/view/widget/TElement;

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 109
    const-string/jumbo v4, "target"

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/alipay/android/app/template/TScriptConfigHelper;->putFieldConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    .line 111
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v3, "getCurrentTarget"

    new-array v4, v7, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 112
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string/jumbo v4, "setCurrentTarget"

    new-array v5, v8, [Ljava/lang/Class;

    const-class v6, Lcom/alipay/android/app/template/view/widget/TElement;

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 113
    const-string/jumbo v4, "currentTarget"

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/alipay/android/app/template/TScriptConfigHelper;->putFieldConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    .line 115
    invoke-virtual {v0, v1}, Lcom/alipay/android/app/template/TScriptConfigHelper;->getScriptJsonString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/app/template/TemplateWindowEvent;->e:Ljava/lang/String;

    .line 117
    :cond_0
    sget-object v0, Lcom/alipay/android/app/template/TemplateWindowEvent;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getTarget()Lcom/alipay/android/app/template/view/widget/TElement;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateWindowEvent;->b:Lcom/alipay/android/app/template/view/widget/TElement;

    return-object v0
.end method

.method public getWindowHashCode()I
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateWindowEvent;->d:Lcom/alipay/android/app/template/TemplateWindow;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/alipay/android/app/template/TemplateWindowEvent;->x:F

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/alipay/android/app/template/TemplateWindowEvent;->y:F

    return v0
.end method

.method public setCurrentTarget(Lcom/alipay/android/app/template/view/widget/TElement;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/alipay/android/app/template/TemplateWindowEvent;->a:Lcom/alipay/android/app/template/view/widget/TElement;

    .line 75
    return-void
.end method

.method public setKeycode(I)V
    .locals 0

    .prologue
    .line 66
    iput p1, p0, Lcom/alipay/android/app/template/TemplateWindowEvent;->c:I

    .line 67
    return-void
.end method

.method public setTarget(Lcom/alipay/android/app/template/view/widget/TElement;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/alipay/android/app/template/TemplateWindowEvent;->b:Lcom/alipay/android/app/template/view/widget/TElement;

    .line 84
    return-void
.end method

.method public setX(F)V
    .locals 0

    .prologue
    .line 58
    iput p1, p0, Lcom/alipay/android/app/template/TemplateWindowEvent;->x:F

    .line 59
    return-void
.end method

.method public setY(F)V
    .locals 0

    .prologue
    .line 62
    iput p1, p0, Lcom/alipay/android/app/template/TemplateWindowEvent;->y:F

    .line 63
    return-void
.end method
