.class public Lorg/aspectj/runtime/CFlow;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/aspectj/runtime/CFlow;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/aspectj/runtime/CFlow;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAspect()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/aspectj/runtime/CFlow;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public setAspect(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lorg/aspectj/runtime/CFlow;->a:Ljava/lang/Object;

    return-void
.end method
