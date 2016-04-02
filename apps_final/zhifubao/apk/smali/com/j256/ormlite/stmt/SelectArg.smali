.class public Lcom/j256/ormlite/stmt/SelectArg;
.super Lcom/j256/ormlite/stmt/BaseArgumentHolder;

# interfaces
.implements Lcom/j256/ormlite/stmt/ArgumentHolder;


# instance fields
.field private hasBeenSet:Z

.field private value:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/j256/ormlite/stmt/BaseArgumentHolder;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/j256/ormlite/stmt/SelectArg;->hasBeenSet:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/j256/ormlite/stmt/SelectArg;->value:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/j256/ormlite/field/SqlType;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/j256/ormlite/stmt/BaseArgumentHolder;-><init>(Lcom/j256/ormlite/field/SqlType;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/j256/ormlite/stmt/SelectArg;->hasBeenSet:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/j256/ormlite/stmt/SelectArg;->value:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/j256/ormlite/field/SqlType;Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/j256/ormlite/stmt/BaseArgumentHolder;-><init>(Lcom/j256/ormlite/field/SqlType;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/j256/ormlite/stmt/SelectArg;->hasBeenSet:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/j256/ormlite/stmt/SelectArg;->value:Ljava/lang/Object;

    invoke-virtual {p0, p2}, Lcom/j256/ormlite/stmt/SelectArg;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Lcom/j256/ormlite/stmt/BaseArgumentHolder;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/j256/ormlite/stmt/SelectArg;->hasBeenSet:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/j256/ormlite/stmt/SelectArg;->value:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/j256/ormlite/stmt/SelectArg;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/j256/ormlite/stmt/BaseArgumentHolder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/j256/ormlite/stmt/SelectArg;->hasBeenSet:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/j256/ormlite/stmt/SelectArg;->value:Ljava/lang/Object;

    invoke-virtual {p0, p2}, Lcom/j256/ormlite/stmt/SelectArg;->setValue(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected getValue()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/j256/ormlite/stmt/SelectArg;->value:Ljava/lang/Object;

    return-object v0
.end method

.method protected isValueSet()Z
    .locals 1

    iget-boolean v0, p0, Lcom/j256/ormlite/stmt/SelectArg;->hasBeenSet:Z

    return v0
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/j256/ormlite/stmt/SelectArg;->hasBeenSet:Z

    iput-object p1, p0, Lcom/j256/ormlite/stmt/SelectArg;->value:Ljava/lang/Object;

    return-void
.end method
