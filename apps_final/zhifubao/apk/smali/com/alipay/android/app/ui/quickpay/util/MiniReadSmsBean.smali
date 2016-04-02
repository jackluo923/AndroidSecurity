.class public Lcom/alipay/android/app/ui/quickpay/util/MiniReadSmsBean;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/alipay/android/app/ui/quickpay/event/MiniReadSmsArgs;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Lcom/alipay/android/app/ui/quickpay/window/IUIForm;

.field private h:J


# direct methods
.method public constructor <init>(Lcom/alipay/android/app/json/JSONObject;Ljava/lang/String;Lcom/alipay/android/app/ui/quickpay/window/IUIForm;J)V
    .locals 6

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/MiniReadSmsBean;->g:Lcom/alipay/android/app/ui/quickpay/window/IUIForm;

    const-string/jumbo v0, "smsread"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "action"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "action"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    const-string/jumbo v2, "params"

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "params"

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object p1

    :cond_0
    iput-object p2, p0, Lcom/alipay/android/app/ui/quickpay/util/MiniReadSmsBean;->f:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/android/app/ui/quickpay/util/MiniReadSmsBean;->g:Lcom/alipay/android/app/ui/quickpay/window/IUIForm;

    iput-wide p4, p0, Lcom/alipay/android/app/ui/quickpay/util/MiniReadSmsBean;->h:J

    const-string/jumbo v0, "smsread"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_4

    const-string/jumbo v0, "template"

    invoke-virtual {v2, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/MiniReadSmsBean;->b:Ljava/lang/String;

    const-string/jumbo v0, "rules"

    invoke-virtual {v2, v0}, Lcom/alipay/android/app/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v1

    :goto_0
    invoke-virtual {v3}, Lcom/alipay/android/app/json/JSONArray;->length()I

    move-result v5

    if-ge v0, v5, :cond_2

    if-lez v0, :cond_1

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v3, v0}, Lcom/alipay/android/app/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/MiniReadSmsBean;->c:Ljava/lang/String;

    :cond_3
    const-string/jumbo v0, "tempGroup"

    invoke-virtual {v2, v0, v1}, Lcom/alipay/android/app/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/util/MiniReadSmsBean;->d:I

    const-string/jumbo v0, "readTime"

    const/16 v1, 0xb4

    invoke-virtual {v2, v0, v1}, Lcom/alipay/android/app/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/util/MiniReadSmsBean;->e:I

    :cond_4
    new-instance v0, Lcom/alipay/android/app/ui/quickpay/util/d;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/ui/quickpay/util/d;-><init>(Lcom/alipay/android/app/ui/quickpay/util/MiniReadSmsBean;)V

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/MiniReadSmsBean;->a:Lcom/alipay/android/app/ui/quickpay/event/MiniReadSmsArgs;

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/ui/quickpay/util/MiniReadSmsBean;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/MiniReadSmsBean;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/alipay/android/app/ui/quickpay/util/MiniReadSmsBean;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/MiniReadSmsBean;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/alipay/android/app/ui/quickpay/util/MiniReadSmsBean;)I
    .locals 1

    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/util/MiniReadSmsBean;->d:I

    return v0
.end method

.method static synthetic d(Lcom/alipay/android/app/ui/quickpay/util/MiniReadSmsBean;)I
    .locals 1

    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/util/MiniReadSmsBean;->e:I

    return v0
.end method

.method static synthetic e(Lcom/alipay/android/app/ui/quickpay/util/MiniReadSmsBean;)Lcom/alipay/android/app/ui/quickpay/window/IUIForm;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/MiniReadSmsBean;->g:Lcom/alipay/android/app/ui/quickpay/window/IUIForm;

    return-object v0
.end method

.method static synthetic f(Lcom/alipay/android/app/ui/quickpay/util/MiniReadSmsBean;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/MiniReadSmsBean;->f:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-wide v0, p0, Lcom/alipay/android/app/ui/quickpay/util/MiniReadSmsBean;->h:J

    return-wide v0
.end method

.method public final b()Lcom/alipay/android/app/ui/quickpay/event/MiniReadSmsArgs;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/MiniReadSmsBean;->a:Lcom/alipay/android/app/ui/quickpay/event/MiniReadSmsArgs;

    return-object v0
.end method
