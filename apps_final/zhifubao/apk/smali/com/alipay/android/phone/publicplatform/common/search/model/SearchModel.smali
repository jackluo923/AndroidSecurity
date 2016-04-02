.class public Lcom/alipay/android/phone/publicplatform/common/search/model/SearchModel;
.super Ljava/lang/Object;
.source "SearchModel.java"


# static fields
.field public static final ENCRYPT_ACTIONPARAMS:I = 0x4

.field public static final ENCRYPT_DESC:I = 0x2

.field public static final ENCRYPT_TITLE:I = 0x1


# instance fields
.field public actionParams:Ljava/lang/String;

.field public actionType:Ljava/lang/String;

.field public bizNo:Ljava/lang/String;

.field public bizType:Ljava/lang/String;

.field public categrayCode:Ljava/lang/String;

.field public categrayName:Ljava/lang/String;

.field public desc:Ljava/lang/String;

.field public encryptFields:I

.field public expandStr:Ljava/lang/String;

.field public gmtCreate:J

.field public gmtModefied:J

.field public iconPath:Ljava/lang/String;

.field public searchContent:Ljava/lang/String;

.field public showType:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/phone/publicplatform/common/search/model/SearchModel;->encryptFields:I

    .line 8
    return-void
.end method
