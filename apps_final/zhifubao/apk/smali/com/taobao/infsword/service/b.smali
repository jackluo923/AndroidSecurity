.class public Lcom/taobao/infsword/service/b;
.super Ljava/lang/Thread;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/content/Intent;

.field private c:Ljava/util/List;

.field private d:Ljava/util/List;

.field private e:Ljava/util/List;

.field private f:Z

.field private final g:I

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/taobao/infsword/service/b;->f:Z

    const/16 v0, 0x200

    iput v0, p0, Lcom/taobao/infsword/service/b;->g:I

    const-class v0, Lcom/taobao/infsword/service/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/infsword/service/b;->h:Ljava/lang/String;

    const-string/jumbo v0, "alibaba_antitrojan_client"

    iput-object v0, p0, Lcom/taobao/infsword/service/b;->i:Ljava/lang/String;

    iput-object p1, p0, Lcom/taobao/infsword/service/b;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/taobao/infsword/service/b;->b:Landroid/content/Intent;

    return-void
.end method

.method private static a([B)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    aget-byte v1, p0, v0

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method private static a(Ljava/util/List;)Ljava/util/List;
    .locals 4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static a([C)V
    .locals 3

    const/4 v1, 0x0

    array-length v2, p0

    move v0, v1

    :goto_0
    if-lt v0, v2, :cond_0

    return-void

    :cond_0
    aput-char v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static a(C)Z
    .locals 1

    const/16 v0, 0x61

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7a

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_2

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)Ljava/util/List;
    .locals 11

    const/16 v10, 0x80

    const/16 v9, 0x2e

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    new-array v6, v10, [C

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v3, v1

    move v4, v1

    :goto_0
    if-lt v3, v5, :cond_2

    aget-char v0, v6, v1

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v6}, Ljava/lang/String;-><init>([C)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_a

    return-object v1

    :cond_2
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Lcom/taobao/infsword/service/b;->a(C)Z

    move-result v0

    if-nez v0, :cond_4

    const/16 v0, 0x30

    if-lt v8, v0, :cond_6

    const/16 v0, 0x39

    if-gt v8, v0, :cond_6

    move v0, v2

    :goto_2
    if-nez v0, :cond_4

    const/16 v0, 0x2f

    if-eq v8, v0, :cond_3

    const/16 v0, 0x3a

    if-eq v8, v0, :cond_3

    const/16 v0, 0x23

    if-eq v8, v0, :cond_3

    const/16 v0, 0x2d

    if-eq v8, v0, :cond_3

    if-eq v8, v9, :cond_3

    const/16 v0, 0x3f

    if-eq v8, v0, :cond_3

    const/16 v0, 0x5f

    if-eq v8, v0, :cond_3

    const/16 v0, 0x2b

    if-eq v8, v0, :cond_3

    const/16 v0, 0x25

    if-eq v8, v0, :cond_3

    const/16 v0, 0x3d

    if-ne v8, v0, :cond_7

    :cond_3
    move v0, v2

    :goto_3
    if-eqz v0, :cond_8

    :cond_4
    if-ge v4, v10, :cond_5

    aput-char v8, v6, v4

    :cond_5
    add-int/lit8 v0, v4, 0x1

    :goto_4
    add-int/lit8 v3, v3, 0x1

    move v4, v0

    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_2

    :cond_7
    move v0, v1

    goto :goto_3

    :cond_8
    aget-char v0, v6, v1

    if-eqz v0, :cond_9

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v6}, Ljava/lang/String;-><init>([C)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v6}, Lcom/taobao/infsword/service/b;->a([C)V

    :cond_9
    move v0, v1

    goto :goto_4

    :cond_a
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3}, Lcom/taobao/infsword/service/b;->a([B)I

    move-result v3

    invoke-virtual {v0, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    const/4 v5, 0x3

    if-le v3, v5, :cond_1

    add-int/lit8 v3, v4, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/taobao/infsword/service/b;->a(C)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method

.method private b(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    const/4 v3, 0x0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    :goto_1
    return-object v4

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    invoke-direct {p0, v2}, Lcom/taobao/infsword/service/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v6, "\u0000"

    const-string/jumbo v7, ""

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v1, p0, Lcom/taobao/infsword/service/b;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_3

    move v1, v3

    :goto_2
    if-nez v1, :cond_0

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_3
    :try_start_1
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v3, -0x1

    const/4 v0, 0x0

    const-string/jumbo v1, ""

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const/4 p1, 0x0

    :cond_1
    :goto_0
    return-object p1

    :cond_2
    if-eqz p1, :cond_4

    :try_start_0
    const-string/jumbo v2, "http:"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string/jumbo v2, "htpps:"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    const/4 v0, 0x1

    :cond_4
    if-eqz v0, :cond_5

    const-string/jumbo v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    aget-object p1, v0, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string/jumbo v0, "www."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object p1

    goto :goto_0

    :cond_5
    :try_start_2
    const-string/jumbo v0, "www."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v3, :cond_6

    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_6
    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0x2f

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_7
    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v3, :cond_1

    const/4 v0, 0x0

    const/16 v2, 0x2f

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object p1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p1, v1

    :goto_1
    iget-object v1, p0, Lcom/taobao/infsword/service/b;->h:Ljava/lang/String;

    const-string/jumbo v2, "getURLHost exception."

    invoke-static {v1, v2}, Lcom/taobao/infsword/c/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/util/List;
    .locals 10

    const/16 v9, 0x200

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/16 v0, 0x200

    new-array v7, v0, [C

    move v3, v1

    move v4, v1

    :goto_1
    if-lt v3, v5, :cond_3

    const/4 v0, 0x0

    aget-char v0, v7, v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v7}, Ljava/lang/String;-><init>([C)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_7

    move-object v0, v2

    goto :goto_0

    :cond_3
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v0, 0x21

    if-lt v8, v0, :cond_4

    const/16 v0, 0x7e

    if-gt v8, v0, :cond_4

    const/4 v0, 0x1

    :goto_3
    if-eqz v0, :cond_5

    if-ge v4, v9, :cond_5

    aput-char v8, v7, v4

    add-int/lit8 v0, v4, 0x1

    :goto_4
    add-int/lit8 v3, v3, 0x1

    move v4, v0

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    aget-char v0, v7, v0

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v7}, Ljava/lang/String;-><init>([C)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v7}, Lcom/taobao/infsword/service/b;->a([C)V

    :cond_6
    move v0, v1

    goto :goto_4

    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/taobao/infsword/service/b;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    :goto_5
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_5
.end method

.method public run()V
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    :try_start_0
    sput-boolean v0, Lcom/taobao/infsword/statistic/KGB;->y:Z

    iget-object v0, p0, Lcom/taobao/infsword/service/b;->a:Landroid/content/Context;

    const-string/jumbo v3, "target"

    invoke-static {v0, v3}, Lcom/taobao/infsword/statistic/b;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v0, p0, Lcom/taobao/infsword/service/b;->h:Ljava/lang/String;

    const-string/jumbo v1, "Invalid targets phone number,abort!"

    invoke-static {v0, v1}, Lcom/taobao/infsword/c/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v3, "["

    const-string/jumbo v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "]"

    const-string/jumbo v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "\""

    const-string/jumbo v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    array-length v0, v3

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/infsword/service/b;->d:Ljava/util/List;

    iget-object v0, p0, Lcom/taobao/infsword/service/b;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    array-length v4, v3

    move v0, v1

    :goto_1
    if-lt v0, v4, :cond_2

    iget-object v0, p0, Lcom/taobao/infsword/service/b;->a:Landroid/content/Context;

    const-string/jumbo v3, "whitelist"

    invoke-static {v0, v3}, Lcom/taobao/infsword/statistic/b;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v0, p0, Lcom/taobao/infsword/service/b;->h:Ljava/lang/String;

    const-string/jumbo v1, "Invalid white lists,abort!"

    invoke-static {v0, v1}, Lcom/taobao/infsword/c/b;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/taobao/infsword/service/b;->h:Ljava/lang/String;

    const-string/jumbo v1, "exception"

    invoke-static {v0, v1}, Lcom/taobao/infsword/c/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :try_start_1
    aget-object v5, v3, v0

    iget-object v6, p0, Lcom/taobao/infsword/service/b;->d:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const-string/jumbo v3, "["

    const-string/jumbo v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "]"

    const-string/jumbo v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "\""

    const-string/jumbo v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    array-length v0, v3

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/infsword/service/b;->e:Ljava/util/List;

    iget-object v0, p0, Lcom/taobao/infsword/service/b;->e:Ljava/util/List;

    if-eqz v0, :cond_0

    array-length v4, v3

    move v0, v1

    :goto_2
    if-lt v0, v4, :cond_8

    iget-object v0, p0, Lcom/taobao/infsword/service/b;->c:Ljava/util/List;

    if-nez v0, :cond_4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/infsword/service/b;->c:Ljava/util/List;

    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/taobao/infsword/service/b;->b:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v3, "pdus"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    if-eqz v0, :cond_0

    array-length v3, v0

    new-array v6, v3, [Landroid/telephony/SmsMessage;

    move-object v3, v2

    move-object v4, v2

    move v9, v1

    move-object v1, v2

    move v2, v9

    :goto_3
    array-length v5, v0

    if-lt v2, v5, :cond_9

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/taobao/infsword/service/b;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_a

    :cond_6
    :goto_4
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    if-nez v3, :cond_b

    :cond_7
    iget-object v0, p0, Lcom/taobao/infsword/service/b;->h:Ljava/lang/String;

    const-string/jumbo v1, "no url(s) need report."

    invoke-static {v0, v1}, Lcom/taobao/infsword/c/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    aget-object v5, v3, v0

    iget-object v6, p0, Lcom/taobao/infsword/service/b;->e:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_9
    aget-object v1, v0, v2

    check-cast v1, [B

    invoke-static {v1}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v1

    aput-object v1, v6, v2

    aget-object v1, v6, v2

    invoke-virtual {v1}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v3

    aget-object v1, v6, v2

    invoke-virtual {v1}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/taobao/infsword/service/b;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/infsword/service/b;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/taobao/infsword/service/b;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    new-instance v1, Ljava/util/Date;

    aget-object v5, v6, v2

    invoke-virtual {v5}, Landroid/telephony/SmsMessage;->getTimestampMillis()J

    move-result-wide v7

    invoke-direct {v1, v7, v8}, Ljava/util/Date;-><init>(J)V

    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string/jumbo v7, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v5, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v3

    move-object v3, v4

    move-object v4, v5

    goto :goto_3

    :cond_a
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/taobao/infsword/service/b;->f:Z

    goto :goto_4

    :cond_b
    iget-boolean v0, p0, Lcom/taobao/infsword/service/b;->f:Z

    if-eqz v0, :cond_e

    new-instance v0, Lcom/taobao/infsword/a/e;

    invoke-direct {v0}, Lcom/taobao/infsword/a/e;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "\u0000"

    const-string/jumbo v5, ""

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "["

    const-string/jumbo v5, ""

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "]"

    const-string/jumbo v5, ""

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, " "

    const-string/jumbo v5, ""

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/taobao/infsword/a/e;->a(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/taobao/infsword/a/e;->b(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/taobao/infsword/a/e;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/taobao/infsword/service/b;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/taobao/infsword/service/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/taobao/infsword/client/b;->a(Landroid/content/Context;)Lcom/taobao/infsword/client/b;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/infsword/service/b;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/taobao/infsword/statistic/b;->b(Landroid/content/Context;)Lcom/taobao/infsword/a/b;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/infsword/service/b;->c:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/taobao/infsword/a/b;->c(Ljava/util/List;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2}, Lcom/taobao/infsword/a/b;->a(Ljava/util/List;)V

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v1, v2}, Lcom/taobao/infsword/a/b;->a(Ljava/util/Set;)V

    invoke-virtual {v1}, Lcom/taobao/infsword/a/b;->p()Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "phishing"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_d

    iget-object v2, p0, Lcom/taobao/infsword/service/b;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/taobao/infsword/statistic/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/taobao/infsword/service/b;->a:Landroid/content/Context;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v2, v1}, Lcom/taobao/infsword/statistic/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "alibaba_antitrojan_client"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/taobao/infsword/c/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/taobao/infsword/a/c;

    invoke-direct {v5}, Lcom/taobao/infsword/a/c;-><init>()V

    invoke-virtual {v5, v2, v3}, Lcom/taobao/infsword/a/c;->a(J)V

    invoke-virtual {v5, v4}, Lcom/taobao/infsword/a/c;->a(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/taobao/infsword/service/b;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/taobao/infsword/statistic/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/taobao/infsword/a/c;->b(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Lcom/taobao/infsword/a/c;->c(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v5}, Lcom/taobao/infsword/client/b;->a(Ljava/lang/String;Lcom/taobao/infsword/a/c;)V

    :cond_c
    :goto_5
    const/4 v0, 0x0

    sput-boolean v0, Lcom/taobao/infsword/statistic/KGB;->y:Z

    goto/16 :goto_0

    :cond_d
    iget-object v0, p0, Lcom/taobao/infsword/service/b;->h:Ljava/lang/String;

    const-string/jumbo v1, "empty list.return!"

    invoke-static {v0, v1}, Lcom/taobao/infsword/c/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_e
    iget-object v0, p0, Lcom/taobao/infsword/service/b;->h:Ljava/lang/String;

    const-string/jumbo v1, "unexpected sender"

    invoke-static {v0, v1}, Lcom/taobao/infsword/c/b;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5
.end method
