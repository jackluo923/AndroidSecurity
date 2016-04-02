.class public Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$JsonWrapper;
.super Ljava/lang/Object;
.source "DynamicTemplateServiceImpl.java"


# static fields
.field public static final HTML:Ljava/lang/String; = "HTML"

.field public static final JSON:Ljava/lang/String; = "JSON"


# instance fields
.field a:Lcom/alipay/android/app/json/JSONObject;

.field b:Lcom/alibaba/fastjson/JSONObject;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:I


# direct methods
.method private constructor <init>(Lcom/alipay/mobiletms/common/service/facade/rpc/Template;)V
    .locals 2

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    if-nez p1, :cond_0

    .line 134
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "template is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_0
    iget-object v0, p1, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->format:Ljava/lang/String;

    const-string/jumbo v1, "HTML"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p1, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->data:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$JsonWrapper;->c:Ljava/lang/String;

    .line 143
    :goto_0
    iget-object v0, p1, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->data:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$JsonWrapper;->g:I

    .line 144
    iget-object v0, p1, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->format:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$JsonWrapper;->f:Ljava/lang/String;

    .line 145
    iget-object v0, p1, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->publishVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$JsonWrapper;->d:Ljava/lang/String;

    .line 146
    iget-object v0, p1, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->time:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$JsonWrapper;->e:Ljava/lang/String;

    .line 147
    iget-object v0, p1, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->dataObserver:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 148
    const/4 v0, 0x0

    .line 147
    :goto_1
    iput-object v0, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$JsonWrapper;->b:Lcom/alibaba/fastjson/JSONObject;

    .line 149
    return-void

    .line 141
    :cond_1
    new-instance v0, Lcom/alipay/android/app/json/JSONObject;

    iget-object v1, p1, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->data:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$JsonWrapper;->a:Lcom/alipay/android/app/json/JSONObject;

    goto :goto_0

    .line 148
    :cond_2
    iget-object v0, p1, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->dataObserver:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    goto :goto_1
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "json is empty!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_0
    new-instance v0, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v0, p1}, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$JsonWrapper;->a:Lcom/alipay/android/app/json/JSONObject;

    .line 124
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$JsonWrapper;->g:I

    .line 125
    const-string/jumbo v0, "JSON"

    iput-object v0, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$JsonWrapper;->f:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public static valueOf(Lcom/alipay/mobiletms/common/service/facade/rpc/Template;)Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$JsonWrapper;
    .locals 1

    .prologue
    .line 152
    new-instance v0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$JsonWrapper;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$JsonWrapper;-><init>(Lcom/alipay/mobiletms/common/service/facade/rpc/Template;)V

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$JsonWrapper;
    .locals 1

    .prologue
    .line 129
    new-instance v0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$JsonWrapper;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$JsonWrapper;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
