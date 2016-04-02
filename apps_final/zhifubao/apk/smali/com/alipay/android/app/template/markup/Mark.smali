.class public Lcom/alipay/android/app/template/markup/Mark;
.super Ljava/lang/Object;
.source "Mark.java"


# static fields
.field public static final VARAIBLES:Ljava/lang/String; = "VARAIBLES"

.field private static final a:Ljava/util/regex/Pattern;

.field public static final observerStr:Ljava/lang/String; = ""


# instance fields
.field private b:[Ljava/lang/String;

.field private c:Lcom/alibaba/fastjson/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const-string/jumbo v0, "\\{\\{if([^/}]+\\w*)?\\}\\}|\\{\\{/if\\}\\}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/app/template/markup/Mark;->a:Ljava/util/regex/Pattern;

    .line 25
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/app/template/markup/Mark;->b:[Ljava/lang/String;

    .line 87
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/template/markup/Mark;->c:Lcom/alibaba/fastjson/JSONObject;

    .line 25
    return-void
.end method

.method private a(Lcom/alibaba/fastjson/JSONArray;Ljava/lang/Object;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONArray;
    .locals 3

    .prologue
    .line 374
    new-instance v1, Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson/JSONArray;-><init>(I)V

    .line 375
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 379
    return-object v1

    .line 376
    :cond_0
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, p2, p3}, Lcom/alipay/android/app/template/markup/Mark;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/alibaba/fastjson/JSONObject;)Ljava/lang/String;

    move-result-object v2

    .line 377
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    .line 375
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private a(Ljava/lang/Object;Lcom/alibaba/fastjson/JSONArray;I)Ljava/lang/Object;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 313
    invoke-virtual {p2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 314
    invoke-virtual {p2, p3}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 315
    const-string/jumbo v1, ">"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_2

    :cond_0
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 316
    aget-object v1, v0, v5

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 317
    invoke-static {p1, v1, v0}, Lcom/alipay/android/app/template/markup/Pipes;->pipe(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 318
    invoke-virtual {p2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    add-int/lit8 v1, p3, 0x1

    if-le v0, v1, :cond_1

    .line 319
    add-int/lit8 v0, p3, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/alipay/android/app/template/markup/Mark;->a(Ljava/lang/Object;Lcom/alibaba/fastjson/JSONArray;I)Ljava/lang/Object;

    move-result-object p1

    .line 322
    :cond_1
    return-object p1

    .line 315
    :cond_2
    invoke-virtual {v0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Ljava/lang/Object;Lcom/alibaba/fastjson/JSONArray;Ljava/lang/String;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 326
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alipay/android/app/template/markup/Mark;->a(Ljava/lang/Object;Lcom/alibaba/fastjson/JSONArray;I)Ljava/lang/Object;

    move-result-object v0

    .line 328
    const/4 v1, -0x1

    .line 329
    instance-of v2, v0, Lcom/alibaba/fastjson/JSONArray;

    if-eqz v2, :cond_2

    .line 330
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, ""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 331
    check-cast v0, Lcom/alibaba/fastjson/JSONArray;

    .line 332
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v5

    .line 333
    :goto_0
    add-int/lit8 v4, v1, 0x1

    if-lt v4, v5, :cond_0

    .line 345
    :goto_1
    return-object v2

    .line 334
    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 336
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p3, v1}, Lcom/alipay/android/app/template/markup/Mark;->upr(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    :goto_2
    move-object v1, v2

    .line 340
    check-cast v1, Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v4

    goto :goto_0

    .line 338
    :cond_1
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    goto :goto_2

    .line 342
    :cond_2
    instance-of v1, v0, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v1, :cond_3

    .line 343
    invoke-virtual {p0, p3, v0}, Lcom/alipay/android/app/template/markup/Mark;->upr(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_3
    move-object v2, v0

    goto :goto_1
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 210
    iget-object v2, p0, Lcom/alipay/android/app/template/markup/Mark;->b:[Ljava/lang/String;

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_1

    .line 215
    const/4 v0, 0x0

    :cond_0
    return-object v0

    .line 210
    :cond_1
    aget-object v0, v2, v1

    .line 211
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_0

    .line 210
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/Object;Lcom/alibaba/fastjson/JSONObject;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 389
    :cond_0
    const-string/jumbo v0, "`"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_1

    .line 398
    return-object p1

    .line 390
    :cond_1
    invoke-virtual {p3}, Lcom/alibaba/fastjson/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 391
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 392
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_2

    .line 393
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "{{"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "}}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lcom/alipay/android/app/template/markup/Mark;->up(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 394
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)Ljava/util/Map$Entry;
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 219
    sget-object v0, Lcom/alipay/android/app/template/markup/Mark;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 220
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 221
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-nez v1, :cond_1

    .line 224
    const/4 v0, -0x1

    move v1, v0

    move v2, v3

    move v4, v3

    move v5, v3

    move v0, v3

    .line 234
    :goto_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-lt v5, v7, :cond_2

    move v5, v0

    .line 237
    :cond_0
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 238
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int v3, v2, v0

    .line 239
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v1

    .line 240
    new-instance v4, Lcom/alipay/android/app/template/markup/MarkEntry;

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v0, v1}, Lcom/alipay/android/app/template/markup/MarkEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    .line 222
    :cond_1
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 227
    :cond_2
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 228
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v7, "{{/"

    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_3

    .line 229
    add-int/lit8 v0, v2, 0x1

    move v2, v4

    .line 233
    :goto_2
    if-eq v2, v0, :cond_0

    .line 234
    add-int/lit8 v4, v5, 0x1

    move v8, v0

    move v0, v5

    move v5, v4

    move v4, v2

    move v2, v8

    goto :goto_1

    .line 231
    :cond_3
    add-int/lit8 v4, v4, 0x1

    move v0, v2

    move v2, v4

    goto :goto_2
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/app/template/markup/Mark;->b:[Ljava/lang/String;

    .line 113
    iget-object v0, p0, Lcom/alipay/android/app/template/markup/Mark;->c:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->clear()V

    .line 114
    return-void
.end method

.method public init(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/alipay/android/app/template/markup/Mark;->c:Lcom/alibaba/fastjson/JSONObject;

    if-eq p1, v0, :cond_0

    .line 96
    iput-object p1, p0, Lcom/alipay/android/app/template/markup/Mark;->c:Lcom/alibaba/fastjson/JSONObject;

    .line 97
    if-eqz p1, :cond_0

    const-string/jumbo v0, "MARKS"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    const-string/jumbo v0, "MARKS"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    .line 99
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONArray;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/app/template/markup/Mark;->b:[Ljava/lang/String;

    .line 102
    :cond_0
    return-void
.end method

.method public isInited()Z
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/alipay/android/app/template/markup/Mark;->c:Lcom/alibaba/fastjson/JSONObject;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public up(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 117
    invoke-virtual {p0, p1, p2}, Lcom/alipay/android/app/template/markup/Mark;->upr(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mark up to >>> template="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " re="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    return-object v0
.end method

.method public upr(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v7, 0x0

    .line 130
    iget-object v0, p0, Lcom/alipay/android/app/template/markup/Mark;->c:Lcom/alibaba/fastjson/JSONObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/template/markup/Mark;->c:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 200
    :cond_0
    :goto_0
    return-object p1

    .line 135
    :cond_1
    iget-object v1, p0, Lcom/alipay/android/app/template/markup/Mark;->c:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v8

    .line 136
    const-string/jumbo v6, ""

    .line 137
    const-string/jumbo v4, ""

    .line 138
    const-string/jumbo v0, "PROP"

    invoke-virtual {v8, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 139
    const-string/jumbo v0, "TOKEN"

    invoke-virtual {v8, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 140
    const-string/jumbo v0, "TAG"

    invoke-virtual {v8, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 141
    const-string/jumbo v0, "TESTY"

    invoke-virtual {v8, v0}, Lcom/alibaba/fastjson/JSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    .line 142
    const-string/jumbo v0, "FILTERS"

    invoke-virtual {v8, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v1

    .line 143
    instance-of v0, p2, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v0, :cond_5

    move-object v0, p2

    .line 145
    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 150
    const-string/jumbo v0, "VARAIBLES"

    invoke-virtual {v8, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 151
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_13

    .line 152
    invoke-direct {p0, v1, p2, v0}, Lcom/alipay/android/app/template/markup/Mark;->a(Lcom/alibaba/fastjson/JSONArray;Ljava/lang/Object;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    move-object v3, v0

    .line 157
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{{/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_12

    .line 158
    invoke-static {p1}, Lcom/alipay/android/app/template/markup/Mark;->b(Ljava/lang/String;)Ljava/util/Map$Entry;

    move-result-object v1

    .line 159
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 160
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v4, v0

    move-object v5, v1

    .line 162
    :goto_2
    const-string/jumbo v0, "{{else}}"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 163
    const-string/jumbo v0, "."

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 167
    invoke-direct {p0, p2, v3, v7}, Lcom/alipay/android/app/template/markup/Mark;->a(Ljava/lang/Object;Lcom/alibaba/fastjson/JSONArray;I)Ljava/lang/Object;

    move-result-object v0

    .line 195
    :goto_3
    if-eqz v10, :cond_2

    .line 196
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p0, v5, p2}, Lcom/alipay/android/app/template/markup/Mark;->upr(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "{{else}}"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_10

    if-eqz v1, :cond_f

    invoke-virtual {v0, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 198
    :cond_2
    :goto_4
    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_4

    if-nez v0, :cond_3

    const-string/jumbo v0, ""

    :cond_3
    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 134
    :cond_4
    iget-object v0, p0, Lcom/alipay/android/app/template/markup/Mark;->c:Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p0, p1}, Lcom/alipay/android/app/template/markup/Mark;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    .line 147
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "the context should be of type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 148
    const-class v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 147
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :cond_6
    const/16 v0, 0x2e

    invoke-virtual {v9, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_c

    .line 170
    new-array v0, v7, [Ljava/lang/String;

    .line 171
    const-string/jumbo v1, "PROPARR"

    invoke-virtual {v8, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/JSONArray;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    move-object v1, p2

    move v2, v7

    .line 174
    :cond_7
    :goto_5
    if-eqz v1, :cond_8

    array-length v6, v0

    if-lt v2, v6, :cond_9

    .line 186
    :cond_8
    invoke-direct {p0, v1, v3, v5}, Lcom/alipay/android/app/template/markup/Mark;->a(Ljava/lang/Object;Lcom/alibaba/fastjson/JSONArray;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_3

    .line 175
    :cond_9
    instance-of v6, v1, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v6, :cond_a

    .line 176
    check-cast v1, Lcom/alibaba/fastjson/JSONObject;

    add-int/lit8 v6, v2, 0x1

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move v2, v6

    goto :goto_5

    .line 177
    :cond_a
    instance-of v6, v1, Lcom/alibaba/fastjson/JSONArray;

    if-eqz v6, :cond_7

    .line 178
    add-int/lit8 v6, v2, 0x1

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    move-object v2, v1

    .line 179
    check-cast v2, Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v2

    if-ge v8, v2, :cond_b

    .line 180
    check-cast v1, Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v1, v8}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move v2, v6

    goto :goto_5

    .line 182
    :cond_b
    const-string/jumbo v1, ""

    move v2, v6

    goto :goto_5

    .line 187
    :cond_c
    if-eqz v10, :cond_d

    .line 188
    invoke-direct {p0, v11, v3, v7}, Lcom/alipay/android/app/template/markup/Mark;->a(Ljava/lang/Object;Lcom/alibaba/fastjson/JSONArray;I)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_3

    .line 189
    :cond_d
    instance-of v0, v11, Lcom/alibaba/fastjson/JSONArray;

    if-eqz v0, :cond_e

    .line 191
    invoke-direct {p0, v11, v3, v5}, Lcom/alipay/android/app/template/markup/Mark;->a(Ljava/lang/Object;Lcom/alibaba/fastjson/JSONArray;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_3

    .line 192
    :cond_e
    instance-of v0, p2, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v0, :cond_11

    move-object v0, p2

    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 193
    invoke-direct {p0, v11, v3, v7}, Lcom/alipay/android/app/template/markup/Mark;->a(Ljava/lang/Object;Lcom/alibaba/fastjson/JSONArray;I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    .line 196
    :cond_f
    add-int/lit8 v1, v2, 0x8

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    :cond_10
    if-nez v1, :cond_2

    const-string/jumbo v0, ""

    goto/16 :goto_4

    :cond_11
    move-object v0, v6

    goto/16 :goto_3

    :cond_12
    move-object v5, v4

    move-object v4, v2

    goto/16 :goto_2

    :cond_13
    move-object v3, v1

    goto/16 :goto_1
.end method
