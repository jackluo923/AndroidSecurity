.class public Lcom/alipay/android/app/template/TemplateWindowNavigator;
.super Ljava/lang/Object;
.source "TemplateWindowNavigator.java"

# interfaces
.implements Lcom/alipay/android/app/template/TScriptable;


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private b:Lcom/alipay/android/app/template/TemplateWindow;

.field public userAgent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-string/jumbo v0, ""

    sput-object v0, Lcom/alipay/android/app/template/TemplateWindowNavigator;->a:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public constructor <init>(Lcom/alipay/android/app/template/TemplateWindow;)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/template/TemplateWindowNavigator;->b:Lcom/alipay/android/app/template/TemplateWindow;

    .line 27
    iput-object p1, p0, Lcom/alipay/android/app/template/TemplateWindowNavigator;->b:Lcom/alipay/android/app/template/TemplateWindow;

    .line 28
    const-string/jumbo v0, "_flybird_android_1.0"

    iput-object v0, p0, Lcom/alipay/android/app/template/TemplateWindowNavigator;->userAgent:Ljava/lang/String;

    .line 29
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/template/TemplateWindowNavigator;->b:Lcom/alipay/android/app/template/TemplateWindow;

    .line 68
    return-void
.end method

.method public getJsObjName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    const-string/jumbo v0, "navigator"

    return-object v0
.end method

.method public getScriptConfigJson()Ljava/lang/String;
    .locals 5

    .prologue
    .line 52
    sget-object v0, Lcom/alipay/android/app/template/TemplateWindowNavigator;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    invoke-static {}, Lcom/alipay/android/app/template/TScriptConfigHelper;->getInstance()Lcom/alipay/android/app/template/TScriptConfigHelper;

    move-result-object v0

    .line 54
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "getUserAgent"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 55
    invoke-virtual {p0}, Lcom/alipay/android/app/template/TemplateWindowNavigator;->getJsObjName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "userAgent"

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/alipay/android/app/template/TScriptConfigHelper;->putFieldConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    .line 56
    invoke-virtual {p0}, Lcom/alipay/android/app/template/TemplateWindowNavigator;->getJsObjName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/template/TScriptConfigHelper;->getScriptJsonString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/app/template/TemplateWindowNavigator;->a:Ljava/lang/String;

    .line 58
    :cond_0
    sget-object v0, Lcom/alipay/android/app/template/TemplateWindowNavigator;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateWindowNavigator;->userAgent:Ljava/lang/String;

    return-object v0
.end method

.method public getWindowHashCode()I
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateWindowNavigator;->b:Lcom/alipay/android/app/template/TemplateWindow;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/alipay/android/app/template/TemplateWindowNavigator;->userAgent:Ljava/lang/String;

    .line 48
    return-void
.end method
