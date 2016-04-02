.class Lorg/simpleframework/xml/core/GroupExtractor$Registry;
.super Ljava/util/LinkedHashMap;

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap",
        "<",
        "Ljava/lang/Class;",
        "Lorg/simpleframework/xml/core/Label;",
        ">;",
        "Ljava/lang/Iterable",
        "<",
        "Lorg/simpleframework/xml/core/Label;",
        ">;"
    }
.end annotation


# instance fields
.field private elements:Lorg/simpleframework/xml/core/LabelMap;

.field private text:Lorg/simpleframework/xml/core/Label;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/LabelMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lorg/simpleframework/xml/core/GroupExtractor$Registry;->elements:Lorg/simpleframework/xml/core/LabelMap;

    return-void
.end method

.method private registerElement(Ljava/lang/Class;Lorg/simpleframework/xml/core/Label;)V
    .locals 2

    invoke-interface {p2}, Lorg/simpleframework/xml/core/Label;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/simpleframework/xml/core/GroupExtractor$Registry;->elements:Lorg/simpleframework/xml/core/LabelMap;

    invoke-virtual {v1, v0}, Lorg/simpleframework/xml/core/LabelMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/simpleframework/xml/core/GroupExtractor$Registry;->elements:Lorg/simpleframework/xml/core/LabelMap;

    invoke-virtual {v1, v0, p2}, Lorg/simpleframework/xml/core/LabelMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/GroupExtractor$Registry;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1, p2}, Lorg/simpleframework/xml/core/GroupExtractor$Registry;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method private registerText(Lorg/simpleframework/xml/core/Label;)V
    .locals 2

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->getContact()Lorg/simpleframework/xml/core/Contact;

    move-result-object v0

    const-class v1, Lorg/simpleframework/xml/Text;

    invoke-interface {v0, v1}, Lorg/simpleframework/xml/core/Contact;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/Text;

    if-eqz v0, :cond_0

    new-instance v1, Lorg/simpleframework/xml/core/TextListLabel;

    invoke-direct {v1, p1, v0}, Lorg/simpleframework/xml/core/TextListLabel;-><init>(Lorg/simpleframework/xml/core/Label;Lorg/simpleframework/xml/Text;)V

    iput-object v1, p0, Lorg/simpleframework/xml/core/GroupExtractor$Registry;->text:Lorg/simpleframework/xml/core/Label;

    :cond_0
    return-void
.end method

.method private resolveElement(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Label;
    .locals 1

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/GroupExtractor$Registry;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/Label;

    if-eqz v0, :cond_0

    :goto_1
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private resolveText(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Label;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/GroupExtractor$Registry;->text:Lorg/simpleframework/xml/core/Label;

    if-eqz v0, :cond_0

    const-class v0, Ljava/lang/String;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lorg/simpleframework/xml/core/GroupExtractor$Registry;->text:Lorg/simpleframework/xml/core/Label;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public isText()Z
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/GroupExtractor$Registry;->text:Lorg/simpleframework/xml/core/Label;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/simpleframework/xml/core/Label;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/simpleframework/xml/core/GroupExtractor$Registry;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public register(Ljava/lang/Class;Lorg/simpleframework/xml/core/Label;)V
    .locals 1

    new-instance v0, Lorg/simpleframework/xml/core/CacheLabel;

    invoke-direct {v0, p2}, Lorg/simpleframework/xml/core/CacheLabel;-><init>(Lorg/simpleframework/xml/core/Label;)V

    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/core/GroupExtractor$Registry;->registerElement(Ljava/lang/Class;Lorg/simpleframework/xml/core/Label;)V

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/GroupExtractor$Registry;->registerText(Lorg/simpleframework/xml/core/Label;)V

    return-void
.end method

.method public resolve(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Label;
    .locals 1

    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/GroupExtractor$Registry;->resolveText(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Label;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/GroupExtractor$Registry;->resolveElement(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Label;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public resolveText()Lorg/simpleframework/xml/core/Label;
    .locals 1

    const-class v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/GroupExtractor$Registry;->resolveText(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Label;

    move-result-object v0

    return-object v0
.end method
