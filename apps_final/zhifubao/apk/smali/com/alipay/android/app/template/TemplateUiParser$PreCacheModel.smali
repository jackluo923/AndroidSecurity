.class Lcom/alipay/android/app/template/TemplateUiParser$PreCacheModel;
.super Ljava/lang/Object;
.source "TemplateUiParser.java"


# instance fields
.field private a:Lcom/alipay/android/app/json/JSONObject;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Ljava/util/Map;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/template/TemplateUiParser$PreCacheModel;->e:Ljava/util/Map;

    .line 37
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/alipay/android/app/template/TemplateUiParser$PreCacheModel;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/template/TemplateUiParser$PreCacheModel;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateUiParser$PreCacheModel;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/android/app/template/TemplateUiParser$PreCacheModel;Lcom/alipay/android/app/json/JSONObject;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/alipay/android/app/template/TemplateUiParser$PreCacheModel;->a:Lcom/alipay/android/app/json/JSONObject;

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/template/TemplateUiParser$PreCacheModel;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/alipay/android/app/template/TemplateUiParser$PreCacheModel;->d:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/template/TemplateUiParser$PreCacheModel;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/alipay/android/app/template/TemplateUiParser$PreCacheModel;->e:Ljava/util/Map;

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/template/TemplateUiParser$PreCacheModel;Z)V
    .locals 0

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/alipay/android/app/template/TemplateUiParser$PreCacheModel;->c:Z

    return-void
.end method

.method static synthetic b(Lcom/alipay/android/app/template/TemplateUiParser$PreCacheModel;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateUiParser$PreCacheModel;->e:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic b(Lcom/alipay/android/app/template/TemplateUiParser$PreCacheModel;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/alipay/android/app/template/TemplateUiParser$PreCacheModel;->b:Ljava/lang/String;

    return-void
.end method

.method static synthetic c(Lcom/alipay/android/app/template/TemplateUiParser$PreCacheModel;)Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/alipay/android/app/template/TemplateUiParser$PreCacheModel;->c:Z

    return v0
.end method

.method static synthetic d(Lcom/alipay/android/app/template/TemplateUiParser$PreCacheModel;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateUiParser$PreCacheModel;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/alipay/android/app/template/TemplateUiParser$PreCacheModel;)Lcom/alipay/android/app/json/JSONObject;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateUiParser$PreCacheModel;->a:Lcom/alipay/android/app/json/JSONObject;

    return-object v0
.end method
