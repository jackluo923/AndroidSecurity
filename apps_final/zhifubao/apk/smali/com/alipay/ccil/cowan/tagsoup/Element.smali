.class public Lcom/alipay/ccil/cowan/tagsoup/Element;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/alipay/ccil/cowan/tagsoup/ElementType;

.field private b:Lcom/alipay/ccil/cowan/tagsoup/AttributesImpl;

.field private c:Lcom/alipay/ccil/cowan/tagsoup/Element;

.field private d:Z


# direct methods
.method public constructor <init>(Lcom/alipay/ccil/cowan/tagsoup/ElementType;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/ccil/cowan/tagsoup/Element;->a:Lcom/alipay/ccil/cowan/tagsoup/ElementType;

    if-eqz p2, :cond_0

    new-instance v0, Lcom/alipay/ccil/cowan/tagsoup/AttributesImpl;

    invoke-virtual {p1}, Lcom/alipay/ccil/cowan/tagsoup/ElementType;->atts()Lcom/alipay/ccil/cowan/tagsoup/AttributesImpl;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/ccil/cowan/tagsoup/AttributesImpl;-><init>(Lorg/xml/sax/Attributes;)V

    iput-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Element;->b:Lcom/alipay/ccil/cowan/tagsoup/AttributesImpl;

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Element;->c:Lcom/alipay/ccil/cowan/tagsoup/Element;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Element;->d:Z

    return-void

    :cond_0
    new-instance v0, Lcom/alipay/ccil/cowan/tagsoup/AttributesImpl;

    invoke-direct {v0}, Lcom/alipay/ccil/cowan/tagsoup/AttributesImpl;-><init>()V

    iput-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Element;->b:Lcom/alipay/ccil/cowan/tagsoup/AttributesImpl;

    goto :goto_0
.end method


# virtual methods
.method public anonymize()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Element;->b:Lcom/alipay/ccil/cowan/tagsoup/AttributesImpl;

    invoke-virtual {v0}, Lcom/alipay/ccil/cowan/tagsoup/AttributesImpl;->getLength()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/alipay/ccil/cowan/tagsoup/Element;->b:Lcom/alipay/ccil/cowan/tagsoup/AttributesImpl;

    invoke-virtual {v1, v0}, Lcom/alipay/ccil/cowan/tagsoup/AttributesImpl;->getType(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "ID"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/alipay/ccil/cowan/tagsoup/Element;->b:Lcom/alipay/ccil/cowan/tagsoup/AttributesImpl;

    invoke-virtual {v1, v0}, Lcom/alipay/ccil/cowan/tagsoup/AttributesImpl;->getQName(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "name"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/alipay/ccil/cowan/tagsoup/Element;->b:Lcom/alipay/ccil/cowan/tagsoup/AttributesImpl;

    invoke-virtual {v1, v0}, Lcom/alipay/ccil/cowan/tagsoup/AttributesImpl;->removeAttribute(I)V

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public atts()Lcom/alipay/ccil/cowan/tagsoup/AttributesImpl;
    .locals 1

    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Element;->b:Lcom/alipay/ccil/cowan/tagsoup/AttributesImpl;

    return-object v0
.end method

.method public canContain(Lcom/alipay/ccil/cowan/tagsoup/Element;)Z
    .locals 2

    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Element;->a:Lcom/alipay/ccil/cowan/tagsoup/ElementType;

    iget-object v1, p1, Lcom/alipay/ccil/cowan/tagsoup/Element;->a:Lcom/alipay/ccil/cowan/tagsoup/ElementType;

    invoke-virtual {v0, v1}, Lcom/alipay/ccil/cowan/tagsoup/ElementType;->canContain(Lcom/alipay/ccil/cowan/tagsoup/ElementType;)Z

    move-result v0

    return v0
.end method

.method public clean()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Element;->b:Lcom/alipay/ccil/cowan/tagsoup/AttributesImpl;

    invoke-virtual {v0}, Lcom/alipay/ccil/cowan/tagsoup/AttributesImpl;->getLength()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/alipay/ccil/cowan/tagsoup/Element;->b:Lcom/alipay/ccil/cowan/tagsoup/AttributesImpl;

    invoke-virtual {v1, v0}, Lcom/alipay/ccil/cowan/tagsoup/AttributesImpl;->getLocalName(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/ccil/cowan/tagsoup/Element;->b:Lcom/alipay/ccil/cowan/tagsoup/AttributesImpl;

    invoke-virtual {v2, v0}, Lcom/alipay/ccil/cowan/tagsoup/AttributesImpl;->getValue(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/alipay/ccil/cowan/tagsoup/Element;->b:Lcom/alipay/ccil/cowan/tagsoup/AttributesImpl;

    invoke-virtual {v1, v0}, Lcom/alipay/ccil/cowan/tagsoup/AttributesImpl;->removeAttribute(I)V

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public flags()I
    .locals 1

    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Element;->a:Lcom/alipay/ccil/cowan/tagsoup/ElementType;

    invoke-virtual {v0}, Lcom/alipay/ccil/cowan/tagsoup/ElementType;->flags()I

    move-result v0

    return v0
.end method

.method public isPreclosed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Element;->d:Z

    return v0
.end method

.method public localName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Element;->a:Lcom/alipay/ccil/cowan/tagsoup/ElementType;

    invoke-virtual {v0}, Lcom/alipay/ccil/cowan/tagsoup/ElementType;->localName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public memberOf()I
    .locals 1

    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Element;->a:Lcom/alipay/ccil/cowan/tagsoup/ElementType;

    invoke-virtual {v0}, Lcom/alipay/ccil/cowan/tagsoup/ElementType;->memberOf()I

    move-result v0

    return v0
.end method

.method public model()I
    .locals 1

    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Element;->a:Lcom/alipay/ccil/cowan/tagsoup/ElementType;

    invoke-virtual {v0}, Lcom/alipay/ccil/cowan/tagsoup/ElementType;->model()I

    move-result v0

    return v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Element;->a:Lcom/alipay/ccil/cowan/tagsoup/ElementType;

    invoke-virtual {v0}, Lcom/alipay/ccil/cowan/tagsoup/ElementType;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public namespace()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Element;->a:Lcom/alipay/ccil/cowan/tagsoup/ElementType;

    invoke-virtual {v0}, Lcom/alipay/ccil/cowan/tagsoup/ElementType;->namespace()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public next()Lcom/alipay/ccil/cowan/tagsoup/Element;
    .locals 1

    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Element;->c:Lcom/alipay/ccil/cowan/tagsoup/Element;

    return-object v0
.end method

.method public parent()Lcom/alipay/ccil/cowan/tagsoup/ElementType;
    .locals 1

    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Element;->a:Lcom/alipay/ccil/cowan/tagsoup/ElementType;

    invoke-virtual {v0}, Lcom/alipay/ccil/cowan/tagsoup/ElementType;->parent()Lcom/alipay/ccil/cowan/tagsoup/ElementType;

    move-result-object v0

    return-object v0
.end method

.method public preclose()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Element;->d:Z

    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Element;->a:Lcom/alipay/ccil/cowan/tagsoup/ElementType;

    iget-object v1, p0, Lcom/alipay/ccil/cowan/tagsoup/Element;->b:Lcom/alipay/ccil/cowan/tagsoup/AttributesImpl;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/alipay/ccil/cowan/tagsoup/ElementType;->setAttribute(Lcom/alipay/ccil/cowan/tagsoup/AttributesImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setNext(Lcom/alipay/ccil/cowan/tagsoup/Element;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/ccil/cowan/tagsoup/Element;->c:Lcom/alipay/ccil/cowan/tagsoup/Element;

    return-void
.end method

.method public type()Lcom/alipay/ccil/cowan/tagsoup/ElementType;
    .locals 1

    iget-object v0, p0, Lcom/alipay/ccil/cowan/tagsoup/Element;->a:Lcom/alipay/ccil/cowan/tagsoup/ElementType;

    return-object v0
.end method
