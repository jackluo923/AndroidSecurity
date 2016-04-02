.class public Lae/gov/mol/helper/Tags;
.super Ljava/lang/Object;
.source "Tags.java"


# static fields
.field public static CAMERA_PADDING:I


# instance fields
.field public mCompanyList:Ljava/lang/String;

.field public mCompanyViolation:Ljava/lang/String;

.field public mContactUsVo:Ljava/lang/String;

.field public mContactUsVoData:Ljava/lang/String;

.field public mContactUsVoLat:Ljava/lang/String;

.field public mContactUsVoLong:Ljava/lang/String;

.field public mEmployeeList:Ljava/lang/String;

.field public mMyContactVo:Ljava/lang/String;

.field public mMySalaryCheckBoxVo:Ljava/lang/String;

.field public mMySalaryRadioButtonVo:Ljava/lang/String;

.field public mMySalaryVo:Ljava/lang/String;

.field public mNewsDate:Ljava/lang/String;

.field public mNewsHeadLine:Ljava/lang/String;

.field public mNewsShort:Ljava/lang/String;

.field public mNewsid:Ljava/lang/String;

.field public mRulesAndProcedureDetailTitle:Ljava/lang/String;

.field public mRulesAndProcedureId:Ljava/lang/String;

.field public mRulesAndProcedureServiceId:Ljava/lang/String;

.field public mServiceListData:Ljava/lang/String;

.field public meServicesDetail:Ljava/lang/String;

.field public meServicesDetailIndex:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/16 v0, 0x64

    sput v0, Lae/gov/mol/helper/Tags;->CAMERA_PADDING:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-string v0, "news_id"

    iput-object v0, p0, Lae/gov/mol/helper/Tags;->mNewsid:Ljava/lang/String;

    .line 12
    const-string v0, "news_date"

    iput-object v0, p0, Lae/gov/mol/helper/Tags;->mNewsDate:Ljava/lang/String;

    .line 13
    const-string v0, "news_head_line"

    iput-object v0, p0, Lae/gov/mol/helper/Tags;->mNewsHeadLine:Ljava/lang/String;

    .line 14
    const-string v0, "news_short"

    iput-object v0, p0, Lae/gov/mol/helper/Tags;->mNewsShort:Ljava/lang/String;

    .line 16
    const-string v0, "ContactUsVo"

    iput-object v0, p0, Lae/gov/mol/helper/Tags;->mContactUsVo:Ljava/lang/String;

    .line 17
    const-string v0, "ContactUsVoLat"

    iput-object v0, p0, Lae/gov/mol/helper/Tags;->mContactUsVoLat:Ljava/lang/String;

    .line 18
    const-string v0, "ContactUsVoLong"

    iput-object v0, p0, Lae/gov/mol/helper/Tags;->mContactUsVoLong:Ljava/lang/String;

    .line 19
    const-string v0, "ContactUsVoData"

    iput-object v0, p0, Lae/gov/mol/helper/Tags;->mContactUsVoData:Ljava/lang/String;

    .line 20
    const-string v0, "RulesAndProcidureDetailTitle"

    iput-object v0, p0, Lae/gov/mol/helper/Tags;->mRulesAndProcedureDetailTitle:Ljava/lang/String;

    .line 21
    const-string v0, "RulesAndProcidureId"

    iput-object v0, p0, Lae/gov/mol/helper/Tags;->mRulesAndProcedureId:Ljava/lang/String;

    .line 22
    const-string v0, "RulesAndProcidureServiceId"

    iput-object v0, p0, Lae/gov/mol/helper/Tags;->mRulesAndProcedureServiceId:Ljava/lang/String;

    .line 23
    const-string v0, "eServicesDetail"

    iput-object v0, p0, Lae/gov/mol/helper/Tags;->meServicesDetail:Ljava/lang/String;

    .line 24
    const-string v0, "eServicesDetailIndex"

    iput-object v0, p0, Lae/gov/mol/helper/Tags;->meServicesDetailIndex:Ljava/lang/String;

    .line 26
    const-string v0, "MySalaryVo"

    iput-object v0, p0, Lae/gov/mol/helper/Tags;->mMySalaryVo:Ljava/lang/String;

    .line 27
    const-string v0, "MySalaryRadioButtonVoHandler"

    iput-object v0, p0, Lae/gov/mol/helper/Tags;->mMySalaryRadioButtonVo:Ljava/lang/String;

    .line 28
    const-string v0, "MySalaryCheckBoxVoHandler"

    iput-object v0, p0, Lae/gov/mol/helper/Tags;->mMySalaryCheckBoxVo:Ljava/lang/String;

    .line 29
    const-string v0, "MyContactVo"

    iput-object v0, p0, Lae/gov/mol/helper/Tags;->mMyContactVo:Ljava/lang/String;

    .line 30
    const-string v0, "mServiceListData"

    iput-object v0, p0, Lae/gov/mol/helper/Tags;->mServiceListData:Ljava/lang/String;

    .line 33
    const-string v0, "companyinfo"

    iput-object v0, p0, Lae/gov/mol/helper/Tags;->mCompanyList:Ljava/lang/String;

    .line 34
    const-string v0, "memployeelist"

    iput-object v0, p0, Lae/gov/mol/helper/Tags;->mEmployeeList:Ljava/lang/String;

    .line 36
    const-string v0, "companyviolation"

    iput-object v0, p0, Lae/gov/mol/helper/Tags;->mCompanyViolation:Ljava/lang/String;

    .line 9
    return-void
.end method
