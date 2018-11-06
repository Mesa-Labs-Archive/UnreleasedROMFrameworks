.class public final Ljava/security/DomainLoadStoreParameter;
.super Ljava/lang/Object;
.source "DomainLoadStoreParameter.java"

# interfaces
.implements Ljava/security/KeyStore$LoadStoreParameter;


# instance fields
.field private final configuration:Ljava/net/URI;

.field private final protectionParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/security/KeyStore$ProtectionParameter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/net/URI;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/security/KeyStore$ProtectionParameter;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "invalid null input"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Ljava/security/DomainLoadStoreParameter;->configuration:Ljava/net/URI;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Ljava/security/DomainLoadStoreParameter;->protectionParams:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getConfiguration()Ljava/net/URI;
    .locals 1

    iget-object v0, p0, Ljava/security/DomainLoadStoreParameter;->configuration:Ljava/net/URI;

    return-object v0
.end method

.method public getProtectionParameter()Ljava/security/KeyStore$ProtectionParameter;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getProtectionParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/security/KeyStore$ProtectionParameter;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ljava/security/DomainLoadStoreParameter;->protectionParams:Ljava/util/Map;

    return-object v0
.end method
