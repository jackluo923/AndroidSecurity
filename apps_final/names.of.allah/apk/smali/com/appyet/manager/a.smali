.class public final Lcom/appyet/manager/a;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;


# instance fields
.field private b:Lcom/appyet/context/ApplicationContext;

.field private c:J

.field private d:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "X5nFe16r7FbKpb16l"

    sput-object v0, Lcom/appyet/manager/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/appyet/context/ApplicationContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appyet/manager/a;->b:Lcom/appyet/context/ApplicationContext;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    const-wide/16 v0, 0x0

    :try_start_0
    iput-wide v0, p0, Lcom/appyet/manager/a;->c:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/appyet/manager/a;->d:J

    iget-object v0, p0, Lcom/appyet/manager/a;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->h:Lcom/appyet/manager/d;

    invoke-virtual {v0}, Lcom/appyet/manager/d;->a()Z

    iget-object v0, p0, Lcom/appyet/manager/a;->b:Lcom/appyet/context/ApplicationContext;

    invoke-static {}, Lcom/appyet/context/ApplicationContext;->a()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/appyet/manager/a;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->h:Lcom/appyet/manager/d;

    invoke-virtual {v0}, Lcom/appyet/manager/d;->e()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/data/FileCache;

    invoke-virtual {v0}, Lcom/appyet/data/FileCache;->getFileCacheName()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/appyet/manager/a;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->j:Lcom/appyet/manager/al;

    invoke-virtual {v0, v1}, Lcom/appyet/manager/al;->a(Ljava/util/HashMap;)V

    iget-object v0, p0, Lcom/appyet/manager/a;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->d:Lcom/appyet/manager/bp;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/appyet/manager/bp;->a(J)V

    iget-object v0, p0, Lcom/appyet/manager/a;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->j:Lcom/appyet/manager/al;

    invoke-virtual {v0}, Lcom/appyet/manager/al;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/appyet/manager/a;->d:J

    iget-object v0, p0, Lcom/appyet/manager/a;->b:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->j:Lcom/appyet/manager/al;

    invoke-virtual {v0}, Lcom/appyet/manager/al;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/appyet/manager/a;->c:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
