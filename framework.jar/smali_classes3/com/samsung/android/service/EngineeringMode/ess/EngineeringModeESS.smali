.class public Lcom/samsung/android/service/EngineeringMode/ess/EngineeringModeESS;
.super Ljava/lang/Object;
.source "EngineeringModeESS.java"


# static fields
.field public static final ESS_ERROR_BROKEN_INTEGRITY:I = -0x65

.field public static final ESS_ERROR_INVAILD_PARAM:I = -0x64

.field public static final ESS_NOK:I = 0x0

.field public static final ESS_OK:I = 0x1

.field public static final ESS_V1_INST_MAX_PARAMS:I = 0x6

.field public static final ESS_V1_MAX_CERT:I = 0x1000

.field public static final ESS_V1_MAX_CERT_LEN:I = 0x5

.field public static final ESS_V1_MAX_DATE:I = 0x8

.field public static final ESS_V1_MAX_ESS:I = 0x100

.field public static final ESS_V1_MAX_ETOKEN:I = 0x1000

.field public static final ESS_V1_MAX_ETOKEN_LEN:I = 0x1000

.field public static final ESS_V1_MAX_HASH:I = 0x40

.field public static final ESS_V1_MAX_IV:I = 0x20

.field public static final ESS_V1_MAX_IV_LEN:I = 0x3

.field public static final ESS_V1_MAX_MODES_SET:I = 0x80

.field public static final ESS_V1_MAX_NUM_MODES:I = 0x3

.field public static final ESS_V1_MAX_OTP:I = 0x6

.field public static final ESS_V1_MAX_PARAMS:I = 0xb

.field public static final ESS_V1_MAX_SINGLE_ID:I = 0x64

.field public static final ESS_V1_NUM_CHECK:I = 0x1

.field public static final ESS_V1_TDM_MAX_PARAMS:I = 0x5

.field public static final ESS_V1_TRM_NUM_PARAMS:I = 0xb

.field public static final INSTALL_TOK:I = 0x3

.field public static final MAKE_TOK_DEL_MSG:I = 0x2

.field public static final MAKE_TOK_REQ_MSG:I = 0x1

.field private static final TAG:Ljava/lang/String; = "EngineeringModeESS"


# instance fields
.field private mCert:[B

.field private mEtokenB64:Ljava/lang/String;

.field private mPrefixBody:Ljava/lang/String;

.field private mRxIVB64:Ljava/lang/String;

.field private mType:I

.field private mVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkIntegrityOfCmd([B[B)Z
    .locals 5

    const/4 v3, 0x0

    const/16 v4, 0x20

    new-array v0, v4, [B

    :try_start_0
    const-string/jumbo v4, "SHA-256"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0, p2}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    :cond_0
    :goto_0
    return v3

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private hexToByteArray(Ljava/lang/String;)[B
    .locals 4

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    return-object v3

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    new-array v0, v2, [B

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    mul-int/lit8 v2, v1, 0x2

    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static isStringInt(Ljava/lang/String;)Z
    .locals 2

    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method private parseCommandV1(ILjava/lang/String;)I
    .locals 15

    const/4 v10, 0x0

    const/4 v8, 0x0

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v13, 0xb

    const/4 v14, 0x2

    filled-new-array {v13, v14}, [I

    move-result-object v13

    invoke-static {v12, v13}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[I

    const/4 v11, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    const-string/jumbo v12, "EngineeringModeESS"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Command Type : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v12, "EngineeringModeESS"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Command : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_0

    const-string/jumbo v12, "EngineeringModeESS"

    const-string/jumbo v13, "It\'s not supported type"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x0

    return v12

    :pswitch_0
    const/16 v8, 0xb

    const/4 v12, 0x1

    aget-object v12, v6, v12

    const/16 v13, 0x100

    const/4 v14, 0x0

    aput v13, v12, v14

    const/4 v12, 0x2

    aget-object v12, v6, v12

    const/4 v13, 0x3

    const/4 v14, 0x0

    aput v13, v12, v14

    const/4 v12, 0x3

    aget-object v12, v6, v12

    const/16 v13, 0x80

    const/4 v14, 0x0

    aput v13, v12, v14

    const/4 v12, 0x4

    aget-object v12, v6, v12

    const/16 v13, 0x8

    const/4 v14, 0x0

    aput v13, v12, v14

    const/4 v12, 0x4

    aget-object v12, v6, v12

    const/4 v13, 0x1

    const/4 v14, 0x1

    aput v13, v12, v14

    const/4 v12, 0x5

    aget-object v12, v6, v12

    const/16 v13, 0x8

    const/4 v14, 0x0

    aput v13, v12, v14

    const/4 v12, 0x5

    aget-object v12, v6, v12

    const/4 v13, 0x1

    const/4 v14, 0x1

    aput v13, v12, v14

    const/4 v12, 0x6

    aget-object v12, v6, v12

    const/16 v13, 0x64

    const/4 v14, 0x0

    aput v13, v12, v14

    const/4 v12, 0x7

    aget-object v12, v6, v12

    const/4 v13, 0x6

    const/4 v14, 0x0

    aput v13, v12, v14

    const/16 v12, 0x8

    aget-object v12, v6, v12

    const/4 v13, 0x5

    const/4 v14, 0x0

    aput v13, v12, v14

    const/16 v12, 0x9

    aget-object v12, v6, v12

    const/16 v13, 0x1000

    const/4 v14, 0x0

    aput v13, v12, v14

    const/16 v12, 0xa

    aget-object v12, v6, v12

    const/16 v13, 0x40

    const/4 v14, 0x0

    aput v13, v12, v14

    const/4 v3, 0x1

    const/4 v1, 0x1

    :goto_0
    new-instance v12, Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-direct {v12, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const-string/jumbo v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    array-length v12, v10

    if-ge v12, v8, :cond_0

    const-string/jumbo v12, "EngineeringModeESS"

    const-string/jumbo v13, "Improper parameters"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v12, -0x64

    return v12

    :pswitch_1
    const/4 v8, 0x5

    const/4 v12, 0x1

    aget-object v12, v6, v12

    const/16 v13, 0x100

    const/4 v14, 0x0

    aput v13, v12, v14

    const/4 v12, 0x2

    aget-object v12, v6, v12

    const/4 v13, 0x5

    const/4 v14, 0x0

    aput v13, v12, v14

    const/4 v12, 0x3

    aget-object v12, v6, v12

    const/16 v13, 0x1000

    const/4 v14, 0x0

    aput v13, v12, v14

    const/4 v12, 0x4

    aget-object v12, v6, v12

    const/16 v13, 0x40

    const/4 v14, 0x0

    aput v13, v12, v14

    const/4 v3, 0x1

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_2
    const/4 v8, 0x6

    const/4 v12, 0x1

    aget-object v12, v6, v12

    const/4 v13, 0x3

    const/4 v14, 0x0

    aput v13, v12, v14

    const/4 v12, 0x1

    aget-object v12, v6, v12

    const/4 v13, 0x1

    const/4 v14, 0x1

    aput v13, v12, v14

    const/4 v12, 0x2

    aget-object v12, v6, v12

    const/16 v13, 0x20

    const/4 v14, 0x0

    aput v13, v12, v14

    const/4 v12, 0x3

    aget-object v12, v6, v12

    const/16 v13, 0x1000

    const/4 v14, 0x0

    aput v13, v12, v14

    const/4 v12, 0x3

    aget-object v12, v6, v12

    const/4 v13, 0x1

    const/4 v14, 0x1

    aput v13, v12, v14

    const/4 v12, 0x4

    aget-object v12, v6, v12

    const/16 v13, 0x1000

    const/4 v14, 0x0

    aput v13, v12, v14

    const/4 v12, 0x5

    aget-object v12, v6, v12

    const/16 v13, 0x40

    const/4 v14, 0x0

    aput v13, v12, v14

    const/4 v4, 0x1

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v9, 0x1

    :goto_1
    if-ge v9, v8, :cond_4

    aget-object v12, v10, v9

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-ltz v12, :cond_1

    aget-object v12, v10, v9

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    aget-object v13, v6, v9

    const/4 v14, 0x0

    aget v13, v13, v14

    if-le v12, v13, :cond_2

    :cond_1
    const-string/jumbo v12, "EngineeringModeESS"

    const-string/jumbo v13, "Improper size of parameter"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v12, -0x64

    return v12

    :cond_2
    aget-object v12, v6, v9

    const/4 v13, 0x1

    aget v12, v12, v13

    const/4 v13, 0x1

    if-ne v13, v12, :cond_3

    aget-object v12, v10, v9

    invoke-static {v12}, Lcom/samsung/android/service/EngineeringMode/ess/EngineeringModeESS;->isStringInt(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_3

    const-string/jumbo v12, "EngineeringModeESS"

    const-string/jumbo v13, "Improper type of parameter"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v12, -0x64

    return v12

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_4
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v13, v8, -0x1

    aget-object v13, v10, v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    sub-int/2addr v12, v13

    add-int/lit8 v12, v12, -0x1

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "EngineeringModeESS"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "bodyMsg : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v12, "UTF-8"

    invoke-virtual {v11, v12}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    :goto_2
    add-int/lit8 v12, v8, -0x1

    aget-object v12, v10, v12

    invoke-direct {p0, v12}, Lcom/samsung/android/service/EngineeringMode/ess/EngineeringModeESS;->hexToByteArray(Ljava/lang/String;)[B

    move-result-object v12

    invoke-direct {p0, v5, v12}, Lcom/samsung/android/service/EngineeringMode/ess/EngineeringModeESS;->checkIntegrityOfCmd([B[B)Z

    move-result v12

    if-nez v12, :cond_5

    const-string/jumbo v12, "EngineeringModeESS"

    const-string/jumbo v13, "Broken integrity"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v12, -0x65

    return v12

    :catch_0
    move-exception v7

    invoke-virtual {v7}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_2

    :cond_5
    if-eqz v1, :cond_6

    add-int/lit8 v12, v8, -0x2

    aget-object v12, v10, v12

    invoke-direct {p0, v12}, Lcom/samsung/android/service/EngineeringMode/ess/EngineeringModeESS;->hexToByteArray(Ljava/lang/String;)[B

    move-result-object v12

    iput-object v12, p0, Lcom/samsung/android/service/EngineeringMode/ess/EngineeringModeESS;->mCert:[B

    iget-object v12, p0, Lcom/samsung/android/service/EngineeringMode/ess/EngineeringModeESS;->mCert:[B

    array-length v12, v12

    add-int/lit8 v13, v8, -0x3

    aget-object v13, v10, v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    if-eq v12, v13, :cond_6

    const-string/jumbo v12, "EngineeringModeESS"

    const-string/jumbo v13, "Invaild length of certificate"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v12, -0x64

    return v12

    :cond_6
    if-eqz v3, :cond_7

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v13, v8, -0x1

    aget-object v13, v10, v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    sub-int/2addr v12, v13

    add-int/lit8 v13, v8, -0x2

    aget-object v13, v10, v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    sub-int/2addr v12, v13

    add-int/lit8 v13, v8, -0x3

    aget-object v13, v10, v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    sub-int/2addr v12, v13

    add-int/lit8 v12, v12, -0x4

    const/4 v13, 0x3

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    iput-object v12, p0, Lcom/samsung/android/service/EngineeringMode/ess/EngineeringModeESS;->mPrefixBody:Ljava/lang/String;

    :cond_7
    if-eqz v4, :cond_8

    const/4 v12, 0x2

    aget-object v12, v10, v12

    iput-object v12, p0, Lcom/samsung/android/service/EngineeringMode/ess/EngineeringModeESS;->mRxIVB64:Ljava/lang/String;

    :cond_8
    if-eqz v2, :cond_9

    const/4 v12, 0x4

    aget-object v12, v10, v12

    iput-object v12, p0, Lcom/samsung/android/service/EngineeringMode/ess/EngineeringModeESS;->mEtokenB64:Ljava/lang/String;

    :cond_9
    const/4 v12, 0x1

    return v12

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public getmCert()[B
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/ess/EngineeringModeESS;->mCert:[B

    return-object v0
.end method

.method public getmEtokenB64()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/ess/EngineeringModeESS;->mEtokenB64:Ljava/lang/String;

    return-object v0
.end method

.method public getmPrefixBody()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/ess/EngineeringModeESS;->mPrefixBody:Ljava/lang/String;

    return-object v0
.end method

.method public getmRxIVB64()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/ess/EngineeringModeESS;->mRxIVB64:Ljava/lang/String;

    return-object v0
.end method

.method public getmType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/service/EngineeringMode/ess/EngineeringModeESS;->mType:I

    return v0
.end method

.method public init(ILjava/lang/String;)I
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    :cond_0
    const-string/jumbo v1, "EngineeringModeESS"

    const-string/jumbo v2, "Invaild parameter"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    const/4 v1, 0x2

    invoke-virtual {p2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/service/EngineeringMode/ess/EngineeringModeESS;->mVersion:Ljava/lang/String;

    const-string/jumbo v1, "EngineeringModeESS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ESS Protocol Version is v."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/service/EngineeringMode/ess/EngineeringModeESS;->mVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/service/EngineeringMode/ess/EngineeringModeESS;->mVersion:Ljava/lang/String;

    const-string/jumbo v2, "01"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/service/EngineeringMode/ess/EngineeringModeESS;->parseCommandV1(ILjava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_2
    const-string/jumbo v1, "EngineeringModeESS"

    const-string/jumbo v2, "It\'s not supported version"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method
