.class public Lcom/android/org/conscrypt/ct/CTPolicyImpl;
.super Ljava/lang/Object;
.source "CTPolicyImpl.java"

# interfaces
.implements Lcom/android/org/conscrypt/ct/CTPolicy;


# instance fields
.field private final logStore:Lcom/android/org/conscrypt/ct/CTLogStore;

.field private final minimumLogCount:I


# direct methods
.method public constructor <init>(Lcom/android/org/conscrypt/ct/CTLogStore;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/org/conscrypt/ct/CTPolicyImpl;->logStore:Lcom/android/org/conscrypt/ct/CTLogStore;

    iput p2, p0, Lcom/android/org/conscrypt/ct/CTPolicyImpl;->minimumLogCount:I

    return-void
.end method


# virtual methods
.method public doesResultConformToPolicy(Lcom/android/org/conscrypt/ct/CTVerificationResult;Ljava/lang/String;[Ljava/security/cert/X509Certificate;)Z
    .locals 6

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p1}, Lcom/android/org/conscrypt/ct/CTVerificationResult;->getValidSCTs()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/org/conscrypt/ct/VerifiedSCT;

    iget-object v4, p0, Lcom/android/org/conscrypt/ct/CTPolicyImpl;->logStore:Lcom/android/org/conscrypt/ct/CTLogStore;

    iget-object v5, v2, Lcom/android/org/conscrypt/ct/VerifiedSCT;->sct:Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;

    invoke-virtual {v5}, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;->getLogID()[B

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/org/conscrypt/ct/CTLogStore;->getKnownLog([B)Lcom/android/org/conscrypt/ct/CTLogInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v4

    iget v5, p0, Lcom/android/org/conscrypt/ct/CTPolicyImpl;->minimumLogCount:I

    if-lt v4, v5, :cond_2

    const/4 v4, 0x1

    :goto_1
    return v4

    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method
