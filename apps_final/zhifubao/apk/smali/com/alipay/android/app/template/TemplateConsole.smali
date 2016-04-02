.class public Lcom/alipay/android/app/template/TemplateConsole;
.super Ljava/lang/Object;
.source "TemplateConsole.java"

# interfaces
.implements Lcom/alipay/android/app/template/TScriptable;


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private b:Lcom/alipay/android/app/template/TemplateWindow;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/android/app/template/TemplateConsole;->a:Ljava/lang/String;

    .line 10
    return-void
.end method

.method public constructor <init>(Lcom/alipay/android/app/template/TemplateWindow;)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/template/TemplateConsole;->b:Lcom/alipay/android/app/template/TemplateWindow;

    .line 24
    iput-object p1, p0, Lcom/alipay/android/app/template/TemplateConsole;->b:Lcom/alipay/android/app/template/TemplateWindow;

    .line 25
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/template/TemplateConsole;->b:Lcom/alipay/android/app/template/TemplateWindow;

    .line 78
    return-void
.end method

.method public error(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 68
    return-void
.end method

.method public getConsoleScriptStr(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 48
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 49
    const-string/jumbo v0, "var console = { log: function() {nativeConsole.info(arguments[0]);}, info: function() {nativeConsole.info(arguments[0]);}, error: function() {nativeConsole.info(arguments[0]);}}; "

    .line 51
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "var console = { log: function() {}, info: function() {}, error: function() {}}; "

    goto :goto_0
.end method

.method public getJsObjName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    const-string/jumbo v0, "nativeConsole"

    return-object v0
.end method

.method public getScriptConfigJson()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 29
    sget-object v0, Lcom/alipay/android/app/template/TemplateConsole;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 30
    sget-object v0, Lcom/alipay/android/app/template/TemplateConsole;->a:Ljava/lang/String;

    .line 43
    :goto_0
    return-object v0

    .line 32
    :cond_0
    invoke-static {}, Lcom/alipay/android/app/template/TScriptConfigHelper;->getInstance()Lcom/alipay/android/app/template/TScriptConfigHelper;

    move-result-object v0

    .line 33
    invoke-virtual {p0}, Lcom/alipay/android/app/template/TemplateConsole;->getJsObjName()Ljava/lang/String;

    move-result-object v1

    .line 34
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v3, "log"

    new-array v4, v7, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 35
    const-string/jumbo v3, "log"

    invoke-virtual {v0, v1, v3, v2}, Lcom/alipay/android/app/template/TScriptConfigHelper;->putMethodConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;)V

    .line 37
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v3, "info"

    new-array v4, v7, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 38
    const-string/jumbo v3, "info"

    invoke-virtual {v0, v1, v3, v2}, Lcom/alipay/android/app/template/TScriptConfigHelper;->putMethodConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;)V

    .line 40
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v3, "error"

    new-array v4, v7, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 41
    const-string/jumbo v3, "error"

    invoke-virtual {v0, v1, v3, v2}, Lcom/alipay/android/app/template/TScriptConfigHelper;->putMethodConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;)V

    .line 42
    invoke-virtual {v0, v1}, Lcom/alipay/android/app/template/TScriptConfigHelper;->getScriptJsonString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 43
    sput-object v0, Lcom/alipay/android/app/template/TemplateConsole;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method public getWindowHashCode()I
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateConsole;->b:Lcom/alipay/android/app/template/TemplateWindow;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public info(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 64
    return-void
.end method

.method public log(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 60
    return-void
.end method
