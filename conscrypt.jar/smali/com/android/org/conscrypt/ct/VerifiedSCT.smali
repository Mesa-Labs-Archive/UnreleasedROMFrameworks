.class public final Lcom/android/org/conscrypt/ct/VerifiedSCT;
.super Ljava/lang/Object;
.source "VerifiedSCT.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;
    }
.end annotation


# instance fields
.field public final sct:Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;

.field public final status:Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;


# direct methods
.method public constructor <init>(Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/org/conscrypt/ct/VerifiedSCT;->sct:Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;

    iput-object p2, p0, Lcom/android/org/conscrypt/ct/VerifiedSCT;->status:Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;

    return-void
.end method
