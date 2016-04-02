.class public final Lcom/appyet/manager/an;
.super Ljava/lang/Object;


# static fields
.field private static final b:Ljava/util/regex/Pattern;

.field private static final c:Ljava/util/regex/Pattern;

.field private static final d:Ljava/util/regex/Pattern;

.field private static final e:Ljava/util/regex/Pattern;

.field private static final f:Ljava/util/regex/Pattern;


# instance fields
.field private a:Lcom/appyet/context/ApplicationContext;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x2

    const-string v0, "\\[IMG[l|r]?\\](.+?)\\[/IMG[l|r]?\\]"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/appyet/manager/an;->b:Ljava/util/regex/Pattern;

    const-string v0, "\\[IMG\\](.*)\\[/IMG\\]"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/appyet/manager/an;->c:Ljava/util/regex/Pattern;

    const-string v0, "\\[QUOTE(.*)\\]((?s).*?)\\[/QUOTE\\]"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/appyet/manager/an;->d:Ljava/util/regex/Pattern;

    const-string v0, "\\[URL=\"?(.+?)\"?\\](.+?)\\[/URL\\]"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/appyet/manager/an;->e:Ljava/util/regex/Pattern;

    const-string v0, "\\[URL\\](.+?)\\[/URL\\]"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/appyet/manager/an;->f:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lcom/appyet/context/ApplicationContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appyet/manager/an;->a:Lcom/appyet/context/ApplicationContext;

    return-void
.end method

.method public static a(Lcom/appyet/a/a/d;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/appyet/a/a/d;->a:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/appyet/a/a/d;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p2, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "announcement.php?a="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "showthread.php?t="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    :try_start_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v1, Lcom/appyet/manager/an;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "<img src=\""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/appyet/f/z;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    :goto_1
    return-object p0

    :cond_0
    :try_start_1
    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object p0

    goto :goto_1
.end method

.method private a(Ljava/util/Map;Lcom/appyet/a/a/d;Lcom/appyet/a/a/a;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/appyet/a/a/d;",
            "Lcom/appyet/a/a/a;",
            ")V"
        }
    .end annotation

    const-string v0, "forum_id"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "forum_id"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p3, Lcom/appyet/a/a/a;->a:Ljava/lang/String;

    :cond_0
    const-string v0, "forum_name"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v1, Ljava/lang/String;

    const-string v0, "forum_name"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    iput-object v1, p3, Lcom/appyet/a/a/a;->b:Ljava/lang/String;

    :cond_1
    const-string v0, "description"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v1, Ljava/lang/String;

    const-string v0, "description"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    iput-object v1, p3, Lcom/appyet/a/a/a;->c:Ljava/lang/String;

    :cond_2
    const-string v0, "parent_id"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "parent_id"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p3, Lcom/appyet/a/a/a;->d:Ljava/lang/String;

    :cond_3
    const-string v0, "logo_url"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "logo_url"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p3, Lcom/appyet/a/a/a;->e:Ljava/lang/String;

    :cond_4
    const-string v0, "new_post"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "new_post"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p3, Lcom/appyet/a/a/a;->f:Z

    :cond_5
    const-string v0, "is_protected"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "is_protected"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p3, Lcom/appyet/a/a/a;->g:Z

    :cond_6
    const-string v0, "is_subscribed"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "is_subscribed"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p3, Lcom/appyet/a/a/a;->h:Z

    :cond_7
    const-string v0, "can_subscribe"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "can_subscribe"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p3, Lcom/appyet/a/a/a;->i:Z

    :cond_8
    const-string v0, "url"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "url"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p3, Lcom/appyet/a/a/a;->j:Ljava/lang/String;

    :cond_9
    const-string v0, "sub_only"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "sub_only"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p3, Lcom/appyet/a/a/a;->k:Z

    :cond_a
    const-string v0, "child"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "child"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    if-eqz v0, :cond_b

    array-length v3, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_b

    aget-object v1, v0, v2

    check-cast v1, Ljava/util/Map;

    new-instance v4, Lcom/appyet/a/a/a;

    invoke-direct {v4}, Lcom/appyet/a/a/a;-><init>()V

    invoke-direct {p0, v1, p2, v4}, Lcom/appyet/manager/an;->a(Ljava/util/Map;Lcom/appyet/a/a/d;Lcom/appyet/a/a/a;)V

    iget-object v1, p2, Lcom/appyet/a/a/d;->b:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_b
    return-void
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    :try_start_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v1, Lcom/appyet/manager/an;->e:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "<a href=\""

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/appyet/f/z;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\">"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</a>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    :goto_1
    return-object p0

    :cond_0
    :try_start_1
    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object p0

    goto :goto_1
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    :try_start_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v1, Lcom/appyet/manager/an;->f:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "<a href=\""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/appyet/f/z;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</a>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    :goto_1
    return-object p0

    :cond_0
    :try_start_1
    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object p0

    goto :goto_1
.end method

.method private static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    :try_start_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v1, Lcom/appyet/manager/an;->d:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "<div class=\"quote\">"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</div>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    :goto_1
    return-object p0

    :cond_0
    :try_start_1
    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object p0

    goto :goto_1
.end method


# virtual methods
.method public final a(JLjava/lang/String;)Lcom/appyet/a/a/a;
    .locals 3

    invoke-virtual {p0, p1, p2}, Lcom/appyet/manager/an;->a(J)Lcom/appyet/a/a/d;

    move-result-object v0

    iget-object v0, v0, Lcom/appyet/a/a/d;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/a/a/a;

    iget-object v2, v0, Lcom/appyet/a/a/a;->a:Ljava/lang/String;

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(J)Lcom/appyet/a/a/d;
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/appyet/manager/an;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->o:Lcom/appyet/context/g;

    iget-object v0, v0, Lcom/appyet/context/g;->a:Ljava/util/List;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/appyet/manager/an;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->o:Lcom/appyet/context/g;

    iget-object v0, v0, Lcom/appyet/context/g;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/a/a/d;

    iget-wide v3, v0, Lcom/appyet/a/a/d;->c:J

    cmp-long v3, v3, p1

    if-nez v3, :cond_1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/appyet/manager/an;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->h:Lcom/appyet/manager/d;

    invoke-virtual {v0, p1, p2}, Lcom/appyet/manager/d;->i(J)Lcom/appyet/data/Forum;

    move-result-object v2

    if-nez v2, :cond_3

    move-object v0, v1

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/appyet/a/a/d;

    invoke-direct {v0}, Lcom/appyet/a/a/d;-><init>()V

    invoke-virtual {v2}, Lcom/appyet/data/Forum;->getModuleId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/appyet/a/a/d;->c:J

    invoke-virtual {v2}, Lcom/appyet/data/Forum;->getLink()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/appyet/a/a/d;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/appyet/manager/an;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->o:Lcom/appyet/context/g;

    iget-object v1, v1, Lcom/appyet/context/g;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final a(JLjava/lang/String;Ljava/lang/String;)Lcom/appyet/manager/ao;
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/appyet/manager/an;->a(J)Lcom/appyet/a/a/d;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v0, Lcom/appyet/manager/ao;

    invoke-direct {v0, p0, v7, v6}, Lcom/appyet/manager/ao;-><init>(Lcom/appyet/manager/an;ZLjava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v3, Lcom/appyet/g/g;

    new-instance v0, Ljava/net/URL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v2, Lcom/appyet/a/a/d;->a:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "/mobiquo/mobiquo.php"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v0}, Lcom/appyet/g/g;-><init>(Ljava/net/URL;)V

    const/16 v0, 0x78

    iput v0, v3, Lcom/appyet/g/g;->j:I

    iget-object v0, p0, Lcom/appyet/manager/an;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->v:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/appyet/g/g;->a(Ljava/lang/String;)V

    const-string v0, "Accept-Encoding"

    const-string v1, "gzip"

    invoke-virtual {v3, v0, v1}, Lcom/appyet/g/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v2, Lcom/appyet/a/a/d;->d:Lcom/appyet/a/a/b;

    iget-object v0, v0, Lcom/appyet/a/a/b;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, v2, Lcom/appyet/a/a/d;->d:Lcom/appyet/a/a/b;

    iget-object v0, v0, Lcom/appyet/a/a/b;->d:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, v2, Lcom/appyet/a/a/d;->d:Lcom/appyet/a/a/b;

    iget-object v0, v0, Lcom/appyet/a/a/b;->e:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, v2, Lcom/appyet/a/a/d;->d:Lcom/appyet/a/a/b;

    iget-object v0, v0, Lcom/appyet/a/a/b;->e:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    :cond_2
    const-string v0, "login"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v4, 0x1

    invoke-virtual {p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    aput-object v5, v1, v4

    invoke-virtual {v3, v0, v1}, Lcom/appyet/g/g;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_6

    const-string v1, "result"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v3, v3, Lcom/appyet/g/g;->e:Lcom/appyet/g/c;

    iget-object v3, v3, Lcom/appyet/g/c;->b:Ljava/util/Map;

    iput-object v3, v2, Lcom/appyet/a/a/d;->f:Ljava/util/Map;

    new-instance v3, Lcom/appyet/a/a/f;

    invoke-direct {v3}, Lcom/appyet/a/a/f;-><init>()V

    iput-object v3, v2, Lcom/appyet/a/a/d;->e:Lcom/appyet/a/a/f;

    iget-object v3, v2, Lcom/appyet/a/a/d;->e:Lcom/appyet/a/a/f;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v3, Lcom/appyet/a/a/f;->a:Z

    const-string v1, "result_text"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v3, v2, Lcom/appyet/a/a/d;->e:Lcom/appyet/a/a/f;

    new-instance v4, Ljava/lang/String;

    const-string v1, "result_text"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    check-cast v1, [B

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>([B)V

    iput-object v4, v3, Lcom/appyet/a/a/f;->b:Ljava/lang/String;

    :cond_3
    const-string v1, "status"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v3, v2, Lcom/appyet/a/a/d;->e:Lcom/appyet/a/a/f;

    const-string v1, "status"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v3, Lcom/appyet/a/a/f;->c:Ljava/lang/String;

    :cond_4
    iget-object v3, v2, Lcom/appyet/a/a/d;->e:Lcom/appyet/a/a/f;

    const-string v1, "user_id"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v3, Lcom/appyet/a/a/f;->d:Ljava/lang/String;

    iget-object v3, v2, Lcom/appyet/a/a/d;->e:Lcom/appyet/a/a/f;

    new-instance v4, Ljava/lang/String;

    const-string v1, "username"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    check-cast v1, [B

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>([B)V

    iput-object v4, v3, Lcom/appyet/a/a/f;->e:Ljava/lang/String;

    const-string v1, "email"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v3, v2, Lcom/appyet/a/a/d;->e:Lcom/appyet/a/a/f;

    new-instance v4, Ljava/lang/String;

    const-string v1, "email"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    check-cast v1, [B

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>([B)V

    iput-object v4, v3, Lcom/appyet/a/a/f;->f:Ljava/lang/String;

    :cond_5
    iget-object v1, v2, Lcom/appyet/a/a/d;->e:Lcom/appyet/a/a/f;

    const-string v3, "icon_url"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/appyet/a/a/f;->g:Ljava/lang/String;

    new-instance v0, Lcom/appyet/manager/ao;

    const/4 v1, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v3}, Lcom/appyet/manager/ao;-><init>(Lcom/appyet/manager/an;ZLjava/lang/String;)V
    :try_end_0
    .catch Lcom/appyet/g/p; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/appyet/g/l; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto/16 :goto_0

    :catch_0
    move-exception v0

    iput-object v6, v2, Lcom/appyet/a/a/d;->e:Lcom/appyet/a/a/f;

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    :cond_6
    :goto_1
    new-instance v0, Lcom/appyet/manager/ao;

    invoke-direct {v0, p0, v7, v6}, Lcom/appyet/manager/ao;-><init>(Lcom/appyet/manager/an;ZLjava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    :try_start_1
    const-string v1, "result_text"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v1, Lcom/appyet/manager/ao;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/String;

    const-string v5, "result_text"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v1, p0, v3, v4}, Lcom/appyet/manager/ao;-><init>(Lcom/appyet/manager/an;ZLjava/lang/String;)V
    :try_end_1
    .catch Lcom/appyet/g/p; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/appyet/g/l; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object v0, v1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    iput-object v6, v2, Lcom/appyet/a/a/d;->e:Lcom/appyet/a/a/f;

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto :goto_1

    :catch_2
    move-exception v0

    iput-object v6, v2, Lcom/appyet/a/a/d;->e:Lcom/appyet/a/a/f;

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public final a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/appyet/manager/ao;
    .locals 7

    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/appyet/manager/an;->a(J)Lcom/appyet/a/a/d;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/appyet/manager/ao;

    invoke-direct {v0, p0, v6, v3}, Lcom/appyet/manager/ao;-><init>(Lcom/appyet/manager/an;ZLjava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v1, Lcom/appyet/g/g;

    new-instance v2, Ljava/net/URL;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lcom/appyet/a/a/d;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/mobiquo/mobiquo.php"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/appyet/g/g;-><init>(Ljava/net/URL;)V

    iget-object v2, v0, Lcom/appyet/a/a/d;->f:Ljava/util/Map;

    if-eqz v2, :cond_1

    iget-object v0, v0, Lcom/appyet/a/a/d;->f:Ljava/util/Map;

    invoke-virtual {v1, v0}, Lcom/appyet/g/g;->a(Ljava/util/Map;)V

    :cond_1
    const/16 v0, 0x78

    iput v0, v1, Lcom/appyet/g/g;->j:I

    iget-object v0, p0, Lcom/appyet/manager/an;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->v:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/appyet/g/g;->a(Ljava/lang/String;)V

    const-string v0, "Accept-Encoding"

    const-string v2, "gzip"

    invoke-virtual {v1, v0, v2}, Lcom/appyet/g/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "new_topic"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p3, v2, v4

    const/4 v4, 0x1

    invoke-virtual {p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x2

    invoke-virtual {p5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    aput-object v5, v2, v4

    invoke-virtual {v1, v0, v2}, Lcom/appyet/g/g;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_2

    const-string v1, "result"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    const-string v2, "result_text"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/String;

    const-string v4, "result_text"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    :goto_1
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/appyet/manager/ao;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/appyet/manager/ao;-><init>(Lcom/appyet/manager/an;ZLjava/lang/String;)V
    :try_end_0
    .catch Lcom/appyet/g/p; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/appyet/g/l; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    :cond_2
    :goto_2
    new-instance v0, Lcom/appyet/manager/ao;

    invoke-direct {v0, p0, v6, v3}, Lcom/appyet/manager/ao;-><init>(Lcom/appyet/manager/an;ZLjava/lang/String;)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto :goto_2

    :catch_2
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto :goto_2

    :cond_3
    move-object v2, v3

    goto :goto_1
.end method

.method public final a(JLjava/lang/String;I)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/appyet/a/a/c;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/appyet/manager/an;->a(J)Lcom/appyet/a/a/d;

    move-result-object v6

    mul-int/lit8 v1, p4, 0xa

    add-int/lit8 v3, p4, 0x1

    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v3, v3, -0x1

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    new-instance v5, Lcom/appyet/g/g;

    new-instance v7, Ljava/net/URL;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v6, Lcom/appyet/a/a/d;->a:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/mobiquo/mobiquo.php"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v7}, Lcom/appyet/g/g;-><init>(Ljava/net/URL;)V

    iget-object v7, v6, Lcom/appyet/a/a/d;->f:Ljava/util/Map;

    if-eqz v7, :cond_0

    iget-object v7, v6, Lcom/appyet/a/a/d;->f:Ljava/util/Map;

    invoke-virtual {v5, v7}, Lcom/appyet/g/g;->a(Ljava/util/Map;)V

    :cond_0
    const/16 v7, 0x78

    iput v7, v5, Lcom/appyet/g/g;->j:I

    iget-object v7, p0, Lcom/appyet/manager/an;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v7, v7, Lcom/appyet/context/ApplicationContext;->v:Ljava/lang/String;

    invoke-virtual {v5, v7}, Lcom/appyet/g/g;->a(Ljava/lang/String;)V

    const-string v7, "Accept-Encoding"

    const-string v8, "gzip"

    invoke-virtual {v5, v7, v8}, Lcom/appyet/g/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/appyet/manager/an;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v7, v7, Lcom/appyet/context/ApplicationContext;->o:Lcom/appyet/context/g;

    iget-object v7, v7, Lcom/appyet/context/g;->b:Lcom/appyet/a/a/e;

    iget-boolean v7, v7, Lcom/appyet/a/a/e;->m:Z

    if-eqz v7, :cond_4

    invoke-virtual {v6}, Lcom/appyet/a/a/d;->a()Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v7, "get_announcement"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p3, v8, v9

    const/4 v9, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v8, v9

    const/4 v1, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v8, v1

    const/4 v1, 0x3

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v8, v1

    invoke-virtual {v5, v7, v8}, Lcom/appyet/g/g;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    move-object v3, v1

    :goto_0
    if-eqz v3, :cond_6

    const-string v1, "result_text"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v5, Ljava/lang/String;

    const-string v1, "result_text"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    check-cast v1, [B

    invoke-direct {v5, v1}, Ljava/lang/String;-><init>([B)V

    :cond_1
    const-string v1, "total_post_num"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "total_post_num"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v5, p0, Lcom/appyet/manager/an;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v5, v5, Lcom/appyet/context/ApplicationContext;->o:Lcom/appyet/context/g;

    iget-object v5, v5, Lcom/appyet/context/g;->b:Lcom/appyet/a/a/e;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/appyet/manager/an;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v5, v5, Lcom/appyet/context/ApplicationContext;->o:Lcom/appyet/context/g;

    iget-object v5, v5, Lcom/appyet/context/g;->b:Lcom/appyet/a/a/e;

    iget v5, v5, Lcom/appyet/a/a/e;->k:I

    if-eq v5, v1, :cond_2

    iget-object v5, p0, Lcom/appyet/manager/an;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v5, v5, Lcom/appyet/context/ApplicationContext;->o:Lcom/appyet/context/g;

    iget-object v5, v5, Lcom/appyet/context/g;->b:Lcom/appyet/a/a/e;

    iput v1, v5, Lcom/appyet/a/a/e;->k:I

    :cond_2
    const-string v1, "posts"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "posts"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    if-eqz v1, :cond_5

    array-length v7, v1

    move v5, v2

    :goto_1
    if-ge v5, v7, :cond_5

    aget-object v2, v1, v5

    move-object v0, v2

    check-cast v0, Ljava/util/Map;

    move-object v3, v0

    new-instance v8, Lcom/appyet/a/a/c;

    invoke-direct {v8}, Lcom/appyet/a/a/c;-><init>()V

    new-instance v9, Ljava/lang/String;

    const-string v2, "post_title"

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    check-cast v2, [B

    invoke-direct {v9, v2}, Ljava/lang/String;-><init>([B)V

    iput-object v9, v8, Lcom/appyet/a/a/c;->b:Ljava/lang/String;

    const-string v2, "icon_url"

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v8, Lcom/appyet/a/a/c;->f:Ljava/lang/String;

    new-instance v9, Ljava/lang/String;

    const-string v2, "post_content"

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    check-cast v2, [B

    invoke-direct {v9, v2}, Ljava/lang/String;-><init>([B)V

    invoke-static {v9}, Lcom/appyet/manager/an;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/appyet/manager/an;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/appyet/manager/an;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/appyet/manager/an;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Lcom/appyet/a/a/c;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/appyet/manager/an;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v2, v2, Lcom/appyet/context/ApplicationContext;->o:Lcom/appyet/context/g;

    iget-object v2, v2, Lcom/appyet/context/g;->b:Lcom/appyet/a/a/e;

    iget-boolean v2, v2, Lcom/appyet/a/a/e;->m:Z

    if-eqz v2, :cond_3

    invoke-virtual {v6}, Lcom/appyet/a/a/d;->a()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, v8, Lcom/appyet/a/a/c;->c:Ljava/lang/String;

    const-string v9, "\n"

    const-string v10, "<br>"

    invoke-virtual {v2, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Lcom/appyet/a/a/c;->c:Ljava/lang/String;

    :cond_3
    const-string v2, "post_time"

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Date;

    iput-object v2, v8, Lcom/appyet/a/a/c;->g:Ljava/util/Date;

    const-string v2, "post_id"

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v8, Lcom/appyet/a/a/c;->a:Ljava/lang/String;

    const-string v2, "post_author_id"

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v8, Lcom/appyet/a/a/c;->d:Ljava/lang/String;

    new-instance v9, Ljava/lang/String;

    const-string v2, "post_author_name"

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    check-cast v2, [B

    invoke-direct {v9, v2}, Ljava/lang/String;-><init>([B)V

    iput-object v9, v8, Lcom/appyet/a/a/c;->e:Ljava/lang/String;

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto/16 :goto_1

    :cond_4
    const-string v7, "get_thread"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p3, v8, v9

    const/4 v9, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v8, v9

    const/4 v1, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v8, v1

    const/4 v1, 0x3

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v8, v1

    invoke-virtual {v5, v7, v8}, Lcom/appyet/g/g;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;
    :try_end_0
    .catch Lcom/appyet/g/p; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/appyet/g/l; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-object v3, v1

    goto/16 :goto_0

    :cond_5
    move-object v1, v4

    :goto_2
    return-object v1

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    :cond_6
    :goto_3
    const/4 v1, 0x0

    goto :goto_2

    :catch_1
    move-exception v1

    invoke-static {v1}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto :goto_3

    :catch_2
    move-exception v1

    invoke-static {v1}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto :goto_3
.end method

.method public final a(JLjava/lang/String;IILjava/lang/String;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/appyet/a/a/e;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/appyet/manager/an;->a(J)Lcom/appyet/a/a/d;

    move-result-object v1

    invoke-virtual {p0, p1, p2, p3}, Lcom/appyet/manager/an;->a(JLjava/lang/String;)Lcom/appyet/a/a/a;

    move-result-object v3

    if-nez v3, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    mul-int v2, p4, p5

    add-int/lit8 v4, p4, 0x1

    mul-int/2addr v4, p5

    add-int/lit8 v4, v4, -0x1

    :try_start_0
    new-instance v5, Lcom/appyet/g/g;

    new-instance v6, Ljava/net/URL;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v1, Lcom/appyet/a/a/d;->a:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/mobiquo/mobiquo.php"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Lcom/appyet/g/g;-><init>(Ljava/net/URL;)V

    iget-object v6, v1, Lcom/appyet/a/a/d;->f:Ljava/util/Map;

    if-eqz v6, :cond_1

    iget-object v1, v1, Lcom/appyet/a/a/d;->f:Ljava/util/Map;

    invoke-virtual {v5, v1}, Lcom/appyet/g/g;->a(Ljava/util/Map;)V

    :cond_1
    const/16 v1, 0x78

    iput v1, v5, Lcom/appyet/g/g;->j:I

    iget-object v1, p0, Lcom/appyet/manager/an;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->v:Ljava/lang/String;

    invoke-virtual {v5, v1}, Lcom/appyet/g/g;->a(Ljava/lang/String;)V

    const-string v1, "Accept-Encoding"

    const-string v6, "gzip"

    invoke-virtual {v5, v1, v6}, Lcom/appyet/g/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "get_topic"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p3, v6, v7

    const/4 v7, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v7

    const/4 v2, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v2

    const/4 v2, 0x3

    aput-object p6, v6, v2

    invoke-virtual {v5, v1, v6}, Lcom/appyet/g/g;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-eqz v1, :cond_9

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "total_topic_num"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "total_topic_num"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v3, Lcom/appyet/a/a/a;->l:I

    :cond_2
    const-string v2, "can_post"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "can_post"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v3, Lcom/appyet/a/a/a;->m:Z

    :cond_3
    const-string v2, "unread_sticky_count"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "unread_sticky_count"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v3, Lcom/appyet/a/a/a;->n:I

    :cond_4
    const-string v2, "unread_announce_count"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "unread_announce_count"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v3, Lcom/appyet/a/a/a;->o:I

    :cond_5
    const-string v2, "require_prefix"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "require_prefix"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v3, Lcom/appyet/a/a/a;->p:Z

    :cond_6
    const-string v2, "topics"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "topics"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    if-eqz v1, :cond_8

    array-length v6, v1

    const/4 v2, 0x0

    move v5, v2

    :goto_1
    if-ge v5, v6, :cond_8

    aget-object v2, v1, v5

    move-object v0, v2

    check-cast v0, Ljava/util/Map;

    move-object v3, v0

    new-instance v7, Lcom/appyet/a/a/e;

    invoke-direct {v7}, Lcom/appyet/a/a/e;-><init>()V

    iput-object p3, v7, Lcom/appyet/a/a/e;->a:Ljava/lang/String;

    const-string v2, "topic_id"

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v7, Lcom/appyet/a/a/e;->b:Ljava/lang/String;

    new-instance v8, Ljava/lang/String;

    const-string v2, "topic_title"

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    check-cast v2, [B

    invoke-direct {v8, v2}, Ljava/lang/String;-><init>([B)V

    iput-object v8, v7, Lcom/appyet/a/a/e;->c:Ljava/lang/String;

    const-string v2, "icon_url"

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v7, Lcom/appyet/a/a/e;->f:Ljava/lang/String;

    new-instance v8, Ljava/lang/String;

    const-string v2, "short_content"

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    check-cast v2, [B

    invoke-direct {v8, v2}, Ljava/lang/String;-><init>([B)V

    iput-object v8, v7, Lcom/appyet/a/a/e;->j:Ljava/lang/String;

    new-instance v8, Ljava/lang/String;

    const-string v2, "topic_author_name"

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    check-cast v2, [B

    invoke-direct {v8, v2}, Ljava/lang/String;-><init>([B)V

    iput-object v8, v7, Lcom/appyet/a/a/e;->d:Ljava/lang/String;

    const-string v2, "reply_number"

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v7, Lcom/appyet/a/a/e;->h:I

    const-string v2, "view_number"

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v7, Lcom/appyet/a/a/e;->i:I

    const-string v2, "last_reply_time"

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Date;

    iput-object v2, v7, Lcom/appyet/a/a/e;->g:Ljava/util/Date;

    const-string v2, "is_closed"

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "is_closed"

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v7, Lcom/appyet/a/a/e;->e:Z

    :cond_7
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/appyet/g/p; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/appyet/g/l; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto/16 :goto_1

    :cond_8
    move-object v1, v4

    goto/16 :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    :cond_9
    :goto_2
    const/4 v1, 0x0

    goto/16 :goto_0

    :catch_1
    move-exception v1

    invoke-static {v1}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto :goto_2

    :catch_2
    move-exception v1

    invoke-static {v1}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto :goto_2
.end method

.method public final b(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/appyet/manager/ao;
    .locals 7

    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/appyet/manager/an;->a(J)Lcom/appyet/a/a/d;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/appyet/manager/ao;

    invoke-direct {v0, p0, v6, v3}, Lcom/appyet/manager/ao;-><init>(Lcom/appyet/manager/an;ZLjava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v1, Lcom/appyet/g/g;

    new-instance v2, Ljava/net/URL;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lcom/appyet/a/a/d;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/mobiquo/mobiquo.php"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/appyet/g/g;-><init>(Ljava/net/URL;)V

    iget-object v2, v0, Lcom/appyet/a/a/d;->f:Ljava/util/Map;

    if-eqz v2, :cond_1

    iget-object v0, v0, Lcom/appyet/a/a/d;->f:Ljava/util/Map;

    invoke-virtual {v1, v0}, Lcom/appyet/g/g;->a(Ljava/util/Map;)V

    :cond_1
    const/16 v0, 0x78

    iput v0, v1, Lcom/appyet/g/g;->j:I

    iget-object v0, p0, Lcom/appyet/manager/an;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->v:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/appyet/g/g;->a(Ljava/lang/String;)V

    const-string v0, "Accept-Encoding"

    const-string v2, "gzip"

    invoke-virtual {v1, v0, v2}, Lcom/appyet/g/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "reply_post"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p3, v2, v4

    const/4 v4, 0x1

    aput-object p4, v2, v4

    const/4 v4, 0x2

    const-string v5, ""

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x3

    invoke-virtual {p5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    aput-object v5, v2, v4

    invoke-virtual {v1, v0, v2}, Lcom/appyet/g/g;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_2

    const-string v1, "result"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    const-string v2, "result_text"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/String;

    const-string v4, "result_text"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    :goto_1
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/appyet/manager/ao;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/appyet/manager/ao;-><init>(Lcom/appyet/manager/an;ZLjava/lang/String;)V
    :try_end_0
    .catch Lcom/appyet/g/p; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/appyet/g/l; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    :cond_2
    :goto_2
    new-instance v0, Lcom/appyet/manager/ao;

    invoke-direct {v0, p0, v6, v3}, Lcom/appyet/manager/ao;-><init>(Lcom/appyet/manager/an;ZLjava/lang/String;)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto :goto_2

    :catch_2
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto :goto_2

    :cond_3
    move-object v2, v3

    goto :goto_1
.end method

.method public final b(J)V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/appyet/manager/an;->a(J)Lcom/appyet/a/a/d;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, v2, Lcom/appyet/a/a/d;->d:Lcom/appyet/a/a/b;

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Lcom/appyet/g/g;

    new-instance v1, Ljava/net/URL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v2, Lcom/appyet/a/a/d;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/mobiquo/mobiquo.php"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/appyet/g/g;-><init>(Ljava/net/URL;)V

    const/16 v1, 0x78

    iput v1, v0, Lcom/appyet/g/g;->j:I

    iget-object v1, p0, Lcom/appyet/manager/an;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/appyet/g/g;->a(Ljava/lang/String;)V

    const-string v1, "Accept-Encoding"

    const-string v3, "gzip"

    invoke-virtual {v0, v1, v3}, Lcom/appyet/g/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "get_config"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Lcom/appyet/g/g;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/appyet/a/a/b;

    invoke-direct {v1}, Lcom/appyet/a/a/b;-><init>()V

    iput-object v1, v2, Lcom/appyet/a/a/d;->d:Lcom/appyet/a/a/b;

    iget-object v3, v2, Lcom/appyet/a/a/d;->d:Lcom/appyet/a/a/b;

    const-string v1, "sys_version"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v3, Lcom/appyet/a/a/b;->a:Ljava/lang/String;

    iget-object v3, v2, Lcom/appyet/a/a/d;->d:Lcom/appyet/a/a/b;

    const-string v1, "api_level"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v3, Lcom/appyet/a/a/b;->c:Ljava/lang/String;

    iget-object v3, v2, Lcom/appyet/a/a/d;->d:Lcom/appyet/a/a/b;

    const-string v1, "version"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v3, Lcom/appyet/a/a/b;->b:Ljava/lang/String;

    const-string v1, "support_md5"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v3, v2, Lcom/appyet/a/a/d;->d:Lcom/appyet/a/a/b;

    const-string v1, "support_md5"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v3, Lcom/appyet/a/a/b;->d:Ljava/lang/String;

    :cond_2
    const-string v1, "support_sha1"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v2, Lcom/appyet/a/a/d;->d:Lcom/appyet/a/a/b;

    const-string v3, "support_sha1"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/appyet/a/a/b;->e:Ljava/lang/String;
    :try_end_0
    .catch Lcom/appyet/g/p; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/appyet/g/l; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto/16 :goto_0

    :catch_0
    move-exception v0

    iput-object v5, v2, Lcom/appyet/a/a/d;->d:Lcom/appyet/a/a/b;

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    iput-object v5, v2, Lcom/appyet/a/a/d;->d:Lcom/appyet/a/a/b;

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto/16 :goto_0

    :catch_2
    move-exception v0

    iput-object v5, v2, Lcom/appyet/a/a/d;->d:Lcom/appyet/a/a/b;

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto/16 :goto_0
.end method

.method public final c(J)Z
    .locals 6

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/appyet/manager/an;->a(J)Lcom/appyet/a/a/d;

    move-result-object v2

    if-nez v2, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    :try_start_0
    new-instance v0, Lcom/appyet/g/g;

    new-instance v3, Ljava/net/URL;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v2, Lcom/appyet/a/a/d;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/mobiquo/mobiquo.php"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v3}, Lcom/appyet/g/g;-><init>(Ljava/net/URL;)V

    iget-object v3, v2, Lcom/appyet/a/a/d;->f:Ljava/util/Map;

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/appyet/a/a/d;->f:Ljava/util/Map;

    invoke-virtual {v0, v3}, Lcom/appyet/g/g;->a(Ljava/util/Map;)V

    :cond_1
    const/16 v3, 0x78

    iput v3, v0, Lcom/appyet/g/g;->j:I

    iget-object v3, p0, Lcom/appyet/manager/an;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v3, v3, Lcom/appyet/context/ApplicationContext;->v:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/appyet/g/g;->a(Ljava/lang/String;)V

    const-string v3, "Accept-Encoding"

    const-string v4, "gzip"

    invoke-virtual {v0, v3, v4}, Lcom/appyet/g/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "logout_user"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v4}, Lcom/appyet/g/g;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/appyet/a/a/d;->e:Lcom/appyet/a/a/f;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/appyet/a/a/d;->f:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Lcom/appyet/g/p; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/appyet/g/l; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    :cond_2
    :goto_1
    move v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public final d(J)V
    .locals 7

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/appyet/manager/an;->a(J)Lcom/appyet/a/a/d;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, v3, Lcom/appyet/a/a/d;->b:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, v3, Lcom/appyet/a/a/d;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    :cond_2
    iget-object v0, v3, Lcom/appyet/a/a/d;->b:Ljava/util/List;

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v3, Lcom/appyet/a/a/d;->b:Ljava/util/List;

    :cond_3
    :try_start_0
    new-instance v0, Lcom/appyet/g/g;

    new-instance v2, Ljava/net/URL;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v3, Lcom/appyet/a/a/d;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/mobiquo/mobiquo.php"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Lcom/appyet/g/g;-><init>(Ljava/net/URL;)V

    iget-object v2, v3, Lcom/appyet/a/a/d;->f:Ljava/util/Map;

    if-eqz v2, :cond_4

    iget-object v2, v3, Lcom/appyet/a/a/d;->f:Ljava/util/Map;

    invoke-virtual {v0, v2}, Lcom/appyet/g/g;->a(Ljava/util/Map;)V

    :cond_4
    const/16 v2, 0x78

    iput v2, v0, Lcom/appyet/g/g;->j:I

    iget-object v2, p0, Lcom/appyet/manager/an;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v2, v2, Lcom/appyet/context/ApplicationContext;->v:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/appyet/g/g;->a(Ljava/lang/String;)V

    const-string v2, "Accept-Encoding"

    const-string v4, "gzip"

    invoke-virtual {v0, v2, v4}, Lcom/appyet/g/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v3, Lcom/appyet/a/a/d;->d:Lcom/appyet/a/a/b;

    iget-object v2, v2, Lcom/appyet/a/a/b;->c:Ljava/lang/String;

    const-string v4, "3"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "get_forum"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v4}, Lcom/appyet/g/g;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    move-object v2, v0

    :goto_1
    if-eqz v2, :cond_0

    array-length v4, v2

    :goto_2
    if-ge v1, v4, :cond_0

    aget-object v0, v2, v1

    check-cast v0, Ljava/util/Map;

    new-instance v5, Lcom/appyet/a/a/a;

    invoke-direct {v5}, Lcom/appyet/a/a/a;-><init>()V

    invoke-direct {p0, v0, v3, v5}, Lcom/appyet/manager/an;->a(Ljava/util/Map;Lcom/appyet/a/a/d;Lcom/appyet/a/a/a;)V

    iget-object v0, v3, Lcom/appyet/a/a/d;->b:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_5
    const-string v2, "get_forum"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v2, v4}, Lcom/appyet/g/g;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;
    :try_end_0
    .catch Lcom/appyet/g/p; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/appyet/g/l; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-object v2, v0

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v1, v3, Lcom/appyet/a/a/d;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    iget-object v1, v3, Lcom/appyet/a/a/d;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto/16 :goto_0

    :catch_2
    move-exception v0

    iget-object v1, v3, Lcom/appyet/a/a/d;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto/16 :goto_0
.end method
