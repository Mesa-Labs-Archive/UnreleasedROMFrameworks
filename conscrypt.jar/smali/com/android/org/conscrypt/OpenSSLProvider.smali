.class public final Lcom/android/org/conscrypt/OpenSSLProvider;
.super Ljava/security/Provider;
.source "OpenSSLProvider.java"


# static fields
.field private static final PREFIX:Ljava/lang/String;

.field public static final PROVIDER_NAME:Ljava/lang/String; = "AndroidOpenSSL"

.field private static final STANDARD_EC_PRIVATE_KEY_INTERFACE_CLASS_NAME:Ljava/lang/String; = "java.security.interfaces.ECPrivateKey"

.field private static final STANDARD_RSA_PRIVATE_KEY_INTERFACE_CLASS_NAME:Ljava/lang/String; = "java.security.interfaces.RSAPrivateKey"

.field private static final STANDARD_RSA_PUBLIC_KEY_INTERFACE_CLASS_NAME:Ljava/lang/String; = "java.security.interfaces.RSAPublicKey"

.field private static final serialVersionUID:J = 0x29969a845b3fb130L


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/org/conscrypt/OpenSSLProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string/jumbo v0, "AndroidOpenSSL"

    invoke-direct {p0, v0}, Lcom/android/org/conscrypt/OpenSSLProvider;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 6

    const-string/jumbo v3, "Android\'s OpenSSL-backed security provider"

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-direct {p0, p1, v4, v5, v3}, Ljava/security/Provider;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    invoke-static {}, Lcom/android/org/conscrypt/Platform;->setup()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "OpenSSLContextImpl"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "$TLSv12"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "SSLContext.SSL"

    invoke-virtual {p0, v3, v2}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "SSLContext.TLS"

    invoke-virtual {p0, v3, v2}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "SSLContext.TLSv1"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "$TLSv1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "SSLContext.TLSv1.1"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "$TLSv11"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "SSLContext.TLSv1.2"

    invoke-virtual {p0, v3, v2}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "SSLContext.Default"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "DefaultSSLContextImpl"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "MessageDigest.SHA-1"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "OpenSSLMessageDigestJDK$SHA1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "Alg.Alias.MessageDigest.SHA1"

    const-string/jumbo v4, "SHA-1"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "Alg.Alias.MessageDigest.SHA"

    const-string/jumbo v4, "SHA-1"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "Alg.Alias.MessageDigest.1.3.14.3.2.26"

    const-string/jumbo v4, "SHA-1"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "MessageDigest.SHA-224"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "OpenSSLMessageDigestJDK$SHA224"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "Alg.Alias.MessageDigest.SHA224"

    const-string/jumbo v4, "SHA-224"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "Alg.Alias.MessageDigest.2.16.840.1.101.3.4.2.4"

    const-string/jumbo v4, "SHA-224"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "MessageDigest.SHA-256"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "OpenSSLMessageDigestJDK$SHA256"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "Alg.Alias.MessageDigest.SHA256"

    const-string/jumbo v4, "SHA-256"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "Alg.Alias.MessageDigest.2.16.840.1.101.3.4.2.1"

    const-string/jumbo v4, "SHA-256"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "MessageDigest.SHA-384"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "OpenSSLMessageDigestJDK$SHA384"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "Alg.Alias.MessageDigest.SHA384"

    const-string/jumbo v4, "SHA-384"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "Alg.Alias.MessageDigest.2.16.840.1.101.3.4.2.2"

    const-string/jumbo v4, "SHA-384"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "MessageDigest.SHA-512"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "OpenSSLMessageDigestJDK$SHA512"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "Alg.Alias.MessageDigest.SHA512"

    const-string/jumbo v4, "SHA-512"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "Alg.Alias.MessageDigest.2.16.840.1.101.3.4.2.3"

    const-string/jumbo v4, "SHA-512"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "MessageDigest.MD5"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "OpenSSLMessageDigestJDK$MD5"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "Alg.Alias.MessageDigest.1.2.840.113549.2.5"

    const-string/jumbo v4, "MD5"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "KeyPairGenerator.RSA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "OpenSSLRSAKeyPairGenerator"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "Alg.Alias.KeyPairGenerator.1.2.840.113549.1.1.1"

    const-string/jumbo v4, "RSA"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "Alg.Alias.KeyPairGenerator.1.2.840.113549.1.1.7"

    const-string/jumbo v4, "RSA"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "Alg.Alias.KeyPairGenerator.2.5.8.1.1"

    const-string/jumbo v4, "RSA"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "KeyPairGenerator.EC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "OpenSSLECKeyPairGenerator"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "Alg.Alias.KeyPairGenerator.1.2.840.10045.2.1"

    const-string/jumbo v4, "EC"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "Alg.Alias.KeyPairGenerator.1.3.133.16.840.63.0.2"

    const-string/jumbo v4, "EC"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "KeyFactory.RSA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "OpenSSLRSAKeyFactory"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "Alg.Alias.KeyFactory.1.2.840.113549.1.1.1"

    const-string/jumbo v4, "RSA"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "Alg.Alias.KeyFactory.1.2.840.113549.1.1.7"

    const-string/jumbo v4, "RSA"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "Alg.Alias.KeyFactory.2.5.8.1.1"

    const-string/jumbo v4, "RSA"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "KeyFactory.EC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "OpenSSLECKeyFactory"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "Alg.Alias.KeyFactory.1.2.840.10045.2.1"

    const-string/jumbo v4, "EC"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "Alg.Alias.KeyFactory.1.3.133.16.840.63.0.2"

    const-string/jumbo v4, "EC"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "OpenSSLECDHKeyAgreement"

    invoke-direct {p0, v3}, Lcom/android/org/conscrypt/OpenSSLProvider;->putECDHKeyAgreementImplClass(Ljava/lang/String;)V

    const-string/jumbo v3, "MD5WithRSA"

    const-string/jumbo v4, "OpenSSLSignature$MD5RSA"

    invoke-direct {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSignatureImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "Alg.Alias.Signature.MD5WithRSAEncryption"

    const-string/jumbo v4, "MD5WithRSA"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "Alg.Alias.Signature.MD5/RSA"

    const-string/jumbo v4, "MD5WithRSA"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "Alg.Alias.Signature.1.2.840.113549.1.1.4"

    const-string/jumbo v4, "MD5WithRSA"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "Alg.Alias.Signature.OID.1.2.840.113549.1.1.4"

    const-string/jumbo v4, "MD5WithRSA"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "Alg.Alias.Signature.1.2.840.113549.2.5with1.2.840.113549.1.1.1"

    const-string/jumbo v4, "MD5WithRSA"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "SHA1WithRSA"

    const-string/jumbo v4, "OpenSSLSignature$SHA1RSA"

    invoke-direct {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSignatureImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "Alg.Alias.Signature.SHA1WithRSAEncryption"

    const-string/jumbo v4, "SHA1WithRSA"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "Alg.Alias.Signature.SHA1/RSA"

    const-string/jumbo v4, "SHA1WithRSA"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "Alg.Alias.Signature.SHA-1/RSA"

    const-string/jumbo v4, "SHA1WithRSA"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "Alg.Alias.Signature.1.2.840.113549.1.1.5"

    const-string/jumbo v4, "SHA1WithRSA"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "Alg.Alias.Signature.OID.1.2.840.113549.1.1.5"

    const-string/jumbo v4, "SHA1WithRSA"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "Alg.Alias.Signature.1.3.14.3.2.26with1.2.840.113549.1.1.1"

    const-string/jumbo v4, "SHA1WithRSA"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "Alg.Alias.Signature.1.3.14.3.2.26with1.2.840.113549.1.1.5"

    const-string/jumbo v4, "SHA1WithRSA"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "Alg.Alias.Signature.1.3.14.3.2.29"

    const-string/jumbo v4, "SHA1WithRSA"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "Alg.Alias.Signature.OID.1.3.14.3.2.29"

    const-string/jumbo v4, "SHA1WithRSA"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "SHA224WithRSA"

    const-string/jumbo v4, "OpenSSLSignature$SHA224RSA"

    invoke-direct {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSignatureImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "Alg.Alias.Signature.SHA224WithRSAEncryption"

    const-string/jumbo v4, "SHA224WithRSA"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "Alg.Alias.Signature.SHA224/RSA"

    const-string/jumbo v4, "SHA224WithRSA"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "Alg.Alias.Signature.1.2.840.113549.1.1.14"

    const-string/jumbo v4, "SHA224WithRSA"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "Alg.Alias.Signature.OID.1.2.840.113549.1.1.14"

    const-string/jumbo v4, "SHA224WithRSA"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "Alg.Alias.Signature.2.16.840.1.101.3.4.2.4with1.2.840.113549.1.1.1"

    const-string/jumbo v4, "SHA224WithRSA"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "Alg.Alias.Signature.2.16.840.1.101.3.4.2.4with1.2.840.113549.1.1.14"

    const-string/jumbo v4, "SHA224WithRSA"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "SHA256WithRSA"

    const-string/jumbo v4, "OpenSSLSignature$SHA256RSA"

    invoke-direct {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSignatureImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "Alg.Alias.Signature.SHA256WithRSAEncryption"

    const-string/jumbo v4, "SHA256WithRSA"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "Alg.Alias.Signature.SHA256/RSA"

    const-string/jumbo v4, "SHA256WithRSA"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "Alg.Alias.Signature.1.2.840.113549.1.1.11"

    const-string/jumbo v4, "SHA256WithRSA"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "Alg.Alias.Signature.OID.1.2.840.113549.1.1.11"

    const-string/jumbo v4, "SHA256WithRSA"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "Alg.Alias.Signature.2.16.840.1.101.3.4.2.1with1.2.840.113549.1.1.1"

    const-string/jumbo v4, "SHA256WithRSA"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "Alg.Alias.Signature.2.16.840.1.101.3.4.2.1with1.2.840.113549.1.1.11"

    const-string/jumbo v4, "SHA256WithRSA"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "SHA384WithRSA"

    const-string/jumbo v4, "OpenSSLSignature$SHA384RSA"

    invoke-direct {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSignatureImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "Alg.Alias.Signature.SHA384WithRSAEncryption"

    const-string/jumbo v4, "SHA384WithRSA"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "Alg.Alias.Signature.SHA384/RSA"

    const-string/jumbo v4, "SHA384WithRSA"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "Alg.Alias.Signature.1.2.840.113549.1.1.12"

    const-string/jumbo v4, "SHA384WithRSA"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "Alg.Alias.Signature.OID.1.2.840.113549.1.1.12"

    const-string/jumbo v4, "SHA384WithRSA"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "Alg.Alias.Signature.2.16.840.1.101.3.4.2.2with1.2.840.113549.1.1.1"

    const-string/jumbo v4, "SHA384WithRSA"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "SHA512WithRSA"

    const-string/jumbo v4, "OpenSSLSignature$SHA512RSA"

    invoke-direct {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSignatureImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "Alg.Alias.Signature.SHA512WithRSAEncryption"

    const-string/jumbo v4, "SHA512WithRSA"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "Alg.Alias.Signature.SHA512/RSA"

    const-string/jumbo v4, "SHA512WithRSA"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "Alg.Alias.Signature.1.2.840.113549.1.1.13"

    const-string/jumbo v4, "SHA512WithRSA"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "Alg.Alias.Signature.OID.1.2.840.113549.1.1.13"

    const-string/jumbo v4, "SHA512WithRSA"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "Alg.Alias.Signature.2.16.840.1.101.3.4.2.3with1.2.840.113549.1.1.1"

    const-string/jumbo v4, "SHA512WithRSA"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "OpenSSLSignatureRawRSA"

    invoke-direct {p0, v3}, Lcom/android/org/conscrypt/OpenSSLProvider;->putRAWRSASignatureImplClass(Ljava/lang/String;)V

    const-string/jumbo v3, "SHA1withECDSA"

    const-string/jumbo v4, "OpenSSLSignature$SHA1ECDSA"

    invoke-direct {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSignatureImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "Alg.Alias.Signature.ECDSA"

    const-string/jumbo v4, "SHA1withECDSA"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "Alg.Alias.Signature.ECDSAwithSHA1"

    const-string/jumbo v4, "SHA1withECDSA"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "Alg.Alias.Signature.1.2.840.10045.4.1"

    const-string/jumbo v4, "SHA1withECDSA"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "Alg.Alias.Signature.1.3.14.3.2.26with1.2.840.10045.2.1"

    const-string/jumbo v4, "SHA1withECDSA"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "SHA224withECDSA"

    const-string/jumbo v4, "OpenSSLSignature$SHA224ECDSA"

    invoke-direct {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSignatureImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "Alg.Alias.Signature.SHA224/ECDSA"

    const-string/jumbo v4, "SHA224withECDSA"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "Alg.Alias.Signature.1.2.840.10045.4.3.1"

    const-string/jumbo v4, "SHA224withECDSA"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "Alg.Alias.Signature.OID.1.2.840.10045.4.3.1"

    const-string/jumbo v4, "SHA224withECDSA"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "Alg.Alias.Signature.2.16.840.1.101.3.4.2.4with1.2.840.10045.2.1"

    const-string/jumbo v4, "SHA224withECDSA"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "SHA256withECDSA"

    const-string/jumbo v4, "OpenSSLSignature$SHA256ECDSA"

    invoke-direct {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSignatureImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "Alg.Alias.Signature.SHA256/ECDSA"

    const-string/jumbo v4, "SHA256withECDSA"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "Alg.Alias.Signature.1.2.840.10045.4.3.2"

    const-string/jumbo v4, "SHA256withECDSA"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "Alg.Alias.Signature.OID.1.2.840.10045.4.3.2"

    const-string/jumbo v4, "SHA256withECDSA"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "Alg.Alias.Signature.2.16.840.1.101.3.4.2.1with1.2.840.10045.2.1"

    const-string/jumbo v4, "SHA256withECDSA"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "SHA384withECDSA"

    const-string/jumbo v4, "OpenSSLSignature$SHA384ECDSA"

    invoke-direct {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSignatureImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "Alg.Alias.Signature.SHA384/ECDSA"

    const-string/jumbo v4, "SHA384withECDSA"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "Alg.Alias.Signature.1.2.840.10045.4.3.3"

    const-string/jumbo v4, "SHA384withECDSA"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "Alg.Alias.Signature.OID.1.2.840.10045.4.3.3"

    const-string/jumbo v4, "SHA384withECDSA"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "Alg.Alias.Signature.2.16.840.1.101.3.4.2.2with1.2.840.10045.2.1"

    const-string/jumbo v4, "SHA384withECDSA"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "SHA512withECDSA"

    const-string/jumbo v4, "OpenSSLSignature$SHA512ECDSA"

    invoke-direct {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSignatureImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "Alg.Alias.Signature.SHA512/ECDSA"

    const-string/jumbo v4, "SHA512withECDSA"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "Alg.Alias.Signature.1.2.840.10045.4.3.4"

    const-string/jumbo v4, "SHA512withECDSA"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "Alg.Alias.Signature.OID.1.2.840.10045.4.3.4"

    const-string/jumbo v4, "SHA512withECDSA"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "Alg.Alias.Signature.2.16.840.1.101.3.4.2.3with1.2.840.10045.2.1"

    const-string/jumbo v4, "SHA512withECDSA"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "SHA1withRSA/PSS"

    const-string/jumbo v4, "OpenSSLSignature$SHA1RSAPSS"

    invoke-direct {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSignatureImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "Alg.Alias.Signature.SHA1withRSAandMGF1"

    const-string/jumbo v4, "SHA1withRSA/PSS"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "SHA224withRSA/PSS"

    const-string/jumbo v4, "OpenSSLSignature$SHA224RSAPSS"

    invoke-direct {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSignatureImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "Alg.Alias.Signature.SHA224withRSAandMGF1"

    const-string/jumbo v4, "SHA224withRSA/PSS"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "SHA256withRSA/PSS"

    const-string/jumbo v4, "OpenSSLSignature$SHA256RSAPSS"

    invoke-direct {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSignatureImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "Alg.Alias.Signature.SHA256withRSAandMGF1"

    const-string/jumbo v4, "SHA256withRSA/PSS"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "SHA384withRSA/PSS"

    const-string/jumbo v4, "OpenSSLSignature$SHA384RSAPSS"

    invoke-direct {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSignatureImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "Alg.Alias.Signature.SHA384withRSAandMGF1"

    const-string/jumbo v4, "SHA384withRSA/PSS"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "SHA512withRSA/PSS"

    const-string/jumbo v4, "OpenSSLSignature$SHA512RSAPSS"

    invoke-direct {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSignatureImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "Alg.Alias.Signature.SHA512withRSAandMGF1"

    const-string/jumbo v4, "SHA512withRSA/PSS"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    invoke-static {}, Lcom/samsung/android/security/mdf/MdfUtils;->isMdfEnforced()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "SecureRandom.AES256CTRDRBG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "OpenSSLRandom"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "SecureRandom.AES256CTRDRBG ImplementedIn"

    const-string/jumbo v4, "Software"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const-string/jumbo v3, "SecureRandom.SHA1PRNG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "OpenSSLRandom"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "SecureRandom.SHA1PRNG ImplementedIn"

    const-string/jumbo v4, "Software"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "RSA/ECB/NoPadding"

    const-string/jumbo v4, "OpenSSLCipherRSA$Raw"

    invoke-direct {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->putRSACipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "Alg.Alias.Cipher.RSA/None/NoPadding"

    const-string/jumbo v4, "RSA/ECB/NoPadding"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "RSA/ECB/PKCS1Padding"

    const-string/jumbo v4, "OpenSSLCipherRSA$PKCS1"

    invoke-direct {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->putRSACipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "Alg.Alias.Cipher.RSA/None/PKCS1Padding"

    const-string/jumbo v4, "RSA/ECB/PKCS1Padding"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "RSA/ECB/OAEPPadding"

    const-string/jumbo v4, "OpenSSLCipherRSA$OAEP$SHA1"

    invoke-direct {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->putRSACipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "Alg.Alias.Cipher.RSA/None/OAEPPadding"

    const-string/jumbo v4, "RSA/ECB/OAEPPadding"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "RSA/ECB/OAEPWithSHA-1AndMGF1Padding"

    const-string/jumbo v4, "OpenSSLCipherRSA$OAEP$SHA1"

    invoke-direct {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->putRSACipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "Alg.Alias.Cipher.RSA/None/OAEPWithSHA-1AndMGF1Padding"

    const-string/jumbo v4, "RSA/ECB/OAEPWithSHA-1AndMGF1Padding"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "RSA/ECB/OAEPWithSHA-224AndMGF1Padding"

    const-string/jumbo v4, "OpenSSLCipherRSA$OAEP$SHA224"

    invoke-direct {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->putRSACipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "Alg.Alias.Cipher.RSA/None/OAEPWithSHA-224AndMGF1Padding"

    const-string/jumbo v4, "RSA/ECB/OAEPWithSHA-224AndMGF1Padding"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "RSA/ECB/OAEPWithSHA-256AndMGF1Padding"

    const-string/jumbo v4, "OpenSSLCipherRSA$OAEP$SHA256"

    invoke-direct {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->putRSACipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "Alg.Alias.Cipher.RSA/None/OAEPWithSHA-256AndMGF1Padding"

    const-string/jumbo v4, "RSA/ECB/OAEPWithSHA-256AndMGF1Padding"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "RSA/ECB/OAEPWithSHA-384AndMGF1Padding"

    const-string/jumbo v4, "OpenSSLCipherRSA$OAEP$SHA384"

    invoke-direct {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->putRSACipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "Alg.Alias.Cipher.RSA/None/OAEPWithSHA-384AndMGF1Padding"

    const-string/jumbo v4, "RSA/ECB/OAEPWithSHA-384AndMGF1Padding"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "RSA/ECB/OAEPWithSHA-512AndMGF1Padding"

    const-string/jumbo v4, "OpenSSLCipherRSA$OAEP$SHA512"

    invoke-direct {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->putRSACipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "Alg.Alias.Cipher.RSA/None/OAEPWithSHA-512AndMGF1Padding"

    const-string/jumbo v4, "RSA/ECB/OAEPWithSHA-512AndMGF1Padding"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "AES/ECB/NoPadding"

    const-string/jumbo v4, "OpenSSLCipher$EVP_CIPHER$AES$ECB$NoPadding"

    invoke-direct {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "AES/ECB/PKCS5Padding"

    const-string/jumbo v4, "OpenSSLCipher$EVP_CIPHER$AES$ECB$PKCS5Padding"

    invoke-direct {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "Alg.Alias.Cipher.AES/ECB/PKCS7Padding"

    const-string/jumbo v4, "AES/ECB/PKCS5Padding"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "AES/CBC/NoPadding"

    const-string/jumbo v4, "OpenSSLCipher$EVP_CIPHER$AES$CBC$NoPadding"

    invoke-direct {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "AES/CBC/PKCS5Padding"

    const-string/jumbo v4, "OpenSSLCipher$EVP_CIPHER$AES$CBC$PKCS5Padding"

    invoke-direct {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "Alg.Alias.Cipher.AES/CBC/PKCS7Padding"

    const-string/jumbo v4, "AES/CBC/PKCS5Padding"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "AES/CTR/NoPadding"

    const-string/jumbo v4, "OpenSSLCipher$EVP_CIPHER$AES$CTR"

    invoke-direct {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "AES_128/ECB/NoPadding"

    const-string/jumbo v4, "OpenSSLCipher$EVP_CIPHER$AES_128$ECB$NoPadding"

    invoke-direct {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "AES_128/ECB/PKCS5Padding"

    const-string/jumbo v4, "OpenSSLCipher$EVP_CIPHER$AES_128$ECB$PKCS5Padding"

    invoke-direct {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "Alg.Alias.Cipher.AES_128/ECB/PKCS7Padding"

    const-string/jumbo v4, "AES_128/ECB/PKCS5Padding"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "AES_128/CBC/NoPadding"

    const-string/jumbo v4, "OpenSSLCipher$EVP_CIPHER$AES_128$CBC$NoPadding"

    invoke-direct {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "AES_128/CBC/PKCS5Padding"

    const-string/jumbo v4, "OpenSSLCipher$EVP_CIPHER$AES_128$CBC$PKCS5Padding"

    invoke-direct {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "Alg.Alias.Cipher.AES_128/CBC/PKCS7Padding"

    const-string/jumbo v4, "AES_128/CBC/PKCS5Padding"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "Alg.Alias.Cipher.PBEWithHmacSHA1AndAES_128"

    const-string/jumbo v4, "AES_128/CBC/PKCS5PADDING"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "Alg.Alias.Cipher.PBEWithHmacSHA224AndAES_128"

    const-string/jumbo v4, "AES_128/CBC/PKCS5PADDING"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "Alg.Alias.Cipher.PBEWithHmacSHA256AndAES_128"

    const-string/jumbo v4, "AES_128/CBC/PKCS5PADDING"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "Alg.Alias.Cipher.PBEWithHmacSHA384AndAES_128"

    const-string/jumbo v4, "AES_128/CBC/PKCS5PADDING"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "Alg.Alias.Cipher.PBEWithHmacSHA512AndAES_128"

    const-string/jumbo v4, "AES_128/CBC/PKCS5PADDING"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "AES_256/ECB/NoPadding"

    const-string/jumbo v4, "OpenSSLCipher$EVP_CIPHER$AES_256$ECB$NoPadding"

    invoke-direct {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "AES_256/ECB/PKCS5Padding"

    const-string/jumbo v4, "OpenSSLCipher$EVP_CIPHER$AES_256$ECB$PKCS5Padding"

    invoke-direct {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "Alg.Alias.Cipher.AES_256/ECB/PKCS7Padding"

    const-string/jumbo v4, "AES_256/ECB/PKCS5Padding"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "AES_256/CBC/NoPadding"

    const-string/jumbo v4, "OpenSSLCipher$EVP_CIPHER$AES_256$CBC$NoPadding"

    invoke-direct {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "AES_256/CBC/PKCS5Padding"

    const-string/jumbo v4, "OpenSSLCipher$EVP_CIPHER$AES_256$CBC$PKCS5Padding"

    invoke-direct {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "Alg.Alias.Cipher.AES_256/CBC/PKCS7Padding"

    const-string/jumbo v4, "AES_256/CBC/PKCS5Padding"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "Alg.Alias.Cipher.PBEWithHmacSHA1AndAES_256"

    const-string/jumbo v4, "AES_256/CBC/PKCS5PADDING"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "Alg.Alias.Cipher.PBEWithHmacSHA224AndAES_256"

    const-string/jumbo v4, "AES_256/CBC/PKCS5PADDING"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "Alg.Alias.Cipher.PBEWithHmacSHA256AndAES_256"

    const-string/jumbo v4, "AES_256/CBC/PKCS5PADDING"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "Alg.Alias.Cipher.PBEWithHmacSHA384AndAES_256"

    const-string/jumbo v4, "AES_256/CBC/PKCS5PADDING"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "Alg.Alias.Cipher.PBEWithHmacSHA512AndAES_256"

    const-string/jumbo v4, "AES_256/CBC/PKCS5PADDING"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "DESEDE/CBC/NoPadding"

    const-string/jumbo v4, "OpenSSLCipher$EVP_CIPHER$DESEDE$CBC$NoPadding"

    invoke-direct {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "DESEDE/CBC/PKCS5Padding"

    const-string/jumbo v4, "OpenSSLCipher$EVP_CIPHER$DESEDE$CBC$PKCS5Padding"

    invoke-direct {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "Alg.Alias.Cipher.DESEDE/CBC/PKCS7Padding"

    const-string/jumbo v4, "DESEDE/CBC/PKCS5Padding"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "ARC4"

    const-string/jumbo v4, "OpenSSLCipher$EVP_CIPHER$ARC4"

    invoke-direct {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "Alg.Alias.Cipher.ARCFOUR"

    const-string/jumbo v4, "ARC4"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "Alg.Alias.Cipher.RC4"

    const-string/jumbo v4, "ARC4"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "Alg.Alias.Cipher.1.2.840.113549.3.4"

    const-string/jumbo v4, "ARC4"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "Alg.Alias.Cipher.OID.1.2.840.113549.3.4"

    const-string/jumbo v4, "ARC4"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "AES/GCM/NoPadding"

    const-string/jumbo v4, "OpenSSLCipher$EVP_AEAD$AES$GCM"

    invoke-direct {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "Alg.Alias.Cipher.GCM"

    const-string/jumbo v4, "AES/GCM/NoPadding"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "Alg.Alias.Cipher.2.16.840.1.101.3.4.1.6"

    const-string/jumbo v4, "AES/GCM/NoPadding"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "Alg.Alias.Cipher.2.16.840.1.101.3.4.1.26"

    const-string/jumbo v4, "AES/GCM/NoPadding"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "Alg.Alias.Cipher.2.16.840.1.101.3.4.1.46"

    const-string/jumbo v4, "AES/GCM/NoPadding"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "AES_128/GCM/NoPadding"

    const-string/jumbo v4, "OpenSSLCipher$EVP_AEAD$AES$GCM$AES_128"

    invoke-direct {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "AES_256/GCM/NoPadding"

    const-string/jumbo v4, "OpenSSLCipher$EVP_AEAD$AES$GCM$AES_256"

    invoke-direct {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "HmacMD5"

    const-string/jumbo v4, "OpenSSLMac$HmacMD5"

    invoke-direct {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->putMacImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "Alg.Alias.Mac.1.3.6.1.5.5.8.1.1"

    const-string/jumbo v4, "HmacMD5"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "Alg.Alias.Mac.HMAC-MD5"

    const-string/jumbo v4, "HmacMD5"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "Alg.Alias.Mac.HMAC/MD5"

    const-string/jumbo v4, "HmacMD5"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "HmacSHA1"

    const-string/jumbo v4, "OpenSSLMac$HmacSHA1"

    invoke-direct {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->putMacImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "Alg.Alias.Mac.1.2.840.113549.2.7"

    const-string/jumbo v4, "HmacSHA1"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "Alg.Alias.Mac.1.3.6.1.5.5.8.1.2"

    const-string/jumbo v4, "HmacSHA1"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "Alg.Alias.Mac.HMAC-SHA1"

    const-string/jumbo v4, "HmacSHA1"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "Alg.Alias.Mac.HMAC/SHA1"

    const-string/jumbo v4, "HmacSHA1"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "HmacSHA224"

    const-string/jumbo v4, "OpenSSLMac$HmacSHA224"

    invoke-direct {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->putMacImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "Alg.Alias.Mac.1.2.840.113549.2.8"

    const-string/jumbo v4, "HmacSHA224"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "Alg.Alias.Mac.HMAC-SHA224"

    const-string/jumbo v4, "HmacSHA224"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "Alg.Alias.Mac.HMAC/SHA224"

    const-string/jumbo v4, "HmacSHA224"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "Alg.Alias.Mac.PBEWITHHMACSHA224"

    const-string/jumbo v4, "HmacSHA224"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "HmacSHA256"

    const-string/jumbo v4, "OpenSSLMac$HmacSHA256"

    invoke-direct {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->putMacImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "Alg.Alias.Mac.1.2.840.113549.2.9"

    const-string/jumbo v4, "HmacSHA256"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "Alg.Alias.Mac.2.16.840.1.101.3.4.2.1"

    const-string/jumbo v4, "HmacSHA256"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "Alg.Alias.Mac.HMAC-SHA256"

    const-string/jumbo v4, "HmacSHA256"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "Alg.Alias.Mac.HMAC/SHA256"

    const-string/jumbo v4, "HmacSHA256"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "Alg.Alias.Mac.PBEWITHHMACSHA256"

    const-string/jumbo v4, "HmacSHA256"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "HmacSHA384"

    const-string/jumbo v4, "OpenSSLMac$HmacSHA384"

    invoke-direct {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->putMacImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "Alg.Alias.Mac.1.2.840.113549.2.10"

    const-string/jumbo v4, "HmacSHA384"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "Alg.Alias.Mac.HMAC-SHA384"

    const-string/jumbo v4, "HmacSHA384"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "Alg.Alias.Mac.HMAC/SHA384"

    const-string/jumbo v4, "HmacSHA384"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "Alg.Alias.Mac.PBEWITHHMACSHA384"

    const-string/jumbo v4, "HmacSHA384"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "HmacSHA512"

    const-string/jumbo v4, "OpenSSLMac$HmacSHA512"

    invoke-direct {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->putMacImplClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "Alg.Alias.Mac.1.2.840.113549.2.11"

    const-string/jumbo v4, "HmacSHA512"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "Alg.Alias.Mac.HMAC-SHA512"

    const-string/jumbo v4, "HmacSHA512"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "Alg.Alias.Mac.HMAC/SHA512"

    const-string/jumbo v4, "HmacSHA512"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "Alg.Alias.Mac.PBEWITHHMACSHA512"

    const-string/jumbo v4, "HmacSHA512"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "CertificateFactory.X509"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "OpenSSLX509CertificateFactory"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "Alg.Alias.CertificateFactory.X.509"

    const-string/jumbo v4, "X509"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "CertPathValidator.PKIX"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "DelegatingCertPathValidator"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "CertPathValidator.PKIX ImplementedIn"

    const-string/jumbo v4, "Software"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "CertPathValidator.PKIX ValidationAlgorithm"

    const-string/jumbo v4, "RFC3280"

    invoke-virtual {p0, v3, v4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catch_0
    move-exception v1

    goto/16 :goto_0
.end method

.method private putECDHKeyAgreementImplClass(Ljava/lang/String;)V
    .locals 5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "OpenSSLKeyHolder"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "java.security.interfaces.ECPrivateKey"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "PKCS#8"

    const-string/jumbo v2, "KeyAgreement.ECDH"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/android/org/conscrypt/OpenSSLProvider;->putImplClassWithKeyConstraints(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private putImplClassWithKeyConstraints(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0, p1, p2}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " SupportedKeyClasses"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz p4, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " SupportedKeyFormats"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p4}, Lcom/android/org/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method private putMacImplClass(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "OpenSSLKeyHolder"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "RAW"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Mac."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/android/org/conscrypt/OpenSSLProvider;->putImplClassWithKeyConstraints(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private putRAWRSASignatureImplClass(Ljava/lang/String;)V
    .locals 5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "OpenSSLRSAPrivateKey"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "java.security.interfaces.RSAPrivateKey"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "OpenSSLRSAPublicKey"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "java.security.interfaces.RSAPublicKey"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "Signature.NONEwithRSA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/android/org/conscrypt/OpenSSLProvider;->putImplClassWithKeyConstraints(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private putRSACipherImplClass(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "OpenSSLRSAPrivateKey"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "java.security.interfaces.RSAPrivateKey"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "OpenSSLRSAPublicKey"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "java.security.interfaces.RSAPublicKey"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Cipher."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/android/org/conscrypt/OpenSSLProvider;->putImplClassWithKeyConstraints(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private putSignatureImplClass(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "OpenSSLKeyHolder"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "java.security.interfaces.RSAPrivateKey"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "java.security.interfaces.ECPrivateKey"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "java.security.interfaces.RSAPublicKey"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "PKCS#8|X.509"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Signature."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/android/org/conscrypt/OpenSSLProvider;->putImplClassWithKeyConstraints(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    const-string/jumbo v1, "RAW"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Cipher."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/org/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/android/org/conscrypt/OpenSSLProvider;->putImplClassWithKeyConstraints(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
