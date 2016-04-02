.class public Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;
.super Ljava/lang/Object;


# instance fields
.field private created:Z

.field private numLinesChanged:I

.field private updated:Z


# direct methods
.method public constructor <init>(ZZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;->created:Z

    iput-boolean p2, p0, Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;->updated:Z

    iput p3, p0, Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;->numLinesChanged:I

    return-void
.end method


# virtual methods
.method public getNumLinesChanged()I
    .locals 1

    iget v0, p0, Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;->numLinesChanged:I

    return v0
.end method

.method public isCreated()Z
    .locals 1

    iget-boolean v0, p0, Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;->created:Z

    return v0
.end method

.method public isUpdated()Z
    .locals 1

    iget-boolean v0, p0, Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;->updated:Z

    return v0
.end method
