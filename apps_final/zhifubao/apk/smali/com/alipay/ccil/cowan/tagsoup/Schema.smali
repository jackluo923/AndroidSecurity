.class public abstract Lcom/alipay/ccil/cowan/tagsoup/Schema;
.super Ljava/lang/Object;


# static fields
.field public static final F_CDATA:I = 0x2

.field public static final F_NOFORCE:I = 0x4

.field public static final F_RESTART:I = 0x1

.field public static final M_ANY:I = -0x1

.field public static final M_EMPTY:I = 0x0

.field public static final M_PCDATA:I = 0x40000000

.field public static final M_ROOT:I = -0x80000000


# instance fields
.field private a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/ccil/cowan/tagsoup/ElementType;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lcom/alipay/ccil/cowan/tagsoup/ElementType;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Schema;->a:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Schema;->b:Ljava/util/HashMap;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Schema;->c:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Schema;->d:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Schema;->e:Lcom/alipay/ccil/cowan/tagsoup/ElementType;

    return-void
.end method


# virtual methods
.method public attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/alipay/ccil/cowan/tagsoup/Schema;->getElementType(Ljava/lang/String;)Lcom/alipay/ccil/cowan/tagsoup/ElementType;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Error;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Attribute "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " specified for unknown element type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {v0, p2, p3, p4}, Lcom/alipay/ccil/cowan/tagsoup/ElementType;->setAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public elementType(Ljava/lang/String;III)V
    .locals 6

    new-instance v0, Lcom/alipay/ccil/cowan/tagsoup/ElementType;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/alipay/ccil/cowan/tagsoup/ElementType;-><init>(Ljava/lang/String;IIILcom/alipay/ccil/cowan/tagsoup/Schema;)V

    iget-object v1, p0, Lcom/alipay/ccil/cowan/tagsoup/Schema;->b:Ljava/util/HashMap;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 v1, -0x80000000

    if-ne p3, v1, :cond_0

    iput-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Schema;->e:Lcom/alipay/ccil/cowan/tagsoup/ElementType;

    :cond_0
    return-void
.end method

.method public entity(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Schema;->a:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getElementType(Ljava/lang/String;)Lcom/alipay/ccil/cowan/tagsoup/ElementType;
    .locals 2

    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Schema;->b:Ljava/util/HashMap;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/ccil/cowan/tagsoup/ElementType;

    return-object v0
.end method

.method public getEntity(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Schema;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Schema;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getURI()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Schema;->c:Ljava/lang/String;

    return-object v0
.end method

.method public parent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/alipay/ccil/cowan/tagsoup/Schema;->getElementType(Ljava/lang/String;)Lcom/alipay/ccil/cowan/tagsoup/ElementType;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/alipay/ccil/cowan/tagsoup/Schema;->getElementType(Ljava/lang/String;)Lcom/alipay/ccil/cowan/tagsoup/ElementType;

    move-result-object v1

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Error;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "No child "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " for parent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez v1, :cond_1

    new-instance v0, Ljava/lang/Error;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "No parent "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " for child "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {v0, v1}, Lcom/alipay/ccil/cowan/tagsoup/ElementType;->setParent(Lcom/alipay/ccil/cowan/tagsoup/ElementType;)V

    return-void
.end method

.method public rootElementType()Lcom/alipay/ccil/cowan/tagsoup/ElementType;
    .locals 1

    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Schema;->e:Lcom/alipay/ccil/cowan/tagsoup/ElementType;

    return-object v0
.end method

.method public setPrefix(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/ccil/cowan/tagsoup/Schema;->d:Ljava/lang/String;

    return-void
.end method

.method public setURI(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/ccil/cowan/tagsoup/Schema;->c:Ljava/lang/String;

    return-void
.end method
