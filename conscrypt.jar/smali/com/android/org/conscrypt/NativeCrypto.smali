.class public final Lcom/android/org/conscrypt/NativeCrypto;
.super Ljava/lang/Object;
.source "NativeCrypto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;
    }
.end annotation


# static fields
.field static final DEFAULT_MDF_X509_CIPHER_SUITES:[Ljava/lang/String;

.field public static final DEFAULT_PROTOCOLS:[Ljava/lang/String;

.field static final DEFAULT_PSK_CIPHER_SUITES:[Ljava/lang/String;

.field static final DEFAULT_X509_CIPHER_SUITES:[Ljava/lang/String;

.field public static final EXTENSION_TYPE_CRITICAL:I = 0x1

.field public static final EXTENSION_TYPE_NON_CRITICAL:I = 0x0

.field public static final GN_STACK_ISSUER_ALT_NAME:I = 0x2

.field public static final GN_STACK_SUBJECT_ALT_NAME:I = 0x1

.field static final OBSOLETE_PROTOCOL_SSLV3:Ljava/lang/String; = "SSLv3"

.field public static final OPENSSL_TO_STANDARD_CIPHER_SUITES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final PKCS7_CERTS:I = 0x1

.field public static final PKCS7_CRLS:I = 0x2

.field public static final SSL_VERIFY_FAIL_IF_NO_PEER_CERT:I = 0x2

.field public static final SSL_VERIFY_NONE:I = 0x0

.field public static final SSL_VERIFY_PEER:I = 0x1

.field public static final STANDARD_TO_OPENSSL_CIPHER_SUITES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SUPPORTED_CIPHER_SUITES:[Ljava/lang/String;

.field public static final SUPPORTED_CIPHER_SUITES_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SUPPORTED_PROTOCOL_TLSV1:Ljava/lang/String; = "TLSv1"

.field private static final SUPPORTED_PROTOCOL_TLSV1_1:Ljava/lang/String; = "TLSv1.1"

.field private static final SUPPORTED_PROTOCOL_TLSV1_2:Ljava/lang/String; = "TLSv1.2"

.field public static final TLSV11_PROTOCOLS:[Ljava/lang/String;

.field public static final TLSV12_PROTOCOLS:[Ljava/lang/String;

.field public static final TLSV1_PROTOCOLS:[Ljava/lang/String;

.field public static final TLS_EMPTY_RENEGOTIATION_INFO_SCSV:Ljava/lang/String; = "TLS_EMPTY_RENEGOTIATION_INFO_SCSV"

.field public static final TLS_FALLBACK_SCSV:Ljava/lang/String; = "TLS_FALLBACK_SCSV"


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    invoke-static {}, Lcom/android/org/conscrypt/NativeCryptoJni;->init()V

    invoke-static {}, Lcom/android/org/conscrypt/NativeCrypto;->clinit()V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sput-object v4, Lcom/android/org/conscrypt/NativeCrypto;->OPENSSL_TO_STANDARD_CIPHER_SUITES:Ljava/util/Map;

    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v4, Lcom/android/org/conscrypt/NativeCrypto;->STANDARD_TO_OPENSSL_CIPHER_SUITES:Ljava/util/Map;

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    sput-object v4, Lcom/android/org/conscrypt/NativeCrypto;->SUPPORTED_CIPHER_SUITES_SET:Ljava/util/Set;

    const-string/jumbo v4, "ADH-AES128-GCM-SHA256"

    const-string/jumbo v5, "TLS_DH_anon_WITH_AES_128_GCM_SHA256"

    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "ADH-AES128-SHA256"

    const-string/jumbo v5, "TLS_DH_anon_WITH_AES_128_CBC_SHA256"

    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "ADH-AES128-SHA"

    const-string/jumbo v5, "TLS_DH_anon_WITH_AES_128_CBC_SHA"

    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "ADH-AES256-GCM-SHA384"

    const-string/jumbo v5, "TLS_DH_anon_WITH_AES_256_GCM_SHA384"

    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "ADH-AES256-SHA256"

    const-string/jumbo v5, "TLS_DH_anon_WITH_AES_256_CBC_SHA256"

    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "ADH-AES256-SHA"

    const-string/jumbo v5, "TLS_DH_anon_WITH_AES_256_CBC_SHA"

    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "ADH-DES-CBC3-SHA"

    const-string/jumbo v5, "SSL_DH_anon_WITH_3DES_EDE_CBC_SHA"

    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "ADH-DES-CBC-SHA"

    const-string/jumbo v5, "SSL_DH_anon_WITH_DES_CBC_SHA"

    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "AECDH-AES128-SHA"

    const-string/jumbo v5, "TLS_ECDH_anon_WITH_AES_128_CBC_SHA"

    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "AECDH-AES256-SHA"

    const-string/jumbo v5, "TLS_ECDH_anon_WITH_AES_256_CBC_SHA"

    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "AECDH-DES-CBC3-SHA"

    const-string/jumbo v5, "TLS_ECDH_anon_WITH_3DES_EDE_CBC_SHA"

    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "AECDH-NULL-SHA"

    const-string/jumbo v5, "TLS_ECDH_anon_WITH_NULL_SHA"

    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "AES128-GCM-SHA256"

    const-string/jumbo v5, "TLS_RSA_WITH_AES_128_GCM_SHA256"

    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "AES128-SHA256"

    const-string/jumbo v5, "TLS_RSA_WITH_AES_128_CBC_SHA256"

    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "AES128-SHA"

    const-string/jumbo v5, "TLS_RSA_WITH_AES_128_CBC_SHA"

    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "AES256-GCM-SHA384"

    const-string/jumbo v5, "TLS_RSA_WITH_AES_256_GCM_SHA384"

    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "AES256-SHA256"

    const-string/jumbo v5, "TLS_RSA_WITH_AES_256_CBC_SHA256"

    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "AES256-SHA"

    const-string/jumbo v5, "TLS_RSA_WITH_AES_256_CBC_SHA"

    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "DES-CBC3-SHA"

    const-string/jumbo v5, "SSL_RSA_WITH_3DES_EDE_CBC_SHA"

    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "DES-CBC-SHA"

    const-string/jumbo v5, "SSL_RSA_WITH_DES_CBC_SHA"

    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "ECDH-ECDSA-AES128-GCM-SHA256"

    const-string/jumbo v5, "TLS_ECDH_ECDSA_WITH_AES_128_GCM_SHA256"

    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "ECDH-ECDSA-AES128-SHA256"

    const-string/jumbo v5, "TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA256"

    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "ECDH-ECDSA-AES128-SHA"

    const-string/jumbo v5, "TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA"

    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "ECDH-ECDSA-AES256-GCM-SHA384"

    const-string/jumbo v5, "TLS_ECDH_ECDSA_WITH_AES_256_GCM_SHA384"

    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "ECDH-ECDSA-AES256-SHA384"

    const-string/jumbo v5, "TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA384"

    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "ECDH-ECDSA-AES256-SHA"

    const-string/jumbo v5, "TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA"

    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "ECDH-ECDSA-DES-CBC3-SHA"

    const-string/jumbo v5, "TLS_ECDH_ECDSA_WITH_3DES_EDE_CBC_SHA"

    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "ECDH-ECDSA-NULL-SHA"

    const-string/jumbo v5, "TLS_ECDH_ECDSA_WITH_NULL_SHA"

    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "ECDHE-ECDSA-AES128-GCM-SHA256"

    const-string/jumbo v5, "TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256"

    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "ECDHE-ECDSA-AES128-SHA256"

    const-string/jumbo v5, "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256"

    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "ECDHE-ECDSA-AES128-SHA"

    const-string/jumbo v5, "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA"

    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "ECDHE-ECDSA-AES256-GCM-SHA384"

    const-string/jumbo v5, "TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384"

    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "ECDHE-ECDSA-AES256-SHA384"

    const-string/jumbo v5, "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384"

    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "ECDHE-ECDSA-AES256-SHA"

    const-string/jumbo v5, "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA"

    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "ECDHE-ECDSA-CHACHA20-POLY1305"

    const-string/jumbo v5, "TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305"

    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "ECDHE-ECDSA-CHACHA20-POLY1305"

    const-string/jumbo v5, "TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256"

    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "ECDHE-ECDSA-DES-CBC3-SHA"

    const-string/jumbo v5, "TLS_ECDHE_ECDSA_WITH_3DES_EDE_CBC_SHA"

    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "ECDHE-ECDSA-NULL-SHA"

    const-string/jumbo v5, "TLS_ECDHE_ECDSA_WITH_NULL_SHA"

    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "ECDHE-PSK-AES128-CBC-SHA"

    const-string/jumbo v5, "TLS_ECDHE_PSK_WITH_AES_128_CBC_SHA"

    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "ECDHE-PSK-AES128-GCM-SHA256"

    const-string/jumbo v5, "TLS_ECDHE_PSK_WITH_AES_128_GCM_SHA256"

    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "ECDHE-PSK-AES256-CBC-SHA"

    const-string/jumbo v5, "TLS_ECDHE_PSK_WITH_AES_256_CBC_SHA"

    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "ECDHE-PSK-AES256-GCM-SHA384"

    const-string/jumbo v5, "TLS_ECDHE_PSK_WITH_AES_256_GCM_SHA384"

    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "ECDHE-PSK-CHACHA20-POLY1305"

    const-string/jumbo v5, "TLS_ECDHE_PSK_WITH_CHACHA20_POLY1305_SHA256"

    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "ECDHE-RSA-AES128-GCM-SHA256"

    const-string/jumbo v5, "TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256"

    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "ECDHE-RSA-AES128-SHA256"

    const-string/jumbo v5, "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256"

    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "ECDHE-RSA-AES128-SHA"

    const-string/jumbo v5, "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA"

    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "ECDHE-RSA-AES256-GCM-SHA384"

    const-string/jumbo v5, "TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384"

    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "ECDHE-RSA-AES256-SHA384"

    const-string/jumbo v5, "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384"

    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "ECDHE-RSA-AES256-SHA"

    const-string/jumbo v5, "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA"

    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "ECDHE-RSA-CHACHA20-POLY1305"

    const-string/jumbo v5, "TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305"

    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "ECDHE-RSA-CHACHA20-POLY1305"

    const-string/jumbo v5, "TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256"

    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "ECDHE-RSA-DES-CBC3-SHA"

    const-string/jumbo v5, "TLS_ECDHE_RSA_WITH_3DES_EDE_CBC_SHA"

    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "ECDHE-RSA-NULL-SHA"

    const-string/jumbo v5, "TLS_ECDHE_RSA_WITH_NULL_SHA"

    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "ECDH-RSA-AES128-GCM-SHA256"

    const-string/jumbo v5, "TLS_ECDH_RSA_WITH_AES_128_GCM_SHA256"

    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "ECDH-RSA-AES128-SHA256"

    const-string/jumbo v5, "TLS_ECDH_RSA_WITH_AES_128_CBC_SHA256"

    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "ECDH-RSA-AES128-SHA"

    const-string/jumbo v5, "TLS_ECDH_RSA_WITH_AES_128_CBC_SHA"

    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "ECDH-RSA-AES256-GCM-SHA384"

    const-string/jumbo v5, "TLS_ECDH_RSA_WITH_AES_256_GCM_SHA384"

    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "ECDH-RSA-AES256-SHA384"

    const-string/jumbo v5, "TLS_ECDH_RSA_WITH_AES_256_CBC_SHA384"

    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "ECDH-RSA-AES256-SHA"

    const-string/jumbo v5, "TLS_ECDH_RSA_WITH_AES_256_CBC_SHA"

    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "ECDH-RSA-DES-CBC3-SHA"

    const-string/jumbo v5, "TLS_ECDH_RSA_WITH_3DES_EDE_CBC_SHA"

    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "ECDH-RSA-NULL-SHA"

    const-string/jumbo v5, "TLS_ECDH_RSA_WITH_NULL_SHA"

    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "EXP-ADH-DES-CBC-SHA"

    const-string/jumbo v5, "SSL_DH_anon_EXPORT_WITH_DES40_CBC_SHA"

    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "EXP-DES-CBC-SHA"

    const-string/jumbo v5, "SSL_RSA_EXPORT_WITH_DES40_CBC_SHA"

    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "NULL-MD5"

    const-string/jumbo v5, "SSL_RSA_WITH_NULL_MD5"

    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "NULL-SHA256"

    const-string/jumbo v5, "TLS_RSA_WITH_NULL_SHA256"

    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "NULL-SHA"

    const-string/jumbo v5, "SSL_RSA_WITH_NULL_SHA"

    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "PSK-3DES-EDE-CBC-SHA"

    const-string/jumbo v5, "TLS_PSK_WITH_3DES_EDE_CBC_SHA"

    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "PSK-AES128-CBC-SHA"

    const-string/jumbo v5, "TLS_PSK_WITH_AES_128_CBC_SHA"

    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "PSK-AES256-CBC-SHA"

    const-string/jumbo v5, "TLS_PSK_WITH_AES_256_CBC_SHA"

    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "RC4-SHA"

    const-string/jumbo v5, "SSL_RSA_WITH_RC4_128_SHA"

    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "ECDHE-RSA-RC4-SHA"

    const-string/jumbo v5, "TLS_ECDHE_RSA_WITH_RC4_128_SHA"

    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "ECDHE-ECDSA-RC4-SHA"

    const-string/jumbo v5, "TLS_ECDHE_ECDSA_WITH_RC4_128_SHA"

    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "ALL:!DHE:!RC4"

    invoke-static {v4}, Lcom/android/org/conscrypt/NativeCrypto;->get_cipher_names(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    add-int/lit8 v4, v2, 0x2

    new-array v4, v4, [Ljava/lang/String;

    sput-object v4, Lcom/android/org/conscrypt/NativeCrypto;->SUPPORTED_CIPHER_SUITES:[Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    sget-object v4, Lcom/android/org/conscrypt/NativeCrypto;->OPENSSL_TO_STANDARD_CIPHER_SUITES:Ljava/util/Map;

    aget-object v5, v0, v1

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unknown cipher suite supported by native code: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v0, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    sget-object v4, Lcom/android/org/conscrypt/NativeCrypto;->SUPPORTED_CIPHER_SUITES:[Ljava/lang/String;

    aput-object v3, v4, v1

    sget-object v4, Lcom/android/org/conscrypt/NativeCrypto;->SUPPORTED_CIPHER_SUITES_SET:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    sget-object v4, Lcom/android/org/conscrypt/NativeCrypto;->SUPPORTED_CIPHER_SUITES:[Ljava/lang/String;

    const-string/jumbo v5, "TLS_EMPTY_RENEGOTIATION_INFO_SCSV"

    aput-object v5, v4, v2

    sget-object v4, Lcom/android/org/conscrypt/NativeCrypto;->SUPPORTED_CIPHER_SUITES:[Ljava/lang/String;

    add-int/lit8 v5, v2, 0x1

    const-string/jumbo v6, "TLS_FALLBACK_SCSV"

    aput-object v6, v4, v5

    invoke-static {}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_has_aes_hardware()I

    move-result v4

    if-ne v4, v7, :cond_2

    const/16 v4, 0xe

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256"

    aput-object v5, v4, v8

    const-string/jumbo v5, "TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384"

    aput-object v5, v4, v7

    const-string/jumbo v5, "TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256"

    aput-object v5, v4, v9

    const-string/jumbo v5, "TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256"

    aput-object v5, v4, v10

    const-string/jumbo v5, "TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384"

    aput-object v5, v4, v11

    const-string/jumbo v5, "TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256"

    const/4 v6, 0x5

    aput-object v5, v4, v6

    const-string/jumbo v5, "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA"

    const/4 v6, 0x6

    aput-object v5, v4, v6

    const-string/jumbo v5, "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA"

    const/4 v6, 0x7

    aput-object v5, v4, v6

    const-string/jumbo v5, "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA"

    const/16 v6, 0x8

    aput-object v5, v4, v6

    const-string/jumbo v5, "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA"

    const/16 v6, 0x9

    aput-object v5, v4, v6

    const-string/jumbo v5, "TLS_RSA_WITH_AES_128_GCM_SHA256"

    const/16 v6, 0xa

    aput-object v5, v4, v6

    const-string/jumbo v5, "TLS_RSA_WITH_AES_256_GCM_SHA384"

    const/16 v6, 0xb

    aput-object v5, v4, v6

    const-string/jumbo v5, "TLS_RSA_WITH_AES_128_CBC_SHA"

    const/16 v6, 0xc

    aput-object v5, v4, v6

    const-string/jumbo v5, "TLS_RSA_WITH_AES_256_CBC_SHA"

    const/16 v6, 0xd

    aput-object v5, v4, v6

    :goto_1
    sput-object v4, Lcom/android/org/conscrypt/NativeCrypto;->DEFAULT_X509_CIPHER_SUITES:[Ljava/lang/String;

    const/16 v4, 0x10

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "TLS_RSA_WITH_AES_128_CBC_SHA256"

    aput-object v5, v4, v8

    const-string/jumbo v5, "TLS_RSA_WITH_AES_256_CBC_SHA256"

    aput-object v5, v4, v7

    const-string/jumbo v5, "TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256"

    aput-object v5, v4, v9

    const-string/jumbo v5, "TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384"

    aput-object v5, v4, v10

    const-string/jumbo v5, "TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256"

    aput-object v5, v4, v11

    const-string/jumbo v5, "TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256"

    const/4 v6, 0x5

    aput-object v5, v4, v6

    const-string/jumbo v5, "TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384"

    const/4 v6, 0x6

    aput-object v5, v4, v6

    const-string/jumbo v5, "TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256"

    const/4 v6, 0x7

    aput-object v5, v4, v6

    const-string/jumbo v5, "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA"

    const/16 v6, 0x8

    aput-object v5, v4, v6

    const-string/jumbo v5, "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA"

    const/16 v6, 0x9

    aput-object v5, v4, v6

    const-string/jumbo v5, "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA"

    const/16 v6, 0xa

    aput-object v5, v4, v6

    const-string/jumbo v5, "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA"

    const/16 v6, 0xb

    aput-object v5, v4, v6

    const-string/jumbo v5, "TLS_RSA_WITH_AES_128_GCM_SHA256"

    const/16 v6, 0xc

    aput-object v5, v4, v6

    const-string/jumbo v5, "TLS_RSA_WITH_AES_256_GCM_SHA384"

    const/16 v6, 0xd

    aput-object v5, v4, v6

    const-string/jumbo v5, "TLS_RSA_WITH_AES_128_CBC_SHA"

    const/16 v6, 0xe

    aput-object v5, v4, v6

    const-string/jumbo v5, "TLS_RSA_WITH_AES_256_CBC_SHA"

    const/16 v6, 0xf

    aput-object v5, v4, v6

    sput-object v4, Lcom/android/org/conscrypt/NativeCrypto;->DEFAULT_MDF_X509_CIPHER_SUITES:[Ljava/lang/String;

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "TLS_ECDHE_PSK_WITH_CHACHA20_POLY1305_SHA256"

    aput-object v5, v4, v8

    const-string/jumbo v5, "TLS_ECDHE_PSK_WITH_AES_128_CBC_SHA"

    aput-object v5, v4, v7

    const-string/jumbo v5, "TLS_ECDHE_PSK_WITH_AES_256_CBC_SHA"

    aput-object v5, v4, v9

    const-string/jumbo v5, "TLS_PSK_WITH_AES_128_CBC_SHA"

    aput-object v5, v4, v10

    const-string/jumbo v5, "TLS_PSK_WITH_AES_256_CBC_SHA"

    aput-object v5, v4, v11

    sput-object v4, Lcom/android/org/conscrypt/NativeCrypto;->DEFAULT_PSK_CIPHER_SUITES:[Ljava/lang/String;

    new-array v4, v10, [Ljava/lang/String;

    const-string/jumbo v5, "TLSv1"

    aput-object v5, v4, v8

    const-string/jumbo v5, "TLSv1.1"

    aput-object v5, v4, v7

    const-string/jumbo v5, "TLSv1.2"

    aput-object v5, v4, v9

    sput-object v4, Lcom/android/org/conscrypt/NativeCrypto;->TLSV12_PROTOCOLS:[Ljava/lang/String;

    new-array v4, v10, [Ljava/lang/String;

    const-string/jumbo v5, "TLSv1"

    aput-object v5, v4, v8

    const-string/jumbo v5, "TLSv1.1"

    aput-object v5, v4, v7

    const-string/jumbo v5, "TLSv1.2"

    aput-object v5, v4, v9

    sput-object v4, Lcom/android/org/conscrypt/NativeCrypto;->TLSV11_PROTOCOLS:[Ljava/lang/String;

    new-array v4, v10, [Ljava/lang/String;

    const-string/jumbo v5, "TLSv1"

    aput-object v5, v4, v8

    const-string/jumbo v5, "TLSv1.1"

    aput-object v5, v4, v7

    const-string/jumbo v5, "TLSv1.2"

    aput-object v5, v4, v9

    sput-object v4, Lcom/android/org/conscrypt/NativeCrypto;->TLSV1_PROTOCOLS:[Ljava/lang/String;

    sget-object v4, Lcom/android/org/conscrypt/NativeCrypto;->TLSV12_PROTOCOLS:[Ljava/lang/String;

    sput-object v4, Lcom/android/org/conscrypt/NativeCrypto;->DEFAULT_PROTOCOLS:[Ljava/lang/String;

    return-void

    :cond_2
    const/16 v4, 0xe

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256"

    aput-object v5, v4, v8

    const-string/jumbo v5, "TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256"

    aput-object v5, v4, v7

    const-string/jumbo v5, "TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384"

    aput-object v5, v4, v9

    const-string/jumbo v5, "TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256"

    aput-object v5, v4, v10

    const-string/jumbo v5, "TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256"

    aput-object v5, v4, v11

    const-string/jumbo v5, "TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384"

    const/4 v6, 0x5

    aput-object v5, v4, v6

    const-string/jumbo v5, "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA"

    const/4 v6, 0x6

    aput-object v5, v4, v6

    const-string/jumbo v5, "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA"

    const/4 v6, 0x7

    aput-object v5, v4, v6

    const-string/jumbo v5, "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA"

    const/16 v6, 0x8

    aput-object v5, v4, v6

    const-string/jumbo v5, "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA"

    const/16 v6, 0x9

    aput-object v5, v4, v6

    const-string/jumbo v5, "TLS_RSA_WITH_AES_128_GCM_SHA256"

    const/16 v6, 0xa

    aput-object v5, v4, v6

    const-string/jumbo v5, "TLS_RSA_WITH_AES_256_GCM_SHA384"

    const/16 v6, 0xb

    aput-object v5, v4, v6

    const-string/jumbo v5, "TLS_RSA_WITH_AES_128_CBC_SHA"

    const/16 v6, 0xc

    aput-object v5, v4, v6

    const-string/jumbo v5, "TLS_RSA_WITH_AES_256_CBC_SHA"

    const/16 v6, 0xd

    aput-object v5, v4, v6

    goto/16 :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native ASN1_TIME_to_Calendar(JLjava/util/Calendar;)V
.end method

.method public static native ASN1_seq_pack_X509([J)[B
.end method

.method public static native ASN1_seq_unpack_X509_bio(J)[J
.end method

.method public static native BIO_free_all(J)V
.end method

.method public static native BIO_read(J[B)I
.end method

.method public static native BIO_write(J[BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public static native ECDH_compute_key([BILcom/android/org/conscrypt/NativeRef$EVP_PKEY;Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation
.end method

.method public static native EC_GROUP_clear_free(J)V
.end method

.method public static native EC_GROUP_get_cofactor(Lcom/android/org/conscrypt/NativeRef$EC_GROUP;)[B
.end method

.method public static native EC_GROUP_get_curve(Lcom/android/org/conscrypt/NativeRef$EC_GROUP;)[[B
.end method

.method public static native EC_GROUP_get_curve_name(Lcom/android/org/conscrypt/NativeRef$EC_GROUP;)Ljava/lang/String;
.end method

.method public static native EC_GROUP_get_degree(Lcom/android/org/conscrypt/NativeRef$EC_GROUP;)I
.end method

.method public static native EC_GROUP_get_generator(Lcom/android/org/conscrypt/NativeRef$EC_GROUP;)J
.end method

.method public static native EC_GROUP_get_order(Lcom/android/org/conscrypt/NativeRef$EC_GROUP;)[B
.end method

.method public static native EC_GROUP_new_arbitrary([B[B[B[B[B[BI)J
.end method

.method public static native EC_GROUP_new_by_curve_name(Ljava/lang/String;)J
.end method

.method public static native EC_KEY_generate_key(Lcom/android/org/conscrypt/NativeRef$EC_GROUP;)J
.end method

.method public static native EC_KEY_get1_group(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)J
.end method

.method public static native EC_KEY_get_private_key(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)[B
.end method

.method public static native EC_KEY_get_public_key(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)J
.end method

.method public static native EC_POINT_clear_free(J)V
.end method

.method public static native EC_POINT_get_affine_coordinates(Lcom/android/org/conscrypt/NativeRef$EC_GROUP;Lcom/android/org/conscrypt/NativeRef$EC_POINT;)[[B
.end method

.method public static native EC_POINT_new(Lcom/android/org/conscrypt/NativeRef$EC_GROUP;)J
.end method

.method public static native EC_POINT_set_affine_coordinates(Lcom/android/org/conscrypt/NativeRef$EC_GROUP;Lcom/android/org/conscrypt/NativeRef$EC_POINT;[B[B)V
.end method

.method public static native ENGINE_SSL_do_handshake(JLcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;)I
.end method

.method public static native ENGINE_SSL_read_BIO_direct(JJJILcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public static native ENGINE_SSL_read_BIO_heap(JJ[BIILcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public static native ENGINE_SSL_read_direct(JJILcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public static native ENGINE_SSL_read_heap(J[BIILcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public static native ENGINE_SSL_shutdown(JLcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public static native ENGINE_SSL_write_BIO_direct(JJJILcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public static native ENGINE_SSL_write_BIO_heap(JJ[BIILcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public static native ENGINE_SSL_write_direct(JJILcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public static native ENGINE_SSL_write_heap(J[BIILcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public static native ERR_peek_last_error()J
.end method

.method public static native EVP_AEAD_CTX_open(J[BI[BI[B[BII[B)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation
.end method

.method public static native EVP_AEAD_CTX_seal(J[BI[BI[B[BII[B)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation
.end method

.method public static native EVP_AEAD_max_overhead(J)I
.end method

.method public static native EVP_AEAD_max_tag_len(J)I
.end method

.method public static native EVP_AEAD_nonce_length(J)I
.end method

.method public static native EVP_CIPHER_CTX_block_size(Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;)I
.end method

.method public static native EVP_CIPHER_CTX_free(J)V
.end method

.method public static native EVP_CIPHER_CTX_new()J
.end method

.method public static native EVP_CIPHER_CTX_set_key_length(Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;I)V
.end method

.method public static native EVP_CIPHER_CTX_set_padding(Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;Z)V
.end method

.method public static native EVP_CIPHER_iv_length(J)I
.end method

.method public static native EVP_CipherFinal_ex(Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;[BI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/BadPaddingException;,
            Ljavax/crypto/IllegalBlockSizeException;
        }
    .end annotation
.end method

.method public static native EVP_CipherInit_ex(Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;J[B[BZ)V
.end method

.method public static native EVP_CipherUpdate(Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;[BI[BII)I
.end method

.method public static native EVP_DigestFinal_ex(Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;[BI)I
.end method

.method public static native EVP_DigestInit_ex(Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;J)I
.end method

.method public static native EVP_DigestSignFinal(Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;)[B
.end method

.method public static native EVP_DigestSignInit(Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;JLcom/android/org/conscrypt/NativeRef$EVP_PKEY;)J
.end method

.method public static native EVP_DigestSignUpdate(Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;[BII)V
.end method

.method public static native EVP_DigestSignUpdateDirect(Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;JI)V
.end method

.method public static native EVP_DigestUpdate(Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;[BII)V
.end method

.method public static native EVP_DigestUpdateDirect(Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;JI)V
.end method

.method public static native EVP_DigestVerifyFinal(Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;[BII)Z
.end method

.method public static native EVP_DigestVerifyInit(Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;JLcom/android/org/conscrypt/NativeRef$EVP_PKEY;)J
.end method

.method public static native EVP_DigestVerifyUpdate(Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;[BII)V
.end method

.method public static native EVP_DigestVerifyUpdateDirect(Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;JI)V
.end method

.method public static native EVP_MD_CTX_cleanup(Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;)V
.end method

.method public static native EVP_MD_CTX_copy_ex(Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;Lcom/android/org/conscrypt/NativeRef$EVP_MD_CTX;)I
.end method

.method public static native EVP_MD_CTX_create()J
.end method

.method public static native EVP_MD_CTX_destroy(J)V
.end method

.method public static native EVP_MD_block_size(J)I
.end method

.method public static native EVP_MD_size(J)I
.end method

.method public static native EVP_PKEY_CTX_free(J)V
.end method

.method public static native EVP_PKEY_CTX_set_rsa_mgf1_md(JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation
.end method

.method public static native EVP_PKEY_CTX_set_rsa_oaep_label(J[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation
.end method

.method public static native EVP_PKEY_CTX_set_rsa_oaep_md(JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation
.end method

.method public static native EVP_PKEY_CTX_set_rsa_padding(JI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation
.end method

.method public static native EVP_PKEY_CTX_set_rsa_pss_saltlen(JI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation
.end method

.method public static native EVP_PKEY_cmp(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)I
.end method

.method public static native EVP_PKEY_decrypt(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY_CTX;[BI[BII)I
.end method

.method public static native EVP_PKEY_decrypt_init(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)J
.end method

.method public static native EVP_PKEY_encrypt(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY_CTX;[BI[BII)I
.end method

.method public static native EVP_PKEY_encrypt_init(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)J
.end method

.method public static native EVP_PKEY_free(J)V
.end method

.method public static native EVP_PKEY_new_EC_KEY(Lcom/android/org/conscrypt/NativeRef$EC_GROUP;Lcom/android/org/conscrypt/NativeRef$EC_POINT;[B)J
.end method

.method public static native EVP_PKEY_new_RSA([B[B[B[B[B[B[B[B)J
.end method

.method public static native EVP_PKEY_print_params(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)Ljava/lang/String;
.end method

.method public static native EVP_PKEY_print_public(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)Ljava/lang/String;
.end method

.method public static native EVP_PKEY_size(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)I
.end method

.method public static native EVP_PKEY_type(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)I
.end method

.method public static native EVP_aead_aes_128_gcm()J
.end method

.method public static native EVP_aead_aes_256_gcm()J
.end method

.method public static native EVP_get_cipherbyname(Ljava/lang/String;)J
.end method

.method public static native EVP_get_digestbyname(Ljava/lang/String;)J
.end method

.method public static native EVP_has_aes_hardware()I
.end method

.method public static native HMAC_CTX_free(J)V
.end method

.method public static native HMAC_CTX_new()J
.end method

.method public static native HMAC_Final(Lcom/android/org/conscrypt/NativeRef$HMAC_CTX;)[B
.end method

.method public static native HMAC_Init_ex(Lcom/android/org/conscrypt/NativeRef$HMAC_CTX;[BJ)V
.end method

.method public static native HMAC_Update(Lcom/android/org/conscrypt/NativeRef$HMAC_CTX;[BII)V
.end method

.method public static native HMAC_UpdateDirect(Lcom/android/org/conscrypt/NativeRef$HMAC_CTX;JI)V
.end method

.method public static native OBJ_txt2nid(Ljava/lang/String;)I
.end method

.method public static native OBJ_txt2nid_longName(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native OBJ_txt2nid_oid(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native PEM_read_bio_PKCS7(JI)[J
.end method

.method public static native PEM_read_bio_PUBKEY(J)J
.end method

.method public static native PEM_read_bio_PrivateKey(J)J
.end method

.method public static native PEM_read_bio_X509(J)J
.end method

.method public static native PEM_read_bio_X509_CRL(J)J
.end method

.method public static native RAND_bytes([B)V
.end method

.method public static native RSA_generate_key_ex(I[B)J
.end method

.method public static native RSA_private_decrypt(I[B[BLcom/android/org/conscrypt/NativeRef$EVP_PKEY;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/BadPaddingException;,
            Ljava/security/SignatureException;
        }
    .end annotation
.end method

.method public static native RSA_private_encrypt(I[B[BLcom/android/org/conscrypt/NativeRef$EVP_PKEY;I)I
.end method

.method public static native RSA_public_decrypt(I[B[BLcom/android/org/conscrypt/NativeRef$EVP_PKEY;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/BadPaddingException;,
            Ljava/security/SignatureException;
        }
    .end annotation
.end method

.method public static native RSA_public_encrypt(I[B[BLcom/android/org/conscrypt/NativeRef$EVP_PKEY;I)I
.end method

.method public static native RSA_size(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)I
.end method

.method public static native SSL_BIO_new(J)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation
.end method

.method public static native SSL_CIPHER_get_kx_name(J)Ljava/lang/String;
.end method

.method public static native SSL_CTX_free(J)V
.end method

.method public static native SSL_CTX_new()J
.end method

.method public static native SSL_CTX_set_session_id_context(J[B)V
.end method

.method public static native SSL_SESSION_cipher(J)Ljava/lang/String;
.end method

.method public static native SSL_SESSION_free(J)V
.end method

.method public static native SSL_SESSION_get_time(J)J
.end method

.method public static native SSL_SESSION_get_version(J)Ljava/lang/String;
.end method

.method public static native SSL_SESSION_session_id(J)[B
.end method

.method public static native SSL_accept_renegotiations(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation
.end method

.method public static native SSL_check_private_key(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation
.end method

.method public static native SSL_clear_error()V
.end method

.method public static native SSL_clear_mode(JJ)J
.end method

.method public static native SSL_clear_options(JJ)J
.end method

.method public static native SSL_configure_alpn(JZ[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public static native SSL_do_handshake(JLjava/io/FileDescriptor;Lcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;,
            Ljava/net/SocketTimeoutException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation
.end method

.method public static native SSL_enable_ocsp_stapling(J)V
.end method

.method public static native SSL_enable_signed_cert_timestamps(J)V
.end method

.method public static native SSL_enable_tls_channel_id(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation
.end method

.method public static native SSL_free(J)V
.end method

.method public static native SSL_get0_alpn_selected(J)[B
.end method

.method public static native SSL_get0_session(J)J
.end method

.method public static native SSL_get1_session(J)J
.end method

.method public static native SSL_get_certificate(J)[J
.end method

.method public static native SSL_get_ciphers(J)[J
.end method

.method public static native SSL_get_error(JI)I
.end method

.method public static native SSL_get_error_string(J)Ljava/lang/String;
.end method

.method public static native SSL_get_last_error_number()I
.end method

.method public static native SSL_get_mode(J)J
.end method

.method public static native SSL_get_ocsp_response(J)[B
.end method

.method public static native SSL_get_options(J)J
.end method

.method public static native SSL_get_peer_cert_chain(J)[J
.end method

.method public static native SSL_get_servername(J)Ljava/lang/String;
.end method

.method public static native SSL_get_shutdown(J)I
.end method

.method public static native SSL_get_signed_cert_timestamp_list(J)[B
.end method

.method public static native SSL_get_tls_channel_id(J)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation
.end method

.method public static native SSL_get_tls_unique(J)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation
.end method

.method public static native SSL_interrupt(J)V
.end method

.method public static native SSL_max_seal_overhead(J)I
.end method

.method public static native SSL_new(J)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation
.end method

.method public static native SSL_pending_readable_bytes(J)I
.end method

.method public static native SSL_pending_written_bytes_in_BIO(J)I
.end method

.method public static native SSL_read(JLjava/io/FileDescriptor;Lcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;[BIII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public static native SSL_renegotiate(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation
.end method

.method public static native SSL_session_reused(J)Z
.end method

.method public static native SSL_set1_tls_channel_id(JLcom/android/org/conscrypt/NativeRef$EVP_PKEY;)V
.end method

.method public static native SSL_set_accept_state(J)V
.end method

.method public static native SSL_set_cipher_lists(J[Ljava/lang/String;)V
.end method

.method public static native SSL_set_client_CA_list(J[[B)V
.end method

.method public static native SSL_set_connect_state(J)V
.end method

.method public static native SSL_set_mode(JJ)J
.end method

.method public static native SSL_set_ocsp_response(J[B)V
.end method

.method public static native SSL_set_options(JJ)J
.end method

.method public static native SSL_set_session(JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation
.end method

.method public static native SSL_set_session_creation_enabled(JZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation
.end method

.method public static native SSL_set_signed_cert_timestamp_list(J[B)V
.end method

.method public static native SSL_set_tlsext_host_name(JLjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation
.end method

.method public static native SSL_set_verify(JI)V
.end method

.method public static native SSL_shutdown(JLjava/io/FileDescriptor;Lcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public static native SSL_shutdown_BIO(JJJLcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public static native SSL_use_PrivateKey(JLcom/android/org/conscrypt/NativeRef$EVP_PKEY;)V
.end method

.method public static native SSL_use_certificate(J[J)V
.end method

.method public static native SSL_use_psk_identity_hint(JLjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation
.end method

.method public static native SSL_write(JLjava/io/FileDescriptor;Lcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;[BIII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public static native X509_CRL_free(J)V
.end method

.method public static native X509_CRL_get0_by_cert(JJ)J
.end method

.method public static native X509_CRL_get0_by_serial(J[B)J
.end method

.method public static native X509_CRL_get_REVOKED(J)[J
.end method

.method public static native X509_CRL_get_ext(JLjava/lang/String;)J
.end method

.method public static native X509_CRL_get_ext_oid(JLjava/lang/String;)[B
.end method

.method public static native X509_CRL_get_issuer_name(J)[B
.end method

.method public static native X509_CRL_get_lastUpdate(J)J
.end method

.method public static native X509_CRL_get_nextUpdate(J)J
.end method

.method public static native X509_CRL_get_version(J)J
.end method

.method public static native X509_CRL_print(JJ)V
.end method

.method public static native X509_CRL_verify(JLcom/android/org/conscrypt/NativeRef$EVP_PKEY;)V
.end method

.method public static X509_NAME_hash(Ljavax/security/auth/x500/X500Principal;)I
    .locals 1

    const-string/jumbo v0, "SHA1"

    invoke-static {p0, v0}, Lcom/android/org/conscrypt/NativeCrypto;->X509_NAME_hash(Ljavax/security/auth/x500/X500Principal;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static X509_NAME_hash(Ljavax/security/auth/x500/X500Principal;Ljava/lang/String;)I
    .locals 6

    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    invoke-virtual {p0}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x1

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x0

    add-int/lit8 v3, v2, 0x1

    aget-byte v5, v0, v2

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    add-int/lit8 v2, v3, 0x1

    aget-byte v5, v0, v3

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    aget-byte v5, v0, v2
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    or-int/2addr v4, v5

    return v4

    :catch_0
    move-exception v1

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4
.end method

.method public static X509_NAME_hash_old(Ljavax/security/auth/x500/X500Principal;)I
    .locals 1

    const-string/jumbo v0, "MD5"

    invoke-static {p0, v0}, Lcom/android/org/conscrypt/NativeCrypto;->X509_NAME_hash(Ljavax/security/auth/x500/X500Principal;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static native X509_NAME_print_ex(JJ)Ljava/lang/String;
.end method

.method public static native X509_REVOKED_dup(J)J
.end method

.method public static native X509_REVOKED_get_ext(JLjava/lang/String;)J
.end method

.method public static native X509_REVOKED_get_ext_oid(JLjava/lang/String;)[B
.end method

.method public static native X509_REVOKED_get_serialNumber(J)[B
.end method

.method public static native X509_REVOKED_print(JJ)V
.end method

.method public static native X509_check_issued(JJ)I
.end method

.method public static native X509_cmp(JJ)I
.end method

.method public static native X509_delete_ext(JLjava/lang/String;)V
.end method

.method public static native X509_dup(J)J
.end method

.method public static native X509_free(J)V
.end method

.method public static native X509_get_ext_oid(JLjava/lang/String;)[B
.end method

.method public static native X509_get_issuer_name(J)[B
.end method

.method public static native X509_get_notAfter(J)J
.end method

.method public static native X509_get_notBefore(J)J
.end method

.method public static native X509_get_pubkey(J)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation
.end method

.method public static native X509_get_serialNumber(J)[B
.end method

.method public static native X509_get_subject_name(J)[B
.end method

.method public static native X509_get_version(J)J
.end method

.method public static native X509_print_ex(JJJJ)V
.end method

.method public static native X509_supported_extension(J)I
.end method

.method public static native X509_verify(JLcom/android/org/conscrypt/NativeRef$EVP_PKEY;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation
.end method

.method private static add(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/android/org/conscrypt/NativeCrypto;->OPENSSL_TO_STANDARD_CIPHER_SUITES:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/org/conscrypt/NativeCrypto;->STANDARD_TO_OPENSSL_CIPHER_SUITES:Ljava/util/Map;

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static checkEnabledCipherSuites([Ljava/lang/String;)[Ljava/lang/String;
    .locals 6

    if-nez p0, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "cipherSuites == null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    const/4 v1, 0x0

    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_5

    aget-object v0, p0, v1

    if-nez v0, :cond_1

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "cipherSuites["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "] == null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    const-string/jumbo v3, "TLS_EMPTY_RENEGOTIATION_INFO_SCSV"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "TLS_FALLBACK_SCSV"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    sget-object v3, Lcom/android/org/conscrypt/NativeCrypto;->SUPPORTED_CIPHER_SUITES_SET:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Lcom/android/org/conscrypt/NativeCrypto;->STANDARD_TO_OPENSSL_CIPHER_SUITES:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Lcom/android/org/conscrypt/NativeCrypto;->OPENSSL_TO_STANDARD_CIPHER_SUITES:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_4

    sget-object v3, Lcom/android/org/conscrypt/NativeCrypto;->SUPPORTED_CIPHER_SUITES_SET:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_4
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "cipherSuite "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " is not supported."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_5
    return-object p0
.end method

.method public static checkEnabledProtocols([Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "protocols == null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    const/4 v1, 0x0

    array-length v2, p0

    :goto_0
    if-ge v1, v2, :cond_3

    aget-object v0, p0, v1

    if-nez v0, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "protocols contains null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string/jumbo v3, "TLSv1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "TLSv1.1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    const-string/jumbo v3, "TLSv1.2"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    const-string/jumbo v3, "SSLv3"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "protocol "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is not supported"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object p0
.end method

.method private static native clinit()V
.end method

.method public static native create_BIO_InputStream(Lcom/android/org/conscrypt/OpenSSLBIOInputStream;Z)J
.end method

.method public static native create_BIO_OutputStream(Ljava/io/OutputStream;)J
.end method

.method public static native d2i_PKCS7_bio(JI)[J
.end method

.method public static native d2i_PKCS8_PRIV_KEY_INFO([B)J
.end method

.method public static native d2i_PUBKEY([B)J
.end method

.method public static native d2i_SSL_SESSION([B)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public static native d2i_X509([B)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation
.end method

.method public static native d2i_X509_CRL_bio(J)J
.end method

.method public static native d2i_X509_bio(J)J
.end method

.method public static native getDirectBufferAddress(Ljava/nio/Buffer;)J
.end method

.method public static native getECPrivateKeyWrapper(Ljava/security/PrivateKey;Lcom/android/org/conscrypt/NativeRef$EC_GROUP;)J
.end method

.method public static native getRSAPrivateKeyWrapper(Ljava/security/PrivateKey;[B)J
.end method

.method public static getSupportedCipherSuites()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/org/conscrypt/NativeCrypto;->SUPPORTED_CIPHER_SUITES:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public static getSupportedProtocols()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "TLSv1"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "TLSv1.1"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "TLSv1.2"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static native get_EVP_CIPHER_CTX_buf_len(Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;)I
.end method

.method public static native get_EVP_CIPHER_CTX_final_used(Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;)Z
.end method

.method public static native get_RSA_private_params(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)[[B
.end method

.method public static native get_RSA_public_params(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)[[B
.end method

.method public static native get_SSL_SESSION_tlsext_hostname(J)Ljava/lang/String;
.end method

.method public static native get_X509_CRL_crl_enc(J)[B
.end method

.method public static native get_X509_CRL_ext_oids(JI)[Ljava/lang/String;
.end method

.method public static native get_X509_CRL_sig_alg_oid(J)Ljava/lang/String;
.end method

.method public static native get_X509_CRL_sig_alg_parameter(J)[B
.end method

.method public static native get_X509_CRL_signature(J)[B
.end method

.method public static native get_X509_GENERAL_NAME_stack(JI)[[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation
.end method

.method public static native get_X509_REVOKED_ext_oids(JI)[Ljava/lang/String;
.end method

.method public static native get_X509_REVOKED_revocationDate(J)J
.end method

.method public static native get_X509_cert_info_enc(J)[B
.end method

.method public static native get_X509_ex_flags(J)I
.end method

.method public static native get_X509_ex_kusage(J)[Z
.end method

.method public static native get_X509_ex_pathlen(J)I
.end method

.method public static native get_X509_ex_xkusage(J)[Ljava/lang/String;
.end method

.method public static native get_X509_ext_oids(JI)[Ljava/lang/String;
.end method

.method public static native get_X509_issuerUID(J)[Z
.end method

.method public static native get_X509_pubkey_oid(J)Ljava/lang/String;
.end method

.method public static native get_X509_sig_alg_oid(J)Ljava/lang/String;
.end method

.method public static native get_X509_sig_alg_parameter(J)[B
.end method

.method public static native get_X509_signature(J)[B
.end method

.method public static native get_X509_subjectUID(J)[Z
.end method

.method public static native get_cipher_names(Ljava/lang/String;)[Ljava/lang/String;
.end method

.method public static native get_ocsp_single_extension([BLjava/lang/String;JJ)[B
.end method

.method public static native i2d_PKCS7([J)[B
.end method

.method public static native i2d_PKCS8_PRIV_KEY_INFO(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)[B
.end method

.method public static native i2d_PUBKEY(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)[B
.end method

.method public static native i2d_RSAPrivateKey(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)[B
.end method

.method public static native i2d_RSAPublicKey(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)[B
.end method

.method public static native i2d_SSL_SESSION(J)[B
.end method

.method public static native i2d_X509(J)[B
.end method

.method public static native i2d_X509_CRL(J)[B
.end method

.method public static native i2d_X509_PUBKEY(J)[B
.end method

.method public static native i2d_X509_REVOKED(J)[B
.end method

.method public static setEnabledCipherSuites(J[Ljava/lang/String;)V
    .locals 8

    invoke-static {p2}, Lcom/android/org/conscrypt/NativeCrypto;->checkEnabledCipherSuites([Ljava/lang/String;)[Ljava/lang/String;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    array-length v5, p2

    if-ge v2, v5, :cond_3

    aget-object v0, p2, v2

    const-string/jumbo v5, "TLS_EMPTY_RENEGOTIATION_INFO_SCSV"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string/jumbo v5, "TLS_FALLBACK_SCSV"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-wide/16 v6, 0x400

    invoke-static {p0, p1, v6, v7}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_set_mode(JJ)J

    goto :goto_1

    :cond_1
    sget-object v5, Lcom/android/org/conscrypt/NativeCrypto;->STANDARD_TO_OPENSSL_CIPHER_SUITES:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_2

    move-object v1, v0

    :goto_2
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move-object v1, v3

    goto :goto_2

    :cond_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    invoke-static {p0, p1, v5}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_set_cipher_lists(J[Ljava/lang/String;)V

    return-void
.end method

.method public static setEnabledProtocols(J[Ljava/lang/String;)V
    .locals 10

    invoke-static {p2}, Lcom/android/org/conscrypt/NativeCrypto;->checkEnabledProtocols([Ljava/lang/String;)[Ljava/lang/String;

    const-wide/32 v2, 0x1e000000

    const-wide/16 v0, 0x0

    const/4 v5, 0x0

    array-length v6, p2

    :goto_0
    if-ge v5, v6, :cond_4

    aget-object v4, p2, v5

    const-string/jumbo v7, "TLSv1"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-wide/32 v8, -0x4000001

    and-long/2addr v2, v8

    const-wide/32 v8, 0x4000000

    or-long/2addr v0, v8

    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v7, "TLSv1.1"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-wide/32 v8, -0x10000001

    and-long/2addr v2, v8

    const-wide/32 v8, 0x10000000

    or-long/2addr v0, v8

    goto :goto_1

    :cond_2
    const-string/jumbo v7, "TLSv1.2"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-wide/32 v8, -0x8000001

    and-long/2addr v2, v8

    const-wide/32 v8, 0x8000000

    or-long/2addr v0, v8

    goto :goto_1

    :cond_3
    const-string/jumbo v7, "SSLv3"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5}, Ljava/lang/IllegalStateException;-><init>()V

    throw v5

    :cond_4
    invoke-static {p0, p1, v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_set_options(JJ)J

    invoke-static {p0, p1, v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_clear_options(JJ)J

    return-void
.end method

.method public static native set_SSL_psk_client_callback_enabled(JZ)V
.end method

.method public static native set_SSL_psk_server_callback_enabled(JZ)V
.end method
