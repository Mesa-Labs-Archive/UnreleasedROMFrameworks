.class Lcom/android/org/conscrypt/TrustedCertificateStore$4;
.super Ljava/lang/Object;
.source "TrustedCertificateStore.java"

# interfaces
.implements Lcom/android/org/conscrypt/TrustedCertificateStore$CertSelector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/org/conscrypt/TrustedCertificateStore;->findAllIssuers(Ljava/security/cert/X509Certificate;)Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/org/conscrypt/TrustedCertificateStore;

.field final synthetic val$c:Ljava/security/cert/X509Certificate;


# direct methods
.method constructor <init>(Lcom/android/org/conscrypt/TrustedCertificateStore;Ljava/security/cert/X509Certificate;)V
    .locals 0

    iput-object p1, p0, Lcom/android/org/conscrypt/TrustedCertificateStore$4;->this$0:Lcom/android/org/conscrypt/TrustedCertificateStore;

    iput-object p2, p0, Lcom/android/org/conscrypt/TrustedCertificateStore$4;->val$c:Ljava/security/cert/X509Certificate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public match(Ljava/security/cert/X509Certificate;)Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/android/org/conscrypt/TrustedCertificateStore$4;->val$c:Ljava/security/cert/X509Certificate;

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method
