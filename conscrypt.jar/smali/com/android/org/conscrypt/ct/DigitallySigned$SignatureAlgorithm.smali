.class public final enum Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;
.super Ljava/lang/Enum;
.source "DigitallySigned.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/ct/DigitallySigned;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SignatureAlgorithm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;

.field public static final enum ANONYMOUS:Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;

.field public static final enum DSA:Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;

.field public static final enum ECDSA:Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;

.field public static final enum RSA:Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;

.field private static values:[Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;

    const-string/jumbo v1, "ANONYMOUS"

    invoke-direct {v0, v1, v2}, Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;->ANONYMOUS:Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;

    new-instance v0, Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;

    const-string/jumbo v1, "RSA"

    invoke-direct {v0, v1, v3}, Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;->RSA:Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;

    new-instance v0, Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;

    const-string/jumbo v1, "DSA"

    invoke-direct {v0, v1, v4}, Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;->DSA:Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;

    new-instance v0, Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;

    const-string/jumbo v1, "ECDSA"

    invoke-direct {v0, v1, v5}, Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;->ECDSA:Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;

    sget-object v1, Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;->ANONYMOUS:Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;->RSA:Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;->DSA:Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;->ECDSA:Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;->$VALUES:[Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;

    invoke-static {}, Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;->values()[Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;

    move-result-object v0

    sput-object v0, Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;->values:[Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(I)Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;
    .locals 4

    :try_start_0
    sget-object v1, Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;->values:[Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;

    aget-object v1, v1, p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid signature algorithm "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;
    .locals 1

    const-class v0, Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;

    return-object v0
.end method

.method public static values()[Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;
    .locals 1

    sget-object v0, Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;->$VALUES:[Lcom/android/org/conscrypt/ct/DigitallySigned$SignatureAlgorithm;

    return-object v0
.end method
