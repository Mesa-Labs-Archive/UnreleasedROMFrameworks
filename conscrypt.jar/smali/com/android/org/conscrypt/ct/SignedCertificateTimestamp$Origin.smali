.class public final enum Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;
.super Ljava/lang/Enum;
.source "SignedCertificateTimestamp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Origin"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;

.field public static final enum EMBEDDED:Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;

.field public static final enum OCSP_RESPONSE:Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;

.field public static final enum TLS_EXTENSION:Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;

    const-string/jumbo v1, "EMBEDDED"

    invoke-direct {v0, v1, v2}, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;->EMBEDDED:Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;

    new-instance v0, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;

    const-string/jumbo v1, "TLS_EXTENSION"

    invoke-direct {v0, v1, v3}, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;->TLS_EXTENSION:Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;

    new-instance v0, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;

    const-string/jumbo v1, "OCSP_RESPONSE"

    invoke-direct {v0, v1, v4}, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;->OCSP_RESPONSE:Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;

    sget-object v1, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;->EMBEDDED:Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;->TLS_EXTENSION:Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;->OCSP_RESPONSE:Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;->$VALUES:[Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;
    .locals 1

    const-class v0, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;

    return-object v0
.end method

.method public static values()[Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;
    .locals 1

    sget-object v0, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;->$VALUES:[Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;

    return-object v0
.end method
