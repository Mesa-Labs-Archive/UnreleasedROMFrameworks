.class public Lsun/security/util/CertConstraintParameters;
.super Ljava/lang/Object;
.source "CertConstraintParameters.java"


# instance fields
.field private final cert:Ljava/security/cert/X509Certificate;

.field private final trustedMatch:Z


# direct methods
.method public constructor <init>(Ljava/security/cert/X509Certificate;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lsun/security/util/CertConstraintParameters;-><init>(Ljava/security/cert/X509Certificate;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/security/cert/X509Certificate;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsun/security/util/CertConstraintParameters;->cert:Ljava/security/cert/X509Certificate;

    iput-boolean p2, p0, Lsun/security/util/CertConstraintParameters;->trustedMatch:Z

    return-void
.end method


# virtual methods
.method public getCertificate()Ljava/security/cert/X509Certificate;
    .locals 1

    iget-object v0, p0, Lsun/security/util/CertConstraintParameters;->cert:Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public isTrustedMatch()Z
    .locals 1

    iget-boolean v0, p0, Lsun/security/util/CertConstraintParameters;->trustedMatch:Z

    return v0
.end method
