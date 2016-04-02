.class public final Lcom/appyet/g/b/j;
.super Ljava/lang/Object;


# static fields
.field public static a:Lcom/appyet/g/b/j;


# instance fields
.field private b:Lcom/appyet/g/b/k;

.field private c:Lcom/appyet/g/b/c;

.field private d:Lcom/appyet/g/b/f;

.field private e:Lcom/appyet/g/b/g;

.field private f:Lcom/appyet/g/b/l;

.field private g:Lcom/appyet/g/b/e;

.field private h:Lcom/appyet/g/b/d;

.field private i:Lcom/appyet/g/b/a;

.field private j:Lcom/appyet/g/b/b;

.field private k:Lcom/appyet/g/b/h;

.field private l:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/appyet/g/b/c;

    invoke-direct {v0}, Lcom/appyet/g/b/c;-><init>()V

    iput-object v0, p0, Lcom/appyet/g/b/j;->c:Lcom/appyet/g/b/c;

    new-instance v0, Lcom/appyet/g/b/f;

    invoke-direct {v0}, Lcom/appyet/g/b/f;-><init>()V

    iput-object v0, p0, Lcom/appyet/g/b/j;->d:Lcom/appyet/g/b/f;

    new-instance v0, Lcom/appyet/g/b/g;

    invoke-direct {v0}, Lcom/appyet/g/b/g;-><init>()V

    iput-object v0, p0, Lcom/appyet/g/b/j;->e:Lcom/appyet/g/b/g;

    new-instance v0, Lcom/appyet/g/b/l;

    invoke-direct {v0}, Lcom/appyet/g/b/l;-><init>()V

    iput-object v0, p0, Lcom/appyet/g/b/j;->f:Lcom/appyet/g/b/l;

    new-instance v0, Lcom/appyet/g/b/e;

    invoke-direct {v0}, Lcom/appyet/g/b/e;-><init>()V

    iput-object v0, p0, Lcom/appyet/g/b/j;->g:Lcom/appyet/g/b/e;

    new-instance v0, Lcom/appyet/g/b/d;

    invoke-direct {v0}, Lcom/appyet/g/b/d;-><init>()V

    iput-object v0, p0, Lcom/appyet/g/b/j;->h:Lcom/appyet/g/b/d;

    new-instance v0, Lcom/appyet/g/b/a;

    invoke-direct {v0}, Lcom/appyet/g/b/a;-><init>()V

    iput-object v0, p0, Lcom/appyet/g/b/j;->i:Lcom/appyet/g/b/a;

    new-instance v0, Lcom/appyet/g/b/b;

    invoke-direct {v0}, Lcom/appyet/g/b/b;-><init>()V

    iput-object v0, p0, Lcom/appyet/g/b/j;->j:Lcom/appyet/g/b/b;

    new-instance v0, Lcom/appyet/g/b/h;

    invoke-direct {v0}, Lcom/appyet/g/b/h;-><init>()V

    iput-object v0, p0, Lcom/appyet/g/b/j;->k:Lcom/appyet/g/b/h;

    const/4 v0, 0x4

    iput v0, p0, Lcom/appyet/g/b/j;->l:I

    new-instance v0, Lcom/appyet/g/b/k;

    invoke-direct {v0}, Lcom/appyet/g/b/k;-><init>()V

    iput-object v0, p0, Lcom/appyet/g/b/j;->b:Lcom/appyet/g/b/k;

    return-void
.end method

.method public static a()Lcom/appyet/g/b/j;
    .locals 2

    sget-object v0, Lcom/appyet/g/b/j;->a:Lcom/appyet/g/b/j;

    if-nez v0, :cond_0

    new-instance v0, Lcom/appyet/g/n;

    const-string v1, "The SerializerHandler has not been initialized."

    invoke-direct {v0, v1}, Lcom/appyet/g/n;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lcom/appyet/g/b/j;->a:Lcom/appyet/g/b/j;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/appyet/g/c/b;
    .locals 4

    iget v0, p0, Lcom/appyet/g/b/j;->l:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/appyet/g/b/j;->k:Lcom/appyet/g/b/h;

    :goto_0
    invoke-interface {v0, p1}, Lcom/appyet/g/b/i;->a(Ljava/lang/Object;)Lcom/appyet/g/c/b;

    move-result-object v0

    return-object v0

    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appyet/g/b/j;->b:Lcom/appyet/g/b/k;

    goto :goto_0

    :cond_1
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/appyet/g/b/j;->c:Lcom/appyet/g/b/c;

    goto :goto_0

    :cond_2
    instance-of v0, p1, Ljava/lang/Double;

    if-nez v0, :cond_3

    instance-of v0, p1, Ljava/lang/Float;

    if-nez v0, :cond_3

    instance-of v0, p1, Ljava/math/BigDecimal;

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/appyet/g/b/j;->g:Lcom/appyet/g/b/e;

    goto :goto_0

    :cond_4
    instance-of v0, p1, Ljava/lang/Integer;

    if-nez v0, :cond_5

    instance-of v0, p1, Ljava/lang/Short;

    if-nez v0, :cond_5

    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/appyet/g/b/j;->d:Lcom/appyet/g/b/f;

    goto :goto_0

    :cond_6
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/appyet/g/b/j;->l:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/appyet/g/b/j;->e:Lcom/appyet/g/b/g;

    goto :goto_0

    :cond_7
    move-object v0, p1

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_8

    const-wide/32 v2, -0x80000000

    cmp-long v0, v0, v2

    if-gez v0, :cond_9

    :cond_8
    new-instance v0, Lcom/appyet/g/l;

    const-string v1, "FLAGS_8BYTE_INT must be set, if values outside the 4 byte integer range should be transfered."

    invoke-direct {v0, v1}, Lcom/appyet/g/l;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    iget-object v0, p0, Lcom/appyet/g/b/j;->d:Lcom/appyet/g/b/f;

    goto :goto_0

    :cond_a
    instance-of v0, p1, Ljava/util/Date;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/appyet/g/b/j;->h:Lcom/appyet/g/b/d;

    goto :goto_0

    :cond_b
    instance-of v0, p1, Ljava/util/Calendar;

    if-eqz v0, :cond_c

    check-cast p1, Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    iget-object v0, p0, Lcom/appyet/g/b/j;->h:Lcom/appyet/g/b/d;

    goto :goto_0

    :cond_c
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/appyet/g/b/j;->f:Lcom/appyet/g/b/l;

    goto :goto_0

    :cond_d
    instance-of v0, p1, [B

    if-eqz v0, :cond_f

    check-cast p1, [B

    check-cast p1, [B

    array-length v0, p1

    new-array v1, v0, [Ljava/lang/Byte;

    const/4 v0, 0x0

    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_e

    new-instance v2, Ljava/lang/Byte;

    aget-byte v3, p1, v0

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_e
    iget-object v0, p0, Lcom/appyet/g/b/j;->j:Lcom/appyet/g/b/b;

    move-object p1, v1

    goto/16 :goto_0

    :cond_f
    instance-of v0, p1, [Ljava/lang/Byte;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/appyet/g/b/j;->j:Lcom/appyet/g/b/b;

    goto/16 :goto_0

    :cond_10
    instance-of v0, p1, Ljava/lang/Iterable;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/appyet/g/b/j;->i:Lcom/appyet/g/b/a;

    goto/16 :goto_0

    :cond_11
    new-instance v0, Lcom/appyet/g/l;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No serializer found for type \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/appyet/g/l;-><init>(Ljava/lang/String;)V

    throw v0
.end method
