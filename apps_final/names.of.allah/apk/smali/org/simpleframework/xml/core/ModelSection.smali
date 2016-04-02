.class Lorg/simpleframework/xml/core/ModelSection;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/simpleframework/xml/core/Section;


# instance fields
.field private attributes:Lorg/simpleframework/xml/core/LabelMap;

.field private elements:Lorg/simpleframework/xml/core/LabelMap;

.field private model:Lorg/simpleframework/xml/core/Model;

.field private models:Lorg/simpleframework/xml/core/ModelMap;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Model;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/simpleframework/xml/core/ModelSection;->model:Lorg/simpleframework/xml/core/Model;

    return-void
.end method


# virtual methods
.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/ModelSection;->model:Lorg/simpleframework/xml/core/Model;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Model;->getExpression()Lorg/simpleframework/xml/core/Expression;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    invoke-interface {v0, p1}, Lorg/simpleframework/xml/core/Expression;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public getAttributes()Lorg/simpleframework/xml/core/LabelMap;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/ModelSection;->attributes:Lorg/simpleframework/xml/core/LabelMap;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/simpleframework/xml/core/ModelSection;->model:Lorg/simpleframework/xml/core/Model;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Model;->getAttributes()Lorg/simpleframework/xml/core/LabelMap;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/ModelSection;->attributes:Lorg/simpleframework/xml/core/LabelMap;

    :cond_0
    iget-object v0, p0, Lorg/simpleframework/xml/core/ModelSection;->attributes:Lorg/simpleframework/xml/core/LabelMap;

    return-object v0
.end method

.method public getElement(Ljava/lang/String;)Lorg/simpleframework/xml/core/Label;
    .locals 1

    invoke-virtual {p0}, Lorg/simpleframework/xml/core/ModelSection;->getElements()Lorg/simpleframework/xml/core/LabelMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/LabelMap;->getLabel(Ljava/lang/String;)Lorg/simpleframework/xml/core/Label;

    move-result-object v0

    return-object v0
.end method

.method public getElements()Lorg/simpleframework/xml/core/LabelMap;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/ModelSection;->elements:Lorg/simpleframework/xml/core/LabelMap;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/simpleframework/xml/core/ModelSection;->model:Lorg/simpleframework/xml/core/Model;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Model;->getElements()Lorg/simpleframework/xml/core/LabelMap;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/ModelSection;->elements:Lorg/simpleframework/xml/core/LabelMap;

    :cond_0
    iget-object v0, p0, Lorg/simpleframework/xml/core/ModelSection;->elements:Lorg/simpleframework/xml/core/LabelMap;

    return-object v0
.end method

.method public getModels()Lorg/simpleframework/xml/core/ModelMap;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/ModelSection;->models:Lorg/simpleframework/xml/core/ModelMap;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/simpleframework/xml/core/ModelSection;->model:Lorg/simpleframework/xml/core/Model;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Model;->getModels()Lorg/simpleframework/xml/core/ModelMap;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/ModelSection;->models:Lorg/simpleframework/xml/core/ModelMap;

    :cond_0
    iget-object v0, p0, Lorg/simpleframework/xml/core/ModelSection;->models:Lorg/simpleframework/xml/core/ModelMap;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/ModelSection;->model:Lorg/simpleframework/xml/core/Model;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Model;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/ModelSection;->model:Lorg/simpleframework/xml/core/Model;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Model;->getExpression()Lorg/simpleframework/xml/core/Expression;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    invoke-interface {v0, p1}, Lorg/simpleframework/xml/core/Expression;->getElement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/ModelSection;->model:Lorg/simpleframework/xml/core/Model;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Model;->getPrefix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSection(Ljava/lang/String;)Lorg/simpleframework/xml/core/Section;
    .locals 2

    invoke-virtual {p0}, Lorg/simpleframework/xml/core/ModelSection;->getModels()Lorg/simpleframework/xml/core/ModelMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/ModelMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/ModelList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/ModelList;->take()Lorg/simpleframework/xml/core/Model;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Lorg/simpleframework/xml/core/ModelSection;

    invoke-direct {v0, v1}, Lorg/simpleframework/xml/core/ModelSection;-><init>(Lorg/simpleframework/xml/core/Model;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getText()Lorg/simpleframework/xml/core/Label;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/ModelSection;->model:Lorg/simpleframework/xml/core/Model;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Model;->getText()Lorg/simpleframework/xml/core/Label;

    move-result-object v0

    return-object v0
.end method

.method public isSection(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0}, Lorg/simpleframework/xml/core/ModelSection;->getModels()Lorg/simpleframework/xml/core/ModelMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/ModelMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lorg/simpleframework/xml/core/ModelSection;->model:Lorg/simpleframework/xml/core/Model;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Model;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
