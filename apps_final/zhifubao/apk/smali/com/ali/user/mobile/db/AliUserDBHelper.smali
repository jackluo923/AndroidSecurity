.class public Lcom/ali/user/mobile/db/AliUserDBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "AliUserDBHelper.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 17
    const-string/jumbo v0, "aliuser"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 18
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 22
    const-string/jumbo v0, "create table loginHistory (loginAccount varchar(64) PRIMARY KEY, loginType varchar(64),loginPortraitUrl varchar(64),loginTime long)"

    .line 23
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 29
    const-string/jumbo v0, "alter table loginHistory add loginPortraitUrl varchar(64)"

    .line 30
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 32
    :cond_0
    return-void
.end method
