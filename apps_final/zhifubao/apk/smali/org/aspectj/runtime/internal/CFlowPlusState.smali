.class public Lorg/aspectj/runtime/internal/CFlowPlusState;
.super Lorg/aspectj/runtime/CFlow;


# instance fields
.field private a:[Ljava/lang/Object;


# direct methods
.method public constructor <init>([Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Lorg/aspectj/runtime/CFlow;-><init>()V

    iput-object p1, p0, Lorg/aspectj/runtime/internal/CFlowPlusState;->a:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p2}, Lorg/aspectj/runtime/CFlow;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lorg/aspectj/runtime/internal/CFlowPlusState;->a:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/aspectj/runtime/internal/CFlowPlusState;->a:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method
