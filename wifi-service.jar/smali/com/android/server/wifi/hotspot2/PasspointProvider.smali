.class public Lcom/android/server/wifi/hotspot2/PasspointProvider;
.super Ljava/lang/Object;
.source "PasspointProvider.java"


# static fields
.field private static final ALIAS_HS_TYPE:Ljava/lang/String; = "HS2_"

.field private static final CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "PasspointProvider"


# instance fields
.field private final mAuthParam:Lcom/android/server/wifi/hotspot2/anqp/eap/AuthParam;

.field private mCaCertificateAlias:Ljava/lang/String;

.field private mClientCertificateAlias:Ljava/lang/String;

.field private mClientPrivateKeyAlias:Ljava/lang/String;

.field private final mConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;

.field private final mCreatorUid:I

.field private final mEAPMethodID:I

.field private final mImsiParameter:Lcom/android/server/wifi/IMSIParameter;

.field private final mKeyStore:Lcom/android/server/wifi/WifiKeyStore;

.field private final mMatchingSIMImsiList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mProviderId:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_Wifi_ConfigOpBranding"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/hotspot2/PasspointConfiguration;Lcom/android/server/wifi/WifiKeyStore;Lcom/android/server/wifi/SIMAccessor;JI)V
    .locals 10

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move/from16 v6, p6

    invoke-direct/range {v0 .. v9}, Lcom/android/server/wifi/hotspot2/PasspointProvider;-><init>(Landroid/net/wifi/hotspot2/PasspointConfiguration;Lcom/android/server/wifi/WifiKeyStore;Lcom/android/server/wifi/SIMAccessor;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/hotspot2/PasspointConfiguration;Lcom/android/server/wifi/WifiKeyStore;Lcom/android/server/wifi/SIMAccessor;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/net/wifi/hotspot2/PasspointConfiguration;

    invoke-direct {v0, p1}, Landroid/net/wifi/hotspot2/PasspointConfiguration;-><init>(Landroid/net/wifi/hotspot2/PasspointConfiguration;)V

    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    iput-object p2, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mKeyStore:Lcom/android/server/wifi/WifiKeyStore;

    iput-wide p4, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mProviderId:J

    iput p6, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mCreatorUid:I

    iput-object p7, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mCaCertificateAlias:Ljava/lang/String;

    iput-object p8, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mClientCertificateAlias:Ljava/lang/String;

    iput-object p9, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mClientPrivateKeyAlias:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getCredential()Landroid/net/wifi/hotspot2/pps/Credential;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/pps/Credential;->getUserCredential()Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v0, 0x15

    iput v0, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mEAPMethodID:I

    new-instance v0, Lcom/android/server/wifi/hotspot2/anqp/eap/NonEAPInnerAuth;

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    invoke-virtual {v1}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getCredential()Landroid/net/wifi/hotspot2/pps/Credential;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/hotspot2/pps/Credential;->getUserCredential()Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->getNonEapInnerMethod()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/wifi/hotspot2/anqp/eap/NonEAPInnerAuth;->getAuthTypeID(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/android/server/wifi/hotspot2/anqp/eap/NonEAPInnerAuth;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mAuthParam:Lcom/android/server/wifi/hotspot2/anqp/eap/AuthParam;

    iput-object v2, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mImsiParameter:Lcom/android/server/wifi/IMSIParameter;

    iput-object v2, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mMatchingSIMImsiList:Ljava/util/List;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getCredential()Landroid/net/wifi/hotspot2/pps/Credential;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/pps/Credential;->getCertCredential()Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v0, 0xd

    iput v0, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mEAPMethodID:I

    iput-object v2, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mAuthParam:Lcom/android/server/wifi/hotspot2/anqp/eap/AuthParam;

    iput-object v2, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mImsiParameter:Lcom/android/server/wifi/IMSIParameter;

    iput-object v2, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mMatchingSIMImsiList:Ljava/util/List;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getCredential()Landroid/net/wifi/hotspot2/pps/Credential;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/pps/Credential;->getSimCredential()Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->getEapType()I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mEAPMethodID:I

    iput-object v2, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mAuthParam:Lcom/android/server/wifi/hotspot2/anqp/eap/AuthParam;

    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getCredential()Landroid/net/wifi/hotspot2/pps/Credential;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/pps/Credential;->getSimCredential()Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->getImsi()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wifi/IMSIParameter;->build(Ljava/lang/String;)Lcom/android/server/wifi/IMSIParameter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mImsiParameter:Lcom/android/server/wifi/IMSIParameter;

    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mImsiParameter:Lcom/android/server/wifi/IMSIParameter;

    invoke-virtual {p3, v0}, Lcom/android/server/wifi/SIMAccessor;->getMatchingImsis(Lcom/android/server/wifi/IMSIParameter;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mMatchingSIMImsiList:Ljava/util/List;

    goto :goto_0
.end method

.method private buildEnterpriseConfigForCertCredential(Landroid/net/wifi/WifiEnterpriseConfig;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mClientCertificateAlias:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->setClientCertificateAlias(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mCaCertificateAlias:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificateAlias(Ljava/lang/String;)V

    return-void
.end method

.method private buildEnterpriseConfigForSimCredential(Landroid/net/wifi/WifiEnterpriseConfig;Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;)V
    .locals 4

    const/4 v0, -0x1

    invoke-virtual {p2}, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->getEapType()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    const-string/jumbo v1, "PasspointProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unsupported EAP Method: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->getEapType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    invoke-virtual {p2}, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->getImsi()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setPlmn(Ljava/lang/String;)V

    return-void

    :sswitch_0
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_1
    const/4 v0, 0x5

    goto :goto_0

    :sswitch_2
    const/4 v0, 0x6

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x12 -> :sswitch_0
        0x17 -> :sswitch_1
        0x32 -> :sswitch_2
    .end sparse-switch
.end method

.method private buildEnterpriseConfigForUserCredential(Landroid/net/wifi/WifiEnterpriseConfig;Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;)V
    .locals 6

    invoke-virtual {p2}, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->getPassword()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    new-instance v0, Ljava/lang/String;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    invoke-virtual {p2}, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->getUsername()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->setPassword(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mCaCertificateAlias:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificateAlias(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p2}, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->getNonEapInnerMethod()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "PAP"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p1, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    return-void

    :cond_0
    const-string/jumbo v4, "MS-CHAP"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    :cond_1
    const-string/jumbo v4, "MS-CHAP-V2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x3

    goto :goto_0

    :cond_2
    const-string/jumbo v3, "PasspointProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unsupported Auth: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->getNonEapInnerMethod()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static buildSimCredentialFromEnterpriseConfig(ILandroid/net/wifi/WifiEnterpriseConfig;)Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;
    .locals 3

    new-instance v0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;

    invoke-direct {v0}, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;-><init>()V

    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getPlmn()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "PasspointProvider"

    const-string/jumbo v2, "Missing IMSI for SIM credential"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1

    :cond_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getPlmn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->setImsi(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->setEapType(I)V

    return-object v0
.end method

.method private static buildUserCredentialFromEnterpriseConfig(Landroid/net/wifi/WifiEnterpriseConfig;)Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;
    .locals 6

    const/4 v5, 0x0

    new-instance v1, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;

    invoke-direct {v1}, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;-><init>()V

    const/16 v2, 0x15

    invoke-virtual {v1, v2}, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->setEapType(I)V

    invoke-virtual {p0}, Landroid/net/wifi/WifiEnterpriseConfig;->getIdentity()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "PasspointProvider"

    const-string/jumbo v3, "Missing username for user credential"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    :cond_0
    invoke-virtual {p0}, Landroid/net/wifi/WifiEnterpriseConfig;->getIdentity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->setUsername(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/wifi/WifiEnterpriseConfig;->getPassword()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "PasspointProvider"

    const-string/jumbo v3, "Missing password for user credential"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Landroid/net/wifi/WifiEnterpriseConfig;->getPassword()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v2

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v1, v0}, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->setPassword(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/wifi/WifiEnterpriseConfig;->getPhase2Method()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    const-string/jumbo v2, "PasspointProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unsupported phase2 method for TTLS: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/net/wifi/WifiEnterpriseConfig;->getPhase2Method()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    :pswitch_0
    const-string/jumbo v2, "PAP"

    invoke-virtual {v1, v2}, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->setNonEapInnerMethod(Ljava/lang/String;)V

    :goto_0
    return-object v1

    :pswitch_1
    const-string/jumbo v2, "MS-CHAP"

    invoke-virtual {v1, v2}, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->setNonEapInnerMethod(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const-string/jumbo v2, "MS-CHAP-V2"

    invoke-virtual {v1, v2}, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->setNonEapInnerMethod(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static convertFromWifiConfig(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/hotspot2/PasspointConfiguration;
    .locals 8

    const/4 v7, 0x0

    new-instance v3, Landroid/net/wifi/hotspot2/PasspointConfiguration;

    invoke-direct {v3}, Landroid/net/wifi/hotspot2/PasspointConfiguration;-><init>()V

    new-instance v2, Landroid/net/wifi/hotspot2/pps/HomeSp;

    invoke-direct {v2}, Landroid/net/wifi/hotspot2/pps/HomeSp;-><init>()V

    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "PasspointProvider"

    const-string/jumbo v5, "Missing FQDN"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v7

    :cond_0
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/net/wifi/hotspot2/pps/HomeSp;->setFqdn(Ljava/lang/String;)V

    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/net/wifi/hotspot2/pps/HomeSp;->setFriendlyName(Ljava/lang/String;)V

    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->roamingConsortiumIds:[J

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->roamingConsortiumIds:[J

    iget-object v5, p0, Landroid/net/wifi/WifiConfiguration;->roamingConsortiumIds:[J

    array-length v5, v5

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/net/wifi/hotspot2/pps/HomeSp;->setRoamingConsortiumOis([J)V

    :cond_1
    invoke-virtual {v3, v2}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setHomeSp(Landroid/net/wifi/hotspot2/pps/HomeSp;)V

    new-instance v1, Landroid/net/wifi/hotspot2/pps/Credential;

    invoke-direct {v1}, Landroid/net/wifi/hotspot2/pps/Credential;-><init>()V

    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v4}, Landroid/net/wifi/WifiEnterpriseConfig;->getRealm()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/net/wifi/hotspot2/pps/Credential;->setRealm(Ljava/lang/String;)V

    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v4}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    const-string/jumbo v4, "PasspointProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unsupport EAP method: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v6}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v7

    :pswitch_1
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-static {v4}, Lcom/android/server/wifi/hotspot2/PasspointProvider;->buildUserCredentialFromEnterpriseConfig(Landroid/net/wifi/WifiEnterpriseConfig;)Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/net/wifi/hotspot2/pps/Credential;->setUserCredential(Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;)V

    :goto_0
    invoke-virtual {v1}, Landroid/net/wifi/hotspot2/pps/Credential;->getUserCredential()Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;

    move-result-object v4

    if-nez v4, :cond_2

    invoke-virtual {v1}, Landroid/net/wifi/hotspot2/pps/Credential;->getCertCredential()Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;

    move-result-object v4

    if-nez v4, :cond_2

    invoke-virtual {v1}, Landroid/net/wifi/hotspot2/pps/Credential;->getSimCredential()Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;

    move-result-object v4

    if-nez v4, :cond_2

    const-string/jumbo v4, "PasspointProvider"

    const-string/jumbo v5, "Missing credential"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v7

    :pswitch_2
    new-instance v0, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;

    invoke-direct {v0}, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;-><init>()V

    const-string/jumbo v4, "x509v3"

    invoke-virtual {v0, v4}, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->setCertType(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/net/wifi/hotspot2/pps/Credential;->setCertCredential(Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;)V

    goto :goto_0

    :pswitch_3
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/16 v5, 0x12

    invoke-static {v5, v4}, Lcom/android/server/wifi/hotspot2/PasspointProvider;->buildSimCredentialFromEnterpriseConfig(ILandroid/net/wifi/WifiEnterpriseConfig;)Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/net/wifi/hotspot2/pps/Credential;->setSimCredential(Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;)V

    goto :goto_0

    :pswitch_4
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/16 v5, 0x17

    invoke-static {v5, v4}, Lcom/android/server/wifi/hotspot2/PasspointProvider;->buildSimCredentialFromEnterpriseConfig(ILandroid/net/wifi/WifiEnterpriseConfig;)Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/net/wifi/hotspot2/pps/Credential;->setSimCredential(Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;)V

    goto :goto_0

    :pswitch_5
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/16 v5, 0x32

    invoke-static {v5, v4}, Lcom/android/server/wifi/hotspot2/PasspointProvider;->buildSimCredentialFromEnterpriseConfig(ILandroid/net/wifi/WifiEnterpriseConfig;)Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/net/wifi/hotspot2/pps/Credential;->setSimCredential(Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v3, v1}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setCredential(Landroid/net/wifi/hotspot2/pps/Credential;)V

    return-object v3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private static getClientCertificate([Ljava/security/cert/X509Certificate;[B)Ljava/security/cert/X509Certificate;
    .locals 8

    const/4 v7, 0x0

    if-nez p0, :cond_0

    return-object v7

    :cond_0
    :try_start_0
    const-string/jumbo v4, "SHA-256"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    const/4 v4, 0x0

    array-length v5, p0

    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v0, p0, v4

    invoke-virtual {v1}, Ljava/security/MessageDigest;->reset()V

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    invoke-static {p1, v3}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_1

    return-object v0

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    return-object v7

    :cond_2
    return-object v7
.end method

.method private matchProvider(Ljava/util/Map;Lcom/android/server/wifi/util/InformationElementUtil$RoamingConsortium;)Lcom/android/server/wifi/hotspot2/PasspointMatch;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;",
            "Lcom/android/server/wifi/hotspot2/anqp/ANQPElement;",
            ">;",
            "Lcom/android/server/wifi/util/InformationElementUtil$RoamingConsortium;",
            ")",
            "Lcom/android/server/wifi/hotspot2/PasspointMatch;"
        }
    .end annotation

    const/4 v8, 0x0

    const/4 v2, 0x0

    sget-object v5, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->ANQPDomName:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wifi/hotspot2/anqp/DomainNameElement;

    iget-object v9, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    invoke-virtual {v9}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getHomeSp()Landroid/net/wifi/hotspot2/pps/HomeSp;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/wifi/hotspot2/pps/HomeSp;->getFqdn()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mImsiParameter:Lcom/android/server/wifi/IMSIParameter;

    iget-object v11, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mMatchingSIMImsiList:Ljava/util/List;

    invoke-static {v5, v9, v10, v11}, Lcom/android/server/wifi/hotspot2/ANQPMatcher;->matchDomainName(Lcom/android/server/wifi/hotspot2/anqp/DomainNameElement;Ljava/lang/String;Lcom/android/server/wifi/IMSIParameter;Ljava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "SKT"

    sget-object v9, Lcom/android/server/wifi/hotspot2/PasspointProvider;->CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    invoke-virtual {v5}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getCredential()Landroid/net/wifi/hotspot2/pps/Credential;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/hotspot2/pps/Credential;->getSimCredential()Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;

    move-result-object v5

    if-eqz v5, :cond_1

    const/4 v2, 0x1

    :cond_0
    iget-object v5, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    invoke-virtual {v5}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getHomeSp()Landroid/net/wifi/hotspot2/pps/HomeSp;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/hotspot2/pps/HomeSp;->getRoamingConsortiumOis()[J

    move-result-object v3

    sget-object v5, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->ANQPRoamingConsortium:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wifi/hotspot2/anqp/RoamingConsortiumElement;

    invoke-static {v5, v3}, Lcom/android/server/wifi/hotspot2/ANQPMatcher;->matchRoamingConsortium(Lcom/android/server/wifi/hotspot2/anqp/RoamingConsortiumElement;[J)Z

    move-result v5

    if-eqz v5, :cond_2

    sget-object v5, Lcom/android/server/wifi/hotspot2/PasspointMatch;->RoamingProvider:Lcom/android/server/wifi/hotspot2/PasspointMatch;

    return-object v5

    :cond_1
    sget-object v5, Lcom/android/server/wifi/hotspot2/PasspointMatch;->HomeProvider:Lcom/android/server/wifi/hotspot2/PasspointMatch;

    return-object v5

    :cond_2
    invoke-virtual {p2}, Lcom/android/server/wifi/util/InformationElementUtil$RoamingConsortium;->getRoamingConsortiums()[J

    move-result-object v4

    if-eqz v4, :cond_5

    if-eqz v3, :cond_5

    array-length v10, v4

    move v9, v8

    :goto_0
    if-ge v9, v10, :cond_5

    aget-wide v6, v4, v9

    array-length v11, v3

    move v5, v8

    :goto_1
    if-ge v5, v11, :cond_4

    aget-wide v0, v3, v5

    cmp-long v12, v6, v0

    if-nez v12, :cond_3

    sget-object v5, Lcom/android/server/wifi/hotspot2/PasspointMatch;->RoamingProvider:Lcom/android/server/wifi/hotspot2/PasspointMatch;

    return-object v5

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v5, v9, 0x1

    move v9, v5

    goto :goto_0

    :cond_5
    sget-object v5, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->ANQP3GPPNetwork:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wifi/hotspot2/anqp/ThreeGPPNetworkElement;

    iget-object v8, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mImsiParameter:Lcom/android/server/wifi/IMSIParameter;

    iget-object v9, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mMatchingSIMImsiList:Ljava/util/List;

    invoke-static {v5, v8, v9}, Lcom/android/server/wifi/hotspot2/ANQPMatcher;->matchThreeGPPNetwork(Lcom/android/server/wifi/hotspot2/anqp/ThreeGPPNetworkElement;Lcom/android/server/wifi/IMSIParameter;Ljava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_7

    const-string/jumbo v5, "SKT"

    sget-object v8, Lcom/android/server/wifi/hotspot2/PasspointProvider;->CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    if-eqz v2, :cond_6

    sget-object v5, Lcom/android/server/wifi/hotspot2/PasspointMatch;->HomeProvider:Lcom/android/server/wifi/hotspot2/PasspointMatch;

    return-object v5

    :cond_6
    sget-object v5, Lcom/android/server/wifi/hotspot2/PasspointMatch;->RoamingProvider:Lcom/android/server/wifi/hotspot2/PasspointMatch;

    return-object v5

    :cond_7
    sget-object v5, Lcom/android/server/wifi/hotspot2/PasspointMatch;->None:Lcom/android/server/wifi/hotspot2/PasspointMatch;

    return-object v5
.end method

.method private static setAnonymousIdentityToNaiRealm(Landroid/net/wifi/WifiEnterpriseConfig;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "anonymous@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->setAnonymousIdentity(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_0

    return v1

    :cond_0
    instance-of v3, p1, Lcom/android/server/wifi/hotspot2/PasspointProvider;

    if-nez v3, :cond_1

    return v2

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/android/server/wifi/hotspot2/PasspointProvider;

    iget-wide v4, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mProviderId:J

    iget-wide v6, v0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mProviderId:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mCaCertificateAlias:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mCaCertificateAlias:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mClientCertificateAlias:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mClientCertificateAlias:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mClientPrivateKeyAlias:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mClientPrivateKeyAlias:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    if-nez v3, :cond_3

    iget-object v3, v0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    if-nez v3, :cond_2

    :goto_0
    return v1

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    iget-object v2, v0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    invoke-virtual {v1, v2}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public getCaCertificateAlias()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mCaCertificateAlias:Ljava/lang/String;

    return-object v0
.end method

.method public getClientCertificateAlias()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mClientCertificateAlias:Ljava/lang/String;

    return-object v0
.end method

.method public getClientPrivateKeyAlias()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mClientPrivateKeyAlias:Ljava/lang/String;

    return-object v0
.end method

.method public getConfig()Landroid/net/wifi/hotspot2/PasspointConfiguration;
    .locals 2

    new-instance v0, Landroid/net/wifi/hotspot2/PasspointConfiguration;

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    invoke-direct {v0, v1}, Landroid/net/wifi/hotspot2/PasspointConfiguration;-><init>(Landroid/net/wifi/hotspot2/PasspointConfiguration;)V

    return-object v0
.end method

.method public getCreatorUid()I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mCreatorUid:I

    return v0
.end method

.method public getProviderId()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mProviderId:J

    return-wide v0
.end method

.method public getWifiConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 4

    new-instance v1, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    invoke-virtual {v2}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getHomeSp()Landroid/net/wifi/hotspot2/pps/HomeSp;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/hotspot2/pps/HomeSp;->getFqdn()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    invoke-virtual {v2}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getHomeSp()Landroid/net/wifi/hotspot2/pps/HomeSp;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/hotspot2/pps/HomeSp;->getRoamingConsortiumOis()[J

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    invoke-virtual {v2}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getHomeSp()Landroid/net/wifi/hotspot2/pps/HomeSp;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/hotspot2/pps/HomeSp;->getRoamingConsortiumOis()[J

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getHomeSp()Landroid/net/wifi/hotspot2/pps/HomeSp;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/hotspot2/pps/HomeSp;->getRoamingConsortiumOis()[J

    move-result-object v3

    array-length v3, v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v2

    iput-object v2, v1, Landroid/net/wifi/WifiConfiguration;->roamingConsortiumIds:[J

    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    invoke-virtual {v2}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getHomeSp()Landroid/net/wifi/hotspot2/pps/HomeSp;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/hotspot2/pps/HomeSp;->getFriendlyName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    new-instance v0, Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-direct {v0}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>()V

    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    invoke-virtual {v2}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getCredential()Landroid/net/wifi/hotspot2/pps/Credential;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/hotspot2/pps/Credential;->getRealm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setRealm(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    invoke-virtual {v2}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getCredential()Landroid/net/wifi/hotspot2/pps/Credential;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/hotspot2/pps/Credential;->getUserCredential()Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    invoke-virtual {v2}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getCredential()Landroid/net/wifi/hotspot2/pps/Credential;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/hotspot2/pps/Credential;->getUserCredential()Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/server/wifi/hotspot2/PasspointProvider;->buildEnterpriseConfigForUserCredential(Landroid/net/wifi/WifiEnterpriseConfig;Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;)V

    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    invoke-virtual {v2}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getCredential()Landroid/net/wifi/hotspot2/pps/Credential;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/hotspot2/pps/Credential;->getRealm()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/wifi/hotspot2/PasspointProvider;->setAnonymousIdentityToNaiRealm(Landroid/net/wifi/WifiEnterpriseConfig;Ljava/lang/String;)V

    :goto_0
    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    return-object v1

    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    invoke-virtual {v2}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getCredential()Landroid/net/wifi/hotspot2/pps/Credential;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/hotspot2/pps/Credential;->getCertCredential()Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-direct {p0, v0}, Lcom/android/server/wifi/hotspot2/PasspointProvider;->buildEnterpriseConfigForCertCredential(Landroid/net/wifi/WifiEnterpriseConfig;)V

    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    invoke-virtual {v2}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getCredential()Landroid/net/wifi/hotspot2/pps/Credential;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/hotspot2/pps/Credential;->getRealm()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/wifi/hotspot2/PasspointProvider;->setAnonymousIdentityToNaiRealm(Landroid/net/wifi/WifiEnterpriseConfig;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    invoke-virtual {v2}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getCredential()Landroid/net/wifi/hotspot2/pps/Credential;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/hotspot2/pps/Credential;->getSimCredential()Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/server/wifi/hotspot2/PasspointProvider;->buildEnterpriseConfigForSimCredential(Landroid/net/wifi/WifiEnterpriseConfig;Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;)V

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v2, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mProviderId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mCaCertificateAlias:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mClientCertificateAlias:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mClientPrivateKeyAlias:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public installCertsAndKeys()Z
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getCredential()Landroid/net/wifi/hotspot2/pps/Credential;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/hotspot2/pps/Credential;->getCaCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "CACERT_HS2_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mProviderId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mKeyStore:Lcom/android/server/wifi/WifiKeyStore;

    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getCredential()Landroid/net/wifi/hotspot2/pps/Credential;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/hotspot2/pps/Credential;->getCaCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/android/server/wifi/WifiKeyStore;->putCertInKeyStore(Ljava/lang/String;Ljava/security/cert/Certificate;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "PasspointProvider"

    const-string/jumbo v4, "Failed to install CA Certificate"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/PasspointProvider;->uninstallCertsAndKeys()V

    return v7

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "HS2_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mProviderId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mCaCertificateAlias:Ljava/lang/String;

    :cond_1
    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getCredential()Landroid/net/wifi/hotspot2/pps/Credential;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/hotspot2/pps/Credential;->getClientPrivateKey()Ljava/security/PrivateKey;

    move-result-object v3

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "USRPKEY_HS2_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mProviderId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mKeyStore:Lcom/android/server/wifi/WifiKeyStore;

    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getCredential()Landroid/net/wifi/hotspot2/pps/Credential;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/hotspot2/pps/Credential;->getClientPrivateKey()Ljava/security/PrivateKey;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/android/server/wifi/WifiKeyStore;->putKeyInKeyStore(Ljava/lang/String;Ljava/security/Key;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "PasspointProvider"

    const-string/jumbo v4, "Failed to install client private key"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/PasspointProvider;->uninstallCertsAndKeys()V

    return v7

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "HS2_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mProviderId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mClientPrivateKeyAlias:Ljava/lang/String;

    :cond_3
    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getCredential()Landroid/net/wifi/hotspot2/pps/Credential;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/hotspot2/pps/Credential;->getClientCertificateChain()[Ljava/security/cert/X509Certificate;

    move-result-object v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getCredential()Landroid/net/wifi/hotspot2/pps/Credential;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/hotspot2/pps/Credential;->getClientCertificateChain()[Ljava/security/cert/X509Certificate;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getCredential()Landroid/net/wifi/hotspot2/pps/Credential;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/hotspot2/pps/Credential;->getCertCredential()Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->getCertSha256Fingerprint()[B

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/wifi/hotspot2/PasspointProvider;->getClientCertificate([Ljava/security/cert/X509Certificate;[B)Ljava/security/cert/X509Certificate;

    move-result-object v1

    if-nez v1, :cond_4

    const-string/jumbo v3, "PasspointProvider"

    const-string/jumbo v4, "Failed to locate client certificate"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/PasspointProvider;->uninstallCertsAndKeys()V

    return v7

    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "USRCERT_HS2_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mProviderId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mKeyStore:Lcom/android/server/wifi/WifiKeyStore;

    invoke-virtual {v3, v0, v1}, Lcom/android/server/wifi/WifiKeyStore;->putCertInKeyStore(Ljava/lang/String;Ljava/security/cert/Certificate;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string/jumbo v3, "PasspointProvider"

    const-string/jumbo v4, "Failed to install client certificate"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/PasspointProvider;->uninstallCertsAndKeys()V

    return v7

    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "HS2_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mProviderId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mClientCertificateAlias:Ljava/lang/String;

    :cond_6
    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getCredential()Landroid/net/wifi/hotspot2/pps/Credential;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/net/wifi/hotspot2/pps/Credential;->setCaCertificate(Ljava/security/cert/X509Certificate;)V

    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getCredential()Landroid/net/wifi/hotspot2/pps/Credential;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/net/wifi/hotspot2/pps/Credential;->setClientPrivateKey(Ljava/security/PrivateKey;)V

    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getCredential()Landroid/net/wifi/hotspot2/pps/Credential;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/net/wifi/hotspot2/pps/Credential;->setClientCertificateChain([Ljava/security/cert/X509Certificate;)V

    const/4 v3, 0x1

    return v3
.end method

.method public isSimCredential()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getCredential()Landroid/net/wifi/hotspot2/pps/Credential;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/pps/Credential;->getSimCredential()Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public match(Ljava/util/Map;Lcom/android/server/wifi/util/InformationElementUtil$RoamingConsortium;)Lcom/android/server/wifi/hotspot2/PasspointMatch;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;",
            "Lcom/android/server/wifi/hotspot2/anqp/ANQPElement;",
            ">;",
            "Lcom/android/server/wifi/util/InformationElementUtil$RoamingConsortium;",
            ")",
            "Lcom/android/server/wifi/hotspot2/PasspointMatch;"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/hotspot2/PasspointProvider;->matchProvider(Ljava/util/Map;Lcom/android/server/wifi/util/InformationElementUtil$RoamingConsortium;)Lcom/android/server/wifi/hotspot2/PasspointMatch;

    move-result-object v1

    sget-object v2, Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;->ANQPNAIRealm:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/hotspot2/anqp/NAIRealmElement;

    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getCredential()Landroid/net/wifi/hotspot2/pps/Credential;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/hotspot2/pps/Credential;->getRealm()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mEAPMethodID:I

    iget-object v5, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mAuthParam:Lcom/android/server/wifi/hotspot2/anqp/eap/AuthParam;

    invoke-static {v2, v3, v4, v5}, Lcom/android/server/wifi/hotspot2/ANQPMatcher;->matchNAIRealm(Lcom/android/server/wifi/hotspot2/anqp/NAIRealmElement;Ljava/lang/String;ILcom/android/server/wifi/hotspot2/anqp/eap/AuthParam;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    sget-object v2, Lcom/android/server/wifi/hotspot2/PasspointMatch;->None:Lcom/android/server/wifi/hotspot2/PasspointMatch;

    return-object v2

    :cond_0
    and-int/lit8 v2, v0, 0x4

    if-nez v2, :cond_1

    return-object v1

    :cond_1
    sget-object v2, Lcom/android/server/wifi/hotspot2/PasspointMatch;->None:Lcom/android/server/wifi/hotspot2/PasspointMatch;

    if-ne v1, v2, :cond_2

    sget-object v1, Lcom/android/server/wifi/hotspot2/PasspointMatch;->RoamingProvider:Lcom/android/server/wifi/hotspot2/PasspointMatch;

    :cond_2
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ProviderId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mProviderId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "CreatorUID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mCreatorUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Configuration Begin ---\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Configuration End ---\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public uninstallCertsAndKeys()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mCaCertificateAlias:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mKeyStore:Lcom/android/server/wifi/WifiKeyStore;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CACERT_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mCaCertificateAlias:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiKeyStore;->removeEntryFromKeyStore(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "PasspointProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed to remove entry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mCaCertificateAlias:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object v3, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mCaCertificateAlias:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mClientPrivateKeyAlias:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mKeyStore:Lcom/android/server/wifi/WifiKeyStore;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "USRPKEY_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mClientPrivateKeyAlias:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiKeyStore;->removeEntryFromKeyStore(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "PasspointProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed to remove entry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mClientPrivateKeyAlias:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iput-object v3, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mClientPrivateKeyAlias:Ljava/lang/String;

    :cond_3
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mClientCertificateAlias:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mKeyStore:Lcom/android/server/wifi/WifiKeyStore;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "USRCERT_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mClientCertificateAlias:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiKeyStore;->removeEntryFromKeyStore(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "PasspointProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed to remove entry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mClientCertificateAlias:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iput-object v3, p0, Lcom/android/server/wifi/hotspot2/PasspointProvider;->mClientCertificateAlias:Ljava/lang/String;

    :cond_5
    return-void
.end method
