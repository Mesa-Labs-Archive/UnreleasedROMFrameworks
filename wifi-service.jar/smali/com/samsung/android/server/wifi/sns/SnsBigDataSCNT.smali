.class public Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;
.super Lcom/samsung/android/server/wifi/sns/SnsBigDataFeature;
.source "SnsBigDataSCNT.java"


# static fields
.field public static final KEY_SNS_AGG_DEFAULT:Ljava/lang/String; = "SUAA"

.field public static final KEY_SNS_AGG_FIRST:Ljava/lang/String; = "SUAF"

.field public static final KEY_SNS_AGG_SECOND:Ljava/lang/String; = "SUAS"

.field public static final KEY_SNS_CHINA_DEFAULT:Ljava/lang/String; = "SUCC"

.field public static final KEY_SNS_CHINA_FIRST:Ljava/lang/String; = "SUCF"

.field public static final KEY_SNS_CHINA_FORTH:Ljava/lang/String; = "SUCD"

.field public static final KEY_SNS_CHINA_SECOND:Ljava/lang/String; = "SUCS"

.field public static final KEY_SNS_CHINA_THIRD:Ljava/lang/String; = "SUCT"

.field public static final KEY_SNS_GLOBAL_DEFAULT:Ljava/lang/String; = "SUGG"

.field public static final KEY_SNS_GLOBAL_FIRST:Ljava/lang/String; = "SUGF"

.field public static final KEY_SNS_GLOBAL_SECOND:Ljava/lang/String; = "SUGS"

.field public static final KEY_SNS_GLOBAL_THIRD:Ljava/lang/String; = "SUGT"

.field public static final KEY_SNS_IQ_AGG:Ljava/lang/String; = "IQAG"

.field public static final KEY_SNS_IQ_NONSWITCHABLE:Ljava/lang/String; = "IQNS"

.field public static final KEY_SNS_IQ_NORMAL:Ljava/lang/String; = "IQNO"

.field public static final KEY_SNS_IV_AGG:Ljava/lang/String; = "IVAG"

.field public static final KEY_SNS_IV_NONSWITCHABLE:Ljava/lang/String; = "IVNS"

.field public static final KEY_SNS_IV_NORMAL:Ljava/lang/String; = "IVNO"

.field public static final KEY_SNS_KR_DEFAULT:Ljava/lang/String; = "SUKK"

.field public static final KEY_SNS_KR_FIRST:Ljava/lang/String; = "SUKF"

.field public static final KEY_SNS_KR_SECOND:Ljava/lang/String; = "SUKS"

.field public static final KEY_SNS_KR_THIRD:Ljava/lang/String; = "SUKT"

.field public static final KEY_SNS_TURN_OFF:Ljava/lang/String; = "SSMO"

.field public static final KEY_SNS_TURN_ON_AGG:Ljava/lang/String; = "SSMA"

.field public static final KEY_SNS_TURN_ON_NORMAL:Ljava/lang/String; = "SSMN"

.field private static final KEY_SNS_VERSION:Ljava/lang/String; = "SVER"

.field public static final KEY_SNS_VI_AGG:Ljava/lang/String; = "VIAG"

.field public static final KEY_SNS_VI_NONSWITCHABLE:Ljava/lang/String; = "VINS"

.field public static final KEY_SNS_VI_NORMAL:Ljava/lang/String; = "VINO"

.field public static final KEY_SNS_VQ_AGG:Ljava/lang/String; = "VQAG"

.field public static final KEY_SNS_VQ_NONSWITCHABLE:Ljava/lang/String; = "VQNS"

.field public static final KEY_SNS_VQ_NORMAL:Ljava/lang/String; = "VQNO"

.field private static final SCNT:[[Ljava/lang/String;


# instance fields
.field public mIQCFailNonSwitchable:I

.field public mIQCFailonAGG:I

.field public mIQCFailonNormal:I

.field public mIVAGG:I

.field public mIVNonSwitchable:I

.field public mIVNormal:I

.field public mTurnedOff:I

.field public mTurnedOnAGG:I

.field public mTurnedOnNormal:I

.field public mUrlAGG01:I

.field public mUrlAGG02:I

.field public mUrlAGGDefault:I

.field public mUrlChina01:I

.field public mUrlChina02:I

.field public mUrlChina03:I

.field public mUrlChina04:I

.field public mUrlChinaDefault:I

.field public mUrlGlobal01:I

.field public mUrlGlobal02:I

.field public mUrlGlobal03:I

.field public mUrlGlobalDefault:I

.field public mUrlKorea01:I

.field public mUrlKorea02:I

.field public mUrlKorea03:I

.field public mUrlKoreaDefault:I

.field public mVIAGG:I

.field public mVINonSwitchable:I

.field public mVINormal:I

.field public mVQCFailonAGG:I

.field public mVQCFailonNonSwitchable:I

.field public mVQCFailonNormal:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0x20

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SVER"

    aput-object v2, v1, v3

    const-string/jumbo v2, "2018004026"

    aput-object v2, v1, v4

    aput-object v1, v0, v3

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "IVNS"

    aput-object v2, v1, v3

    const-string/jumbo v2, "0"

    aput-object v2, v1, v4

    aput-object v1, v0, v4

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "IVNO"

    aput-object v2, v1, v3

    const-string/jumbo v2, "0"

    aput-object v2, v1, v4

    aput-object v1, v0, v5

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "IVAG"

    aput-object v2, v1, v3

    const-string/jumbo v2, "0"

    aput-object v2, v1, v4

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "VINS"

    aput-object v2, v1, v3

    const-string/jumbo v2, "0"

    aput-object v2, v1, v4

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "VINO"

    aput-object v2, v1, v3

    const-string/jumbo v2, "0"

    aput-object v2, v1, v4

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "VIAG"

    aput-object v2, v1, v3

    const-string/jumbo v2, "0"

    aput-object v2, v1, v4

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "IQNS"

    aput-object v2, v1, v3

    const-string/jumbo v2, "0"

    aput-object v2, v1, v4

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "IQNO"

    aput-object v2, v1, v3

    const-string/jumbo v2, "0"

    aput-object v2, v1, v4

    const/16 v2, 0x8

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "IQAG"

    aput-object v2, v1, v3

    const-string/jumbo v2, "0"

    aput-object v2, v1, v4

    const/16 v2, 0x9

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "VQNS"

    aput-object v2, v1, v3

    const-string/jumbo v2, "0"

    aput-object v2, v1, v4

    const/16 v2, 0xa

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "VQNO"

    aput-object v2, v1, v3

    const-string/jumbo v2, "0"

    aput-object v2, v1, v4

    const/16 v2, 0xb

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "VQAG"

    aput-object v2, v1, v3

    const-string/jumbo v2, "0"

    aput-object v2, v1, v4

    const/16 v2, 0xc

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SSMO"

    aput-object v2, v1, v3

    const-string/jumbo v2, "0"

    aput-object v2, v1, v4

    const/16 v2, 0xd

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SSMN"

    aput-object v2, v1, v3

    const-string/jumbo v2, "0"

    aput-object v2, v1, v4

    const/16 v2, 0xe

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SSMA"

    aput-object v2, v1, v3

    const-string/jumbo v2, "0"

    aput-object v2, v1, v4

    const/16 v2, 0xf

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SUGF"

    aput-object v2, v1, v3

    const-string/jumbo v2, "0"

    aput-object v2, v1, v4

    const/16 v2, 0x10

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SUGS"

    aput-object v2, v1, v3

    const-string/jumbo v2, "0"

    aput-object v2, v1, v4

    const/16 v2, 0x11

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SUGT"

    aput-object v2, v1, v3

    const-string/jumbo v2, "0"

    aput-object v2, v1, v4

    const/16 v2, 0x12

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SUGG"

    aput-object v2, v1, v3

    const-string/jumbo v2, "0"

    aput-object v2, v1, v4

    const/16 v2, 0x13

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SUCF"

    aput-object v2, v1, v3

    const-string/jumbo v2, "0"

    aput-object v2, v1, v4

    const/16 v2, 0x14

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SUCS"

    aput-object v2, v1, v3

    const-string/jumbo v2, "0"

    aput-object v2, v1, v4

    const/16 v2, 0x15

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SUCT"

    aput-object v2, v1, v3

    const-string/jumbo v2, "0"

    aput-object v2, v1, v4

    const/16 v2, 0x16

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SUCD"

    aput-object v2, v1, v3

    const-string/jumbo v2, "0"

    aput-object v2, v1, v4

    const/16 v2, 0x17

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SUCC"

    aput-object v2, v1, v3

    const-string/jumbo v2, "0"

    aput-object v2, v1, v4

    const/16 v2, 0x18

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SUKF"

    aput-object v2, v1, v3

    const-string/jumbo v2, "0"

    aput-object v2, v1, v4

    const/16 v2, 0x19

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SUKS"

    aput-object v2, v1, v3

    const-string/jumbo v2, "0"

    aput-object v2, v1, v4

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SUKT"

    aput-object v2, v1, v3

    const-string/jumbo v2, "0"

    aput-object v2, v1, v4

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SUKK"

    aput-object v2, v1, v3

    const-string/jumbo v2, "0"

    aput-object v2, v1, v4

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SUAF"

    aput-object v2, v1, v3

    const-string/jumbo v2, "0"

    aput-object v2, v1, v4

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SUAS"

    aput-object v2, v1, v3

    const-string/jumbo v2, "0"

    aput-object v2, v1, v4

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "SUAA"

    aput-object v2, v1, v3

    const-string/jumbo v2, "0"

    aput-object v2, v1, v4

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->SCNT:[[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/sns/SnsBigDataFeature;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->initialize()V

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/sns/SnsBigDataFeature;-><init>(ZLjava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->initialize()V

    return-void
.end method


# virtual methods
.method public addOrUpdateAllValue()V
    .locals 2

    const-string/jumbo v0, "IVNS"

    iget v1, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->mIVNonSwitchable:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->addOrUpdateValue(Ljava/lang/String;I)V

    const-string/jumbo v0, "IVNO"

    iget v1, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->mIVNormal:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->addOrUpdateValue(Ljava/lang/String;I)V

    const-string/jumbo v0, "IVAG"

    iget v1, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->mIVAGG:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->addOrUpdateValue(Ljava/lang/String;I)V

    const-string/jumbo v0, "VINS"

    iget v1, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->mVINonSwitchable:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->addOrUpdateValue(Ljava/lang/String;I)V

    const-string/jumbo v0, "VINO"

    iget v1, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->mVINormal:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->addOrUpdateValue(Ljava/lang/String;I)V

    const-string/jumbo v0, "VIAG"

    iget v1, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->mVIAGG:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->addOrUpdateValue(Ljava/lang/String;I)V

    const-string/jumbo v0, "IQNS"

    iget v1, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->mIQCFailNonSwitchable:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->addOrUpdateValue(Ljava/lang/String;I)V

    const-string/jumbo v0, "IQNO"

    iget v1, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->mIQCFailonNormal:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->addOrUpdateValue(Ljava/lang/String;I)V

    const-string/jumbo v0, "IQAG"

    iget v1, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->mIQCFailonAGG:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->addOrUpdateValue(Ljava/lang/String;I)V

    const-string/jumbo v0, "VQNS"

    iget v1, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->mVQCFailonNonSwitchable:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->addOrUpdateValue(Ljava/lang/String;I)V

    const-string/jumbo v0, "VQNO"

    iget v1, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->mVQCFailonNormal:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->addOrUpdateValue(Ljava/lang/String;I)V

    const-string/jumbo v0, "VQAG"

    iget v1, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->mVQCFailonAGG:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->addOrUpdateValue(Ljava/lang/String;I)V

    const-string/jumbo v0, "SSMO"

    iget v1, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->mTurnedOff:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->addOrUpdateValue(Ljava/lang/String;I)V

    const-string/jumbo v0, "SSMN"

    iget v1, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->mTurnedOnNormal:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->addOrUpdateValue(Ljava/lang/String;I)V

    const-string/jumbo v0, "SSMA"

    iget v1, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->mTurnedOnAGG:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->addOrUpdateValue(Ljava/lang/String;I)V

    const-string/jumbo v0, "SUGF"

    iget v1, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->mUrlGlobal01:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->addOrUpdateValue(Ljava/lang/String;I)V

    const-string/jumbo v0, "SUGS"

    iget v1, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->mUrlGlobal02:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->addOrUpdateValue(Ljava/lang/String;I)V

    const-string/jumbo v0, "SUGT"

    iget v1, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->mUrlGlobal03:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->addOrUpdateValue(Ljava/lang/String;I)V

    const-string/jumbo v0, "SUGG"

    iget v1, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->mUrlGlobalDefault:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->addOrUpdateValue(Ljava/lang/String;I)V

    const-string/jumbo v0, "SUCF"

    iget v1, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->mUrlChina01:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->addOrUpdateValue(Ljava/lang/String;I)V

    const-string/jumbo v0, "SUCS"

    iget v1, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->mUrlChina02:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->addOrUpdateValue(Ljava/lang/String;I)V

    const-string/jumbo v0, "SUCT"

    iget v1, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->mUrlChina03:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->addOrUpdateValue(Ljava/lang/String;I)V

    const-string/jumbo v0, "SUCD"

    iget v1, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->mUrlChina04:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->addOrUpdateValue(Ljava/lang/String;I)V

    const-string/jumbo v0, "SUCC"

    iget v1, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->mUrlChinaDefault:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->addOrUpdateValue(Ljava/lang/String;I)V

    const-string/jumbo v0, "SUKF"

    iget v1, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->mUrlKorea01:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->addOrUpdateValue(Ljava/lang/String;I)V

    const-string/jumbo v0, "SUKS"

    iget v1, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->mUrlKorea02:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->addOrUpdateValue(Ljava/lang/String;I)V

    const-string/jumbo v0, "SUKT"

    iget v1, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->mUrlKorea03:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->addOrUpdateValue(Ljava/lang/String;I)V

    const-string/jumbo v0, "SUKK"

    iget v1, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->mUrlKorea01:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->addOrUpdateValue(Ljava/lang/String;I)V

    const-string/jumbo v0, "SUAF"

    iget v1, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->mUrlAGG01:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->addOrUpdateValue(Ljava/lang/String;I)V

    const-string/jumbo v0, "SUAS"

    iget v1, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->mUrlAGG02:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->addOrUpdateValue(Ljava/lang/String;I)V

    const-string/jumbo v0, "SUAA"

    iget v1, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->mUrlAGG01:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->addOrUpdateValue(Ljava/lang/String;I)V

    return-void
.end method

.method public getJsonFormat()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->SCNT:[[Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->getKeyValueStrings([[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->DBG:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getJsonFormat - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public initialize()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->mIVNonSwitchable:I

    iput v0, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->mIVNormal:I

    iput v0, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->mIVAGG:I

    iput v0, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->mVINonSwitchable:I

    iput v0, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->mVINormal:I

    iput v0, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->mVIAGG:I

    iput v0, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->mIQCFailNonSwitchable:I

    iput v0, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->mIQCFailonNormal:I

    iput v0, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->mIQCFailonAGG:I

    iput v0, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->mVQCFailonNonSwitchable:I

    iput v0, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->mVQCFailonNormal:I

    iput v0, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->mVQCFailonAGG:I

    iput v0, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->mTurnedOff:I

    iput v0, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->mTurnedOnNormal:I

    iput v0, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->mTurnedOnAGG:I

    iput v0, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->mUrlGlobalDefault:I

    iput v0, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->mUrlGlobal01:I

    iput v0, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->mUrlGlobal02:I

    iput v0, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->mUrlGlobal03:I

    iput v0, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->mUrlChinaDefault:I

    iput v0, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->mUrlChina01:I

    iput v0, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->mUrlChina02:I

    iput v0, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->mUrlChina03:I

    iput v0, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->mUrlChina04:I

    iput v0, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->mUrlKoreaDefault:I

    iput v0, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->mUrlKorea01:I

    iput v0, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->mUrlKorea02:I

    iput v0, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->mUrlKorea03:I

    iput v0, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->mUrlAGGDefault:I

    iput v0, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->mUrlAGG01:I

    iput v0, p0, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->mUrlAGG02:I

    return-void
.end method

.method public putKeyValueString([Ljava/lang/String;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    sget-object v1, Lcom/samsung/android/server/wifi/sns/SnsBigDataSCNT;->SCNT:[[Ljava/lang/String;

    aget-object v1, v1, v0

    aget-object v2, p1, v0

    const/4 v3, 0x1

    aput-object v2, v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
