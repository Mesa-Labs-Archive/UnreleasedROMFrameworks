.class public Lcom/samsung/android/security/mdf/MdfUtils;
.super Ljava/lang/Object;
.source "MdfUtils.java"


# static fields
.field public static final AUDIT_LOG_ALERT:I = 0x1

.field public static final AUDIT_LOG_CRITICAL:I = 0x2

.field public static final AUDIT_LOG_ERROR:I = 0x3

.field public static final AUDIT_LOG_GROUP_APPLICATION:I = 0x5

.field public static final AUDIT_LOG_GROUP_EVENTS:I = 0x4

.field public static final AUDIT_LOG_GROUP_NETWORK:I = 0x3

.field public static final AUDIT_LOG_GROUP_SECURITY:I = 0x1

.field public static final AUDIT_LOG_GROUP_SYSTEM:I = 0x2

.field public static final AUDIT_LOG_NOTICE:I = 0x5

.field public static final AUDIT_LOG_WARNING:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildHostnameLog(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static byteArrayToHexString([B)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static decryptMdf([BLjava/lang/String;)[B
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static encryptMdf([BLjava/lang/String;)[B
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getPid()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public static getUid()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public static hexStringToByteArray(Ljava/lang/String;)[B
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static isCertificateAllowed([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static isHostnameAllowed(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static isMdfDisabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static isMdfEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static isMdfEnforced()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static isMdfReady()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static isMdfSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static logMdf(Ljava/lang/String;ZILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static logMdf(ZLjava/lang/String;ZILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static updateMdfStatus()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public static updateMdfVersion()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static verifyVPN()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method public FIPS_Openssl_SelfTest()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getCCModeFlag()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getFipsStatus()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getSBFlag()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getTamperFlag()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public setCCModeFlag(I)I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public setSBFlagOff()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public setSBFlagOn()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method
